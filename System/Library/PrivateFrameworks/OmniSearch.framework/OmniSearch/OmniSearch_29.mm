uint64_t TokenArgumentCollector.deinit()
{

  return v0;
}

uint64_t TokenArgumentCollector.__deallocating_deinit()
{
  TokenArgumentCollector.deinit();

  return swift_deallocClassInstance();
}

uint64_t $defer #1 () in SPQUParse.init(from:query:isExpectingAnswer:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchComponentSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "SearchTool.SPQUParseFromStructuredQuery", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static SPQUParse.extractedTypeToIntentLabel(_:)(uint64_t a1)
{
  v3 = llmIntentLabel();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_33_27();

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        switch(v6)
        {
          case 5:
          case 12:
            break;
          default:

            v7 = llmIntentLabel();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_33_27();

            break;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {

    v8 = llmIntentLabel();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_33_27();
  }

  return v1;
}

uint64_t static SPQUParse.preferredTypeToIntentLabel(_:)(uint64_t a1)
{
  v3 = llmIntentLabel();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_33_27();

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6 - 29;
        if ((v6 - 29) <= 0xA)
        {
          v1 = qword_25DBE3C00[v7];

          v8 = llmIntentLabel();
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_33_27();
        }

        --v4;
      }

      while (v4);
    }
  }

  return v1;
}

uint64_t static SPQUParse.filterTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 29;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3_15();
      v5 = v4 - 1;
      goto LABEL_34;
    case 2:
    case 34:
      return result;
    case 3:
      return 35;
    case 4:
      return 32;
    case 5:
      return 18;
    case 6:
      OUTLINED_FUNCTION_3_15();
      v5 = v7 + 10;
      goto LABEL_34;
    case 7:
      return 99;
    case 8:
      return 78;
    case 9:
      return 26;
    case 10:
      return 25;
    case 11:
      return 31;
    case 12:
      return 19;
    case 13:
      return 20;
    case 14:
      return 33;
    case 15:
      return 28;
    case 16:
      return 27;
    case 17:
      return 75;
    case 18:
      return 21;
    case 19:
      return 30;
    case 20:
      return 22;
    case 21:
      return 34;
    case 22:
      OUTLINED_FUNCTION_3_15();
      v5 = v8 - 2;
LABEL_34:
      v6 = v3 | 0x8000000000000000;
      goto LABEL_35;
    case 24:
    case 36:
      return 23;
    case 25:
      return 77;
    case 26:
    case 38:
      return 76;
    case 27:
      return 98;
    case 28:
    case 35:
    case 37:
      return 93;
    case 29:
      return 184;
    case 30:
      return 185;
    case 31:
      return 186;
    case 32:
      return 187;
    case 33:
      return 188;
    default:
      OUTLINED_FUNCTION_98_2();
      v5 = 0xD00000000000001ELL;
LABEL_35:
      v9 = MEMORY[0x25F89F4C0](v5, v6);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      return EnumValueFromIntentArgString;
  }
}

uint64_t static SPQUParse.preferredTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 122;
  switch(v1)
  {
    case 1:
    case 49:
    case 55:
    case 56:
      OUTLINED_FUNCTION_98_2();
      v4 = 0xD000000000000026;
      goto LABEL_47;
    case 2:
      return result;
    case 3:
      return 119;
    case 4:
      return 105;
    case 5:
      OUTLINED_FUNCTION_1_66();
      v4 = v6 + 11;
      goto LABEL_46;
    case 6:
      return 129;
    case 7:
      return 126;
    case 8:
      return 113;
    case 9:
      return 112;
    case 10:
      return 157;
    case 11:
      return 118;
    case 12:
      return 106;
    case 13:
      return 107;
    case 14:
      return 120;
    case 15:
      return 115;
    case 16:
      return 114;
    case 17:
      return 123;
    case 18:
      return 108;
    case 19:
      return 117;
    case 20:
      return 109;
    case 21:
      return 121;
    case 22:
    case 40:
      OUTLINED_FUNCTION_1_66();
      v4 = v7 - 1;
      goto LABEL_46;
    case 24:
    case 46:
      return 110;
    case 25:
      return 125;
    case 26:
    case 57:
      return 124;
    case 27:
      return 128;
    case 28:
    case 45:
    case 54:
      return 127;
    case 29:
      return 80;
    case 30:
      return 74;
    case 31:
    case 44:
      return 14;
    case 32:
      return 15;
    case 33:
      return 16;
    case 34:
      return 81;
    case 35:
      return 17;
    case 36:
      return 211;
    case 37:
      return 79;
    case 38:
      return 82;
    case 39:
    case 53:
      return 83;
    case 42:
      OUTLINED_FUNCTION_1_66();
      v4 = v11 + 2;
      goto LABEL_46;
    case 43:
      return 116;
    case 47:
    case 48:
      OUTLINED_FUNCTION_1_66();
      v4 = v5 + 7;
      goto LABEL_46;
    case 50:
      OUTLINED_FUNCTION_1_66();
      v4 = v12 + 4;
      goto LABEL_46;
    case 51:
      OUTLINED_FUNCTION_1_66();
      v4 = v10 + 3;
      goto LABEL_46;
    case 52:
      v3 = "D_APP_ENTITY_TYPE_SHOW";
      v4 = 0xD00000000000002FLL;
      goto LABEL_46;
    default:
      OUTLINED_FUNCTION_1_66();
      v4 = v8 | 1;
LABEL_46:
      v9 = v3 | 0x8000000000000000;
LABEL_47:
      v13 = MEMORY[0x25F89F4C0](v4, v9);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      return EnumValueFromIntentArgString;
  }
}

uint64_t static SPQUParse.sourceTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 139;
  switch(v1)
  {
    case 1:
    case 23:
      result = 144;
      break;
    case 2:
      result = 150;
      break;
    case 3:
      result = 147;
      break;
    case 4:
      result = 133;
      break;
    case 5:
      OUTLINED_FUNCTION_98_2();
      v3 = MEMORY[0x25F89F4C0](0xD000000000000028);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      result = EnumValueFromIntentArgString;
      break;
    case 6:
      result = 156;
      break;
    case 7:
      result = 154;
      break;
    case 8:
      result = 141;
      break;
    case 9:
      result = 140;
      break;
    case 10:
      result = 134;
      break;
    case 11:
      result = 135;
      break;
    case 12:
      result = 148;
      break;
    case 13:
      result = 143;
      break;
    case 14:
      result = 142;
      break;
    case 15:
      result = 151;
      break;
    case 16:
      result = 136;
      break;
    case 17:
      result = 145;
      break;
    case 18:
      result = 137;
      break;
    case 19:
      result = 149;
      break;
    case 20:
      result = 153;
      break;
    case 21:
      result = 152;
      break;
    case 22:
      result = 155;
      break;
    case 24:
      result = 146;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static SPQUParse.containsTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 158;
  switch(v1)
  {
    case 1:
      result = 159;
      break;
    case 2:
      result = 160;
      break;
    case 3:
      result = 161;
      break;
    case 4:
      v3 = 0xD00000000000002ALL;
      v4 = 0x800000025DBF7D30;
      goto LABEL_38;
    case 5:
      result = 162;
      break;
    case 6:
      result = 163;
      break;
    case 7:
      result = 164;
      break;
    case 8:
      result = 165;
      break;
    case 9:
      result = 166;
      break;
    case 10:
      result = 167;
      break;
    case 11:
      result = 168;
      break;
    case 12:
      result = 169;
      break;
    case 13:
      result = 170;
      break;
    case 14:
      result = 172;
      break;
    case 15:
      result = 173;
      break;
    case 16:
      result = 181;
      break;
    case 17:
      result = 178;
      break;
    case 18:
      result = 182;
      break;
    case 19:
      result = 179;
      break;
    case 20:
      result = 183;
      break;
    case 21:
      result = 180;
      break;
    case 22:
      result = 80;
      break;
    case 23:
      result = 74;
      break;
    case 24:
      result = 14;
      break;
    case 25:
      result = 15;
      break;
    case 26:
      result = 16;
      break;
    case 27:
      result = 81;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      OUTLINED_FUNCTION_98_2();
      v3 = 0xD000000000000022;
LABEL_38:
      v5 = MEMORY[0x25F89F4C0](v3, v4);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      result = EnumValueFromIntentArgString;
      break;
    case 30:
      result = 90;
      break;
    case 31:
      result = 82;
      break;
    case 32:
      result = 83;
      break;
    case 33:
      result = 171;
      break;
    case 34:
      result = 174;
      break;
    case 35:
      result = 175;
      break;
    case 36:
      result = 176;
      break;
    case 37:
      result = 177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static SPQUParse.temporalReferenceToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3CC0[v1];
  }
}

uint64_t static SPQUParse.orderByTimeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 130;
  if (v1)
  {
    v2 = 131;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t static SPQUParse.appEntityStatusToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 24)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3CD8[v1];
  }
}

uint64_t static SPQUParse.sortOrderToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3D98[v1];
  }
}

id @nonobjc SPQUParseTokenArgument.init(label:token:tokenRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

  v9 = MEMORY[0x25F89F4C0](a1);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v11 = [v5 initWithLabel:v9 token:v10 tokenRange:a5];

  return v11;
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t type metadata accessor for SPQUParseTokenArgument()
{
  result = lazy cache variable for type metadata for SPQUParseTokenArgument;
  if (!lazy cache variable for type metadata for SPQUParseTokenArgument)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SPQUParseTokenArgument);
  }

  return result;
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_32_29()
{

  return outlined consume of Person?(v0, v1);
}

__n128 OUTLINED_FUNCTION_34_28(__n128 *a1)
{
  result = v1[8];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_22(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

void OUTLINED_FUNCTION_37_18(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

void OUTLINED_FUNCTION_38_24(uint64_t a1)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, v1, 0);
}

void OUTLINED_FUNCTION_39_22(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

void OUTLINED_FUNCTION_52_20(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return outlined consume of Person?(0, v0);
}

uint64_t OUTLINED_FUNCTION_54_23(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t UCGCandidateContact.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UCGCandidateContact.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

OmniSearch::UCGCandidateContact __swiftcall UCGCandidateContact.init(id:displayName:)(Swift::String id, Swift::String displayName)
{
  *v2 = id;
  v2[1] = displayName;
  result.displayName = displayName;
  result.id = id;
  return result;
}

void *ContactStoreHelper.__allocating_init(contactStore:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void *ContactStoreHelper.init(contactStore:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t ContactStoreHelper.extractLabel(from:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logging.search);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_172();
      *v20 = 0;
      _os_log_impl(&dword_25D85C000, v18, v19, "ContactStoreHelper Failed to extract label with regex", v20, 2u);
      MEMORY[0x25F8A1050](v20, -1, -1);
    }

    (*(v13 + 8))(v16, v11);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v21 = MEMORY[0x25F89F5B0](v23[1], v23[2], v23[3], v23[4]);

    (*(v7 + 8))(v10, v5);
    (*(v13 + 8))(v16, v11);
  }

  return v21;
}

uint64_t ContactStoreHelper.candidateToSearchResult(candidate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v251 = a2;
  v232 = *v2;
  v4 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v234 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  v233 = v7;
  v8 = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for SearchResult(v8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v243 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_39_0();
  v241 = v13;
  MEMORY[0x28223BE20](v14);
  v242 = &v225 - v15;
  v16 = OUTLINED_FUNCTION_78_0();
  v239 = type metadata accessor for SearchResultItem(v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  v249 = v18;
  OUTLINED_FUNCTION_78_0();
  v237 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v236 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v252 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_39_0();
  v255 = v23;
  MEMORY[0x28223BE20](v24);
  v245 = &v225 - v25;
  OUTLINED_FUNCTION_78_0();
  v248 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_14();
  v240 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_3();
  v247 = v28;
  v29 = a1[1];
  v250 = *a1;
  v30 = a1[3];
  v238 = a1[2];
  v246 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25DBDEBD0;
  v32 = *MEMORY[0x277CBD098];
  v33 = *MEMORY[0x277CBCFC0];
  *(v31 + 32) = *MEMORY[0x277CBD098];
  *(v31 + 40) = v33;
  v34 = *MEMORY[0x277CBD0C8];
  v35 = *MEMORY[0x277CBCFB0];
  *(v31 + 48) = *MEMORY[0x277CBD0C8];
  *(v31 + 56) = v35;
  v36 = *MEMORY[0x277CBCF90];
  *(v31 + 64) = *MEMORY[0x277CBCF90];
  if (!v29)
  {
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v35;
    v58 = v36;

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logging.search);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v61))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v62, v63, "ContactStoreHelper returning nil for nil candidate");
      OUTLINED_FUNCTION_2_8();
    }

    OUTLINED_FUNCTION_92();
    v53 = v9;
    goto LABEL_11;
  }

  v230 = v4;
  v244 = v9;
  v37 = v2[6];
  v254 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v254);
  v253 = *(v37 + 8);
  swift_bridgeObjectRetain_n();
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  v65 = v253(v250, v29, v31, v254, v37);
  v229 = v29;

  v66 = [v65 phoneNumbers];
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = specialized Array.count.getter();
  v69 = MEMORY[0x277D84F90];
  v235 = v65;
  v226 = 0;
  if (v68)
  {
    v70 = v68;
    OUTLINED_FUNCTION_4_48(v68);
    if ((v70 & 0x8000000000000000) == 0)
    {
      v71 = 0;
      v72 = v258;
      v253 = (v67 & 0xFFFFFFFFFFFFFF8);
      v254 = v67 & 0xC000000000000001;
      while (1)
      {
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v254)
        {
          v74 = MEMORY[0x25F89FFD0](v71, v67);
        }

        else
        {
          OUTLINED_FUNCTION_16_34();
          if (v71 >= v75)
          {
            goto LABEL_117;
          }

          v74 = *(v67 + 8 * v71 + 32);
        }

        v76 = v74;
        v77 = [v74 label];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        v82 = ContactStoreHelper.extractLabel(from:)(v79, v81);
        v84 = v83;

        if (v84)
        {
          v256 = v82;
          v257 = v84;
          OUTLINED_FUNCTION_8_42();
          v85 = [v76 value];
          v86 = [v85 stringValue];

          v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          MEMORY[0x25F89F6C0](v87, v89);

          v66 = v256;
          v90 = v257;
        }

        else
        {
          v91 = [v76 value];
          v92 = [v91 stringValue];

          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v93;
        }

        v258 = v72;
        v95 = *(v72 + 16);
        v94 = *(v72 + 24);
        if (v95 >= v94 >> 1)
        {
          v98 = OUTLINED_FUNCTION_9_41(v94);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v98, v95 + 1, 1);
          v72 = v258;
        }

        *(v72 + 16) = v95 + 1;
        v96 = v72 + 16 * v95;
        *(v96 + 32) = v66;
        *(v96 + 40) = v90;
        ++v71;
        v97 = v255;
        if (v73 == v70)
        {
          v228 = v72;

          v65 = v235;
          v69 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }

LABEL_114:
      __break(1u);
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
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logging.search);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = OUTLINED_FUNCTION_105_6(v45);
      v47 = v244;
      if (v46)
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_84_5(&dword_25D85C000, v48, v49, "ContactStoreHelper returning nil for as we did not receive a contact result from CNContactStore");
        OUTLINED_FUNCTION_2_8();
      }

      OUTLINED_FUNCTION_92();
      v53 = v47;
LABEL_11:

      return __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    }

    __break(1u);
    goto LABEL_121;
  }

  v228 = MEMORY[0x277D84F90];
  v97 = v255;
LABEL_33:
  v99 = OUTLINED_FUNCTION_13_30([v65 emailAddresses]);

  v100 = specialized Array.count.getter();
  v34 = v252;
  if (v100)
  {
    v101 = v100;
    OUTLINED_FUNCTION_4_48(v100);
    if (v101 < 0)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      result = (*(v65 + 1))(v34, v66);
      __break(1u);
      return result;
    }

    v102 = 0;
    v103 = v258;
    v253 = (v99 & 0xFFFFFFFFFFFFFF8);
    v254 = v99 & 0xC000000000000001;
    do
    {
      v104 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_115;
      }

      if (v254)
      {
        v105 = MEMORY[0x25F89FFD0](v102, v99);
      }

      else
      {
        OUTLINED_FUNCTION_16_34();
        if (v102 >= v106)
        {
          goto LABEL_118;
        }

        v105 = *(v99 + 8 * v102 + 32);
      }

      v107 = v105;
      v108 = [v105 label];
      if (v108)
      {
        v109 = v108;
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;
      }

      else
      {
        v110 = 0;
        v112 = 0xE000000000000000;
      }

      v113 = ContactStoreHelper.extractLabel(from:)(v110, v112);
      v115 = v114;

      if (v115)
      {
        v256 = v113;
        v257 = v115;
        OUTLINED_FUNCTION_8_42();
        v116 = [v107 value];
        v117 = [v116 description];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        MEMORY[0x25F89F6C0](v118, v120);

        v66 = v256;
        v121 = v257;
      }

      else
      {
        v122 = [v107 value];
        v123 = [v122 description];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = v124;
      }

      v258 = v103;
      v126 = *(v103 + 16);
      v125 = *(v103 + 24);
      if (v126 >= v125 >> 1)
      {
        v128 = OUTLINED_FUNCTION_9_41(v125);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v128, v126 + 1, 1);
        v103 = v258;
      }

      *(v103 + 16) = v126 + 1;
      v127 = v103 + 16 * v126;
      *(v127 + 32) = v66;
      *(v127 + 40) = v121;
      ++v102;
    }

    while (v104 != v101);
    v227 = v103;

    v65 = v235;
    v34 = v252;
    v97 = v255;
    v69 = MEMORY[0x277D84F90];
  }

  else
  {

    v227 = MEMORY[0x277D84F90];
  }

  v129 = OUTLINED_FUNCTION_13_30([v65 postalAddresses]);

  v130 = specialized Array.count.getter();
  if (v130)
  {
    v66 = v130;
    OUTLINED_FUNCTION_4_48(v130);
    if (v66 < 0)
    {
      goto LABEL_122;
    }

    v131 = 0;
    v69 = v258;
    v253 = (v129 & 0xFFFFFFFFFFFFFF8);
    v254 = v129 & 0xC000000000000001;
    v132 = v66;
    do
    {
      v133 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_116;
      }

      if (v254)
      {
        v134 = MEMORY[0x25F89FFD0](v131, v129);
      }

      else
      {
        OUTLINED_FUNCTION_16_34();
        if (v131 >= v135)
        {
          goto LABEL_119;
        }

        v134 = *(v129 + 8 * v131 + 32);
      }

      v136 = v134;
      v137 = [v134 label];
      if (v137)
      {
        v138 = v137;
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;
      }

      else
      {
        v139 = 0;
        v141 = 0xE000000000000000;
      }

      v142 = ContactStoreHelper.extractLabel(from:)(v139, v141);
      v144 = v143;

      if (v144)
      {
        v256 = v142;
        v257 = v144;
        OUTLINED_FUNCTION_8_42();
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_3_53();
          swift_once();
        }

        v145 = static ContactStoreHelper.addressFormatter;
        v146 = [v136 value];
        v147 = [v145 stringFromPostalAddress_];

        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v150 = v149;

        MEMORY[0x25F89F6C0](v148, v150);

        v66 = v256;
        v151 = v257;
      }

      else
      {
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_3_53();
          swift_once();
        }

        v152 = static ContactStoreHelper.addressFormatter;
        v153 = [v136 value];
        v154 = [v152 stringFromPostalAddress_];

        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v155;
      }

      v258 = v69;
      v157 = *(v69 + 16);
      v156 = *(v69 + 24);
      if (v157 >= v156 >> 1)
      {
        v159 = OUTLINED_FUNCTION_9_41(v156);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v159, v157 + 1, 1);
        v69 = v258;
      }

      *(v69 + 16) = v157 + 1;
      v158 = v69 + 16 * v157;
      *(v158 + 32) = v66;
      *(v158 + 40) = v151;
      ++v131;
    }

    while (v133 != v132);

    v34 = v252;
    v97 = v255;
  }

  else
  {
  }

  v160 = OUTLINED_FUNCTION_13_30([v235 dates]);

  v161 = specialized Array.count.getter();
  v162 = 0;
  v253 = (v160 & 0xFFFFFFFFFFFFFF8);
  v254 = v160 & 0xC000000000000001;
  v231 = MEMORY[0x277D84F90];
  while (v161 != v162)
  {
    if (v254)
    {
      v164 = MEMORY[0x25F89FFD0](v162, v160);
    }

    else
    {
      OUTLINED_FUNCTION_16_34();
      if (v162 >= v163)
      {
        goto LABEL_113;
      }

      v164 = *(v160 + 8 * v162 + 32);
    }

    v165 = v164;
    v166 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v167 = [v164 label];
    if (v167)
    {
      v168 = v167;
      v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v171 = v170;
    }

    else
    {
      v169 = 0;
      v171 = 0xE000000000000000;
    }

    v172 = ContactStoreHelper.extractLabel(from:)(v169, v171);
    v174 = v173;

    if (v174)
    {
      if (one-time initialization token for dateFormatter != -1)
      {
        swift_once();
      }

      v175 = static ContactStoreHelper.dateFormatter;
      v176 = [v165 value];
      v177 = [v175 stringFromDateComponents_];

      if (!v177)
      {

        v34 = v252;
        goto LABEL_90;
      }

      v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v178;

      v256 = v172;
      v257 = v174;
      OUTLINED_FUNCTION_8_42();
      MEMORY[0x25F89F6C0](v225, v179);

      v180 = v256;
      v181 = v257;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
        v231 = v186;
      }

      v183 = *(v231 + 16);
      v182 = *(v231 + 24);
      v34 = v252;
      if (v183 >= v182 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182 > 1);
        v231 = v187;
      }

      v184 = v231;
      *(v231 + 16) = v183 + 1;
      v185 = v184 + 16 * v183;
      *(v185 + 32) = v180;
      *(v185 + 40) = v181;
      v162 = v166;
      v97 = v255;
    }

    else
    {

LABEL_90:
      ++v162;
      v97 = v255;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v188 = type metadata accessor for Logger();
  __swift_project_value_buffer(v188, static Logging.search);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.debug.getter();
  v191 = OUTLINED_FUNCTION_105_6(v190);
  v192 = v249;
  v193 = v247;
  if (v191)
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v194, v195, "ContactStoreHelper Finished fetching missing contact attributes from CNContactStore");
    OUTLINED_FUNCTION_2_8();
  }

  v196 = [v235 birthday];
  if (v196)
  {
    v197 = v196;
    v198 = v245;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v199 = 0;
    v65 = v236;
  }

  else
  {
    v199 = 1;
    v65 = v236;
    v198 = v245;
  }

  v66 = v237;
  __swift_storeEnumTagSinglePayload(v198, v199, 1, v237);
  outlined init with copy of Date?(v198, v97, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v97, 1, v66) == 1)
  {
    outlined destroy of IntentApplication?(v198, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  else
  {
    (*(v65 + 4))(v34, v97, v66);
    v200 = v226;
    closure #5 in ContactStoreHelper.candidateToSearchResult(candidate:)(&v256);
    if (v200)
    {
      goto LABEL_123;
    }

    (*(v65 + 1))(v34, v66);
    outlined destroy of IntentApplication?(v245, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  v201 = v227;

  v202 = v228;

  v203 = v250;
  v204 = v229;
  v205 = v238;
  v206 = v246;
  Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
  v207 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(v203, v204, v207);
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.displayName.setter(v205, v206, v207);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v202, v207, &selRef_setPhoneNumbers_);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v201, v207, &selRef_setEmailAddresses_);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v69, v207, &selRef_setAuthorAddresses_);
  v208 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v255 = v207;
  v209 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v203, v204, 0xD00000000000001BLL, 0x800000025DBF1CD0, v255);
  v210 = MEMORY[0x25F89F4C0](0xD00000000000001BLL, 0x800000025DBF1CD0);
  [v209 setBundleID_];

  v211 = v240;
  (*(v240 + 16))(v192, v193, v248);
  swift_storeEnumTagMultiPayload();
  v212 = v242;
  OUTLINED_FUNCTION_92();
  v213 = v230;
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v230);
  v217 = v243;
  v218 = v244;
  *(v243 + v244[7]) = MEMORY[0x277D84F90];
  v219 = (v217 + v218[10]);
  *v219 = 0;
  v219[1] = 0;
  outlined init with copy of SearchResultItem(v192, v217);
  type metadata accessor for CSSearchableItem();
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v220 = v209;
  CodableNSSecureCoding.init(wrappedValue:)();
  v221 = v241;
  outlined init with copy of Date?(v212, v241, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  if (__swift_getEnumTagSinglePayload(v221, 1, v213) == 1)
  {
    outlined destroy of IntentApplication?(v221, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    LOBYTE(v256) = 1;
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    outlined destroy of IntentApplication?(v212, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    outlined destroy of SearchResultItem(v249);
    (*(v211 + 8))(v247, v248);
  }

  else
  {

    outlined destroy of IntentApplication?(v212, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    outlined destroy of SearchResultItem(v249);
    (*(v211 + 8))(v247, v248);
    v222 = *(v234 + 32);
    v223 = v233;
    v222(v233, v221, v213);
    v222(v217 + v218[5], v223, v213);
  }

  *(v217 + v218[8]) = 3;
  *(v217 + v218[9]) = 1;
  v224 = v251;
  outlined init with take of SearchResult(v217, v251);
  return __swift_storeEnumTagSinglePayload(v224, 0, 1, v218);
}

void closure #5 in ContactStoreHelper.candidateToSearchResult(candidate:)(uint64_t *a1@<X8>)
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v2 = static ContactStoreHelper.dateFormatter;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDateComponents_];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ContactStoreHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setIdentifier_];
}

void outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(uint64_t a1, void *a2, SEL *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.displayName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setDisplayName_];
}

void *OUTLINED_FUNCTION_4_48(uint64_t a1)
{
  *(v2 - 104) = v1;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_8_42()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_13_30(uint64_t a1)
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

void *OUTLINED_FUNCTION_19_35()
{

  return specialized ContactContentManager.init(contactStore:)(v3, v0, v1, v2);
}

uint64_t UCGSearchService.init(maxItemCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = 3;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  type metadata accessor for FeatureFlagService();
  result = swift_allocObject();
  *(a3 + 32) = result;
  return result;
}

uint64_t UCGSearchService.init(maxItemCount:featureFlagService:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1;
  *(a4 + 8) = 3;
  *(a4 + 16) = result;
  *(a4 + 24) = a2 & 1;
  *(a4 + 32) = a3;
  return result;
}

uint64_t UCGSearchService.shouldRunUCGSearch(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_ucgSearch))
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.search);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "UCGSearchService skipping UCG search as the feature flag is disabled.";
LABEL_27:
      _os_log_impl(&dword_25D85C000, v11, v12, v14, v13, 2u);
      v23 = 0;
      goto LABEL_28;
    }

LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  v8 = *(type metadata accessor for UserQuery(0) + 28);
  outlined init with copy of Date?(a1 + v8, v7, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Entity) == 1)
  {
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    goto LABEL_14;
  }

  EntityProperty.wrappedValue.getter();
  v15 = v27;
  outlined destroy of StructuredQueryEntity(v7);
  if (!v15 || (v16 = specialized Sequence<>.contains(_:)(3, v15), , !v16))
  {
LABEL_14:
    outlined init with copy of Date?(a1 + v8, v4, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    if (__swift_getEnumTagSinglePayload(v4, 1, Entity) == 1)
    {
      outlined destroy of IntentApplication?(v4, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
      goto LABEL_23;
    }

    EntityProperty.wrappedValue.getter();
    v20 = v27;
    outlined destroy of StructuredQueryEntity(v4);
    if (!v20 || (v21 = specialized Sequence<>.contains(_:)(2, v20), , !v21))
    {
LABEL_23:
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logging.search);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "UCGSearchService skipping UCG search as this request doesn't meet the conditions to run UCG. No contacts queries returned.";
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logging.search);
    v11 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v18))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v19 = "Running UCG search -- preferredType contains contact";
      goto LABEL_22;
    }

LABEL_31:
    v23 = 1;
    goto LABEL_30;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logging.search);
  v11 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v11, v18))
  {
    goto LABEL_31;
  }

  v13 = swift_slowAlloc();
  *v13 = 0;
  v19 = "Running UCG search -- filterType contains contact";
LABEL_22:
  _os_log_impl(&dword_25D85C000, v11, v18, v19, v13, 2u);
  v23 = 1;
LABEL_28:
  MEMORY[0x25F8A1050](v13, -1, -1);
LABEL_30:

  return v23;
}

uint64_t UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for OSSignpostID();
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 96) = v7;
  *(v1 + 104) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  *(v1 + 128) = v10;
  v11 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v11;
  *(v1 + 48) = *(v0 + 32);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12);
}

{
  v1 = MEMORY[0x277D84F90];
  v0[7] = MEMORY[0x277D84F90];
  if (UCGSearchService.shouldRunUCGSearch(for:)(v0[9]))
  {
    if (one-time initialization token for searchComponentSignposter != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v2, static Logging.searchComponentSignposter);
    if (one-time initialization token for searchSignposter != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v3 = OSSignposter.logHandle.getter();
    v4 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v5 = OUTLINED_FUNCTION_172();
      *v5 = 0;
      v6 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v6, "SearchTool.UCGSearch", "", v5, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[12];

    v10 = OUTLINED_FUNCTION_88();
    v11(v10);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v12 = OSSignpostIntervalState.init(id:isOpen:)();
    v0[17] = v12;
    (*(v9 + 8))(v7, v8);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MetricsLogger.shared + 168))(v0[15], v0[16]);
    type metadata accessor for LatencyProfiler();
    swift_allocObject();
    v13 = LatencyProfiler.init(_:)(0xD000000000000028, 0x800000025DBF7DD0);
    v0[18] = v13;
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logging.search);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_172();
      *v17 = 0;
      _os_log_impl(&dword_25D85C000, v15, v16, "UCGSearchService searching UCG for any contact queries", v17, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v18 = UserQuery.toContactQueries.getter();
    v0[19] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
      v21 = swift_task_alloc();
      v0[20] = v21;
      v21[2] = v19;
      v21[3] = v0 + 2;
      v21[4] = v0 + 7;
      v22 = swift_task_alloc();
      v0[21] = v22;
      *v22 = v0;
      v22[1] = UCGSearchService.search(query:sources:allowedTypes:searchOptions:);
      v23 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200740](v22, v20, v23, 0, 0, &async function pointer to partial apply for closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:), v21, v20);
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_172();
      *v27 = 0;
      _os_log_impl(&dword_25D85C000, v25, v26, "UCGSearchService skipping UCG search, no contacts queries returned", v27, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v28 = v0[8];

    *v28 = v1;
    v28[1] = 0;
    (*(*v13 + 152))(v29, v30, v31, v32, v33);

    $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v12);
  }

  else
  {
    v24 = v0[8];
    *v24 = v1;
    v24[1] = 0;
  }

  OUTLINED_FUNCTION_127();

  return v34();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[8];
  *v3 = v0[7];
  v3[1] = 0;
  v4 = *(*v2 + 152);

  v4(v5);

  $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v1);

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  (*(*v1 + 152))(v3);

  $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v2);

  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchComponentSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "SearchTool.UCGSearch", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySay10OmniSearch0C6ResultVGs5Error_p_GMd, &_sScg8IteratorVySay10OmniSearch0C6ResultVGs5Error_p_GMR);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for ContactQuery();
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v5[30] = *(v8 + 64);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(v20 + 176);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v20 + 232);
    v64 = **(v20 + 168);
    v24 = *(v23 + 80);
    v25 = v21 + ((v24 + 32) & ~v24);
    v62 = (v23 + 16);
    v63 = *(v23 + 72);
    v61 = (v24 + 72) & ~v24;
    v60 = (v23 + 32);
    v26 = type metadata accessor for TaskPriority();
    v27 = &_sScPSgMd;
    do
    {
      v65 = v22;
      v29 = *(v20 + 256);
      v28 = *(v20 + 264);
      v30 = *(v20 + 248);
      v31 = *(v20 + 224);
      v32 = v27;
      v33 = *(v20 + 184);
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v26);
      (*v62)(v30, v25, v31);
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      v36 = *v33;
      v35 = v33[1];
      v37 = *(v33 + 4);
      v27 = v32;
      *(v34 + 64) = v37;
      *(v34 + 32) = v36;
      *(v34 + 48) = v35;
      (*v60)(v34 + v61, v30, v31);
      outlined init with copy of Date?(v28, v29, v32, &_sScPSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v26);
      v39 = *(v20 + 256);
      v40 = *(v20 + 184);
      if (EnumTagSinglePayload == 1)
      {
        outlined init with copy of UCGSearchService(v40, v20 + 16);
        v41 = OUTLINED_FUNCTION_88();
        outlined destroy of IntentApplication?(v41, v42, &_sScPSgMR);
      }

      else
      {
        outlined init with copy of UCGSearchService(v40, v20 + 56);
        TaskPriority.rawValue.getter();
        (*(*(v26 - 8) + 8))(v39, v26);
      }

      if (*(v34 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v43 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v44;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
      v46 = v45 | v43;
      if (v45 | v43)
      {
        v46 = v20 + 96;
        *(v20 + 96) = 0;
        *(v20 + 104) = 0;
        *(v20 + 112) = v43;
        *(v20 + 120) = v45;
      }

      *(v20 + 128) = 1;
      *(v20 + 136) = v46;
      *(v20 + 144) = v64;
      swift_task_create();

      v47 = OUTLINED_FUNCTION_88();
      outlined destroy of IntentApplication?(v47, v48, &_sScPSgMR);
      v25 += v63;
      v22 = v65 - 1;
    }

    while (v65 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  ThrowingTaskGroup.makeAsyncIterator()();
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v20 + 272) = v49;
  *v49 = v50;
  OUTLINED_FUNCTION_4_49(v49);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822004E8](v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_72();
  v29 = v20[19];
  if (v29)
  {
    v30 = v20[24];
    v31 = *(v29 + 16);
    v32 = *v30;
    v33 = *(*v30 + 16);
    v34 = v33 + v31;
    if (__OFADD__(v33, v31))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v32;
      if (!isUniquelyReferenced_nonNull_native || (v36 = *(v32 + 24) >> 1, v36 < v34))
      {
        v37 = v20[24];
        if (*(v32 + 16) <= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = *(v32 + 16);
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v38, 1, v32);
        v32 = v39;
        *v37 = v39;
        v36 = *(v39 + 24) >> 1;
      }

      if (*(v29 + 16))
      {
        v40 = v36 - *(v32 + 16);
        v21 = type metadata accessor for SearchResult(0);
        if (v40 >= v31)
        {
          swift_arrayInitWithCopy();

          if (!v31)
          {
            goto LABEL_18;
          }

          v41 = *(v32 + 16);
          v42 = __OFADD__(v41, v31);
          v43 = v41 + v31;
          if (!v42)
          {
            *(v32 + 16) = v43;
            goto LABEL_18;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x2822004E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (!v31)
      {
LABEL_18:
        *v20[24] = v32;
        swift_task_alloc();
        OUTLINED_FUNCTION_53();
        v20[34] = v48;
        *v48 = v49;
        OUTLINED_FUNCTION_4_49(v48);
        OUTLINED_FUNCTION_69();

        return MEMORY[0x2822004E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v44 = OUTLINED_FUNCTION_16_35();
  v45(v44);

  OUTLINED_FUNCTION_127();

  return v46();
}

uint64_t closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_16_35();
  v1(v0);

  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_17();
  (*(v7 + 16))(v2, v1, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:);

  return UCGSearchService.contactResults(contactQuery:)();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v5[12] = v0;

  if (v0)
  {
    outlined destroy of IntentApplication?(v5[10], &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  }

  else
  {
    v8 = v5[10];
    v5[13] = v3;
    outlined destroy of IntentApplication?(v8, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_48();
  **(v0 + 56) = *(v0 + 104);

  OUTLINED_FUNCTION_127();

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t UCGSearchService.contactResults(contactQuery:)()
{
  OUTLINED_FUNCTION_48();
  v0[9] = v1;
  v2 = type metadata accessor for Contact();
  v0[10] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[11] = v3;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v0[14] = OUTLINED_FUNCTION_199();
  v5 = type metadata accessor for SearchResult(0);
  v0[15] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[16] = v6;
  v0[17] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGMd, &_s13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGMR);
  v0[18] = v7;
  OUTLINED_FUNCTION_21(v7);
  v0[19] = v8;
  v0[20] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for ContactSearcher.Query();
  v0[21] = v9;
  OUTLINED_FUNCTION_21(v9);
  v0[22] = v10;
  v0[23] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for ContactSearcher();
  v0[24] = v11;
  OUTLINED_FUNCTION_21(v11);
  v0[25] = v12;
  v0[26] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for RecommenderType();
  v0[27] = v13;
  OUTLINED_FUNCTION_21(v13);
  v0[28] = v14;
  v0[29] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for SearchSuggestedContacts();
  v0[30] = v15;
  OUTLINED_FUNCTION_21(v15);
  v0[31] = v16;
  v0[32] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for ContactResolverDomain();
  OUTLINED_FUNCTION_114(v17);
  v0[33] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_114(v18);
  v0[34] = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for ContactResolverConfig();
  v0[35] = v19;
  OUTLINED_FUNCTION_21(v19);
  v0[36] = v20;
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v0[39] = OUTLINED_FUNCTION_199();
  v22 = type metadata accessor for ContactQuery();
  v0[40] = v22;
  OUTLINED_FUNCTION_21(v22);
  v0[41] = v23;
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v24);
}

{
  v1 = v0[39];
  v2 = v0[40];
  outlined init with copy of Date?(v0[9], v1, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v0[39], &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.search);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v5))
    {
      v6 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v6);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    OUTLINED_FUNCTION_191();

    __asm { BRAA            X2, X16 }
  }

  v14 = v0[36];
  v38 = v0[37];
  v39 = v0[35];
  v15 = v0[32];
  v17 = v0[30];
  v16 = v0[31];
  v18 = v0[28];
  v19 = v0[29];
  v20 = v0[27];
  v37 = v0[38];
  (*(v0[41] + 32))(v0[43], v0[39], v0[40]);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v16 + 104))(v15, *MEMORY[0x277D56148], v17);
  (*(v18 + 104))(v19, *MEMORY[0x277D560D0], v20);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)();
  (*(v14 + 16))(v38, v37, v39);
  ContactSearcher.init(config:)();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v21 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v21, static Logging.search);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v23))
  {
    v24 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v24);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v31 = v0[42];
  v30 = v0[43];
  v32 = v0[40];
  v33 = v0[41];

  (*(v33 + 16))(v31, v30, v32);
  ContactSearcher.Query.init(contactQuery:speechPackage:)();
  v34 = swift_task_alloc();
  v0[45] = v34;
  *v34 = v0;
  v34[1] = UCGSearchService.contactResults(contactQuery:);
  OUTLINED_FUNCTION_191();

  return MEMORY[0x2821B89B8]();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2[23];
  v4 = v2[22];
  v5 = v2[21];
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 368) = v8;
  *(v9 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10);
}

{
  v112 = v0;
  v1 = *(v0[46] + 16);
  if (!v1)
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v55))
    {
      v56 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v56);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v106 = v0[43];
    v63 = v0[40];
    v62 = v0[41];
    v64 = v0[38];
    v65 = v0[35];
    v66 = v0[36];
    v68 = v0[25];
    v67 = v0[26];
    v69 = v0[24];

    (*(v68 + 8))(v67, v69);
    (*(v66 + 8))(v64, v65);
    (*(v62 + 8))(v106, v63);
    goto LABEL_22;
  }

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[46];
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v108 = v7;
    *v6 = 136315138;
    MEMORY[0x25F89F8A0](v4, v5);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v6 + 4) = v8;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v14 = v0[46];
  v15 = v0[19];
  v89 = v0[16];
  v16 = v0[11];
  v17 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for ContactStoreHelper();
  inited = swift_initStackObject();
  v19 = type metadata accessor for CNContactStore();
  inited[2] = v17;
  v88 = inited + 2;
  inited[5] = v19;
  inited[6] = &protocol witness table for CNContactStore;
  v21 = *(v15 + 16);
  v20 = v15 + 16;
  v22 = v14 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v92 = *(v20 + 56);
  v93 = v21;
  v91 = (v16 + 8);
  v23 = MEMORY[0x277D84F90];
  v90 = v0;
  do
  {
    v102 = v1;
    v104 = v23;
    v24 = v0[20];
    v25 = v0[18];
    v96 = v0[14];
    v98 = v0[15];
    v26 = v0[12];
    v27 = v0[13];
    v28 = v0[10];
    v100 = v22;
    v93(v24);
    Match.value.getter();
    v29 = Contact.id.getter();
    v31 = v30;
    v32 = *v91;
    (*v91)(v27, v28);
    Match.value.getter();
    v33 = Contact.displayName.getter();
    v35 = v34;
    v32(v26, v28);
    v108 = v29;
    v109 = v31;
    v110 = v33;
    v111 = v35;
    ContactStoreHelper.candidateToSearchResult(candidate:)(&v108, v96);
    outlined consume of UCGCandidateContact?(v108, v109);
    (*(v20 - 8))(v24, v25);
    if (__swift_getEnumTagSinglePayload(v96, 1, v98) == 1)
    {
      v0 = v90;
      outlined destroy of IntentApplication?(v90[14], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v36 = v102;
      v23 = v104;
    }

    else
    {
      v0 = v90;
      outlined init with take of SearchResult(v90[14], v90[17]);
      v23 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 16) + 1, 1, v104);
        v23 = v40;
      }

      v36 = v102;
      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v23);
        v23 = v41;
      }

      v39 = v90[17];
      *(v23 + 16) = v38 + 1;
      outlined init with take of SearchResult(v39, v23 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v38);
    }

    v22 = v100 + v92;
    v1 = v36 - 1;
  }

  while (v1);

  if (!*(v23 + 16))
  {

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v71))
    {
      v72 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v72);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v107 = v0[43];
    v78 = v0[40];
    v79 = v0[41];
    v80 = v0[38];
    v81 = v0[35];
    v82 = v0[36];
    v84 = v0[25];
    v83 = v0[26];
    v85 = v0[24];

    (*(v84 + 8))(v83, v85);
    (*(v82 + 8))(v80, v81);
    (*(v79 + 8))(v107, v78);
LABEL_22:
    v105 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[43];
  v46 = v0[40];
  v47 = v0[41];
  v48 = v0[36];
  v101 = v0[35];
  v103 = v0[38];
  v49 = v0[25];
  v97 = v0[24];
  v99 = v0[26];
  v105 = v23;
  if (v44)
  {
    v95 = v0[40];
    v50 = swift_slowAlloc();
    v94 = v45;
    v51 = swift_slowAlloc();
    v108 = v51;
    *v50 = 136315138;
    v52 = OUTLINED_FUNCTION_88();
    MEMORY[0x25F89F8A0](v52);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v50 + 4) = v53;
    _os_log_impl(&dword_25D85C000, v42, v43, "UCGSearchService results: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v88);

    (*(v49 + 8))(v99, v97);
    (*(v48 + 8))(v103, v101);
    (*(v47 + 8))(v94, v95);
  }

  else
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    (*(v49 + 8))(v99, v97);
    (*(v48 + 8))(v103, v101);
    (*(v47 + 8))(v45, v46);
  }

LABEL_24:

  v86 = v0[1];

  return v86(v105);
}

void UCGSearchService.contactResults(contactQuery:)()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[35];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_88();
  v5(v4);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  __asm { BRAA            X1, X16 }
}

uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance UCGSearchService()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return UCGSearchService.search(query:sources:allowedTypes:searchOptions:)();
}

uint64_t partial apply for closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v5, v3, v6, v7, v8);
}

unint64_t type metadata accessor for CNContactStore()
{
  result = lazy cache variable for type metadata for CNContactStore;
  if (!lazy cache variable for type metadata for CNContactStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactStore);
  }

  return result;
}

uint64_t outlined consume of UCGCandidateContact?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UCGSearchService(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for UCGSearchService(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t partial apply for closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_114(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v3, v7, v8, v0 + 32, v0 + v6);
}

uint64_t outlined destroy of StructuredQueryEntity(uint64_t a1)
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  (*(*(Entity - 8) + 8))(a1, Entity);
  return a1;
}

uint64_t SearchRouter.structuredQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchRouter(0) + 24);

  return outlined init with copy of StructuredQueryEntity?(v3, a1);
}

uint64_t type metadata accessor for SearchRouter(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchRouter;
  if (!type metadata singleton initialization cache for SearchRouter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchRouter.isPersonal.getter()
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  v2 = *(Entity - 8);
  MEMORY[0x28223BE20](Entity);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v86 - v6;
  v90 = 0;
  v8 = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[1];
  if (v11 != 2 && (*v0 & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.search);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      v13 = v11 ^ 1;
      *(v35 + 4) = v13 & 1;
      _os_log_impl(&dword_25D85C000, v33, v34, "SearchRouter - Using PSC signal, isPersonal: %{BOOL}d", v35, 8u);
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v13 = v11 ^ 1;
    }

    return v13 & 1;
  }

  v12 = type metadata accessor for SearchRouter(0);
  outlined init with copy of StructuredQueryEntity?(&v0[*(v12 + 24)], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v7);
    goto LABEL_5;
  }

  _s10OmniSearch21StructuredQueryEntityVWObTm_0(v7, v89, type metadata accessor for StructuredQueryEntity);
  v87 = v8;
  EntityProperty.wrappedValue.getter();
  v14 = 0;
  if (v95)
  {
    v15 = v95;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = v15[2];
  v17 = &one-time initialization token for typeDisplayRepresentation;
  v88 = v2;
  while (v14 != v16)
  {
    if (v14 >= v15[2])
    {
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    outlined init with copy of PersonQueryEntity(v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4);
    EntityProperty.wrappedValue.getter();
    v18 = v93;
    if (v93)
    {
      v19 = v94;
      goto LABEL_16;
    }

    EntityProperty.wrappedValue.getter();
    v18 = v91;
    if (v91)
    {
      v19 = v92;
LABEL_16:
      v95 = v18;
      v96 = v19;
LABEL_17:
      EntityProperty.wrappedValue.getter();
      outlined consume of Person?(v18, v19);
      v20 = v93;
      goto LABEL_18;
    }

    EntityProperty.wrappedValue.getter();
    v18 = v95;
    if (v95)
    {
      v19 = v96;
      goto LABEL_17;
    }

    v20 = 0;
LABEL_18:
    if (v17[48] != -1)
    {
      swift_once();
    }

    EntityProperty.wrappedValue.getter();
    v21 = v95;
    if (v20)
    {
      if (v95)
      {
        v22 = v20[2];
        if (v22 == v95[2])
        {
          if (!v22 || v20 == v95)
          {
LABEL_42:

LABEL_43:
            OUTLINED_FUNCTION_1_67();

            if (one-time initialization token for search == -1)
            {
LABEL_44:
              v28 = type metadata accessor for Logger();
              __swift_project_value_buffer(v28, static Logging.search);
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                *v31 = 0;
                _os_log_impl(&dword_25D85C000, v29, v30, "SearchRouter - Skipping global search, found 'my' reference", v31, 2u);
                goto LABEL_46;
              }

              goto LABEL_47;
            }

LABEL_139:
            OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
            goto LABEL_44;
          }

          v23 = Entity;
          v24 = v17;
          v25 = v16;
          v26 = 0;
          while (1)
          {
            v27 = v20[v26 + 4] == v21[v26 + 4] && v20[v26 + 5] == v21[v26 + 5];
            if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v26 += 2;
            if (!--v22)
            {
              goto LABEL_42;
            }
          }

          v16 = v25;
          v17 = v24;
          Entity = v23;
          v2 = v88;
        }

        else
        {
        }
      }
    }

    else if (!v95)
    {
      goto LABEL_43;
    }

    ++v14;

    OUTLINED_FUNCTION_1_67();
  }

  EntityProperty.wrappedValue.getter();
  v37 = MEMORY[0x277D84F90];
  if (v95)
  {
    v38 = v95;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = v38[2];
  if (v39)
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_5_45();
    v42 = 32;
    v43 = v95;
    v44 = 0x6D72616C61;
    do
    {
      v45 = 0xE500000000000000;
      v46 = v44;
      switch(*(v38 + v42))
      {
        case 1:
          v45 = 0xE400000000000000;
          v46 = 1802465122;
          break;
        case 2:
          v45 = 0xE800000000000000;
          goto LABEL_77;
        case 3:
          v45 = 0xE700000000000000;
          v46 = 0x746361746E6F63;
          break;
        case 4:
          v45 = 0xEC0000006E6F6974;
          v46 = 0x61737265766E6F63;
          break;
        case 5:
          v45 = 0xED0000656C694673;
          goto LABEL_90;
        case 6:
          v45 = 0xEF7265646C6F4673;
LABEL_90:
          v46 = 0x746E656D75636F64;
          break;
        case 7:
          v45 = 0xE800000000000000;
          v46 = 0x6D726F6665657266;
          break;
        case 8:
          v45 = 0xE700000000000000;
          v46 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v45 = 0xE700000000000000;
          v48 = 0x746F6E79656BLL;
          goto LABEL_101;
        case 0xA:
          v45 = 0xE400000000000000;
          v46 = 1818845549;
          break;
        case 0xB:
          v45 = 0xE600000000000000;
          v46 = 0x79726F6D656DLL;
          break;
        case 0xC:
          v45 = 0xE700000000000000;
          v48 = 0x67617373656DLL;
          goto LABEL_101;
        case 0xD:
          v45 = 0xE400000000000000;
          v46 = 1702129518;
          break;
        case 0xE:
          v45 = v40 + 1264;
          v46 = 0x646C6F4665746F6ELL;
          break;
        case 0xF:
          v45 = 0xEB00000000656C69;
          v46 = 0x46737265626D756ELL;
          break;
        case 0x10:
          v46 = 0x6C69467365676170;
          v45 = 0xE900000000000065;
          break;
        case 0x11:
          v47 = 1852794992;
          goto LABEL_83;
        case 0x12:
          v49 = 1953458288;
          goto LABEL_96;
        case 0x13:
          v46 = 0x626C416F746F6870;
          v45 = 0xEA00000000006D75;
          break;
        case 0x14:
          v45 = 0xE800000000000000;
          goto LABEL_87;
        case 0x15:
          v45 = 0xEC0000007473694CLL;
LABEL_87:
          v46 = 0x7265646E696D6572;
          break;
        case 0x16:
          v45 = 0xE300000000000000;
          v46 = 6447476;
          break;
        case 0x17:
          v46 = 0x72656D6974;
          break;
        case 0x18:
          v49 = 1701079414;
          goto LABEL_96;
        case 0x19:
          v45 = v41 + 7;
          v46 = 0x69616D6563696F76;
          break;
        case 0x1A:
          v45 = v41 + 10;
          goto LABEL_105;
        case 0x1B:
          v45 = 0xE600000000000000;
          v46 = 0x74656C6C6177;
          break;
        case 0x1C:
          v45 = 0xE700000000000000;
          v48 = 0x746973626577;
LABEL_101:
          v46 = v48 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 0x1D:
          v45 = 0xE800000000000000;
          v46 = 0x616D61726F6E6170;
          break;
        case 0x1E:
          v45 = v40 + 1786;
          v46 = 0x68736E6565726373;
          break;
        case 0x1F:
          v45 = 0xE600000000000000;
          v46 = 0x6569666C6573;
          break;
        case 0x20:
          v49 = 1836018803;
LABEL_96:
          v46 = v49 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x21:
          v45 = 0xEC0000006F656469;
          v46 = 0x566C616974617073;
          break;
        case 0x22:
          v45 = 0xED0000746E657645;
LABEL_77:
          v46 = 0x7261646E656C6163;
          break;
        case 0x23:
          v45 = 0xE400000000000000;
          v46 = 1802398060;
          break;
        case 0x24:
          v47 = 1769369453;
LABEL_83:
          v46 = v47 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 0x25:
          v45 = 0xE600000000000000;
          v46 = 0x697261666173;
          break;
        case 0x26:
          v45 = v40 + 1530;
LABEL_105:
          v46 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      v95 = v43;
      v51 = v43[2];
      v50 = v43[3];
      if (v51 >= v50 >> 1)
      {
        v53 = OUTLINED_FUNCTION_26_3(v50);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v51 + 1, 1);
        OUTLINED_FUNCTION_5_45();
        v43 = v95;
      }

      v43[2] = v51 + 1;
      v52 = &v43[2 * v51];
      v52[4] = v46;
      v52[5] = v45;
      ++v42;
      --v39;
    }

    while (v39);
    v86 = v43;
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  EntityProperty.wrappedValue.getter();
  if (v95)
  {
    v54 = v95;
  }

  else
  {
    v54 = v37;
  }

  v55 = v54[2];
  if (v55)
  {
    OUTLINED_FUNCTION_4_50();
    v56 = 32;
    v57 = v95;
    do
    {
      LOBYTE(v93) = *(v54 + v56);
      v58 = PreferredType.rawValue.getter();
      v60 = v59;
      v95 = v57;
      v62 = v57[2];
      v61 = v57[3];
      if (v62 >= v61 >> 1)
      {
        v64 = OUTLINED_FUNCTION_26_3(v61);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64, v62 + 1, 1);
        v57 = v95;
      }

      v57[2] = v62 + 1;
      v63 = &v57[2 * v62];
      v63[4] = v58;
      v63[5] = v60;
      ++v56;
      --v55;
    }

    while (v55);
  }

  v95 = v86;

  specialized Array.append<A>(contentsOf:)(v65);
  v66 = v95;
  v67 = static SearchRouter.personalTypes.getter();
  v68 = v66[2];
  v90 = v67;

  v70 = 0;
  v71 = (v66 + 5);
  v87 = (v66 + 5);
  v88 = MEMORY[0x277D84F90];
LABEL_120:
  v72 = (v71 + 16 * v70);
  while (v68 != v70)
  {
    if (v70 >= v66[2])
    {
      goto LABEL_138;
    }

    v73 = *(v72 - 1);
    v74 = *v72;
    v95 = v73;
    v96 = v74;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    *(&v86 - 2) = &v95;

    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v86 - 4), v90))
    {
      v75 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 16) + 1, 1);
        v75 = v93;
      }

      v77 = *(v75 + 16);
      v76 = *(v75 + 24);
      if (v77 >= v76 >> 1)
      {
        v79 = OUTLINED_FUNCTION_26_3(v76);
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79, v77 + 1, 1);
        v75 = v93;
      }

      ++v70;
      *(v75 + 16) = v77 + 1;
      v88 = v75;
      v78 = v75 + 16 * v77;
      *(v78 + 32) = v73;
      *(v78 + 40) = v74;
      v71 = v87;
      goto LABEL_120;
    }

    v72 += 2;
    ++v70;
  }

  swift_bridgeObjectRelease_n();
  v80 = v88;
  if (*(v88 + 16))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logging.search);

    v29 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v95 = v84;
      *v83 = 136315138;
      MEMORY[0x25F89F8A0](v80, MEMORY[0x277D837D0]);

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v83 + 4) = v85;
      _os_log_impl(&dword_25D85C000, v29, v82, "SearchRouter - Skipping global search, found personal requested types %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      OUTLINED_FUNCTION_42_0();
LABEL_46:
      OUTLINED_FUNCTION_42_0();
LABEL_47:
    }

    else
    {
    }

    OUTLINED_FUNCTION_2_54();
    v13 = 1;
    return v13 & 1;
  }

  OUTLINED_FUNCTION_2_54();

LABEL_5:
  v13 = 0;
  return v13 & 1;
}

uint64_t static SearchRouter.personalTypes.getter()
{
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 21, 0);
  v0 = 0;
  result = v11;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x6D72616C61;
    switch(outlined read-only object #0 of static SearchRouter.personalTypes.getter[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1802465122;
        break;
      case 2:
        v2 = 0xE800000000000000;
        goto LABEL_19;
      case 3:
        v2 = 0xE700000000000000;
        v3 = 0x746361746E6F63;
        break;
      case 4:
        v2 = 0xEC0000006E6F6974;
        v3 = 0x61737265766E6F63;
        break;
      case 5:
        v2 = 0xED0000656C694673;
        goto LABEL_32;
      case 6:
        v2 = 0xEF7265646C6F4673;
LABEL_32:
        v3 = 0x746E656D75636F64;
        break;
      case 7:
        v2 = 0xE800000000000000;
        v3 = 0x6D726F6665657266;
        break;
      case 8:
        v2 = 0xE700000000000000;
        v3 = 0x6C616E72756F6ALL;
        break;
      case 9:
        v2 = 0xE700000000000000;
        v5 = 0x746F6E79656BLL;
        goto LABEL_43;
      case 0xA:
        v2 = 0xE400000000000000;
        v3 = 1818845549;
        break;
      case 0xB:
        v2 = 0xE600000000000000;
        v3 = 0x79726F6D656DLL;
        break;
      case 0xC:
        v2 = 0xE700000000000000;
        v5 = 0x67617373656DLL;
        goto LABEL_43;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1702129518;
        break;
      case 0xE:
        v2 = 0xEA00000000007265;
        v3 = 0x646C6F4665746F6ELL;
        break;
      case 0xF:
        v2 = 0xEB00000000656C69;
        v3 = 0x46737265626D756ELL;
        break;
      case 0x10:
        v3 = 0x6C69467365676170;
        v2 = 0xE900000000000065;
        break;
      case 0x11:
        v4 = 1852794992;
        goto LABEL_25;
      case 0x12:
        v6 = 1953458288;
        goto LABEL_38;
      case 0x13:
        v3 = 0x626C416F746F6870;
        v2 = 0xEA00000000006D75;
        break;
      case 0x14:
        v2 = 0xE800000000000000;
        goto LABEL_29;
      case 0x15:
        v2 = 0xEC0000007473694CLL;
LABEL_29:
        v3 = 0x7265646E696D6572;
        break;
      case 0x16:
        v2 = 0xE300000000000000;
        v3 = 6447476;
        break;
      case 0x17:
        v3 = 0x72656D6974;
        break;
      case 0x18:
        v6 = 1701079414;
        goto LABEL_38;
      case 0x19:
        v2 = 0xE90000000000006CLL;
        v3 = 0x69616D6563696F76;
        break;
      case 0x1A:
        v2 = 0xE90000000000006FLL;
        goto LABEL_47;
      case 0x1B:
        v2 = 0xE600000000000000;
        v3 = 0x74656C6C6177;
        break;
      case 0x1C:
        v2 = 0xE700000000000000;
        v5 = 0x746973626577;
LABEL_43:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 0x1D:
        v2 = 0xE800000000000000;
        v3 = 0x616D61726F6E6170;
        break;
      case 0x1E:
        v2 = 0xEA0000000000746FLL;
        v3 = 0x68736E6565726373;
        break;
      case 0x1F:
        v2 = 0xE600000000000000;
        v3 = 0x6569666C6573;
        break;
      case 0x20:
        v6 = 1836018803;
LABEL_38:
        v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x21:
        v2 = 0xEC0000006F656469;
        v3 = 0x566C616974617073;
        break;
      case 0x22:
        v2 = 0xED0000746E657645;
LABEL_19:
        v3 = 0x7261646E656C6163;
        break;
      case 0x23:
        v2 = 0xE400000000000000;
        v3 = 1802398060;
        break;
      case 0x24:
        v4 = 1769369453;
LABEL_25:
        v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 0x25:
        v2 = 0xE600000000000000;
        v3 = 0x697261666173;
        break;
      case 0x26:
        v2 = 0xEA0000000000736FLL;
LABEL_47:
        v3 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    v12 = result;
    v8 = *(result + 16);
    v7 = *(result + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = OUTLINED_FUNCTION_26_3(v7);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v8 + 1, 1);
      result = v12;
    }

    ++v0;
    *(result + 16) = v8 + 1;
    v9 = result + 16 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  while (v0 != 21);
  return result;
}

uint64_t SearchRouter.init(isComposite:didPSCFire:structuredQuery:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = &a4[*(type metadata accessor for SearchRouter(0) + 24)];

  return outlined init with take of StructuredQueryEntity?(a3, v5);
}

uint64_t SearchRouter.init(request:)@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32[-v5];
  v7 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-v12];
  v14 = type metadata accessor for SearchToolIntentRequest(0);
  memcpy(__dst, a1 + v14[9], 0xA0uLL);
  if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
  {
    v15 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v15 = v32[7];
  }

  a2[1] = v15 & 1;
  v16 = v14[7];
  v17 = type metadata accessor for SearchRouter(0);
  outlined init with copy of StructuredQueryEntity?(a1 + v16, &a2[*(v17 + 24)]);
  v18 = *(a1 + v14[13]);
  if (v18 == 2)
  {
    v20 = *a1;
    v19 = a1[1];
    v22 = a1[2];
    v21 = a1[3];
    Entity = type metadata accessor for StructuredQueryEntity(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, Entity);
    *v10 = v20;
    v10[1] = v19;
    if (!v21)
    {
      goto LABEL_10;
    }

    v24 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v10[2] = v22;
      v10[3] = v21;
    }

    else
    {
LABEL_10:
      v10[2] = v20;
      v10[3] = v19;
    }

    v10[4] = 0;
    v10[5] = 0;
    outlined init with copy of StructuredQueryEntity?(v6, v10 + *(v7 + 28));
    v25 = (v10 + *(v7 + 32));
    *v25 = 0;
    v25[1] = 0;

    UtteranceNormalizer.init(locale:)();
    outlined destroy of StructuredQueryEntity?(v6);
    _s10OmniSearch21StructuredQueryEntityVWObTm_0(v10, v13, type metadata accessor for UserQuery);
    if (*v13 == v13[2] && v13[1] == v13[3])
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      LOBYTE(v18) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    outlined destroy of PersonQueryEntity(v13, type metadata accessor for UserQuery);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logging.search);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = (v18 & 1) == 0;
      OUTLINED_FUNCTION_42_0();
    }
  }

  result = outlined destroy of PersonQueryEntity(a1, type metadata accessor for SearchToolIntentRequest);
  *a2 = (v18 & 1) == 0;
  return result;
}

uint64_t outlined init with copy of PersonQueryEntity(uint64_t a1, uint64_t a2)
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  (*(*(Entity - 8) + 16))(a2, a1, Entity);
  return a2;
}

uint64_t outlined init with take of StructuredQueryEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch21StructuredQueryEntityVWObTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PersonQueryEntity(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

void type metadata completion function for SearchRouter(uint64_t a1)
{
  type metadata accessor for Bool?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StructuredQueryEntity?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

void type metadata accessor for StructuredQueryEntity?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StructuredQueryEntity?)
  {
    type metadata accessor for StructuredQueryEntity(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StructuredQueryEntity?);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_67()
{

  return outlined destroy of PersonQueryEntity(v0, type metadata accessor for PersonQueryEntity);
}

uint64_t OUTLINED_FUNCTION_2_54()
{
  v2 = *(v0 - 152);

  return outlined destroy of PersonQueryEntity(v2, type metadata accessor for StructuredQueryEntity);
}

void *OUTLINED_FUNCTION_4_50()
{
  *(v2 - 96) = v0;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
}

uint64_t TrialManager.__allocating_init(trialClient:namespace:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_70(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_55();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void *TrialManager.getFactorValue(factorName:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

BOOL TrialManager.Namespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialManager.Namespace.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance TrialManager.Namespace@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TrialManager.Namespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TrialManager.Namespace@<X0>(void *a1@<X8>)
{
  result = TrialManager.Namespace.rawValue.getter();
  *a1 = 0xD00000000000001CLL;
  a1[1] = v3;
  return result;
}

uint64_t TrialManager.init(trialClient:namespace:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_70(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_55();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t TrialManager.loadFactorsAndExperiment()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_19_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v11, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v15 = v14;
    *v14 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v12, v13, v16, "RefreshTrialManager", "", v15, 2u);
    v17 = v15;
    v2 = v28;
    MEMORY[0x25F8A1050](v17, -1, -1);
  }

  (*(v4 + 16))(v7, v10, v2);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v18 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v10, v2);
  v19 = TrialManager.fetchFactorValues()();
  swift_beginAccess();
  *(v1 + 72) = v19;

  TrialManager.fetchEnrolledExperiment()(v30);
  v20 = *(v1 + 96);
  v31[0] = *(v1 + 80);
  v31[1] = v20;
  v21 = *(v1 + 128);
  v31[2] = *(v1 + 112);
  v31[3] = v21;
  v22 = v30[1];
  *(v1 + 80) = v30[0];
  *(v1 + 96) = v22;
  v23 = v30[3];
  *(v1 + 112) = v30[2];
  *(v1 + 128) = v23;
  outlined destroy of TrialEnrollment?(v31);
  v24 = *(v1 + 96);
  v32[0] = *(v1 + 80);
  v32[1] = v24;
  v25 = *(v1 + 128);
  v32[2] = *(v1 + 112);
  v32[3] = v25;
  v26 = *(v1 + 72);
  outlined init with copy of TrialEnrollment?(v32, &v29);

  TrialManager.logState(enrollment:factors:)(v32, v26);

  outlined destroy of TrialEnrollment?(v32);
  $defer #1 () in TrialManager.loadFactorsAndExperiment()(v18);
}

uint64_t closure #1 in TrialManager.init(trialClient:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v5, v6, "Updating TrialManager because of a notification: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x25F8A1050](v8, -1, -1);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    outlined init with copy of ChatMessageRecord(Strong + 32, v13);

    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 16))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TrialManager.loadFactorsAndExperiment()();
  }

  return result;
}

void TrialManager.fetchEnrolledExperiment()(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (*(v5 + 24))(v2[2], v2[3], v4, v5);
  v9 = v1[7];
  v10 = v1[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v11 = (*(v10 + 32))(v6, v7, v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 rolloutId];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v8)
  {
    v16 = [v8 experimentId];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v8 treatmentId];
    v20 = v8;
    v21 = v6;
    v22 = v15;
    v23 = v12;
    v24 = v19;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v12 = v23;
    v15 = v22;
    v6 = v21;

    v28 = v29;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v18 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v28;
  a1[3] = v18;
  a1[4] = v25;
  a1[5] = v27;
  a1[6] = v12;
  a1[7] = v15;
}

void __swiftcall TrialEnrollment.init(experimentNamespace:experimentId:treatmentId:rolloutId:)(OmniSearch::TrialEnrollment *__return_ptr retstr, Swift::String_optional experimentNamespace, Swift::String_optional experimentId, Swift::String_optional treatmentId, Swift::String_optional rolloutId)
{
  retstr->experimentNamespace = experimentNamespace;
  retstr->experimentId = experimentId;
  retstr->treatmentId = treatmentId;
  retstr->rolloutId = rolloutId;
}

uint64_t $defer #1 () in TrialManager.loadFactorsAndExperiment()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "RefreshTrialManager", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TrialManager.fetchFactorValues()()
{
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  v4 = (*(v3 + 40))(v0[2], v0[3], v2, v3);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  v10 = Dictionary.init(dictionaryLiteral:)();
  v5 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v10;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v1 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = v7;
    closure #1 in TrialManager.fetchFactorValues()(&v10, &v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

void TrialManager.logState(enrollment:factors:)(uint64_t *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(111);
  MEMORY[0x25F89F6C0](0xD00000000000002CLL, 0x800000025DBF7EF0);
  v4 = a1[1];
  if (v4 >= 2)
  {
    v6 = *a1;

    v5 = v4;
  }

  else
  {

    v5 = 0xE100000000000000;
    v6 = 45;
  }

  MEMORY[0x25F89F6C0](v6, v5);

  MEMORY[0x25F89F6C0](0xD000000000000010, 0x800000025DBF7F20);
  if (v4 == 1 || (v7 = a1[5]) == 0)
  {

    v7 = 0xE100000000000000;
    v8 = 45;
  }

  else
  {
    v8 = a1[4];
  }

  MEMORY[0x25F89F6C0](v8, v7);

  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF7F40);
  if (v4 == 1 || (v9 = a1[3]) == 0)
  {

    v9 = 0xE100000000000000;
    v10 = 45;
  }

  else
  {
    v10 = a1[2];
  }

  MEMORY[0x25F89F6C0](v10, v9);

  MEMORY[0x25F89F6C0](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (v4 == 1 || (v11 = a1[7]) == 0)
  {

    v11 = 0xE100000000000000;
    v12 = 45;
  }

  else
  {
    v12 = a1[6];
  }

  MEMORY[0x25F89F6C0](v12, v11);

  MEMORY[0x25F89F6C0](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_24:
      v19 = __clz(__rbit64(v15)) | (v18 << 6);
      v20 = (*(a2 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(a2 + 56) + 8 * v19);
      v15 &= v15 - 1;

      v24 = v23;
      MEMORY[0x25F89F6C0](v21, v22);

      MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      MEMORY[0x25F89F6C0](v26, v28);

      MEMORY[0x25F89F6C0](10, 0xE100000000000000);
      MEMORY[0x25F89F6C0](538976288, 0xE400000000000000);

      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(a2 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for search == -1)
  {
    goto LABEL_27;
  }

LABEL_34:
  swift_once();
LABEL_27:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logging.search);

  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v31 = 136315138;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v31 + 4) = v32;
    _os_log_impl(&dword_25D85C000, oslog, v30, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x25F8A1050](v34, -1, -1);
    MEMORY[0x25F8A1050](v31, -1, -1);
  }

  else
  {
  }
}

void closure #1 in TrialManager.fetchFactorValues()(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 factor];
  if (v4)
  {
    v5 = outlined bridged method (ob) of @objc TRIFactor.name.getter(v4);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [v3 level];
      if (v9)
      {
        v10 = v9;
        if ([v9 levelOneOfCase])
        {
          v11 = v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *a1;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v7, v8, isUniquelyReferenced_nonNull_native);

          *a1 = v21;
          return;
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logging.search);
    v14 = v3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v17 = 136315138;
      v18 = v14;
      v19 = [v18 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v17 + 4) = v20;
      _os_log_impl(&dword_25D85C000, v15, v16, "Skipping becaues %s has no value", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x25F8A1050](v22, -1, -1);
      MEMORY[0x25F8A1050](v17, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall TrialManager.getEnrolledExperiment()(OmniSearch::TrialEnrollment_optional *__return_ptr retstr)
{
  v3 = v1[6];
  v8 = v1[5];
  v9 = v3;
  v4 = v1[8];
  v10 = v1[7];
  v11 = v4;
  outlined init with copy of TrialEnrollment?(&v8, &v7);
  v5 = v9;
  retstr->value.experimentNamespace = v8;
  retstr->value.experimentId = v5;
  v6 = v11;
  retstr->value.treatmentId = v10;
  retstr->value.rolloutId = v6;
}

void *TrialManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  outlined consume of TrialEnrollment?(v0[10], v0[11]);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TrialManager.__deallocating_deinit()
{
  TrialManager.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc TRIClient.addUpdateHandler(forNamespaceName:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0](a1, a2);
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ();
  v11[3] = &block_descriptor_8;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id @nonobjc TRIClient.experimentIdentifiers(withNamespaceName:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = MEMORY[0x25F89F4C0](a1, a2);
  v6 = [v3 *a3];

  return v6;
}

uint64_t @nonobjc TRIClient.factorLevels(withNamespaceName:)()
{
  v1 = MEMORY[0x25F89F4C0]();
  v2 = [v0 factorLevelsWithNamespaceName_];

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRIFactorLevel, 0x277D73B08);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
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

uint64_t specialized TrialManager.init(trialClient:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  *(a4 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 80) = xmmword_25DBC9A70;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  outlined init with copy of ChatMessageRecord(v20, a4 + 32);

  TrialManager.loadFactorsAndExperiment()();
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v15;
  v17 = *(a6 + 8);

  v18 = v17(v13, v14, partial apply for closure #1 in TrialManager.init(trialClient:namespace:), v16, a5, a6);

  *(a4 + 144) = v18;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return a4;
}

uint64_t outlined init with copy of TrialEnrollment?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15TrialEnrollmentVSgMd, &_s10OmniSearch15TrialEnrollmentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of TrialEnrollment?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrialManager.Namespace and conformance TrialManager.Namespace()
{
  result = lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace;
  if (!lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialManager.Namespace(_BYTE *result, int a2, int a3)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of TrialEnrollment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15TrialEnrollmentVSgMd, &_s10OmniSearch15TrialEnrollmentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return specialized TrialManager.init(trialClient:namespace:)(v5, v2, v0, v1, v3, v4);
}

uint64_t key path setter for AnswerSynthesisAllowedAppsChecker.allowedTypesConfig : AnswerSynthesisAllowedAppsChecker(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) | (*(a1 + 10) << 16);
  v3 = *(**a2 + 96);

  return v3(v4, v2);
}

uint64_t AnswerSynthesisAllowedAppsChecker.allowedTypesConfig.setter(uint64_t a1, int a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 26) = BYTE2(a2);
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__allocating_init(locale:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_36();
  v4 = swift_allocObject();
  AnswerSynthesisAllowedAppsChecker.init(locale:)(a1, a2);
  return v4;
}

uint64_t AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  OUTLINED_FUNCTION_133();
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v30 - v7;
  v8 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  *(v2 + 16) = 0;
  *(v2 + 26) = 0;
  *(v2 + 24) = 0;
  v18 = [objc_opt_self() processInfo];
  v19 = NSProcessInfo.isRunningUnitTests.getter();

  if (v19)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v20 = Dictionary.init(dictionaryLiteral:)();
    swift_beginAccess();
    *(v3 + 16) = v20;
    *(v3 + 26) = 1;
    *(v3 + 24) = 1;
  }

  else
  {
    if (!a2)
    {
      v21 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.fallbackLocale.getter(v21, v22, v23, v24, v25);
    }

    Locale.init(identifier:)();
    v26 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v26);
    (*(v10 + 16))(v14, v17, v8);
    v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v3;
    (*(v10 + 32))(&v28[v27], v14, v8);
    *&v28[(v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8] = v32;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v10 + 8))(v17, v8);
  }

  return v3;
}

OmniSearch::AnswerSynthesisAllowedAppsConfig __swiftcall AnswerSynthesisAllowedAppsConfig.init(allowedTypes:allowMultiSources:disallowAllModelDialogs:voiceModes:)(OmniSearch::AnswerSynthesisAllowedAppsConfig allowedTypes, Swift::Bool allowMultiSources, Swift::Bool disallowAllModelDialogs, Swift::Bool voiceModes)
{
  if (disallowAllModelDialogs)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | allowMultiSources;
  if (voiceModes)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 | v6;
  allowedTypes.allowMultiSources = v7;
  allowedTypes.disallowAllModelDialogs = BYTE1(v7);
  allowedTypes.voiceModes = BYTE2(v7);
  return allowedTypes;
}

uint64_t closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:));
}

uint64_t closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)()
{
  v1 = v0[2];
  v2 = static AnswerSynthesisAllowedAppsChecker.loadDefaultConfig(locale:)(v0[3]);
  (*(*v1 + 96))(v2, v3 & 0xFFFFFF);
  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Locale() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t static AnswerSynthesisAllowedAppsChecker.loadDefaultConfig(locale:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  static AnswerSynthesisAllowedAppsChecker.uafDirectory(locale:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    URL.appendingPathComponent(_:)();
    v11 = static AnswerSynthesisAllowedAppsChecker.configFromDirectory(_:)(v7);
    v12 = *(v5 + 8);
    v12(v7, v4);
    if (v11)
    {
      if (one-time initialization token for utilities != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logging.utilities);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25D85C000, v14, v15, "Using UAF config for Answer Synthesis allowed types", v16, 2u);
        MEMORY[0x25F8A1050](v16, -1, -1);
      }

      v12(v10, v4);
      return v11;
    }

    v12(v10, v4);
  }

  type metadata accessor for OmniSearchService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8000);
  outlined bridged method (mnbnb) of @objc NSBundle.path(forResource:ofType:)(v19, 0x7473696C70, 0xE500000000000000, v18);
  v21 = v20;

  if (v21)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    URL.init(fileURLWithPath:)();

    v22 = NSDictionary.__allocating_init(contentsOf:)(v7);
    if (v22)
    {
      v23 = v22;
      v24 = AnswerSynthesisAllowedAppsConfig.init(from:)(v23);
      if (v24)
      {
        v11 = v24;
        if (one-time initialization token for utilities != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logging.utilities);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_25D85C000, v26, v27, "Using default config from build for Answer Synthesis allowed types", v28, 2u);
          MEMORY[0x25F8A1050](v28, -1, -1);
        }

        return v11;
      }
    }
  }

  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logging.utilities);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_25D85C000, v30, v31, "Unable to initialize configs for Answer Synthesis allowed types", v32, 2u);
    MEMORY[0x25F8A1050](v32, -1, -1);
  }

  return 0;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__allocating_init(config:)(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_6_36();
  v4 = swift_allocObject();
  AnswerSynthesisAllowedAppsChecker.init(config:)(a1, a2 & 0xFFFFFF);
  return v4;
}

uint64_t AnswerSynthesisAllowedAppsChecker.init(config:)(uint64_t a1, int a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 26) = BYTE2(a2);
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnswerSynthesisAllowedAppsChecker.allResultsAllowed(searchResults:options:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = *(a2 + 40);
  OUTLINED_FUNCTION_133();
  v15 = (*(v14 + 88))();
  if (!v15)
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v26, static Logging.utilities);
    v20 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_105_6(v27))
    {
      goto LABEL_20;
    }

    v28 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v28);
    v25 = "Allowed types config not initialized, rejecting.";
    goto LABEL_19;
  }

  v17 = v15;
  v18 = v16;
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_disallowAllModelDialogs) || (v18 & 0x100) != 0)
  {

    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v29, static Logging.utilities);
    v20 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_105_6(v30))
    {
      goto LABEL_20;
    }

    v31 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v31);
    v25 = "Rejecting all model-generated dialogs per config value";
    goto LABEL_19;
  }

  if (*(v17 + 16))
  {
    if ((v18 & 1) != 0 || *(a1 + 16) < 2uLL)
    {
      if ((v18 & 0x10000) != 0 || (v13 & 0xFE) != 2)
      {
        if (one-time initialization token for utilities != -1)
        {
          OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
        }

        v42 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v42, static Logging.utilities);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        v45 = os_log_type_enabled(v43, v44);
        v76 = v6;
        if (v45)
        {
          v75 = v44;
          v46 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v80 = v73;
          v74 = v46;
          *v46 = 136315138;
          v47 = *(a1 + 16);
          v48 = MEMORY[0x277D84F90];
          if (v47)
          {
            v70 = v43;
            v71 = v4;
            v79 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
            v48 = v79;
            v49 = *(v76 + 80);
            v72 = a1;
            v50 = a1 + ((v49 + 32) & ~v49);
            v77 = *(v76 + 72);
            do
            {
              outlined init with copy of SearchResult(v50, v12);
              SearchResultItem.type.getter(&v78);
              outlined destroy of SearchResult(v12);
              v51 = v78;
              v79 = v48;
              v53 = *(v48 + 16);
              v52 = *(v48 + 24);
              if (v53 >= v52 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1);
                v48 = v79;
              }

              *(v48 + 16) = v53 + 1;
              *(v48 + v53 + 32) = v51;
              v50 += v77;
              --v47;
            }

            while (v47);
            a1 = v72;
            v43 = v70;
          }

          MEMORY[0x25F89F8A0](v48, &type metadata for SearchResultKey);

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          v55 = v74;
          *(v74 + 1) = v54;
          _os_log_impl(&dword_25D85C000, v43, v75, "Checking dialog allowlist with result types: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();

          v6 = v76;
        }

        else
        {
        }

        v56 = 0;
        v57 = *(a1 + 16);
        while (1)
        {
          if (v57 == v56)
          {

            return 1;
          }

          outlined init with copy of SearchResult(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v56, v9);
          SearchResultItem.type.getter(&v80);
          SearchResultKey.rawValue.getter();
          if (!*(v17 + 16))
          {
            break;
          }

          v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
          v62 = v61;

          if ((v62 & 1) == 0)
          {
            goto LABEL_59;
          }

          v63 = *(*(v17 + 56) + 8 * v60);
          if (*(v63 + 16))
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
            v64 = CodableNSSecureCoding.wrappedValue.getter();
            v65 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v64);
            if (v66)
            {
              v67 = v66;
            }

            else
            {
              v65 = 0;
              v67 = 0xE000000000000000;
            }

            v68 = specialized Set.contains(_:)(v65, v67, v63);

            outlined destroy of SearchResult(v9);
            v6 = v76;
            if (!v68)
            {

              return 0;
            }
          }

          else
          {
            outlined destroy of SearchResult(v9);
            v6 = v76;
          }

          ++v56;
        }

LABEL_59:

        outlined destroy of SearchResult(v9);
        return 0;
      }

      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
      }

      v33 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v33, static Logging.utilities);
      v20 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_105_6(v34))
      {
LABEL_20:

        return 0;
      }

      v35 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v35);
      v25 = "Interaction mode is voice but voice mode is disabled in config, rejecting";
    }

    else
    {

      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v19, static Logging.utilities);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_105_6(v21))
      {
        goto LABEL_20;
      }

      v22 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v22);
      v25 = "Multi-source answer dialog is disabled, rejecting.";
    }

LABEL_19:
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v23, v24, v25);
    OUTLINED_FUNCTION_42_0();
    goto LABEL_20;
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v36, static Logging.utilities);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v38))
  {
    v39 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v39);
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v40, v41, "Empty allowed types in config and not rejecting all dialogs, allowing.");
    OUTLINED_FUNCTION_42_0();
  }

  return 1;
}

uint64_t static AnswerSynthesisAllowedAppsChecker.uafDirectory(locale:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for Locale.IdentifierType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277CC9668], v5, v7);
  Locale.identifier.getter();
  v10 = static Locale.identifier(_:from:)();
  v12 = v11;

  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x75676E616C2E6772;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = v10;
  *(inited + 56) = v12;

  v14 = Dictionary.init(dictionaryLiteral:)();
  v15 = [objc_opt_self() sharedManager];
  v16 = MEMORY[0x25F89F4C0](0xD00000000000001ELL, 0x800000025DBF8050);
  v17 = outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(v16, v14, v15);

  if (!v17)
  {

LABEL_7:
    v24 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v24);
  }

  v27 = 0xD000000000000033;
  v28 = 0x800000025DBF8070;
  v18 = v17;
  MEMORY[0x25F89F6C0](v10, v12);

  v19 = MEMORY[0x25F89F4C0](v27, v28);

  v20 = [v18 assetNamed_];

  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = [v20 location];
  if (v21)
  {
    v22 = v21;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v26 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v4, v23, 1, v26);
  return outlined init with take of URL?(v4, a1);
}

unint64_t static AnswerSynthesisAllowedAppsChecker.configFromDirectory(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logging.utilities);
  v45 = *(v3 + 16);
  v45(v10, a1, v2);
  v43 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v15 = os_log_type_enabled(v13, v14);
  v44 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v40 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = v5;
    v19 = v18;
    v46 = v18;
    *v17 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v10;
    v21 = *(v3 + 8);
    v21(v20, v2);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v17 + 4) = v22;
    _os_log_impl(&dword_25D85C000, v13, v14, "Loading overrides from: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v23 = v19;
    v5 = v41;
    MEMORY[0x25F8A1050](v23, -1, -1);
    v24 = v17;
    a1 = v40;
    MEMORY[0x25F8A1050](v24, -1, -1);
  }

  else
  {

    v25 = v10;
    v21 = *(v3 + 8);
    v21(v25, v2);
  }

  v26 = [objc_opt_self() defaultManager];
  v27 = URL.path.getter();
  v28 = MEMORY[0x25F89F4C0](v27);

  v29 = [v26 fileExistsAtPath_];

  v30 = v45;
  if (!v29 || (type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0), v31 = v42, v30(v42, a1, v2), (v32 = NSDictionary.__allocating_init(contentsOf:)(v31)) == 0) || (result = AnswerSynthesisAllowedAppsConfig.init(from:)(v32)) == 0)
  {
    v30(v5, a1, v2);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v36 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      dispatch thunk of CustomStringConvertible.description.getter();
      v21(v5, v2);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v36 + 4) = v38;
      _os_log_impl(&dword_25D85C000, v34, v35, "Cannot load config from path %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x25F8A1050](v37, -1, -1);
      MEMORY[0x25F8A1050](v36, -1, -1);
    }

    else
    {

      v21(v5, v2);
    }

    return 0;
  }

  return result;
}

id NSDictionary.__allocating_init(contentsOf:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

OmniSearch::AnswerSynthesisAllowedAppsConfig_optional __swiftcall AnswerSynthesisAllowedAppsConfig.init(from:)(NSDictionary from)
{
  isa = from.super.isa;
  *&v136 = 0x6E6F6973726576;
  *(&v136 + 1) = 0xE700000000000000;
  v2 = [(objc_class *)from.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  v3 = swift_unknownObjectRelease();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  *&v17 = OUTLINED_FUNCTION_7_45(v3, v4, v5, v6, v7, v8, v9, v10, v122, v125, v128, v132, v136, *(&v136 + 1), v137).n128_u64[0];
  if (!v18)
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if ((OUTLINED_FUNCTION_13_31(v11, v12, v13, MEMORY[0x277D83B88], v14, v15, v16, v17) & 1) == 0 || v133 < 1)
  {
LABEL_10:
    if (one-time initialization token for utilities == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_83;
  }

  strcpy(&v136, "allowedTypes");
  BYTE13(v136) = 0;
  HIWORD(v136) = -5120;
  v19 = [isa __swift_objectForKeyedSubscript_];
  v20 = swift_unknownObjectRelease();
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    v20 = swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  OUTLINED_FUNCTION_7_45(v20, v21, v22, v23, v24, v25, v26, v27, v123, v126, v129, v133, v136, *(&v136 + 1), v137);
  if (!v36)
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
LABEL_32:
    if (one-time initialization token for utilities == -1)
    {
LABEL_33:
      v62 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v62, static Logging.utilities);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_88_0(v30))
      {
        goto LABEL_14;
      }

      v31 = OUTLINED_FUNCTION_172();
      *v31 = 0;
      v32 = "Unable to parse allowed types from config.";
      goto LABEL_13;
    }

LABEL_85:
    OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
    goto LABEL_33;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  if ((OUTLINED_FUNCTION_13_31(v37, v38, v39, v37, v40, v41, v42) & 1) == 0)
  {
    goto LABEL_32;
  }

  v127 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  v43 = static _DictionaryStorage.copy(original:)();
  v34 = v43;
  v44 = 0;
  v45 = 1 << *(v134 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  isa = v46 & *(v134 + 64);
  v47 = (v45 + 63) >> 6;
  v48 = v43 + 64;
  v130 = v43;
  if (isa)
  {
    while (1)
    {
      v49 = __clz(__rbit64(isa));
      isa &= isa - 1;
LABEL_28:
      v52 = v49 | (v44 << 6);
      v53 = (*(v134 + 48) + 16 * v52);
      v55 = *v53;
      v54 = v53[1];

      v57 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v56);
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v34 = v130;
      v58 = (v130[6] + 16 * v52);
      *v58 = v55;
      v58[1] = v54;
      *(v130[7] + 8 * v52) = v57;
      v59 = v130[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        break;
      }

      v130[2] = v61;
      if (!isa)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_23:
  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v47)
    {

      *&v136 = 0x6769666E6F63;
      *(&v136 + 1) = 0xE600000000000000;
      v63 = v127;
      v64 = [v127 __swift_objectForKeyedSubscript_];
      v65 = swift_unknownObjectRelease();
      if (v64)
      {
        _bridgeAnyObjectToAny(_:)();
        v65 = swift_unknownObjectRelease();
      }

      else
      {
        v136 = 0u;
        v137 = 0u;
      }

      OUTLINED_FUNCTION_7_45(v65, v66, v67, v68, v69, v70, v71, v72, v124, v127, v130, v134, v136, *(&v136 + 1), v137);
      if (v73)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (swift_dynamicCast())
        {
          v81 = specialized Dictionary.subscript.getter(v135, &v138, 0xD000000000000011, 0x800000025DBF7F60);
          if (v139)
          {
            if (OUTLINED_FUNCTION_3_54(v74, v75, v76, MEMORY[0x277D839B0], v77, v78, v79, v80, v81))
            {
              v82 = v136;
              goto LABEL_57;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v83)
          {
            OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
          }

          v91 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v91, static Logging.utilities);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v93))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_4_14(&dword_25D85C000, v94, v95, "Unable to parse multi-source setting. Defaulting to false.");
            OUTLINED_FUNCTION_42_0();
          }

          v82 = 0;
          v34 = v131;
LABEL_57:
          v103 = specialized Dictionary.subscript.getter(v135, &v138, 0xD000000000000017, 0x800000025DBF7F80);
          if (v139)
          {
            if (OUTLINED_FUNCTION_3_54(v96, v97, v98, MEMORY[0x277D839B0], v99, v100, v101, v102, v103))
            {
              v104 = v136;
              goto LABEL_66;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v83)
          {
            OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
          }

          v105 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v105, static Logging.utilities);
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v107))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_4_14(&dword_25D85C000, v108, v109, "Unable to parse disallowAllModelDialogs setting. Defaulting to true.");
            OUTLINED_FUNCTION_42_0();
          }

          v104 = 1;
          v34 = v131;
LABEL_66:
          specialized Dictionary.subscript.getter(v135, &v138, 0x646F4D6563696F76, 0xEA00000000007365);

          if (v139)
          {
            if (OUTLINED_FUNCTION_3_54(v110, v111, v112, MEMORY[0x277D839B0], v113, v114, v115, v116))
            {

              if (v136)
              {
                v89 = 0x10000;
              }

              else
              {
                v89 = 0;
              }

              if ((v104 & 1) == 0)
              {
LABEL_80:
                v90 = 0;
                goto LABEL_50;
              }

LABEL_49:
              v90 = 256;
LABEL_50:
              v35 = v89 | v82 | v90;
              goto LABEL_15;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v83)
          {
            OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
          }

          v117 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v117, static Logging.utilities);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v119))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_8_11(&dword_25D85C000, v120, v121, "Unable to parse voice-mode setting. Defaulting to true.");
            OUTLINED_FUNCTION_42_0();

            v89 = 0x10000;
            if ((v104 & 1) == 0)
            {
              v90 = 0;
              v34 = v131;
              goto LABEL_50;
            }

            v34 = v131;
          }

          else
          {

            v89 = 0x10000;
            if ((v104 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        outlined destroy of (offset: Int, element: SearchResult)(&v138, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_12_37();
      if (!v83)
      {
        OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
      }

      v84 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v84, static Logging.utilities);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_88_0(v86))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_8_11(&dword_25D85C000, v87, v88, "Unable to parse config setting, using default values.");
        v34 = v131;
        OUTLINED_FUNCTION_42_0();
      }

      v82 = 0;
      v89 = 0x10000;
      goto LABEL_49;
    }

    v51 = *(v134 + 64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      isa = (v51 - 1) & v51;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_83:
  OUTLINED_FUNCTION_0_71(&one-time initialization token for utilities);
LABEL_11:
  v28 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v28, static Logging.utilities);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_88_0(v30))
  {
    v31 = OUTLINED_FUNCTION_172();
    *v31 = 0;
    v32 = "Asset version is below minimum required";
LABEL_13:
    _os_log_impl(&dword_25D85C000, v29, v30, v32, v31, 2u);
    OUTLINED_FUNCTION_42_0();
  }

LABEL_14:

  v34 = 0;
  v35 = 0;
LABEL_15:
  result.value.allowedTypes._rawValue = v34;
  *&result.value.allowMultiSources = v35;
  result.value.voiceModes = BYTE2(v35);
  result.is_nil = v33;
  return result;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__deallocating_deinit()
{

  OUTLINED_FUNCTION_6_36();

  return swift_deallocClassInstance();
}

uint64_t AnswerSynthesisAllowedAppsConfig.allowedTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisAllowedAppsConfig(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for AnswerSynthesisAllowedAppsConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 retrieveAssetSet:a1 usages:isa];

  return v6;
}

uint64_t outlined bridged method (mnbnb) of @objc NSBundle.path(forResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_71(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 104) = a1;
  v7 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v7);
}

uint64_t Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_15_35();
  swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  *(v0 + 88) = type metadata accessor for Array();
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 96) = v6;
  *v6 = v7;
  v6[1] = Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_15_35();

  return MEMORY[0x282200600](v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  v1 = *(v0 + 16);
  if ((*(v0 + 104) & 1) == 0)
  {
    *(v0 + 24) = v1;
    *(swift_task_alloc() + 16) = *(v0 + 64);

    OUTLINED_FUNCTION_1_68();
    swift_getWitnessTable();
    v2 = Sequence.sorted(by:)();
    swift_bridgeObjectRelease_n();

    *(v0 + 16) = v2;
    v1 = v2;
  }

  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 32) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  OUTLINED_FUNCTION_2_56();
  WitnessTable = swift_getWitnessTable();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), v6, v3, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  swift_bridgeObjectRelease_n();

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.asyncReduce<A>(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v0[9] = v1;
  v0[10] = v3;
  v0[7] = v4;
  v0[8] = v5;
  v0[5] = v6;
  v0[6] = v7;
  v0[4] = v8;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v9 = *(v2 - 8);
  v0[13] = v9;
  v0[14] = *(v9 + 64);
  v0[15] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10);
}

{
  (*(v0[11] + 16))(v0[4], v0[5], v0[10]);
  OUTLINED_FUNCTION_116_1();
  v2 = Array.startIndex.getter();
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_116_1();
  if (v2 == MEMORY[0x25F89F930](v3))
  {

    OUTLINED_FUNCTION_127();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    OUTLINED_FUNCTION_17_36(IsNativeType);
    if (v1)
    {
      (*(v0[13] + 16))(v0[15], v0[8] + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80)) + *(v0[13] + 72) * v2, v0[9]);
    }

    else
    {
      v11 = v0[14];
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v11 != 8)
      {
        __break(1u);
        return result;
      }

      v12 = OUTLINED_FUNCTION_11_42(result);
      v13(v12);
      swift_unknownObjectRelease();
    }

    Array.formIndex(after:)(v0 + 2);
    OUTLINED_FUNCTION_5_46();
    v14 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_6_37(v8);

    return v14(v10);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  (*(v0[13] + 8))(v0[15], v0[9]);
  (*(v3 + 8))(v4, v2);
  (*(v3 + 32))(v4, v1, v2);
  v5 = OUTLINED_FUNCTION_116_1();
  v6 = MEMORY[0x25F89F930](v5);
  v7 = v0[2];
  if (v7 == v6)
  {

    OUTLINED_FUNCTION_127();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    OUTLINED_FUNCTION_17_36(IsNativeType);
    if (v4)
    {
      (*(v0[13] + 16))(v0[15], v0[8] + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80)) + *(v0[13] + 72) * v7, v0[9]);
    }

    else
    {
      v15 = v0[14];
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v15 != 8)
      {
        __break(1u);
        return result;
      }

      v16 = OUTLINED_FUNCTION_11_42(result);
      v17(v16);
      swift_unknownObjectRelease();
    }

    Array.formIndex(after:)(v0 + 2);
    OUTLINED_FUNCTION_5_46();
    v18 = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_6_37(v12);

    return v18(v14);
  }
}

void Array<A>.argminN(_:)()
{
  OUTLINED_FUNCTION_155();
  if (v0 >= 1)
  {
    v4 = v3;
    v5 = v2;
    v6 = v0;
    if (MEMORY[0x25F89F910](v1, v2) >= v0)
    {
      v7 = type metadata accessor for Array();
      OUTLINED_FUNCTION_1_68();
      WitnessTable = swift_getWitnessTable();
      v9 = MEMORY[0x25F89F7C0](v20, v7, WitnessTable);
      *&v18 = *&v20[0];
      MEMORY[0x28223BE20](v9);
      type metadata accessor for EnumeratedSequence();
      swift_getWitnessTable();
      v10 = Sequence.sorted(by:)();

      *&v18 = v10;
      v11 = MEMORY[0x277D83B88];
      swift_getTupleTypeMetadata2();
      type metadata accessor for Array();
      OUTLINED_FUNCTION_2_56();
      swift_getWitnessTable();
      v12 = Collection.prefix(_:)();
      v17 = v20[0];
      v18 = v20[0];
      v19 = v20[1];
      MEMORY[0x28223BE20](v12);
      v16[2] = v5;
      v16[3] = v4;
      v13 = type metadata accessor for ArraySlice();
      v14 = swift_getWitnessTable();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Array<A>.argminN(_:), v16, v13, v11, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(0, v6);
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t Array.elements(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

void Array<A>.isEffectivelyEmptySearchResult.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_19_14();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSg_ADtMd, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  MEMORY[0x28223BE20](v38 - 8);
  OUTLINED_FUNCTION_14_30();
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  if (*(v24 + 16) == 1)
  {
    specialized Collection.first.getter(v24, v37);
    v45 = type metadata accessor for SearchEntity(0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v45) == 1)
    {
      outlined destroy of IntentApplication?(v37, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
      v46 = 1;
    }

    else
    {
      EntityProperty.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_2(v37, type metadata accessor for SearchEntity);
      v46 = 0;
    }

    __swift_storeEnumTagSinglePayload(v44, v46, 1, v25);
    (*(v27 + 104))(v41, *MEMORY[0x277D37048], v25);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v25);
    v47 = *(v31 + 48);
    outlined init with copy of Date?(v44, v34, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
    outlined init with copy of Date?(v41, &v34[v47], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
    OUTLINED_FUNCTION_71_10(v34);
    if (!v48)
    {
      outlined init with copy of Date?(v34, v20, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      OUTLINED_FUNCTION_71_10(&v34[v47]);
      if (!v48)
      {
        (*(v27 + 32))(v30, &v34[v47], v25);
        lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v27 + 8);
        v49(v30, v25);
        outlined destroy of IntentApplication?(v41, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        outlined destroy of IntentApplication?(v44, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v49(v20, v25);
        outlined destroy of IntentApplication?(v34, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_21_30(v41);
      OUTLINED_FUNCTION_21_30(v44);
      (*(v27 + 8))(v20, v25);
LABEL_13:
      outlined destroy of IntentApplication?(v34, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMd, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMR);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_21_30(v41);
    OUTLINED_FUNCTION_21_30(v44);
    OUTLINED_FUNCTION_71_10(&v34[v47]);
    if (!v48)
    {
      goto LABEL_13;
    }

    outlined destroy of IntentApplication?(v34, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  }

LABEL_14:
  OUTLINED_FUNCTION_148();
}

void Array<A>.isHomogenousResults.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_19_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_30();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = *(v2 + 16);
  if (v16 != 1)
  {
    specialized Collection.first.getter(v2, &v36 - v14);
    if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
    {
      outlined destroy of IntentApplication?(v15, &_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
      specialized Collection.first.getter(v2, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
      {
        outlined destroy of IntentApplication?(v12, &_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
        goto LABEL_34;
      }

      EntityProperty.wrappedValue.getter();
      v27 = v36;
      v26 = v37;
      OUTLINED_FUNCTION_0_72();
      _s10OmniSearch0B6EntityVWOhTm_2(v12, v28);
      if (!v26)
      {
        goto LABEL_34;
      }

      if (v16)
      {
        v29 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v30 = *(v5 + 72);
        while (1)
        {
          outlined init with copy of SearchCATEntity(v29, v0);
          EntityProperty.wrappedValue.getter();
          if (!v37)
          {
            break;
          }

          if (v36 == v27 && v37 == v26)
          {

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v0, v34);
          }

          else
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v0, v33);
            if ((v32 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v29 += v30;
          if (!--v16)
          {
            goto LABEL_33;
          }
        }

        OUTLINED_FUNCTION_0_72();
        _s10OmniSearch0B6EntityVWOhTm_2(v0, v35);
      }
    }

    else
    {
      EntityProperty.wrappedValue.getter();
      v18 = v36;
      v17 = v37;
      OUTLINED_FUNCTION_0_72();
      _s10OmniSearch0B6EntityVWOhTm_2(v15, v19);
      v20 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        for (i = 0; v16 != i; ++i)
        {
          outlined init with copy of SearchCATEntity(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v9);
          EntityProperty.wrappedValue.getter();
          if (v36 == v18 && v37 == v17)
          {

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v9, v25);
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v9, v24);
            if ((v23 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

LABEL_33:
  }

LABEL_34:
  OUTLINED_FUNCTION_148();
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  outlined init with copy of Date?(a1, v21 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of IntentApplication?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

void Array<A>.argmin()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_19_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  OUTLINED_FUNCTION_19_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = v3;
  type metadata accessor for Array();
  OUTLINED_FUNCTION_1_68();
  swift_getWitnessTable();
  Sequence<>.min()();
  OUTLINED_FUNCTION_71_10(v9);
  if (v15)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v1);
    v16[1] = v3;
    OUTLINED_FUNCTION_2_56();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    (*(v11 + 8))(v14, v1);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in Array<A>.argminN(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1, TupleTypeMetadata2, v7);
  v11 = *(TupleTypeMetadata2 + 48);
  *a3 = *v9;
  return (*(*(a2 - 8) + 8))(&v9[v11], a2);
}

uint64_t closure #1 in Array.elements(at:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v6, 1, a3);
}

uint64_t closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = *(a6 - 8);
  v7[15] = v8;
  v7[16] = *(v8 + 64);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[18] = swift_task_alloc();
  v7[19] = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));
}

uint64_t closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  v1 = v0[21];
  v29 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v0[6] = v0[10];
  v4 = type metadata accessor for Array();
  OUTLINED_FUNCTION_1_68();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F89F7C0](v4, WitnessTable);
  v0[7] = v0[5];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v28 = v2;
  v27 = v3 + 7;
  type metadata accessor for EnumeratedSequence.Iterator();
  while (1)
  {
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[19];
    v8 = v0[20];
    EnumeratedSequence.Iterator.next()();
    (*(v1 + 32))(v6, v7, v8);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = v0[23];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v32 = v11;
    v30 = v0[11];
    v31 = *v10;
    v16 = *(v29 + 48);
    v17 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v17);
    v18 = *(v28 + 32);
    v18(v12, &v10[v16], v13);
    v19 = (*(v28 + 80) + 64) & ~*(v28 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v13;
    *(v20 + 5) = v14;
    *(v20 + 6) = v30;
    *(v20 + 7) = v15;
    v18(&v20[v19], v12, v13);
    *&v20[(v27 + v19) & 0xFFFFFFFFFFFFFFF8] = v31;

    swift_getTupleTypeMetadata2();
    v21 = type metadata accessor for TaskGroup();
    _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v32, &async function pointer to partial apply for closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), v20, v21);
    outlined destroy of IntentApplication?(v32, &_sScPSgMd, &_sScPSgMR);
  }

  v22 = v0[9];

  v23 = *v22;
  v24 = swift_task_alloc();
  v0[24] = v24;
  OUTLINED_FUNCTION_15_35();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v24 = v0;
  v24[1] = closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return TaskGroup.oms_results.getter(v23, TupleTypeMetadata2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  *(v1 + 200) = v0;

  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  **(v0 + 64) = *(v0 + 200);

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t partial apply for closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v14(a1 + v11, a6);
}

uint64_t closure #3 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2, v7);
  return (*(*(a2 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTQ0_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_127();

  return v3();
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType()
{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    type metadata accessor for SearchResultType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of SearchCATEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCATEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19_14();
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a1, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 16) = v5;
  *v5 = v6;
  v5[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR(a1, v4);
}

uint64_t OUTLINED_FUNCTION_11_42(uint64_t a1)
{
  result = *(v1 + 120);
  *(v1 + 24) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_36(char a1)
{

  return Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

uint64_t SearchToolBiomeEvent.donate(timestamp:requestId:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      OUTLINED_FUNCTION_10_16();
      v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v45 = v13;
      v46 = v12;

      v48 = type metadata accessor for SearchToolTranscript();
      v49 = v43;
      OUTLINED_FUNCTION_14();
      v47 = v14;
      MEMORY[0x28223BE20](v15);
      v44 = 0;
      v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      SearchToolTranscript.init()();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v43[1] = v43;
      MEMORY[0x28223BE20](v18 - 8);
      v20 = v43 - v19;
      v21 = type metadata accessor for Date();
      v43[0] = a4;
      v22 = v21;
      (*(*(v21 - 8) + 16))(v20, a1, v21);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
      SearchToolTranscript.absoluteTimestamp.setter();

      SearchToolTranscript.requestId.setter();

      v23 = v17;
      SearchToolTranscript.query.setter();
      OUTLINED_FUNCTION_10_16();
      swift_getDynamicType();
      (*(a7 + 16))(a6, a7);
      SearchToolTranscript.eventType.setter();
      v24 = OUTLINED_FUNCTION_10_16();
      outlined copy of Data._Representation(v24, v25);
      OUTLINED_FUNCTION_10_16();
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v26 = v44;
      static StreamResource.source()();
      if (v26)
      {
        v28 = v47;
        v27 = v48;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logging.search);
        v30 = v26;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = v26;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_25D85C000, v31, v32, "Failed to send transcript event: %@", v33, 0xCu);
          outlined destroy of NSObject?(v34);
          MEMORY[0x25F8A1050](v34, -1, -1);
          MEMORY[0x25F8A1050](v33, -1, -1);

          v37 = OUTLINED_FUNCTION_10_16();
          outlined consume of Data._Representation(v37, v38);
        }

        else
        {
          v41 = OUTLINED_FUNCTION_10_16();
          outlined consume of Data._Representation(v41, v42);
        }

        return (*(v28 + 8))(v23, v27);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v50, v50[3]);
        dispatch thunk of Source.sendEvent(_:)();
        v39 = OUTLINED_FUNCTION_10_16();
        outlined consume of Data._Representation(v39, v40);
        (*(v47 + 8))(v23, v48);
        return __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VerificationModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VerificationModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VerificationModelExecution.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VerificationModelExecution.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VerificationModelExecution.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v22[2] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v17, v18, v19);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  v20 = v22[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v20)
  {
    v23 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v13 + 8))(v16, v11);
}

unint64_t lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VerificationModelExecution(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnswerSynthesisModelExecution(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelExecution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::String __swiftcall Encodable.oms_jsonPrettyPrinted()()
{
  v0 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_2_57(&one-time initialization token for iso8601PrettyPrinted);
  }

  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  static String.Encoding.utf8.getter();
  v4 = String.init(data:encoding:)();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    outlined consume of Data._Representation(v1, v3);
  }

  else
  {
    outlined consume of Data._Representation(v1, v3);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v6;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t *JSONEncoder.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static JSONEncoder.shared;
}

uint64_t one-time initialization function for iso8601()
{
  v0 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  (*(v8 + 104))(v10, *MEMORY[0x277CC8778], v7);
  v12[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277CC8740], v0);
  result = JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(v10, v6, v3);
  static JSONEncoder.iso8601 = result;
  return result;
}

uint64_t JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v23 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = dispatch thunk of JSONEncoder.__allocating_init()();
  (*(v16 + 16))(v20, a1, v14);

  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  (*(v10 + 16))(v13, a2, v23);
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v5 + 16))(v9, a3, v26);
  dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();

  (*(v5 + 8))(a3, v26);
  (*(v10 + 8))(a2, v23);
  (*(v16 + 8))(a1, v14);
  return v21;
}

uint64_t *JSONEncoder.iso8601.unsafeMutableAddressor()
{
  if (one-time initialization token for iso8601 != -1)
  {
    swift_once();
  }

  return &static JSONEncoder.iso8601;
}

uint64_t one-time initialization function for iso8601PrettyPrinted()
{
  v0 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = v5 - v4;
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  type metadata accessor for JSONEncoder();
  (*(v13 + 104))(v17, *MEMORY[0x277CC8778], v11);
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  (*(v2 + 104))(v6, *MEMORY[0x277CC8740], v0);
  result = JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(v17, v10, v6);
  static JSONEncoder.iso8601PrettyPrinted = result;
  return result;
}

uint64_t *JSONEncoder.iso8601PrettyPrinted.unsafeMutableAddressor()
{
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_2_57(&one-time initialization token for iso8601PrettyPrinted);
  }

  return &static JSONEncoder.iso8601PrettyPrinted;
}

uint64_t static JSONEncoder.shared.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1)
{

  return swift_once();
}

uint64_t Collection.at(_:)@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18[-v7];
  dispatch thunk of Collection.indices.getter();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = Sequence<>.contains(_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    (*(*(v13 - 8) + 16))(a4, v12, v13);
    v10(v18, 0);
    v14 = a4;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    v14 = a4;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t *ContextManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  return &static ContextManager.shared;
}

BOOL _sSLsE2leoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0D0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MessageAccumulationContext.Message(0) + 20);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 == v6)
  {
    if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
    {
      v7 = 0;
    }

    else
    {
      v7 = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
    }
  }

  else
  {
    v7 = v5 < v6;
  }

  return (v7 & 1) == 0;
}

uint64_t _sSLsE2leoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(char a1, char a2)
{
  v3 = 0xE900000000000074;
  v4 = 0x6867696C746F7073;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v4 && v6 == v3)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

Swift::Int MessageAccumulationContext.Severity.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageAccumulationContext.Severity(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MessageAccumulationContext.Severity.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

BOOL _sSLsE2geoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0D0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MessageAccumulationContext.Message(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == v6)
  {
    if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
    {
      v7 = 0;
    }

    else
    {
      v7 = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
    }
  }

  else
  {
    v7 = v5 < v6;
  }

  return (v7 & 1) == 0;
}

uint64_t _sSLsE2geoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6867696C746F7073;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73757361676570;
    }

    else
    {
      v3 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t _sSLsE1goiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(char a1, char a2)
{
  v3 = 0xE900000000000074;
  v4 = 0x6867696C746F7073;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v4 && v6 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t _sSLsE1goiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0C0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MessageAccumulationContext.Message(0) + 20);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 != v6)
  {
    return v5 < v6;
  }

  if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
  {
    return 0;
  }

  return static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
}

uint64_t static MessageAccumulationContext.Subcomponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_2_58();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000074;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF7369736568746ELL;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x73757361676570;
    }

    else
    {
      v2 = 0x7953726577736E61;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xEF7369736568746ELL;
    }
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t MessageAccumulationContext.Subcomponent.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6867696C746F7073;
  }

  if (a1 == 1)
  {
    return 0x73757361676570;
  }

  return 0x7953726577736E61;
}

uint64_t static MessageAccumulationContext.Subcomponent.< infix(_:_:)()
{
  OUTLINED_FUNCTION_2_58();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000074;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF7369736568746ELL;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x73757361676570;
    }

    else
    {
      v2 = 0x7953726577736E61;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xEF7369736568746ELL;
    }
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

OmniSearch::MessageAccumulationContext::Subcomponent_optional __swiftcall MessageAccumulationContext.Subcomponent.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageAccumulationContext.Subcomponent.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

OmniSearch::MessageAccumulationContext::Subcomponent_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MessageAccumulationContext.Subcomponent@<W0>(Swift::String *a1@<X0>, OmniSearch::MessageAccumulationContext::Subcomponent_optional *a2@<X8>)
{
  result.value = MessageAccumulationContext.Subcomponent.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageAccumulationContext.Subcomponent@<X0>(uint64_t *a1@<X8>)
{
  result = MessageAccumulationContext.Subcomponent.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MessageAccumulationContext.Message.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MessageAccumulationContext.Message(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    return v5 < v6;
  }

  if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
  {
    return 0;
  }

  return static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
}

uint64_t MessageAccumulationContext.Message.init(value:severity:subcomponent:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  outlined init with take of MessageAccumulationContext.MessageValue(a1, a4, type metadata accessor for MessageAccumulationContext.MessageValue);
  result = type metadata accessor for MessageAccumulationContext.Message(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t MessageAccumulationContext.record(_:from:)(void *a1, char a2)
{
  v5 = type metadata accessor for MessageAccumulationContext.Message(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  *(v8 - v7) = a1;
  type metadata accessor for MessageAccumulationContext.MessageValue(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v6 + 28)) = 0;
  *(v9 + *(v6 + 32)) = a2;
  v10 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v11 = *(*v2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v11);
  v12 = *v2;
  *(*v2 + 16) = v11 + 1;
  OUTLINED_FUNCTION_0_73();
  result = outlined init with take of MessageAccumulationContext.MessageValue(v9, v13, v14);
  *v2 = v12;
  return result;
}

uint64_t MessageAccumulationContext.record(_:severity:from:)(uint64_t a1, char a2, char a3)
{
  v7 = type metadata accessor for MessageAccumulationContext.Message(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_23_5();
  (*(v12 + 16))(v11, a1);
  type metadata accessor for MessageAccumulationContext.MessageValue(0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v8 + 28)) = a2;
  *(v11 + *(v8 + 32)) = a3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v13 = *(*v3 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v13);
  v14 = *v3;
  *(*v3 + 16) = v13 + 1;
  OUTLINED_FUNCTION_0_73();
  result = outlined init with take of MessageAccumulationContext.MessageValue(v11, v15, v16);
  *v3 = v14;
  return result;
}

uint64_t outlined init with copy of MessageAccumulationContext.MessageValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.MessageValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ContextManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }
}

uint64_t ContextManager.().init()()
{
  swift_defaultActor_initialize();
  _s10OmniSearch0B7ContextVSgWOi0_(v2);
  memcpy((v0 + 112), v2, 0xA0uLL);
  *(v0 + 272) = MEMORY[0x277D84F90];
  *(v0 + 280) = 0;
  *(v0 + 288) = xmmword_25DBE45A0;
  return v0;
}

Swift::Void __swiftcall ContextManager.clear()()
{
  _s10OmniSearch0B7ContextVSgWOi0_(__src);
  OUTLINED_FUNCTION_115_9((v0 + 14), v6);
  OUTLINED_FUNCTION_8_43(v8);
  memcpy(v0 + 14, __src, 0xA0uLL);
  outlined destroy of SearchContext?(v8);
  OUTLINED_FUNCTION_115_9((v0 + 34), v5);
  v0[34] = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_115_9((v0 + 35), &v4);
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[37];
  *(v0 + 35) = xmmword_25DBC9A70;
  v0[37] = 0;
  outlined consume of IndexContext?(v1, v2, v3);
}

uint64_t key path getter for ContextManager.searchContext : ContextManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 112), sizeof(__dst));
  memcpy(a2, (v3 + 112), 0xA0uLL);
  return outlined init with copy of SearchContext?(__dst, v5);
}

uint64_t key path setter for ContextManager.searchContext : ContextManager(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 112), sizeof(v7));
  memcpy((v3 + 112), __dst, 0xA0uLL);
  outlined init with copy of SearchContext?(__dst, v5);
  return outlined destroy of SearchContext?(v7);
}

uint64_t ContextManager.searchContext.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_8_43(v5);
  memcpy(a1, (v1 + 112), 0xA0uLL);
  return outlined init with copy of SearchContext?(v5, &v4);
}

uint64_t ContextManager.set(searchContext:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_115_9(v1 + 112, v4);
  OUTLINED_FUNCTION_8_43(v6);
  memcpy((v1 + 112), __dst, 0xA0uLL);
  outlined init with copy of SearchContext?(__dst, v3);
  return outlined destroy of SearchContext?(v6);
}

uint64_t key path getter for ContextManager.messageAccumulationContext : ContextManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 272);
}

uint64_t key path setter for ContextManager.messageAccumulationContext : ContextManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 272) = v2;
}

uint64_t ContextManager.append(_:from:)(void *a1, char a2)
{
  OUTLINED_FUNCTION_7_46(a1);
  MessageAccumulationContext.record(_:from:)(a1, a2);
  return swift_endAccess();
}

uint64_t ContextManager.append(_:severity:from:)(uint64_t a1, char a2, char a3)
{
  OUTLINED_FUNCTION_7_46(a1);
  MessageAccumulationContext.record(_:severity:from:)(a1, a2, a3);
  return swift_endAccess();
}

id key path getter for ContextManager.indexContext : ContextManager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[35];
  v5 = v3[36];
  v6 = v3[37];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return outlined copy of IndexContext?(v4, v5, v6);
}

void key path setter for ContextManager.indexContext : ContextManager(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[35];
  v7 = v5[36];
  v8 = v5[37];
  v5[35] = v2;
  v5[36] = v3;
  v5[37] = v4;
  outlined copy of IndexContext?(v2, v3, v4);
  outlined consume of IndexContext?(v6, v7, v8);
}

uint64_t ContextManager.indexContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  outlined copy of IndexContext?(v1, *(v0 + 288), *(v0 + 296));
  return v1;
}

void ContextManager.set(indexContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_115_9((v3 + 35), v16);
  v12 = *(v3 + 35);
  v13 = *(v3 + 36);
  v14 = *(v3 + 37);
  v3[35] = *&a1;
  *(v3 + 36) = a2;
  *(v3 + 37) = a3;
  outlined copy of IndexContext?(a1, a2, a3);
  outlined consume of IndexContext?(v12, v13, v14);
  if (a3 != 1)
  {
    if (a2)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_6_38();
        v15 = a3;
        MessageAccumulationContext.record(_:from:)(a3, 0);
        swift_endAccess();
        outlined consume of IndexContext?(a1, a2, a3);
      }
    }

    else
    {
      if (*&a1 < 0.75)
      {
        LocalizedStringResource.init(stringLiteral:)();
        OUTLINED_FUNCTION_6_38();
        MessageAccumulationContext.record(_:severity:from:)(v11, 2, 0);
        swift_endAccess();
        (*(v8 + 8))(v11, v7);
      }

      static CALogging.logEmbeddingCompleteness(completeness:)(*&a1);
    }
  }
}

uint64_t ContextManager.deinit(double a1)
{
  OUTLINED_FUNCTION_8_43(v3);
  outlined destroy of SearchContext?(v3);

  outlined consume of IndexContext?(*(v1 + 280), *(v1 + 288), *(v1 + 296));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t ContextManager.__deallocating_deinit(double a1)
{
  ContextManager.deinit(a1);

  return MEMORY[0x282200960](v1);
}

uint64_t outlined init with take of MessageAccumulationContext.MessageValue(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SearchContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SearchContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MessageAccumulationContext.Subcomponent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch26MessageAccumulationContextV12SubcomponentOGMd, &_sSay10OmniSearch26MessageAccumulationContextV12SubcomponentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message)
  {
    type metadata accessor for MessageAccumulationContext.Message(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message);
  }

  return result;
}

uint64_t type metadata completion function for MessageAccumulationContext.MessageValue(uint64_t a1)
{
  result = type metadata accessor for Error();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedStringResource();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageAccumulationContext.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for MessageAccumulationContext.Message(uint64_t a1)
{
  result = type metadata accessor for MessageAccumulationContext.MessageValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndexContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for IndexContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_6_38()
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_7_46(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

void *OUTLINED_FUNCTION_8_43(void *a1)
{

  return memcpy(a1, (v1 + 112), 0xA0uLL);
}

uint64_t CSSearchableItem.associatedAppEntityId.getter()
{
  v1 = [v0 attributeSet];
  v2 = MEMORY[0x25F89F4C0](0xD000000000000023, 0x800000025DBF8160);
  v3 = [v1 attributeForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (OUTLINED_FUNCTION_0_74(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v12, v14, v15, *(&v15 + 1), v16, *(&v16 + 1), v17[0]))
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
    return 0;
  }
}

uint64_t CSSearchableItem.associatedAppEntityTypeId.getter()
{
  v1 = [v0 attributeSet];
  v2 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8190);
  v3 = [v1 attributeForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (OUTLINED_FUNCTION_0_74(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v12, v14, v15, *(&v15 + 1), v16, *(&v16 + 1), v17[0]))
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_74(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return swift_dynamicCast();
}

uint64_t DateComponents.init(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Calendar();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = type metadata accessor for TimeZone();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v5, v2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
  OUTLINED_FUNCTION_0_75(109);
  if ((v8 & 1) == 0)
  {
    DateComponents.minute.setter();
  }

  OUTLINED_FUNCTION_0_75(72);
  if ((v9 & 1) == 0)
  {
    DateComponents.hour.setter();
  }

  OUTLINED_FUNCTION_0_75(100);
  if ((v10 & 1) == 0)
  {
    DateComponents.day.setter();
  }

  OUTLINED_FUNCTION_0_75(77);
  if ((v11 & 1) == 0)
  {
    DateComponents.month.setter();
  }

  OUTLINED_FUNCTION_0_75(121);
  if ((v12 & 1) == 0)
  {
    DateComponents.year.setter();
  }

  OUTLINED_FUNCTION_0_75(69);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    return DateComponents.weekday.setter();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_75(uint64_t a1)
{

  return specialized Dictionary.subscript.getter(a1, 0xE100000000000000, v1);
}

uint64_t DeviceState.deviceClass.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76(&one-time initialization token for deviceClass);
  }

  result = 0x646F50656D6F68;
  switch(static MobileGestalt.deviceClass)
  {
    case 0:
      result = 0x656E6F6870;
      break;
    case 1:
      result = 6578544;
      break;
    case 2:
      return result;
    case 3:
      result = 0x5654656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x6863746177;
      break;
    case 7:
      result = 0x6E6F69736976;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t DeviceState.description.getter()
{
  strcpy(v3, "deviceClass: ");
  HIWORD(v3[1]) = -4864;
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76(&one-time initialization token for deviceClass);
  }

  v0 = 0xE700000000000000;
  v1 = 0x646F50656D6F68;
  switch(static MobileGestalt.deviceClass)
  {
    case 0:
      v0 = 0xE500000000000000;
      v1 = 0x656E6F6870;
      break;
    case 1:
      v0 = 0xE300000000000000;
      v1 = 6578544;
      break;
    case 2:
      break;
    case 3:
      v1 = 0x5654656C707061;
      break;
    case 4:
      v0 = 0xE300000000000000;
      v1 = 6513005;
      break;
    case 5:
      v0 = 0xE500000000000000;
      v1 = 0x6863746177;
      break;
    case 7:
      v0 = 0xE600000000000000;
      v1 = 0x6E6F69736976;
      break;
    default:
      v0 = 0xE700000000000000;
      v1 = 0x6E776F6E6B6E75;
      break;
  }

  MEMORY[0x25F89F6C0](v1, v0);

  return v3[0];
}

uint64_t OUTLINED_FUNCTION_0_76(uint64_t a1)
{

  return swift_once();
}

OmniSearch::EntityType_optional __swiftcall EntityType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntityType.init(rawValue:), v3);

  v7 = 15;
  if (v5 < 0xF)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t EntityType.rawValue.getter()
{
  result = 0x6E6F697461636F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 0x6464416C69616D65;
      break;
    case 4:
      result = 6910581;
      break;
    case 5:
      result = 0x7469746E45707061;
      break;
    case 6:
      result = 0x6563616C70;
      break;
    case 7:
      result = 0x72656D6974;
      break;
    case 8:
      result = 0x6D72616C61;
      break;
    case 9:
      result = 0x6163696669746F6ELL;
      break;
    case 0xA:
      result = 0x7261646E656C6163;
      break;
    case 0xB:
      result = 0x7265646E696D6572;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x656D695465746164;
      break;
    case 0xE:
      result = 0x657449616964656DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntityType@<X0>(unint64_t *a1@<X8>)
{
  result = EntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*EntityMatch.entityId.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*EntityMatch.entityType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*EntityMatch.entityName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t (*EntityMatch.matchedUserUtterance.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EntityMatch.matchScore : EntityMatch(double *a1, const void *a2)
{
  memcpy(v4, a2, 0x69uLL);
  outlined init with copy of EntityMatch(v4, __dst);
  EntityMatch.matchScore.setter();
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.matchScore.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EntityMatch.entityId : EntityMatch(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  memcpy(v10, a2, 0x69uLL);

  outlined init with copy of EntityMatch(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.originAppBundleId.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*EntityMatch.startIndex.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EntityMatch.startIndex : EntityMatch(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  memcpy(v10, a2, 0x69uLL);
  outlined init with copy of EntityMatch(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.endIndex.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void EntityMatch.matchProperties.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 100);
  v6 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = v5;
  *(a1 + 32) = v6;
}

uint64_t EntityMatch.matchProperties.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 28);
  v6 = *(result + 32);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 100) = v5;
  *(v1 + 104) = v6;
  return result;
}

uint64_t EntityMatch.init(entityId:startIndex:endIndex:entityType:entityName:userUtterance:matchScore:matchProperties:matcherType:originAppBundleId:)@<X0>(uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v27 = *a6;
  v26 = *(a6 + 8);
  v25 = a6[2];
  v23 = *(a6 + 7);
  v24 = *(a6 + 24);
  v21 = *a7;
  v22 = *(a6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *a3 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_11_43();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_15_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 40) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_14_31();
  LocalizedStringResource.init(stringLiteral:)();
  *(a3 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_19_36();
  LocalizedStringResource.init(stringLiteral:)();
  v10 = EntityProperty<>.init(title:)();
  *(a3 + 32) = v21;
  *(a3 + 64) = v10;
  *(a3 + 72) = v27;
  *(a3 + 80) = v26;
  *(a3 + 88) = v25;
  *(a3 + 96) = v24;
  *(a3 + 100) = v23;
  *(a3 + 104) = v22;
  EntityProperty.wrappedValue.setter();
  v11 = String.index(_:offsetBy:)();
  v12 = String.index(_:offsetBy:)();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.setter();
  if (v12 >> 14 < v11 >> 14)
  {
    __break(1u);
  }

  else
  {
    v14 = String.subscript.getter();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    MEMORY[0x25F89F5B0](v14, v16, v18, v20);

    EntityProperty.wrappedValue.setter();
    EntityProperty.wrappedValue.setter();
    return EntityProperty.wrappedValue.setter();
  }

  return result;
}

uint64_t EntityMatch.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_11_43();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_15_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 40) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_14_31();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_19_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 64) = EntityProperty<>.init(title:)();
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 104) = 1;
  *(a1 + 32) = 0;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t MatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 4);
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 28) = v6;
  *(a6 + 32) = v7;
  return result;
}

uint64_t EntityMatch.description.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  v1 = static EntityMatchFormatter.format(entityType:)(v6, v7);
  v3 = v2;

  MEMORY[0x25F89F6C0](v1, v3);

  v4 = OUTLINED_FUNCTION_20_25();
  MEMORY[0x25F89F6C0](v4, 0xE800000000000000);
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0]();

  MEMORY[0x25F89F6C0](34, 0xE100000000000000);
  return 8289;
}

uint64_t static EntityMatchFormatter.format(entityType:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  v4 = static EntityMatchFormatter.entityTypeMap;
  if (*(static EntityMatchFormatter.entityTypeMap + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    countAndFlagsBits = *(*(v4 + 56) + 16 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    String.splitByCapitalLetters()();
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t EntityMatch.debugString.getter()
{
  v1 = *(v0 + 72);
  v19 = *(v0 + 80);
  v20 = *(v0 + 32);
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(235);
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_12_38();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v2);

  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_12_38();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v3);

  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  Double.write<A>(to:)();
  OUTLINED_FUNCTION_5_47();
  v4 = MEMORY[0x25F89F6C0]();
  v21 = v1;
  LOBYTE(v22) = v19;
  OUTLINED_FUNCTION_22_26(v4, v5, &type metadata for MatchProperties, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_5_47();
  v11 = MEMORY[0x25F89F6C0]();
  LOBYTE(v21) = v20;
  OUTLINED_FUNCTION_22_26(v11, v12, &type metadata for EntityMatcherType, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v21, v22);

  MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
  return 0;
}

uint64_t EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static EntityMatch.typeDisplayRepresentation);
}

uint64_t static EntityMatch.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EntityMatch.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EntityMatch.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static EntityMatch.typeDisplayRepresentation : EntityMatch.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static EntityMatch.typeDisplayRepresentation : EntityMatch.Type(uint64_t a1)
{
  v2 = EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t EntityMatch.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance EntityMatch(uint64_t a1)
{
  lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210C4B8](a1, v2);
}

OmniSearch::EntityMatcherType_optional __swiftcall EntityMatcherType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntityMatcherType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t EntityMatcherType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntityMatcherType@<X0>(uint64_t *a1@<X8>)
{
  result = EntityMatcherType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MatchProperties.matchedAliasTypes.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 28);
  *(a1 + 4) = v2;
}

uint64_t MatchProperties.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F5478616DLL && a2 == 0xED0000746E756F43;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000025DBF8330 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000025DBF8350 == a2)
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

uint64_t MatchProperties.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656B6F5478616DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MatchProperties.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MatchProperties.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MatchProperties.CodingKeys(uint64_t a1)
{
  matched = lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();

  return MEMORY[0x2821FE718](a1, matched);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MatchProperties.CodingKeys(uint64_t a1)
{
  matched = lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();

  return MEMORY[0x2821FE720](a1, matched);
}

uint64_t MatchProperties.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMR);
  OUTLINED_FUNCTION_16_36();
  v5 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v17 = *(v1 + 16);
  v9 = *(v1 + 24);
  v15 = *(v1 + 28);
  v16 = v9;
  HIDWORD(v14) = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v10 = v18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v10)
  {
    v12 = BYTE4(v14);
    v11 = v15;
    v22 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v11;
    v20 = v12;
    v21 = 2;
    lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t MatchProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMR);
  OUTLINED_FUNCTION_16_36();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v25 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v24 = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    HIDWORD(v19) = v15;
    v20 = v14;
    v23 = 2;
    lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v10, v3);
    v17 = v21;
    v18 = v22;
    *a2 = v11;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v20;
    *(a2 + 24) = BYTE4(v19) & 1;
    *(a2 + 28) = v17;
    *(a2 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AliasTypes@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AliasTypes.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AliasTypes@<X0>(_DWORD *a1@<X8>)
{
  result = AliasTypes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for entityTypeMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static EntityMatchFormatter.entityTypeMap = result;
  return result;
}

uint64_t *EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  return &static EntityMatchFormatter.entityTypeMap;
}

uint64_t static EntityMatchFormatter.entityTypeMap.getter()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static EntityMatchFormatter.entityTypeMap.setter(uint64_t a1)
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  static EntityMatchFormatter.entityTypeMap = a1;
}

uint64_t (*static EntityMatchFormatter.entityTypeMap.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}