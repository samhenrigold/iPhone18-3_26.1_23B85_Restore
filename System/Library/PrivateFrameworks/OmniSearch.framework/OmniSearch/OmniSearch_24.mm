uint64_t closure #1 in MemoryCreationQUDateGroundingHeuristics.groundSeasonsHeuristic(_:currentDate:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8, uint64_t a9)
{
  v12 = String.subscript.getter();
  v13 = MEMORY[0x25F89F5B0](v12);
  v15 = v14;

  v16 = String.lowercased()();
  v17 = specialized Dictionary.subscript.getter(v16._countAndFlagsBits, v16._object, a6);

  if (v17 == 4)
  {
    v18 = MEMORY[0x25F89F4C0](v13, v15);

    v19 = [a8 numberFromString_];

    if (v19)
    {
      v20 = [v19 integerValue];

      *a9 = v20;
      *(a9 + 8) = 0;
    }
  }

  else
  {

    *a7 = v17;
  }

  return 1;
}

uint64_t MemoryCreationQUDateGroundingHeuristics.groundCOVIDHeuristic(_:currentDate:)()
{
  v0 = String.lowercased()();
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)(0xD00000000000002CLL, 0x800000025DBF5BA0);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingSinceCovidName");
  v6 = v5;
  if (v0._countAndFlagsBits == v1 && v0._object == v3)
  {

LABEL_8:

    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_3_42(&one-time initialization token for memoryCreationQU);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.memoryCreationQU);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v12))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v13, v14, "COVID grounding heuristic: grounding date to 2020-2023");
      OUTLINED_FUNCTION_42_0();
    }

    MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
    if (!v15)
    {
      return MEMORY[0x277D84F90];
    }

    v16 = v15;
    MemoryCreationQUDateGroundingHeuristics.covidEndDate.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = OUTLINED_FUNCTION_78_14(v19);
      *(result + 16) = xmmword_25DBE01C0;
      *(result + 32) = v16;
      *(result + 40) = v18;
      return result;
    }

    goto LABEL_24;
  }

  v8 = v4;
  OUTLINED_FUNCTION_52_1();
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_8;
  }

  if (v0._countAndFlagsBits == v8 && v0._object == v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      if (one-time initialization token for memoryCreationQU != -1)
      {
        OUTLINED_FUNCTION_3_42(&one-time initialization token for memoryCreationQU);
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v23, static Logging.memoryCreationQU);
      v16 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_105_6(v24))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_84_5(&dword_25D85C000, v25, v26, "Date string not related to COVID heuristics, unable to ground date");
        OUTLINED_FUNCTION_42_0();
      }

LABEL_24:

      return MEMORY[0x277D84F90];
    }
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42(&one-time initialization token for memoryCreationQU);
  }

  v27 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v27, static Logging.memoryCreationQU);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v29))
  {
    v30 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_33_23(v30);
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v31, v32, "COVID grounding heuristic: grounding date to 2020-present");
    OUTLINED_FUNCTION_13_18();
  }

  MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
  if (v33)
  {
    v34 = v33;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = OUTLINED_FUNCTION_78_14(v36);
    *(result + 16) = xmmword_25DBE01C0;
    *(result + 32) = v34;
    *(result + 40) = isa;
    return result;
  }

  return MEMORY[0x277D84F90];
}

void MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter()
{
  MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
}

{
  OUTLINED_FUNCTION_155();
  v60 = v0;
  v61 = v1;
  v48 = v2;
  v49 = v3;
  v47[1] = v4;
  v5 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v20);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  v23 = v47 - v22;
  v24 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_36();
  v30 = v29 - v28;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v5);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_43_7(v23, v19, v38, v39, v40, v41, v42, v43, 0, 1, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v7 + 8))(v11, v5);
  (*(v26 + 8))(v30, v24);
  v44 = type metadata accessor for Date();
  OUTLINED_FUNCTION_166(v15, 1, v44);
  if (v45)
  {
    outlined destroy of ResourceBundle?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    Date._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_51();
    (*(v46 + 8))(v15, v44);
  }

  OUTLINED_FUNCTION_148();
}

void outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setString_];
}

uint64_t lazy protocol witness table accessor for type Regex<(Substring, season: Substring, Substring?, year: Substring)> and conformance Regex<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUDateGroundingHeuristics.Season(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_29@<X0>(uint64_t a1@<X8>)
{

  return static LocalizedString.localizedString(forKey:)(0xD00000000000002BLL, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_14_24(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MemoryCreationQUModelResponse.init(jsonString:)(OmniSearch::MemoryCreationQUModelResponse *__return_ptr retstr, Swift::String jsonString)
{
  v3 = v2;
  v5 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.memoryCreationQU);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v2;
    v15 = v14;
    v23 = swift_slowAlloc();
    v24 = v5;
    __src[0] = v23;
    *v15 = 136315138;

    v16 = retstr;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 4) = v17;
    retstr = v16;
    _os_log_impl(&dword_25D85C000, v12, v13, "Attempting to decode json string for Memory Creation QU: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v5 = v24;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v3 = v26;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  (*(v7 + 8))(v10, v5);
  if (v20 >> 60 == 15)
  {
    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v18, v20);

    if (!v3)
    {
      memcpy(retstr, __src, sizeof(OmniSearch::MemoryCreationQUModelResponse));
    }
  }
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse);
  }

  return result;
}

uint64_t MemoryCreationQUModelResponse.who.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.what.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.when.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.where.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.music.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MemoryCreationQUModelResponse.music.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t MemoryCreationQUModelResponse.mood.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.sort_order.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.trip.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MemoryCreationQUModelResponse.trip.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MemoryCreationQUModelResponse.all_time.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MemoryCreationQUModelResponse.all_time.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

OmniSearch::MemoryCreationQUModelResponseMusic __swiftcall MemoryCreationQUModelResponseMusic.init(artist:genre:song:)(Swift::OpaquePointer artist, Swift::OpaquePointer genre, Swift::OpaquePointer song)
{
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.memoryCreationQU);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25D85C000, v7, v8, "MemoryCreationQUModelResponseMusic.init() should only be used for testing", v9, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  rawValue = artist._rawValue;
  v11 = genre._rawValue;
  v12 = song._rawValue;
  result.song._rawValue = v12;
  result.genre._rawValue = v11;
  result.artist._rawValue = rawValue;
  return result;
}

void __swiftcall MemoryCreationQUModelResponse.init(who:what:when:where:music:mood:sort_order:trip:all_time:)(OmniSearch::MemoryCreationQUModelResponse *__return_ptr retstr, Swift::OpaquePointer who, Swift::OpaquePointer what, Swift::OpaquePointer when, Swift::OpaquePointer where, OmniSearch::MemoryCreationQUModelResponseMusic music, Swift::OpaquePointer mood, Swift::OpaquePointer sort_order, Swift::String trip, Swift::String all_time)
{
  rawValue = music.song._rawValue;
  v12 = music.genre._rawValue;
  v13 = music.artist._rawValue;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.memoryCreationQU);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25D85C000, v19, v20, "MemoryCreationQUModelResponse.init() should only be used for testing", v21, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  retstr->who = who;
  retstr->what = what;
  retstr->when = when;
  retstr->where = where;
  retstr->music.artist._rawValue = v13;
  retstr->music.genre._rawValue = v12;
  retstr->music.song._rawValue = rawValue;
  retstr->mood = mood;
  retstr->sort_order = sort_order;
  retstr->trip = trip;
  retstr->all_time = all_time;
}

void *MemoryCreationQUModelResponse.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_7_33();
  if (v2)
  {
    type metadata accessor for GeneratedValues();
    OUTLINED_FUNCTION_2();
    return (*(v5 + 8))(a1);
  }

  else
  {
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    v27 = v12;
    lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic();
    GeneratedValues.extract<A>(field:)();
    v9 = v13;
    v8 = v14;
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    GeneratedValues.extract<A>(field:)();
    GeneratedValues.extract<A>(field:)();
    type metadata accessor for GeneratedValues();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(a1);
    __src[0] = v12;
    __src[1] = v12;
    __src[2] = v12;
    __src[3] = v12;
    __src[4] = v12;
    __src[5] = v13;
    __src[6] = v14;
    __src[7] = v12;
    __src[8] = v12;
    __src[9] = v12;
    __src[10] = v13;
    __src[11] = v25;
    __src[12] = v26;
    v13 = v12;
    v14 = v12;
    v15 = v12;
    v16 = v12;
    v17 = v9;
    v18 = v8;
    v19 = v12;
    v20 = v12;
    v21 = v12;
    v22 = __src[10];
    v23 = v25;
    v24 = v26;
    outlined init with copy of MemoryCreationQUModelResponse(__src, v10);
    outlined destroy of MemoryCreationQUModelResponse(&v12);
    return memcpy(a2, __src, 0x68uLL);
  }
}

uint64_t MemoryCreationQUModelResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7301239 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1952540791 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1852139639 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6572656877 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1685024621 && a2 == 0xE400000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64726F5F74726F73 && a2 == 0xEA00000000007265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1885958772 && a2 == 0xE400000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D69745F6C6C61 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t MemoryCreationQUModelResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 7301239;
  switch(a1)
  {
    case 1:
      result = 1952540791;
      break;
    case 2:
      result = 1852139639;
      break;
    case 3:
      result = 0x6572656877;
      break;
    case 4:
      result = 0x636973756DLL;
      break;
    case 5:
      result = 1685024621;
      break;
    case 6:
      result = 0x64726F5F74726F73;
      break;
    case 7:
      result = 1885958772;
      break;
    case 8:
      result = 0x656D69745F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUModelResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUModelResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MemoryCreationQUModelResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch29MemoryCreationQUModelResponseV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch29MemoryCreationQUModelResponseV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_5_35();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v25;
  OUTLINED_FUNCTION_1_54(1);
  v22 = v25;
  OUTLINED_FUNCTION_1_54(2);
  v21 = v25;
  OUTLINED_FUNCTION_1_54(3);
  v20 = v25;
  lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic();
  OUTLINED_FUNCTION_5_35();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v25;
  v19 = v26;
  v18 = v27;
  OUTLINED_FUNCTION_1_54(5);
  v16 = v25;
  OUTLINED_FUNCTION_1_54(6);
  v15 = v25;
  LOBYTE(v25) = 7;
  OUTLINED_FUNCTION_5_35();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  v38 = 8;
  OUTLINED_FUNCTION_5_35();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_1_8();
  v12(v11);
  __src[0] = v23;
  __src[1] = v22;
  __src[2] = v21;
  __src[3] = v20;
  __src[4] = v17;
  __src[5] = v26;
  __src[6] = v27;
  __src[7] = v16;
  __src[8] = v15;
  __src[9] = v6;
  __src[10] = v8;
  __src[11] = v14;
  __src[12] = v10;
  outlined init with copy of MemoryCreationQUModelResponse(__src, &v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v17;
  v30 = v19;
  v31 = v18;
  v32 = v16;
  v33 = v15;
  v34 = v6;
  v35 = v8;
  v36 = v14;
  v37 = v10;
  outlined destroy of MemoryCreationQUModelResponse(&v25);
  return memcpy(a2, __src, 0x68uLL);
}

void *protocol witness for Decodable.init(from:) in conformance MemoryCreationQUModelResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MemoryCreationQUModelResponse.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.artist.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.genre.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.song.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.init(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_12_30();
  type metadata accessor for GeneratedValues();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return v1;
}

uint64_t MemoryCreationQUModelResponse.schema.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Schema();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static MemoryCreationQUModelResponse.schema.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Schema();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_113_0();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t MemoryCreationQUModelResponseMusic.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1735290739 && a2 == 0xE400000000000000)
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

uint64_t MemoryCreationQUModelResponseMusic.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x747369747261;
  }

  if (a1 == 1)
  {
    return 0x65726E6567;
  }

  return 1735290739;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUModelResponseMusic.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUModelResponseMusic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUModelResponseMusic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUModelResponseMusic.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch34MemoryCreationQUModelResponseMusicV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch34MemoryCreationQUModelResponseMusicV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v4 = OUTLINED_FUNCTION_9_34();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUModelResponseMusic@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *protocol witness for Generable.init(from:) in conformance MemoryCreationQUModelResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MemoryCreationQUModelResponse.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance MemoryCreationQUModelResponse@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Schema();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_113_0();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t protocol witness for Generable.init(from:) in conformance MemoryCreationQUModelResponseMusic@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUModelResponseMusic.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUModelResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_54@<X0>(char a1@<W8>)
{
  *(v1 - 296) = a1;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_7_33()
{

  return GeneratedValues.extract<A>(field:)();
}

void *OUTLINED_FUNCTION_12_30()
{

  return GeneratedValues.extract<A>(field:)();
}

uint64_t MemoryCreationQUNetworkService.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF63D0);
  v6 = [v4 stringForKey_];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v8;

  if (v7 == 49 && v4 == 0xE100000000000000)
  {

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_9:
  v11 = type metadata accessor for MemoryCreationModelType();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v11);
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_145_5();
  MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(v3, v10 & 1, v4);
  return v12;
}

uint64_t MemoryCreationQUNetworkService.promptTemplateID.getter()
{
  OUTLINED_FUNCTION_89_0(v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID, v2);

  return OUTLINED_FUNCTION_107();
}

uint64_t MemoryCreationQUNetworkService.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_73_12(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t MemoryCreationQUNetworkService.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MemoryCreationQUNetworkService.cachedModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MemoryCreationQUNetworkService.cachedModelOnBehalfOfPID.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
  OUTLINED_FUNCTION_89_0(v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID, v3);
  return *v1;
}

void MemoryCreationQUNetworkService.cachedModelOnBehalfOfPID.setter(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_73_12(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t MemoryCreationQUNetworkService.modelType.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_89_0(v2 + *a1, v6);
  return outlined init with copy of Date?(v2 + v4, a2, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
}

uint64_t MemoryCreationQUNetworkService.modelType.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of MemoryCreationModelType?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t one-time initialization function for responseSanitizer()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StringResponseSanitizer();
  __swift_allocate_value_buffer(v8, static MemoryCreationQUNetworkService.responseSanitizer);
  __swift_project_value_buffer(v8, static MemoryCreationQUNetworkService.responseSanitizer);
  v9 = type metadata accessor for StringResponseSanitizer.Overrides();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D0E578], v4);
  v10 = type metadata accessor for StringResponseSanitizer.Guardrails();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  (*(v1 + 104))(v3, *MEMORY[0x277D0E580], v0);
  return StringResponseSanitizer.init(overrides:guardrails:)();
}

uint64_t one-time initialization function for renderedPromptSanitizer()
{
  v0 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_allocate_value_buffer(v8, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  __swift_project_value_buffer(v8, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  v9 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D0E5C0], v4);
  v10 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  (*(v1 + 104))(v3, *MEMORY[0x277D0E5C8], v0);
  return StringRenderedPromptSanitizer.init(overrides:guardrails:)();
}

uint64_t MemoryCreationQUNetworkService.responseSanitizer.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t static MemoryCreationQUNetworkService.responseSanitizer.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  OUTLINED_FUNCTION_119_8(v8, a3);
  OUTLINED_FUNCTION_51();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t MemoryCreationQUNetworkService.__allocating_init(modelType:useTemplate:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = OUTLINED_FUNCTION_145_5();
  MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(v3, v5, a3);
  return v6;
}

uint64_t MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v36 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_14();
  v37 = v16;
  v38 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_modelType;
  v21 = type metadata accessor for MemoryCreationModelType();
  __swift_storeEnumTagSinglePayload(v4 + v20, 1, 1, v21);
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel) = 0;
  v22 = v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
  *v22 = 0;
  *(v22 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType, 1, 1, v21);
  swift_beginAccess();
  outlined assign with copy of MemoryCreationModelType?(a1, v4 + v20);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_useTemplate) = a2;
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService) = a3;
  v23 = (v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID);
  *v23 = 0xD000000000000035;
  v23[1] = 0x800000025DBF63F0;
  v24 = one-time initialization token for memoryCreationQU;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logging.memoryCreationQU);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v27))
  {
    OUTLINED_FUNCTION_28_3();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v29 = swift_slowAlloc();
    v35[1] = a3;
    v30 = a1;
    v31 = v29;
    v39 = v29;
    *v28 = 136315138;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v28 + 4) = v32;
    _os_log_impl(&dword_25D85C000, v26, v27, "LLM QU: useTemplate: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    a1 = v30;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  static SamplingStrategy.topK(_:)();
  v33 = type metadata accessor for SamplingStrategy();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v33);
  outlined init with copy of Date?(v14, v36, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();

  outlined destroy of IntentApplication?(a1, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  outlined destroy of IntentApplication?(v14, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  (*(v37 + 32))(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters, v19, v38);
  return v4;
}

uint64_t MemoryCreationQUNetworkService.modelID(modelType:)(uint64_t a1)
{
  v2 = type metadata accessor for MemoryCreationModelType();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  (*(v4 + 16))(v7 - v6, a1, v2);
  v8 = OUTLINED_FUNCTION_119();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D37460])
  {
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()();
    __swift_project_boxed_opaque_existential_1(v13, v14);
LABEL_5:
    v11 = dispatch thunk of CatalogResource.id.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v11;
  }

  if (v10 == *MEMORY[0x277D37458])
  {
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3()();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MemoryCreationQUNetworkService.prewarm(originatorPID:modelType:)(uint64_t a1, uint64_t a2)
{
  MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(a1, a2);
}

uint64_t MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  type metadata accessor for PrewarmUrgency();
  OUTLINED_FUNCTION_14();
  v98 = v4;
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v97 = v6 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v96 = &v91 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - v18;
  v20 = type metadata accessor for MemoryCreationModelType();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_109();
  v94 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v91 - v27;
  outlined init with copy of Date?(a2, v19, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v29 = OUTLINED_FUNCTION_149_8(v19);
  v30 = 0x28155B000uLL;
  v101 = v28;
  if (v29 == 1)
  {
    outlined destroy of IntentApplication?(v19, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logging.memoryCreationQU);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v33))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_126_11();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v39 = objc_opt_self();
    v40 = [v39 standardUserDefaults];
    v41 = MEMORY[0x25F89F4C0](0x6361426D6C6C4E50, 0xEC000000646E656BLL);
    v42 = [v40 stringForKey_];

    v93 = v20;
    if (v42)
    {
      OUTLINED_FUNCTION_128_8();
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (v30 == 0x7665446E4F736D67 && v44 == 0xEB00000000656369)
      {
        goto LABEL_20;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_40_18();
      if (v46)
      {
        goto LABEL_21;
      }
    }

    v47 = [v39 standardUserDefaults];
    v48 = MEMORY[0x25F89F4C0](0x6B636142434D4E50, 0xEB00000000646E65);
    v49 = [v47 stringForKey_];

    if (!v49)
    {
LABEL_18:
      v54 = MEMORY[0x277D37458];
LABEL_22:
      v28 = v101;
      (*(v22 + 104))(v101, *v54, v20);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_128_8();
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (v30 != 0x7665446E4F736D67 || v51 != 0xEB00000000656369)
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_40_18();
      if ((v53 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      v54 = MEMORY[0x277D37460];
      goto LABEL_22;
    }

LABEL_20:

    OUTLINED_FUNCTION_40_18();
    goto LABEL_21;
  }

  (*(v22 + 32))(v28, v19, v20);
LABEL_23:
  v55 = v102 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
  OUTLINED_FUNCTION_89_0(v102 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID, v105);
  v56 = v100;
  if ((*(v55 + 8) & 1) != 0 || *v55 != v100)
  {
    goto LABEL_37;
  }

  v92 = v14;
  v57 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType;
  v58 = v28;
  v59 = v102;
  OUTLINED_FUNCTION_89_0(v102 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType, v104);
  v60 = v96;
  (*(v22 + 16))(v96, v58, v20);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v20);
  v61 = *(v95 + 48);
  outlined init with copy of Date?(v59 + v57, v9, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  outlined init with copy of Date?(v60, &v9[v61], &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  if (OUTLINED_FUNCTION_149_8(v9) != 1)
  {
    v63 = v92;
    outlined init with copy of Date?(v9, v92, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    if (OUTLINED_FUNCTION_149_8(&v9[v61]) != 1)
    {
      v64 = v94;
      (*(v22 + 32))(v94, &v9[v61], v20);
      lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType, MEMORY[0x277D37468], MEMORY[0x277D37470]);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v22 + 8);
      v66(v64, v20);
      outlined destroy of IntentApplication?(v60, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
      v66(v63, v20);
      v56 = v100;
      outlined destroy of IntentApplication?(v9, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
      v28 = v101;
      v30 = 0x28155B000uLL;
      if ((v65 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    outlined destroy of IntentApplication?(v60, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    (*(v22 + 8))(v63, v20);
    v28 = v101;
    v30 = 0x28155B000;
LABEL_30:
    outlined destroy of IntentApplication?(v9, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMR);
    goto LABEL_37;
  }

  outlined destroy of IntentApplication?(v60, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v62 = OUTLINED_FUNCTION_149_8(&v9[v61]);
  v28 = v101;
  v30 = 0x28155B000;
  if (v62 != 1)
  {
    goto LABEL_30;
  }

  outlined destroy of IntentApplication?(v9, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
LABEL_32:
  v67 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
  v68 = v102;
  OUTLINED_FUNCTION_89_0(v102 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel, v103);
  v69 = *(v68 + v67);
  v28 = v101;
  if (v69)
  {
    v70 = *(v30 + 2872);

    if (v70 != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logging.memoryCreationQU);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v73))
    {
      OUTLINED_FUNCTION_28_3();
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v56;
      OUTLINED_FUNCTION_126_11();
      v80 = 12;
LABEL_43:
      _os_log_impl(v75, v76, v77, v78, v79, v80);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      goto LABEL_44;
    }

    goto LABEL_44;
  }

LABEL_37:
  if (*(v30 + 2872) != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static Logging.memoryCreationQU);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v83))
  {
    OUTLINED_FUNCTION_28_3();
    v84 = swift_slowAlloc();
    *v84 = 134217984;
    *(v84 + 4) = v56;
    _os_log_impl(&dword_25D85C000, v82, v83, "Prewarming model for PID %ld", v84, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v69 = MemoryCreationQUNetworkService.createAndCacheModel(onBehalfOfPID:modelType:)(v56, v28);
  static PrewarmUrgency.default.getter();
  TokenGenerator.prewarm(usesGuidedGeneration:urgency:)();
  v85 = OUTLINED_FUNCTION_115_10();
  v86(v85);
  v72 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v87))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_126_11();
    v80 = 2;
    goto LABEL_43;
  }

LABEL_44:

  v88 = OUTLINED_FUNCTION_119();
  v89(v88);
  return v69;
}

uint64_t MemoryCreationQUNetworkService.createAndCacheModel(onBehalfOfPID:modelType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = type metadata accessor for MemoryCreationModelType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  MEMORY[0x28223BE20](v12);
  v46 = &v41 - v13;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logging.memoryCreationQU);

  v44 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v11;
    v21 = v20;
    v47[0] = v20;
    *v19 = 136315138;
    v22 = v5;
    v23 = a1;
    v24 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_modelType;
    swift_beginAccess();
    outlined init with copy of Date?(v3 + v24, v46, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v19 + 4) = v25;
    a1 = v23;
    v5 = v22;
    _os_log_impl(&dword_25D85C000, v16, v17, "Memory Creation: creating memory creation model of type: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v26 = v21;
    v11 = v42;
    MEMORY[0x25F8A1050](v26, -1, -1);
    v27 = v19;
    v6 = v43;
    MEMORY[0x25F8A1050](v27, -1, -1);
  }

  (*(v6 + 16))(v8, v45, v5);
  v28 = (*(v6 + 88))(v8, v5);
  v29 = v28;
  if (v28 == *MEMORY[0x277D37460])
  {
    v30 = v11;
    MemoryCreationQUNetworkService.miniModel(onBehalfOfPID:)();
    v32 = v31;
    if (!v31)
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_25D85C000, v38, v39, "Unable to init model bundle for mini model, falling back to maxi model", v40, 2u);
        MEMORY[0x25F8A1050](v40, -1, -1);
      }

      v32 = MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)(a1);
      v11 = v30;
      (*(v6 + 104))(v30, *MEMORY[0x277D37458], v5);
      goto LABEL_10;
    }

LABEL_9:
    (*(v6 + 104))(v11, v29, v5);
LABEL_10:

    v33 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
    swift_beginAccess();
    *(v3 + v33) = v32;

    v34 = v46;
    (*(v6 + 32))(v46, v11, v5);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v5);
    v35 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType;
    swift_beginAccess();
    outlined assign with take of MemoryCreationModelType?(v34, v3 + v35);
    swift_endAccess();
    v36 = v3 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
    swift_beginAccess();
    *v36 = a1;
    *(v36 + 8) = 0;
    return v32;
  }

  if (v28 == *MEMORY[0x277D37458])
  {
    v32 = MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)(a1);
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 360) = v20;
  *(v1 + 368) = v0;
  *(v1 + 480) = v19;
  *(v1 + 344) = v2;
  *(v1 + 352) = v18;
  *(v1 + 328) = v3;
  *(v1 + 336) = v4;
  *(v1 + 312) = v5;
  *(v1 + 320) = v6;
  *(v1 + 296) = v7;
  *(v1 + 304) = v8;
  *(v1 + 288) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  OUTLINED_FUNCTION_114(v10);
  *(v1 + 376) = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for InferenceError.Context();
  *(v1 + 384) = v11;
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 392) = v12;
  *(v1 + 400) = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for InferenceError();
  *(v1 + 408) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v1 + 416) = v14;
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v15);
}

{
  if (*(v0 + 480))
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 processIdentifier];

    v3 = v2;
  }

  else
  {
    v3 = *(v0 + 352);
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 440) = __swift_project_value_buffer(v4, static Logging.memoryCreationQU);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v6))
  {
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    OUTLINED_FUNCTION_126_11();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v25 = *(v0 + 344);
  v16 = *(v0 + 320);
  v15 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);

  *(v0 + 448) = MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(v3, v13);
  v20._rawValue = v18;
  v21._rawValue = v16;
  *(v0 + 456) = MemoryCreationQUNetworkService.generatePromptBindings(query:personNames:petNames:locations:currentTime:)(v19, v17, v20, v21, v15, v14, v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 464) = v22;
  *v22 = v23;
  v22[1] = MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);

  return MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 472);
  *(v0 + 280) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 424);
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);

    v8 = OUTLINED_FUNCTION_107();
    v9(v8);
    lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v10 = swift_allocError();
    (*(v5 + 16))(v11, v3, v4);
    v12 = _convertErrorToNSError(_:)();

    v13 = MEMORY[0x277D837D0];
    v14 = Dictionary.init(dictionaryLiteral:)();
    InferenceError.context.getter();
    if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 376), &_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
    }

    else
    {
      v15 = *(v0 + 400);
      v47 = *(v0 + 392);
      v51 = *(v0 + 384);

      v16 = OUTLINED_FUNCTION_113_11();
      v17(v16);
      v18 = InferenceError.Context.domain.getter();
      v49 = v19;
      v50 = v18;
      v48 = InferenceError.Context.code.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      v46 = xmmword_25DBC8180;
      *(inited + 16) = xmmword_25DBC8180;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v21;
      InferenceError.Context.userInfo.getter();
      v22 = Dictionary.description.getter();
      v23 = v12;
      v25 = v24;

      *(inited + 72) = v13;
      *(inited + 48) = v22;
      *(inited + 56) = v25;
      v12 = v23;
      v26 = Dictionary.init(dictionaryLiteral:)();
      v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v28 = @nonobjc NSError.init(domain:code:userInfo:)(v50, v49, v48, v26);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_25DBC8180;
      *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v29 + 40) = v30;
      *(v29 + 72) = type metadata accessor for NSError();
      *(v29 + 48) = v28;
      v14 = Dictionary.init(dictionaryLiteral:)();
      (*(v47 + 8))(v15, v51);
    }

    v31 = [v12 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = [v12 code];
    v33 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v34 = OUTLINED_FUNCTION_64_0();
    v36 = @nonobjc NSError.init(domain:code:userInfo:)(v34, v35, v32, v14);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_28_3();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_25D85C000, v37, v38, "Caught inference error, returning wrapped error: %@", v39, 0xCu);
      outlined destroy of IntentApplication?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    swift_willThrow();

    v42 = OUTLINED_FUNCTION_179_0();
    v43(v42);
  }

  else
  {

    swift_willThrow();
  }

  OUTLINED_FUNCTION_127();

  return v44();
}

void MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 288);

  memcpy(v1, (v0 + 16), 0x68uLL);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_204();

  __asm { BRAA            X1, X16 }
}

uint64_t MemoryCreationQUNetworkService.generatePromptBindings(query:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer personNames, Swift::OpaquePointer petNames, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = MemoryCreationQUNetworkService.formatNames(personNames:petNames:)(personNames, petNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;
  if (a7)
  {
    v15 = a7;
  }

  else
  {
    a6 = static MemoryCreationQUNetworkService.getCurrentDate()();
    v15 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x73656D616ELL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v11;
  *(inited + 96) = 0x54746E6572727563;
  *(inited + 104) = 0xEB00000000656D69;
  *(inited + 112) = a6;
  *(inited + 120) = v15;
  *(inited + 128) = 0x6E6F697461636F6CLL;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v12;
  *(inited + 152) = v14;

  v18 = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.memoryCreationQU);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v25 = swift_slowAlloc();
    *v22 = 136315138;
    Dictionary.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v22 + 4) = v23;
    _os_log_impl(&dword_25D85C000, v20, v21, "Memory Creation QU prompt bindings: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return v18;
}

uint64_t MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  v1[147] = v0;
  v1[146] = v2;
  v1[145] = v3;
  v1[144] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_114(v5);
  v1[148] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for PromptTemplate();
  v1[149] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[150] = v7;
  v1[151] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_72();
  if (*(v0[147]._rawValue + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_useTemplate) == 1)
  {
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[152]._rawValue = __swift_project_value_buffer(v1, static Logging.memoryCreationQU);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_172();
      *v4 = 0;
      _os_log_impl(&dword_25D85C000, v2, v3, "Calling LLM QU parse with template", v4, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    rawValue = v0[147]._rawValue;

    static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingID.getter();
    v6 = &rawValue[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID];
    OUTLINED_FUNCTION_89_0(&rawValue[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID], &v0[141]);
    v8 = *v6;
    v7 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s12StaticStringVtGMd, &_ss23_ContiguousArrayStorageCySS_s12StaticStringVtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = "{{ specialToken.chat.role.system }}You are an expert in query understanding for a photo library. Your task is to transform the given natural language prompt into a structured JSON format. You must follow the instructions below:<n> - Ensure music artist names are specifically marked as a music artist, not simply as a who.<n> - Identify named locations like landmarks, business addresses, cities, and countries, and tag them as a where rather than a what.<n> - Annotate any mention of a holiday or festival name immediately followed by a year as a when.<n> - Restrict what categories to only the following options: Anniversary, Birthday, Breakfast, Concert, Dinner, Diving, Hiking, Holiday Event, Lunch, Wedding.<n> - Please treat all queries as case-insensitive and provide the same response if the meaning of the queries is the same.<n> - The photo library contains a list of names for reference: [{{ names }}]. The query may include names that are not in this list.{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ userPrompt }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
    *(inited + 56) = 1147;
    *(inited + 64) = 2;
    swift_bridgeObjectRetain_n();
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_34_5();
    PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
    if ((*(**&rawValue[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService] + 80))(5))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[153]._rawValue = v10;
      *v10 = v11;
      v10[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(v12, v13, v14, v15, v16);
    }

    else
    {
      v32 = swift_task_alloc();
      v0[155]._rawValue = v32;
      *v32 = v0;
      v32[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(v33, v34, v35, v36);
    }
  }

  else
  {
    v0[159]._rawValue = MemoryCreationQUNetworkService.generatePrompt(promptBindings:)(v0[1160])._object;
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v0[160]._rawValue = __swift_project_value_buffer(v19, static Logging.memoryCreationQU);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v21))
    {
      v22 = OUTLINED_FUNCTION_172();
      *v22 = 0;
      _os_log_impl(&dword_25D85C000, v20, v21, "Calling LLM QU parse without template", v22, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v23 = v0[147]._rawValue;

    if ((*(**&v23[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService] + 80))(5))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[161]._rawValue = v24;
      *v24 = v25;
      v24[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(v26, v27, v28, v29, v30);
    }

    else
    {
      v38 = swift_task_alloc();
      v0[163]._rawValue = v38;
      *v38 = v0;
      v38[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(v39, v40, v41, v42);
    }
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 1232) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  outlined init with copy of MemoryCreationQUModelResponse(v0 + 328, v0 + 744);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of MemoryCreationQUModelResponse(v0 + 328);
  if (os_log_type_enabled(v1, v2))
  {
    v11 = *(v0 + 1208);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1192);
    OUTLINED_FUNCTION_28_3();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v12 = swift_slowAlloc();
    *v5 = 136315138;
    memcpy((v0 + 848), (v0 + 328), 0x68uLL);
    outlined init with copy of MemoryCreationQUModelResponse(v0 + 328, v0 + 952);
    String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v5 + 4) = v6;
    _os_log_impl(&dword_25D85C000, v1, v2, "Got response from LLM QU with constrained decoding: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    (*(v3 + 8))(v11, v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_54_0();
    v8(v7);
  }

  OUTLINED_FUNCTION_127_12();
  OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 408), *(v0 + 392), *(v0 + 328), *(v0 + 344), *(v0 + 360), *(v0 + 376));

  OUTLINED_FUNCTION_106();

  return v9();
}

{
  OUTLINED_FUNCTION_48();
  v0 = OUTLINED_FUNCTION_65_19();
  v1(v0);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v7[156] = v0;

  if (!v0)
  {
    v7[157] = v3;
    v7[158] = v5;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  v1._countAndFlagsBits = *(v0 + 1264);
  v1._object = *(v0 + 1256);
  MemoryCreationQUModelResponse.init(jsonString:)((v0 + 224), v1);
  v2 = OUTLINED_FUNCTION_65_19();
  v3(v2);
  OUTLINED_FUNCTION_127_12();
  if (v4)
  {

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 304), *(v0 + 288), *(v0 + 224), *(v0 + 240), *(v0 + 256), *(v0 + 272));

    OUTLINED_FUNCTION_106();
  }

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  v0 = OUTLINED_FUNCTION_65_19();
  v1(v0);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 1296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  outlined init with copy of MemoryCreationQUModelResponse(v0 + 120, v0 + 432);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of MemoryCreationQUModelResponse(v0 + 120);
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_28_3();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v7 = swift_slowAlloc();
    *v3 = 136315138;
    memcpy((v0 + 536), (v0 + 120), 0x68uLL);
    outlined init with copy of MemoryCreationQUModelResponse(v0 + 120, v0 + 640);
    String.init<A>(describing:)();
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v3 + 4) = v4;
    _os_log_impl(&dword_25D85C000, v1, v2, "Got response from LLM QU with constrained decoding: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_127_12();
  OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 200), *(v0 + 184), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168));

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v0();
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v7[164] = v0;

  if (!v0)
  {

    v7[165] = v3;
    v7[166] = v5;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  v1._countAndFlagsBits = *(v0 + 1328);
  v1._object = *(v0 + 1320);
  MemoryCreationQUModelResponse.init(jsonString:)((v0 + 16), v1);
  OUTLINED_FUNCTION_127_12();
  if (v2)
  {

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 96), *(v0 + 80), *(v0 + 16), *(v0 + 32), *(v0 + 48), *(v0 + 64));

    OUTLINED_FUNCTION_106();
  }

  return v3();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_142_5(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 128) = v4;
  *v4 = v5;
  v4[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);
  OUTLINED_FUNCTION_104_5();

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(v6, v7, v8, v1, v0);
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:);
  v6 = OUTLINED_FUNCTION_113_11();

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(v6, v7, v4, v2);
}

Swift::String __swiftcall MemoryCreationQUNetworkService.generatePrompt(promptBindings:)(Swift::OpaquePointer promptBindings)
{
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = StaticString.description.getter();
  MemoryCreationQUNetworkService.render(prompt:with:)(v3, v4, v2);

  v5 = OUTLINED_FUNCTION_64_0();
  v7 = MemoryCreationQUNetworkService.render(prompt:with:)(v5, v6, promptBindings._rawValue);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_142_5(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 128) = v6;
  *v6 = v7;
  v6[1] = MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:);

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(v3 + 16, v4, v2, v1, v0);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (!v0)
  {
    memcpy(*(v3 + 120), (v3 + 16), 0x68uLL);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:);

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(v7, v5, v0, v3);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_119();
  }

  return v5(v4);
}

uint64_t static MemoryCreationQUNetworkService.getCurrentDate()()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0x2D4D4D2D79797979, 0xEA00000000006464, v1);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = OUTLINED_FUNCTION_107();
  v4(v3);
  v5 = [v1 stringFromDate_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

Swift::String __swiftcall MemoryCreationQUNetworkService.formatNames(personNames:petNames:)(Swift::OpaquePointer personNames, Swift::OpaquePointer petNames)
{

  specialized Array.append<A>(contentsOf:)(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_136_9();
  BidirectionalCollection<>.joined(separator:)();

  v3 = OUTLINED_FUNCTION_88();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall MemoryCreationQUNetworkService.formatLocations(locations:)(Swift::OpaquePointer locations)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_136_9();
  v1 = BidirectionalCollection<>.joined(separator:)();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t MemoryCreationQUNetworkService.render(prompt:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a3 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    MEMORY[0x25F89F6C0](v14, v15);

    MEMORY[0x25F89F6C0](8224032, 0xE300000000000000);
    lazy protocol witness table accessor for type String and conformance String();
    a1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void MemoryCreationQUNetworkService.miniModel(onBehalfOfPID:)()
{
  OUTLINED_FUNCTION_60_1();
  v50 = v2;
  v3 = type metadata accessor for CachePolicy();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v51 = v6 - v5;
  v7 = type metadata accessor for SessionConfiguration();
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v52 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v13;
  v53 = type metadata accessor for ModelBundle();
  OUTLINED_FUNCTION_14();
  v55 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_86_7();
  v16 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_109();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for MemoryCreationModelType();
  OUTLINED_FUNCTION_14();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v32 = v31 - v30;
  (*(v28 + 104))(v31 - v30, *MEMORY[0x277D37460], v26);
  MemoryCreationQUNetworkService.modelID(modelType:)(v32);
  v33 = v32;
  v34 = v25;
  (*(v28 + 8))(v33, v26);

  ResourceBundleQuery.init(configurationIdentifier:arguments:)();
  if (v0)
  {
  }

  else
  {
    v56 = v1;
    (*(v18 + 16))(v22, v25, v16);
    v35 = v54;
    ModelBundle.init(resourceBundleQuery:)();
    v36 = v53;
    if (__swift_getEnumTagSinglePayload(v35, 1, v53) == 1)
    {
      (*(v18 + 8))(v34, v16);

      outlined destroy of IntentApplication?(v35, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    }

    else
    {
      (*(v55 + 32))(v56, v35, v36);
      if (one-time initialization token for memoryCreationQU != -1)
      {
        OUTLINED_FUNCTION_2_39();
        swift_once();
      }

      v48 = v34;
      v49 = v18;
      v54 = v16;
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logging.memoryCreationQU);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_28_3();
        v40 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v57 = swift_slowAlloc();
        *v40 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 4) = v41;
        _os_log_impl(&dword_25D85C000, v38, v39, "LLM QU: using mini model: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v42 = v55;
      v43 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_25DBC8180;
      v45 = v44 + v43;
      v46 = v56;
      (*(v42 + 16))(v45, v56, v36);
      static CachePolicy.inMemory.getter();
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      type metadata accessor for TokenGenerator();
      swift_allocObject();
      TokenGenerator.init(configuration:)();
      (*(v42 + 8))(v46, v36);
      (*(v49 + 8))(v48, v54);
    }
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)(uint64_t a1)
{
  v1 = type metadata accessor for CachePolicy();
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v3 = type metadata accessor for GenerativeModelSessionConfiguration();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100_9();
  v7 = type metadata accessor for MemoryCreationModelType();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  (*(v9 + 104))(v12 - v11, *MEMORY[0x277D37458], v7);
  MemoryCreationQUNetworkService.modelID(modelType:)(v13);
  (*(v9 + 8))(v13, v7);
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.memoryCreationQU);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_28_3();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v19 = swift_slowAlloc();
    *v17 = 136315138;
    OUTLINED_FUNCTION_45_0();
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v15, v16, "LLM QU: using maxi model: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  type metadata accessor for TokenGenerator();
  type metadata accessor for LLMBundle();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);
  OUTLINED_FUNCTION_45_0();
  ResourceBundleIdentifier.init(stringLiteral:)();
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:)();
}

void MemoryCreationQUNetworkService.parseWithLLMQU_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_32_26(v2, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  type metadata accessor for CompletionPrompt();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_18(v10, v11, v12, v13, v14, v15, v16, v17, v52);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_21(v19, v20, v21, v22, v23, v24, v25, v26, v53);
  OUTLINED_FUNCTION_29_17();
  CompletionPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_5_36();
  v29 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v27, v28, MEMORY[0x277D42D38]);
  OUTLINED_FUNCTION_36_19(v29);
  v30 = OUTLINED_FUNCTION_64_14();
  v31(v30);
  v32 = *(v6 + 8);
  v33 = OUTLINED_FUNCTION_26_2();
  v32(v33);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v34 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v34, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51();
  v35 = OUTLINED_FUNCTION_137_3();
  v36(v35);
  v37 = OUTLINED_FUNCTION_11_32();
  v38(v37);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v39 = OUTLINED_FUNCTION_0_9();
  v40(v39);
  v41 = OUTLINED_FUNCTION_34_5();
  v32(v41);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v42 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v42, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v43 = OUTLINED_FUNCTION_59_15();
  v44(v43);
  v45 = OUTLINED_FUNCTION_10_29();
  v46(v45);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v47 = OUTLINED_FUNCTION_31_23();
  v48(v47);
  v49 = OUTLINED_FUNCTION_26_2();
  v32(v49);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v50 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_14_25();
  }

  v32(v50);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  v4[32] = swift_task_alloc();
  v4[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v4[41] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v4[49] = v10;
  v4[50] = *(v10 - 8);
  v4[51] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[52] = v11;
  v4[53] = *(v11 - 8);
  v4[54] = swift_task_alloc();
  v12 = type metadata accessor for CompletionPrompt();
  v4[55] = v12;
  v4[56] = *(v12 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:));
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[75] = v1;

  v6 = v4[31];
  v7 = v4[30];
  v8 = v4[29];
  if (!v1)
  {
    v4[76] = v0;
    v4[77] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2822009F8](v9);
}

{
  v1 = v0[70];
  v2 = v0[60];
  v3 = v0[55];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[77];
  v6 = v0[76];

  return v4(v5, v6);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = *(v18 + 560);
  v20 = OUTLINED_FUNCTION_62_16();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = *(v18 + 560);
  v20 = OUTLINED_FUNCTION_62_16();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_32_26(v2, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  type metadata accessor for CompletionPrompt();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_18(v10, v11, v12, v13, v14, v15, v16, v17, v52);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_21(v19, v20, v21, v22, v23, v24, v25, v26, v53);
  OUTLINED_FUNCTION_29_17();
  CompletionPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_5_36();
  v29 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v27, v28, MEMORY[0x277D42D38]);
  OUTLINED_FUNCTION_36_19(v29);
  v30 = OUTLINED_FUNCTION_64_14();
  v31(v30);
  v32 = *(v6 + 8);
  v33 = OUTLINED_FUNCTION_26_2();
  v32(v33);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v34 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v34, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51();
  v35 = OUTLINED_FUNCTION_137_3();
  v36(v35);
  v37 = OUTLINED_FUNCTION_11_32();
  v38(v37);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v39 = OUTLINED_FUNCTION_0_9();
  v40(v39);
  v41 = OUTLINED_FUNCTION_34_5();
  v32(v41);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v42 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v42, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v43 = OUTLINED_FUNCTION_59_15();
  v44(v43);
  v45 = OUTLINED_FUNCTION_10_29();
  v46(v45);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v47 = OUTLINED_FUNCTION_31_23();
  v48(v47);
  v49 = OUTLINED_FUNCTION_26_2();
  v32(v49);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v50 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_14_25();
  }

  v32(v50);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #1 in MemoryCreationQUNetworkService.parseWithLLMQU_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_100_9();
  v7[3] = type metadata accessor for BindableVariable();
  v7[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  BindableVariable.init(name:)();
  v1 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DBC8180;
  OUTLINED_FUNCTION_104_5();
  v3();
  MEMORY[0x25F89F150](v2, v0, v1);

  v4 = OUTLINED_FUNCTION_113_11();
  return v5(v4);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v5[42] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  v5[46] = swift_task_alloc();
  v5[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v5[48] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v5[52] = v8;
  v5[53] = *(v8 - 8);
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v5[55] = swift_task_alloc();
  v9 = type metadata accessor for FunctionIdentifier();
  v5[56] = v9;
  v5[57] = *(v9 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v5[60] = v10;
  v5[61] = *(v10 - 8);
  v5[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v5[63] = v11;
  v5[64] = *(v11 - 8);
  v5[65] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[66] = v12;
  v5[67] = *(v12 - 8);
  v5[68] = swift_task_alloc();
  v13 = type metadata accessor for CompletionPrompt();
  v5[69] = v13;
  v5[70] = *(v13 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:));
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[44];
  *v4 = *v1;
  *(v3 + 712) = v0;

  (*(v5 + 8))(v2[45], v2[43]);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[84];
  v35 = v22[68];
  v36 = v22[65];
  v37 = v22[62];
  v38 = v22[58];
  v39 = v22[55];
  v40 = v22[54];
  v41 = v22[51];
  v42 = v22[48];
  v43 = v22[46];
  v44 = v22[45];
  v24 = v22[37];
  (*(v22[57] + 8))(v22[59], v22[56]);
  v25 = OUTLINED_FUNCTION_162_3();
  v23(v25);
  memcpy(v24, v22 + 2, 0x68uLL);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_191();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = *(v18 + 672);
  v20 = OUTLINED_FUNCTION_69_13();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  OUTLINED_FUNCTION_47_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = *(v18 + 672);
  v20 = OUTLINED_FUNCTION_69_13();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  OUTLINED_FUNCTION_47_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_60_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Prompt();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = MEMORY[0x277D42EC0];
  v10[0] = v3;
  v10[1] = v1;

  v5 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_99_13(v6, xmmword_25DBC8180);
  OUTLINED_FUNCTION_104_5();
  v7();
  MEMORY[0x25F89F150](v6, v4, v5);

  v8 = OUTLINED_FUNCTION_113_11();
  v9(v8);
  OUTLINED_FUNCTION_61_2();
}

void MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_32_26(v2, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  type metadata accessor for ChatMessagesPrompt();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_18(v10, v11, v12, v13, v14, v15, v16, v17, v52);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_21(v19, v20, v21, v22, v23, v24, v25, v26, v53);
  OUTLINED_FUNCTION_29_17();
  ChatMessagesPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_4_39();
  v29 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v27, v28, MEMORY[0x277D42D70]);
  OUTLINED_FUNCTION_36_19(v29);
  v30 = OUTLINED_FUNCTION_64_14();
  v31(v30);
  v32 = *(v6 + 8);
  v33 = OUTLINED_FUNCTION_26_2();
  v32(v33);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v34 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v34, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51();
  v35 = OUTLINED_FUNCTION_137_3();
  v36(v35);
  v37 = OUTLINED_FUNCTION_11_32();
  v38(v37);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v39 = OUTLINED_FUNCTION_0_9();
  v40(v39);
  v41 = OUTLINED_FUNCTION_34_5();
  v32(v41);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v42 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v42, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v43 = OUTLINED_FUNCTION_59_15();
  v44(v43);
  v45 = OUTLINED_FUNCTION_10_29();
  v46(v45);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v47 = OUTLINED_FUNCTION_31_23();
  v48(v47);
  v49 = OUTLINED_FUNCTION_26_2();
  v32(v49);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v50 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_14_25();
  }

  v32(v50);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  v4[32] = swift_task_alloc();
  v4[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v4[41] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v4[49] = v10;
  v4[50] = *(v10 - 8);
  v4[51] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[52] = v11;
  v4[53] = *(v11 - 8);
  v4[54] = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  v4[55] = v12;
  v4[56] = *(v12 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4[58] = swift_task_alloc();
  v13 = type metadata accessor for ChatMessagesPrompt();
  v4[59] = v13;
  v4[60] = *(v13 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:));
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v1 = *(v0 + 488);
  v44 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v47 = *(v0 + 416);
  v48 = *(v0 + 504);
  v49 = *(v0 + 208);
  v45 = *(v0 + 200);
  v46 = *(v0 + 432);
  v5 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v5;
  OUTLINED_FUNCTION_134_8();
  ChatMessagesPrompt.init(_:)();

  static Locale.autoupdatingCurrent.getter();
  Locale.identifier.getter();
  v6 = OUTLINED_FUNCTION_110_11();
  v7(v6);
  OUTLINED_FUNCTION_32_0();
  Locale.init(identifier:)();
  OUTLINED_FUNCTION_114_10();
  outlined destroy of IntentApplication?(v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(v3 + 8);
  *(v0 + 536) = v8;
  *(v0 + 544) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v44);
  v9 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 552) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 560) = type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17();
  v11 = *(v10 + 16);
  *(v0 + 568) = v11;
  *(v0 + 576) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v46, v45 + v9);
  *(v0 + 672) = *MEMORY[0x277D0E548];
  *(v0 + 584) = *(v4 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v0 + 592) = v12;
  v13(v46);
  OUTLINED_FUNCTION_4_39();
  *(v0 + 600) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v14, v15, MEMORY[0x277D42D70]);
  OUTLINED_FUNCTION_34_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v16 = *(v4 + 8);
  *(v0 + 608) = v16;
  *(v0 + 616) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v46, v47);
  v17 = OUTLINED_FUNCTION_26_2();
  (v8)(v17);
  v18 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v49);
  OUTLINED_FUNCTION_122_9(v18);

  v51 = v8;
  v8(v48, v44);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v19 = *(v0 + 408);
  v20 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v20, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_28_14();
  (*(v21 + 16))(v19);
  v22 = OUTLINED_FUNCTION_66_16();
  v50 = v23;
  v24(v22);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v25 = OUTLINED_FUNCTION_179_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_64_0();
  v51(v27);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v28 = *(v0 + 368);
  v29 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v29, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51();
  v30 = OUTLINED_FUNCTION_140_7();
  v31(v30);
  v32 = OUTLINED_FUNCTION_67_17();
  v33(v32, v50, v28);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v34 = OUTLINED_FUNCTION_61_17();
  v35(v34);
  v36 = OUTLINED_FUNCTION_179_0();
  v51(v36);
  v37 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  v38 = OUTLINED_FUNCTION_57_15(v37);
  OUTLINED_FUNCTION_93_12(v38, 0x800000025DBF6520);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 624) = v39;
  *v39 = v40;
  v39[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_191();

  return MEMORY[0x282166B60](v41);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 632) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[81] = v1;

  v6 = v4[31];
  v7 = v4[30];
  v8 = v4[29];
  if (!v1)
  {
    v4[82] = v0;
    v4[83] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2822009F8](v9);
}

{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[59];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[83];
  v6 = v0[82];

  return v4(v5, v6);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 536);
  v24 = OUTLINED_FUNCTION_62_16();
  v25(v24);
  v26 = OUTLINED_FUNCTION_107();
  v23(v26);
  OUTLINED_FUNCTION_41_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 536);
  v24 = OUTLINED_FUNCTION_62_16();
  v25(v24);
  v26 = OUTLINED_FUNCTION_107();
  v23(v26);
  OUTLINED_FUNCTION_41_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_32_26(v2, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  type metadata accessor for ChatMessagesPrompt();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_18(v10, v11, v12, v13, v14, v15, v16, v17, v52);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_21(v19, v20, v21, v22, v23, v24, v25, v26, v53);
  OUTLINED_FUNCTION_29_17();
  ChatMessagesPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_4_39();
  v29 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v27, v28, MEMORY[0x277D42D70]);
  OUTLINED_FUNCTION_36_19(v29);
  v30 = OUTLINED_FUNCTION_64_14();
  v31(v30);
  v32 = *(v6 + 8);
  v33 = OUTLINED_FUNCTION_26_2();
  v32(v33);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v34 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v34, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51();
  v35 = OUTLINED_FUNCTION_137_3();
  v36(v35);
  v37 = OUTLINED_FUNCTION_11_32();
  v38(v37);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v39 = OUTLINED_FUNCTION_0_9();
  v40(v39);
  v41 = OUTLINED_FUNCTION_34_5();
  v32(v41);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v42 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v42, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v43 = OUTLINED_FUNCTION_59_15();
  v44(v43);
  v45 = OUTLINED_FUNCTION_10_29();
  v46(v45);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v47 = OUTLINED_FUNCTION_31_23();
  v48(v47);
  v49 = OUTLINED_FUNCTION_26_2();
  v32(v49);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v50 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_14_25();
  }

  v32(v50);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

void closure #1 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  type metadata accessor for BindableChatMessagesPrompt();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  v1 = type metadata accessor for ChatMessagesPrompt();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  BindableChatMessagesPrompt.init(name:)();
  OUTLINED_FUNCTION_45_0();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  v6 = OUTLINED_FUNCTION_45_0();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_99_13(v9, xmmword_25DBC8180);
  v11(v10 + v8, v5, v1);
  MEMORY[0x25F89F110](v9);

  (*(v2 + 8))(v5, v1);
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v5[42] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  v5[46] = swift_task_alloc();
  v5[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v5[48] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[52] = v8;
  v5[53] = *(v8 - 8);
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v5[55] = swift_task_alloc();
  v9 = type metadata accessor for FunctionIdentifier();
  v5[56] = v9;
  v5[57] = *(v9 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v5[60] = v10;
  v5[61] = *(v10 - 8);
  v5[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v5[63] = v11;
  v5[64] = *(v11 - 8);
  v5[65] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[66] = v12;
  v5[67] = *(v12 - 8);
  v5[68] = swift_task_alloc();
  v13 = type metadata accessor for Locale();
  v5[69] = v13;
  v5[70] = *(v13 - 8);
  v5[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5[72] = swift_task_alloc();
  v14 = type metadata accessor for ChatMessagesPrompt();
  v5[73] = v14;
  v5[74] = *(v14 - 8);
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:));
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v1 = *(v0 + 600);
  v44 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v47 = *(v0 + 528);
  v48 = *(v0 + 616);
  v49 = *(v0 + 320);
  v45 = *(v0 + 312);
  v46 = *(v0 + 544);
  v5 = *(v0 + 304);
  *(swift_task_alloc() + 16) = v5;
  OUTLINED_FUNCTION_134_8();
  ChatMessagesPrompt.init(_:)();

  static Locale.autoupdatingCurrent.getter();
  Locale.identifier.getter();
  v6 = OUTLINED_FUNCTION_110_11();
  v7(v6);
  OUTLINED_FUNCTION_32_0();
  Locale.init(identifier:)();
  OUTLINED_FUNCTION_114_10();
  outlined destroy of IntentApplication?(v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(v3 + 8);
  *(v0 + 648) = v8;
  *(v0 + 656) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v44);
  v9 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 664) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 672) = type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17();
  v11 = *(v10 + 16);
  *(v0 + 680) = v11;
  *(v0 + 688) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v46, v45 + v9);
  *(v0 + 768) = *MEMORY[0x277D0E548];
  *(v0 + 696) = *(v4 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v0 + 704) = v12;
  v13(v46);
  OUTLINED_FUNCTION_4_39();
  *(v0 + 712) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v14, v15, MEMORY[0x277D42D70]);
  OUTLINED_FUNCTION_34_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v16 = *(v4 + 8);
  *(v0 + 720) = v16;
  *(v0 + 728) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v46, v47);
  v17 = OUTLINED_FUNCTION_26_2();
  (v8)(v17);
  v18 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v49);
  OUTLINED_FUNCTION_122_9(v18);

  v51 = v8;
  v8(v48, v44);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v19 = *(v0 + 520);
  v20 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v20, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_28_14();
  (*(v21 + 16))(v19);
  v22 = OUTLINED_FUNCTION_66_16();
  v50 = v23;
  v24(v22);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v25 = OUTLINED_FUNCTION_179_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_64_0();
  v51(v27);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v28 = *(v0 + 480);
  v29 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v29, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51();
  v30 = OUTLINED_FUNCTION_140_7();
  v31(v30);
  v32 = OUTLINED_FUNCTION_67_17();
  v33(v32, v50, v28);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v34 = OUTLINED_FUNCTION_61_17();
  v35(v34);
  v36 = OUTLINED_FUNCTION_179_0();
  v51(v36);
  v37 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  v38 = OUTLINED_FUNCTION_57_15(v37);
  OUTLINED_FUNCTION_93_12(v38, 0x800000025DBF6540);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 736) = v39;
  *v39 = v40;
  v39[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_191();

  return MEMORY[0x282166B60](v41);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[44];
  *v4 = *v1;
  *(v3 + 760) = v0;

  (*(v5 + 8))(v2[45], v2[43]);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[73];
  v4 = v0[37];
  (*(v0[57] + 8))(v0[59], v0[56]);
  v1(v2, v3);
  memcpy(v4, v0 + 2, 0x68uLL);

  OUTLINED_FUNCTION_106();

  return v5();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 648);
  v24 = OUTLINED_FUNCTION_69_13();
  v25(v24);
  v26 = OUTLINED_FUNCTION_107();
  v23(v26);
  OUTLINED_FUNCTION_38_22();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 648);
  v24 = OUTLINED_FUNCTION_69_13();
  v25(v24);
  v26 = OUTLINED_FUNCTION_107();
  v23(v26);
  OUTLINED_FUNCTION_38_22();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_60_1();
  v0 = type metadata accessor for ChatMessagesPrompt();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_100_9();
  type metadata accessor for PromptTemplate();
  OUTLINED_FUNCTION_9_35();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v1, v2, MEMORY[0x277D0E678]);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_99_13(v3, xmmword_25DBC8180);
  OUTLINED_FUNCTION_104_5();
  v4();
  MEMORY[0x25F89F110](v3);

  v5 = OUTLINED_FUNCTION_113_11();
  v6(v5);
  OUTLINED_FUNCTION_61_2();
}

uint64_t MemoryCreationQUNetworkService.deinit()
{
  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v1, v2, v3);

  v4 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17();
  (*(v5 + 8))(v0 + v4);

  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v6, v7, v8);
  return v0;
}

uint64_t MemoryCreationQUNetworkService.__deallocating_deinit()
{
  MemoryCreationQUNetworkService.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MemoryCreationQUNetworkServiceProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:) in conformance MemoryCreationQUNetworkService(uint64_t a1)
{
  *(v1 + 120) = a1;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);

  return MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)();
}

uint64_t outlined assign with take of MemoryCreationModelType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0](a1);

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t outlined assign with copy of MemoryCreationModelType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t dispatch thunk of MemoryCreationQUNetworkServiceProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v54 = v33;
  v52 = v34;
  v53 = v35;
  v51 = v36;
  v50 = *(a31 + 16) + **(a31 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v32 + 16) = v37;
  *v37 = v38;
  v37[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_15_6();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, a31 + 16, v50, v51, v52, v53, v54, v31, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t type metadata accessor for MemoryCreationQUNetworkService(uint64_t a1)
{
  result = type metadata singleton initialization cache for MemoryCreationQUNetworkService;
  if (!type metadata singleton initialization cache for MemoryCreationQUNetworkService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MemoryCreationQUNetworkService(uint64_t a1)
{
  type metadata accessor for MemoryCreationModelType?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SamplingParameters();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for MemoryCreationModelType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MemoryCreationModelType?)
  {
    type metadata accessor for MemoryCreationModelType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MemoryCreationModelType?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 *OUTLINED_FUNCTION_13_22@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000052;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return BindableConfiguration.init(name:)();
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1)
{
  *(v1 - 88) = a1;

  return GenerativeConfigurationProtocol.samplingParameters(_:)();
}

uint64_t OUTLINED_FUNCTION_38_22()
{
}

uint64_t OUTLINED_FUNCTION_41_16()
{
}

uint64_t OUTLINED_FUNCTION_47_16()
{
}

uint64_t OUTLINED_FUNCTION_52_18()
{
}

uint64_t OUTLINED_FUNCTION_54_19@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = a3;
  a1[5] = a2;
  a1[6].n128_u64[0] = v7;
}

uint64_t OUTLINED_FUNCTION_57_15(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_80_11(uint64_t a1)
{

  return static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();
}

uint64_t OUTLINED_FUNCTION_85_13(uint64_t a1)
{

  return static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();
}

uint64_t OUTLINED_FUNCTION_86_15(uint64_t a1)
{

  return GenerativeConfigurationProtocol.functionIdentifier(_:)();
}

uint64_t OUTLINED_FUNCTION_89_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x6554000000000000;
  *(a1 + 40) = 0xEE006574616C706DLL;

  return type metadata accessor for PromptTemplate();
}

uint64_t OUTLINED_FUNCTION_93_12(uint64_t a1, uint64_t a2)
{

  return FunctionIdentifier.init(identifier:resourceInformation:)();
}

uint64_t OUTLINED_FUNCTION_95_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_114_10()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return ChatMessagesPrompt.locale(_:)();
}

uint64_t OUTLINED_FUNCTION_120_7@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a1[9] = v13;
  a1[10] = a2;
  a1[6] = a11;
  *(v12 + 56) = a12;
}

uint64_t OUTLINED_FUNCTION_122_9(uint64_t a1)
{

  return GenerativeConfigurationProtocol.bindVariables(_:)();
}

uint64_t OUTLINED_FUNCTION_143_9(uint64_t a1)
{

  return _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
}

uint64_t OUTLINED_FUNCTION_144_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return GenerativeConfigurationProtocol.samplingParameters(_:)();
}

uint64_t OUTLINED_FUNCTION_145_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_147_8()
{
}

uint64_t OUTLINED_FUNCTION_149_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t static SearchOverrides.match(rewrittenQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = static SearchOverrides.read()(a1);
  if (!v3)
  {
    v8 = (result + 40);
    v9 = *(result + 16) + 1;
    while (1)
    {
      if (!--v9)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v11 = *(v8 - 1);
      v10 = *v8;
      v14 = *(v8 + 3);
      v15 = *(v8 + 1);
      v12 = v8[5];
      if (v11 == a1 && v10 == a2)
      {
        break;
      }

      v8 += 7;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_12;
      }
    }

    v11 = a1;
LABEL_12:

    *a3 = v11;
    *(a3 + 8) = v10;
    *(a3 + 16) = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v12;
  }

  return result;
}

uint64_t SearchOverrideError.message.getter()
{
  v1 = *v0;

  return v1;
}

void static SearchOverrideError.invalidPayload(_:)()
{
  OUTLINED_FUNCTION_9_36();
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_11_33(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void static SearchOverrideError.unsupported(_:)()
{
  OUTLINED_FUNCTION_9_36();
  _StringGuts.grow(_:)(24);

  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_11_33(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void *one-time initialization function for defaults()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static SearchOverrides.defaults = result;
  return result;
}

id static SearchOverrides.defaults.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_1_56();
    swift_once();
  }

  v1 = static SearchOverrides.defaults;

  return v1;
}

uint64_t static SearchOverrides.read()(uint64_t a1)
{
  v2 = v1;
  v3 = &one-time initialization token for typeDisplayRepresentation;
  if (AFIsInternalInstall())
  {
    if (one-time initialization token for defaults != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v4 = static SearchOverrides.defaults;
      v5 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
      v6 = [v4 valueForKey_];

      if (v6)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of Any?(v53);
      }

      else
      {
        OUTLINED_FUNCTION_7_34();
        outlined destroy of Any?(v53);
        if (v3[79] != -1)
        {
          OUTLINED_FUNCTION_0_56();
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logging.utilities);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_25D85C000, v13, v14, "Registering default overrides from Plist", v15, 2u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25DBC8180;
        *(inited + 32) = 0x764F686372616553;
        *(inited + 40) = 0xEF73656469727265;
        v17 = static SearchOverrides.loadPlistDefaults()();
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
        *(inited + 48) = v17;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v4 registerDefaults_];

        v3 = &one-time initialization token for typeDisplayRepresentation;
      }

      v19 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
      v20 = [v4 arrayForKey_];

      if (!v20)
      {
        break;
      }

      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = specialized _arrayConditionalCast<A, B>(_:)(v21);

      if (!v22)
      {
        break;
      }

      v23 = specialized Array.count.getter();
      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      v57 = v22 & 0xFFFFFFFFFFFFFF8;
      v51 = MEMORY[0x277D84F90];
      v52 = v22;
      while (1)
      {
        if (v23 == v24)
        {

          return v51;
        }

        if (v25)
        {
          v26 = MEMORY[0x25F89FFD0](v24, v22);
        }

        else
        {
          if (v24 >= *(v57 + 16))
          {
            goto LABEL_40;
          }

          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v28 = v26;
        SearchOverride.init(defaultsRepresentation:)(v28, v53);
        if (v2)
        {
          if (v3[79] != -1)
          {
            OUTLINED_FUNCTION_0_56();
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          __swift_project_value_buffer(v29, static Logging.utilities);
          v30 = v28;
          v31 = v2;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = v23;
            v36 = v25;
            v37 = swift_slowAlloc();
            *v34 = 138412546;
            v38 = v2;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v34 + 4) = v39;
            *(v34 + 12) = 2112;
            *(v34 + 14) = v30;
            *v37 = v39;
            v37[1] = v30;
            v40 = v30;
            _os_log_impl(&dword_25D85C000, v32, v33, "%@ - failed to load: %@", v34, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            v25 = v36;
            v23 = v35;
            v22 = v52;
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v3 = &one-time initialization token for typeDisplayRepresentation;
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {

            v32 = v30;
          }

          v2 = 0;
          ++v24;
        }

        else
        {
          v50 = v25;

          v41 = v53[0];
          v42 = v53[1];
          v48 = v55;
          v49 = v54;
          v43 = v56;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v44 = v51;
          }

          else
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v45 = *(v44 + 16);
          if (v45 >= *(v44 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          *(v44 + 16) = v45 + 1;
          v51 = v44;
          v46 = v44 + 56 * v45;
          *(v46 + 32) = v41;
          *(v46 + 40) = v42;
          *(v46 + 48) = v49;
          *(v46 + 64) = v48;
          *(v46 + 80) = v43;
          v24 = v27;
          v3 = &one-time initialization token for typeDisplayRepresentation;
          v25 = v50;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_1_56();
      swift_once();
    }

    v47 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v47);
    static SearchOverrideError.invalidPayload(_:)();
    return swift_willThrow();
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.utilities);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25D85C000, v8, v9, "Search overrides are only supported on internal installs", v10, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t static SearchOverrides.loadPlistDefaults()()
{
  type metadata accessor for OmniSearchService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(0xD000000000000010, 0x800000025DBF6710, 0x7473696C70, 0xE500000000000000, v1);
  v4 = v3;

  if (v4)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    v5._countAndFlagsBits = v2;
    v5._object = v4;
    v6 = NSArray.__allocating_init(contentsOfFile:)(v5);
    if (v6)
    {
      v7 = v6;
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.utilities);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25D85C000, v9, v10, "Failed to load DefaultOverrides.plist", v11, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return MEMORY[0x277D84F90];
}

void SearchOverride.init(defaultsRepresentation:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = MEMORY[0x25F89F4C0](0x74614D7475706E69, 0xEA00000000006863);
  v6 = &off_2799EF000;
  v7 = OUTLINED_FUNCTION_13_23(v5, sel_objectForKey_);

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_34();
  }

  OUTLINED_FUNCTION_3_43(v8, v9, v10, v11, v12, v13, v14, v15, v84, v88, v92, v96, v100, v104, v108, v112, v116, v121, v125, v129, v133);
  if (!v16)
  {
    outlined destroy of Any?(&v137);
    goto LABEL_9;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  OUTLINED_FUNCTION_22_21();
  if ((OUTLINED_FUNCTION_8_32() & 1) == 0)
  {
LABEL_9:
    v18 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v18);
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_10;
  }

  v17 = v139.super.isa;
  SearchOverride.InputMatch.init(defaultsRepresentation:)();
  if (v2)
  {

LABEL_10:

    return;
  }

  v117 = v17;
  v19 = MEMORY[0x25F89F4C0](0x764F74757074756FLL, 0xEE00656469727265);
  v20 = OUTLINED_FUNCTION_13_23(v19, sel_objectForKey_);

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    v21 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_34();
  }

  OUTLINED_FUNCTION_3_43(v21, v22, v23, v24, v25, v26, v27, v28, v85, v89, v93, v137, v138, v105, v109, v113, v117, v122, v126, v130, v134);
  if (!v29)
  {
    outlined destroy of Any?(&v137);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
  OUTLINED_FUNCTION_22_21();
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_34:
    v34 = 0;
    goto LABEL_35;
  }

  isa = v139.super.isa;
  v31 = specialized Array.count.getter();
  if (!v31)
  {

    v34 = MEMORY[0x277D84F90];
LABEL_35:
    v52 = MEMORY[0x25F89F4C0](0xD000000000000017, 0x800000025DBF6600);
    v53 = [a1 v6[62]];

    if (v53)
    {
      _bridgeAnyObjectToAny(_:)();
      v54 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_34();
    }

    v62 = v118;
    OUTLINED_FUNCTION_3_43(v54, v55, v56, v57, v58, v59, v60, v61, v86, v90, v94, v97, v101, v106, v110, v114, v118, v123, v127, v131, v135);
    if (v63)
    {
      OUTLINED_FUNCTION_22_21();
      if (OUTLINED_FUNCTION_8_32())
      {
        AnswerSynthesisOverride.init(defaultsRepresentation:)(v139);
        if (v64)
        {

LABEL_60:

          goto LABEL_10;
        }

        v65 = v137;
        v66 = v138;

LABEL_44:
        v67 = OUTLINED_FUNCTION_15_28();
        v68 = MEMORY[0x25F89F4C0](v67);
        v69 = [a1 objectForKey_];

        if (v69)
        {
          _bridgeAnyObjectToAny(_:)();
          v70 = swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_7_34();
        }

        OUTLINED_FUNCTION_3_43(v70, v71, v72, v73, v74, v75, v76, v77, v87, v91, v95, v98, v102, v107, v111, v115, v119, v124, v128, v132, v136);
        if (v78)
        {
          OUTLINED_FUNCTION_22_21();
          if (OUTLINED_FUNCTION_8_32())
          {
            LLMQUOverride.init(defaultsRepresentation:)(v139);
            if (v79)
            {

              goto LABEL_60;
            }

            v80 = a2;

            v81 = v137;
            v82 = v138;

LABEL_54:
            *v80 = v99;
            v80[1] = v103;
            v80[2] = v34;
            v80[3] = v65;
            v80[4] = v66;
            v80[5] = v81;
            v80[6] = v82;
            return;
          }

          v80 = a2;
        }

        else
        {
          v80 = a2;

          outlined destroy of Any?(&v137);
        }

        v81 = 0;
        v82 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      outlined destroy of Any?(&v137);
    }

    v65 = 0;
    v66 = 0;
    goto LABEL_44;
  }

  v32 = v31;
  v90 = a2;
  v139.super.isa = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v139.super.isa;
    v110 = isa;
    v114 = isa & 0xC000000000000001;
    v94 = isa & 0xFFFFFFFFFFFFFF8;
    v106 = v32;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v114)
      {
        v36 = MEMORY[0x25F89FFD0](v33, isa);
      }

      else
      {
        if (v33 >= *(v94 + 16))
        {
          goto LABEL_62;
        }

        v36 = *(isa + 8 * v33 + 32);
      }

      v37 = v36;
      OUTLINED_FUNCTION_19_28();
      v39 = v38;
      v40 = [v37 valueForKey_];

      if (v40)
      {
        _bridgeAnyObjectToAny(_:)();
        v41 = swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_7_34();
      }

      OUTLINED_FUNCTION_3_43(v41, v42, v43, v44, v45, v46, v47, v48, v86, v90, v94, v97, v101, v106, v110, v114, v118, v123, v127, v131, v135);
      if (!v49)
      {
        outlined destroy of Any?(&v137);
LABEL_59:
        v83 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
        OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v83);
        static SearchOverrideError.invalidPayload(_:)();
        swift_willThrow();

        goto LABEL_60;
      }

      if ((OUTLINED_FUNCTION_8_32() & 1) == 0)
      {
        goto LABEL_59;
      }

      v139.super.isa = v34;
      v51 = *(v34 + 2);
      v50 = *(v34 + 3);
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v34 = v139.super.isa;
      }

      *(v34 + 2) = v51 + 1;
      *(v34 + v51 + 4) = v123;
      ++v33;
      isa = v110;
      v6 = &off_2799EF000;
      if (v35 == v106)
      {

        a2 = v90;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
}

NSArray_optional __swiftcall NSArray.__allocating_init(contentsOfFile:)(Swift::String contentsOfFile)
{
  object = contentsOfFile._object;
  countAndFlagsBits = contentsOfFile._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);

  v5 = [v3 initWithContentsOfFile_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void static SearchOverrides.add(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = *(a1 + 2);
  v21 = *(a1 + 1);
  v4 = a1[6];
  v5 = static SearchOverrides.read()(a1);
  if (!v1)
  {
    v6 = v5;
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = 88;
    while (v8 != v7)
    {
      v10 = *(v6 + v9 - 56) == v2 && *(v6 + v9 - 48) == v3;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()();
          v6 = v19;
        }

        v11 = *(v6 + 16);
        if (v11 <= v7)
        {
          __break(1u);
          return;
        }

        v22 = v4;
        v12 = v11 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v6 + v9), ~v7 + v11, (v6 + v9 - 56));
        *(v6 + 16) = v12;
        v4 = v22;

        break;
      }

      ++v7;
      v9 += 56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v17;
    }

    v13 = *(v6 + 16);
    v15 = v20;
    v14 = v21;
    if (v13 >= *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v20;
      v14 = v21;
      v6 = v18;
    }

    *(v6 + 16) = v13 + 1;
    v16 = v6 + 56 * v13;
    *(v16 + 32) = v2;
    *(v16 + 40) = v3;
    *(v16 + 48) = v14;
    *(v16 + 64) = v15;
    *(v16 + 80) = v4;
    static SearchOverrides.write(_:)(v6);
  }
}

uint64_t static SearchOverride.InputMatch.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_31();
  }
}

void static SearchOverrides.write(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 40;
    while (1)
    {

      SearchOverride.defaultsRepresentation()();
      if (v4)
      {
        break;
      }

      v3 += 56;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (one-time initialization token for defaults != -1)
    {
      swift_once();
    }

    v5 = static SearchOverrides.defaults;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
    [v5 setObject:isa forKey:v7];
  }
}

void static SearchOverrides.reset()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_1_56();
    swift_once();
  }

  v3 = static SearchOverrides.defaults;
  v4 = OUTLINED_FUNCTION_16_29();
  v5 = MEMORY[0x25F89F4C0](v4);
  [v3 setValue:0 forKey:v5];
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOverride.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v26 = v0[2];
  v23 = v0[4];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v5 = swift_allocObject();
  *(v5 + 32) = 0x74614D7475706E69;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 16) = xmmword_25DBC8400;
  *(v5 + 56) = v6;
  *(v5 + 40) = 0xEA00000000006863;
  *&v24 = v2;
  *(&v24 + 1) = v1;

  v7.super.isa = SearchOverride.InputMatch.defaultsRepresentation()().super.isa;

  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 32));
    *(v5 + 16) = 0;
  }

  else
  {
    v10 = v26;
    v11 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    *(v5 + 64) = v7;
    *(v5 + 120) = v6;
    *(v5 + 88) = v11;
    *(v5 + 96) = 0xD000000000000017;
    *(v5 + 104) = 0x800000025DBF6600;
    if (v23)
    {
      v12 = OUTLINED_FUNCTION_24_22(v4);
      *(v12 + 16) = xmmword_25DBC8180;
      *(v12 + 32) = 0x65736E6F70736572;
      *(v12 + 40) = 0xE800000000000000;
      *(v12 + 88) = v6;
      *(v12 + 56) = v6;
      *(v12 + 64) = v3;
      *(v12 + 72) = v23;

      v25 = v11;
      *&v24 = NSDictionary.init(dictionaryLiteral:)();
      outlined init with take of Any(&v24, (v5 + 128));
    }

    else
    {
      *(v5 + 152) = v6;
      *(v5 + 128) = 0;
      *(v5 + 136) = 0xE000000000000000;
    }

    v13 = v6;
    *(v5 + 184) = v6;
    strcpy((v5 + 160), "outputOverride");
    *(v5 + 175) = -18;
    v14 = MEMORY[0x277D84F90];
    if (v10)
    {
      v15 = *(v10 + 16);
      v16 = MEMORY[0x277D84F90];
      if (v15)
      {
        v26 = 0;
        *&v24 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v17 = (v10 + 32);
        do
        {
          v18 = *v17++;
          *(OUTLINED_FUNCTION_24_22(v4) + 16) = xmmword_25DBC8180;
          OUTLINED_FUNCTION_21_25();
          v19[4] = v20;
          v19[5] = 0xE700000000000000;
          v19[11] = v11;
          v19[7] = v13;
          v19[8] = v18;
          v21 = v18;
          NSDictionary.init(dictionaryLiteral:)();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v15;
        }

        while (v15);
        v16 = v24;
        v14 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = 0;
    }

    *(v5 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v14;
    }

    *(v5 + 192) = v22;
    return NSDictionary.init(dictionaryLiteral:)();
  }
}

Swift::Bool __swiftcall SearchOverride.matches(rewrittenQuery:)(Swift::String rewrittenQuery)
{
  if (*v1 == rewrittenQuery._countAndFlagsBits && *(v1 + 8) == rewrittenQuery._object)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_31();
  }
}

void SearchOverride.InputMatch.init(defaultsRepresentation:)()
{
  OUTLINED_FUNCTION_4_40();
  v1 = MEMORY[0x25F89F4C0](1684957547, 0xE400000000000000);
  v2 = OUTLINED_FUNCTION_13_23(v1, sel_valueForKey_);

  if (v2)
  {
    OUTLINED_FUNCTION_26_20(v3, v4);
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v5, v6, v7, v8, v9, v10, v11, v12, v52, v57, v60, v62, v64);
  if (!v20)
  {
    outlined destroy of Any?(v66);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_23_22(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v54 == 0xD000000000000013 && 0x800000025DBF67D0 == v58)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v24 = MEMORY[0x25F89F4C0](0x7972657571, 0xE500000000000000);
  v25 = OUTLINED_FUNCTION_13_23(v24, sel_valueForKey_);

  if (v25)
  {
    OUTLINED_FUNCTION_26_20(v26, v27);
    v28 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v28, v29, v30, v31, v32, v33, v34, v35, v54, v58, v61, v63, v65);
  if (!v43)
  {
    outlined destroy of Any?(v66);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_23_22(v36, v37, v38, MEMORY[0x277D837D0], v39, v40, v41, v42, v55);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v23);
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    return;
  }

  OUTLINED_FUNCTION_11_33(v44, v45, v46, v47, v48, v49, v50, v51, v56, v59);
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOverride.InputMatch.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25DBC9D00;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 32) = 1684957547;
  *(v3 + 40) = 0xE400000000000000;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0xD000000000000013;
  *(v3 + 72) = 0x800000025DBF67D0;
  *(v3 + 88) = v4;
  *(v3 + 96) = 0x7972657571;
  *(v3 + 104) = 0xE500000000000000;
  *(v3 + 152) = v4;
  *(v3 + 120) = v4;
  *(v3 + 128) = v2;
  *(v3 + 136) = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);

  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t SearchOverride.inputMatch.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SearchOverride.outputOverride.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchOverride.answerSynthOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t SearchOverride.llmQUOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

double SearchOverride.init(inputMatch:outputOverride:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  return result;
}

OmniSearch::SearchOutputOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOutputOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_19_28();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_13_23(v3, sel_valueForKey_);

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    if (OUTLINED_FUNCTION_25_23())
    {

      *v2 = v11;
      return result;
    }
  }

  else
  {
    outlined destroy of Any?(v10);
  }

  v7 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
  OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v7);
  OUTLINED_FUNCTION_10_30();
  static SearchOverrideError.invalidPayload(_:)();
  swift_willThrow();

  return result;
}

OmniSearch::AnswerSynthesisOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnswerSynthesisOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_17_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_13_23(v2, sel_objectForKey_);

  if (v4)
  {
    OUTLINED_FUNCTION_26_20(v5, v6);
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v7, v8, v9, v10, v11, v12, v13, v14, v35, v38, v40, v41, v42);
  if (!v22)
  {
    outlined destroy of Any?(v43);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23_22(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v36);
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_8:
    v33 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v33);
    OUTLINED_FUNCTION_10_30();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_33(v23, v24, v25, v26, v27, v28, v29, v30, v37, v39);
LABEL_9:
  result.response._object = v32;
  result.response._countAndFlagsBits = v31;
  return result;
}

OmniSearch::LLMQUOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LLMQUOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_17_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_13_23(v2, sel_objectForKey_);

  if (v4)
  {
    OUTLINED_FUNCTION_26_20(v5, v6);
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v7, v8, v9, v10, v11, v12, v13, v14, v35, v38, v40, v41, v42);
  if (!v22)
  {
    outlined destroy of Any?(v43);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23_22(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v36);
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_8:
    v33 = lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchOverrideError, v33);
    OUTLINED_FUNCTION_10_30();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_33(v23, v24, v25, v26, v27, v28, v29, v30, v37, v39);
LABEL_9:
  result.response._object = v32;
  result.response._countAndFlagsBits = v31;
  return result;
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOutputOverride.defaultsRepresentation()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v3 = OUTLINED_FUNCTION_24_22(v2);
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_25DBC8180;
  *(v3 + 56) = v4;
  OUTLINED_FUNCTION_21_25();
  *(v5 + 32) = v6;
  *(v5 + 40) = 0xE700000000000000;
  *(v3 + 88) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  *(v3 + 64) = v1;
  v7 = v1;
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t LLMQUOverride.response.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnswerSynthesisOverride.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v4 = OUTLINED_FUNCTION_24_22(v3);
  *(v4 + 16) = xmmword_25DBC8180;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 32) = 0x65736E6F70736572;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 88) = v5;
  *(v4 + 56) = v5;
  *(v4 + 64) = v2;
  *(v4 + 72) = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);

  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError()
{
  result = lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError;
  if (!lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError);
  }

  return result;
}

uint64_t outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x25F89F4C0](a1);

  v9 = MEMORY[0x25F89F4C0](a3, a4);

  v10 = [a5 pathForResource:v8 ofType:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

_BYTE *storeEnumTagSinglePayload for SearchOverrides(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_41@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_13_23(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_17_31()
{

  JUMPOUT(0x25F89F4C0);
}

void OUTLINED_FUNCTION_18_20()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_19_28()
{

  JUMPOUT(0x25F89F4C0);
}

uint64_t OUTLINED_FUNCTION_24_22(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2, ...)
{

  return _bridgeAnyObjectToAny(_:)();
}

void SearchResult.init(overridePayload:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = type metadata accessor for SpotlightRankingItem();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = type metadata accessor for SearchResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + *(v13 + 28)) = MEMORY[0x277D84F90];
  v14 = (a2 + *(v13 + 40));
  type metadata accessor for CSSearchableItem();
  *v14 = 0;
  v14[1] = 0;
  v15 = static CSSearchableItem.makeFrom(overridePayload:)(a1);
  if (v2)
  {
  }

  else
  {
    v16 = v15;
    v31 = a1;
    v30[1] = type metadata accessor for LocalIndexClient();
    OUTLINED_FUNCTION_0_57(1);
    OUTLINED_FUNCTION_0_57(v17);
    OUTLINED_FUNCTION_0_57(v18);
    OUTLINED_FUNCTION_0_57(v19);
    OUTLINED_FUNCTION_0_57(v20);
    LOBYTE(v33) = v21;
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
    CSSearchableItem.makeOverrideEventSourceMap()();
    v22 = v16;
    static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)();

    (*(v32 + 8))(v6, v35);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v9, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v33 = 0xD000000000000023;
      v34 = 0x800000025DBF6870;
      v23 = [v16 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      MEMORY[0x25F89F6C0](v24, v26);

      v27 = v33;
      v28 = v34;
      lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
      swift_allocError();
      *v29 = v27;
      v29[1] = v28;
      swift_willThrow();
    }

    else
    {

      outlined init with take of SearchResult(v9, v12);
      outlined init with take of SearchResult(v12, a2);
    }
  }
}

id static CSSearchableItem.makeFrom(overridePayload:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v25 = a1;
  NSDictionary.makeIterator()();
  v35 = v2;
  while (1)
  {
    NSDictionary.Iterator.next()();
    v32 = v28;
    v33 = v29;
    v34[0] = v30;
    v34[1] = v31;
    if (!*(&v29 + 1))
    {
      break;
    }

    outlined init with take of Any(v34, &v28);
    outlined init with take of Any(&v32, &v26);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    static CSSearchableItem.coerceValue(_:)(&v28, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    v6 = MEMORY[0x25F89F4C0]();
    [v4 setAttribute:v5 forKey:v6];
    swift_unknownObjectRelease();

    v7 = MEMORY[0x25F89F4C0]();
    v8 = [v4 attributeForKey_];

    if (v8)
    {

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      outlined destroy of (offset: Int, element: SearchResult)(&v26, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      outlined destroy of (offset: Int, element: SearchResult)(&v26, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for utilities != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logging.utilities);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v26 = v13;
        *v12 = 136315138;
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 4) = v14;
        _os_log_impl(&dword_25D85C000, v10, v11, "Failed to set override attribute: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x25F8A1050](v13, -1, -1);
        MEMORY[0x25F8A1050](v12, -1, -1);
      }

      else
      {
      }

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v16 = v4;
  v17 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(0, 0, 0, 0, v16);
  *&v28 = 0xD000000000000010;
  *(&v28 + 1) = 0x800000025DBF68C0;
  v18 = [v25 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v32 = v28;
  v33 = v29;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast())
    {
      outlined bridged method (mbnn) of @objc CSSearchableItem.bundleID.setter(v26, *(&v26 + 1), v17);
      goto LABEL_25;
    }
  }

  else
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v32, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.utilities);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    MEMORY[0x25F8A1050](v22, -1, -1);
  }

  v23 = MEMORY[0x25F89F4C0](0xD00000000000001ALL, 0x800000025DBEE6C0);
  [v17 setBundleID_];

LABEL_25:
  return v17;
}

uint64_t CSSearchableItem.makeOverrideEventSourceMap()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([v0 attributeSet]);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v20 = 0xD00000000000001CLL;
    v21 = 0x800000025DBF68A0;
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v3 + 8))(v6, v2);
    MEMORY[0x25F89F6C0](v11, v13);

    v9 = v20;
    v10 = v21;
  }

  v14 = [v1 attributeSet];
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.setter(v9, v10, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo16CSSearchableItemCGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo16CSSearchableItemCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25DBC8190;
  *(v16 + 32) = v1;
  *(inited + 48) = v16;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static CSSearchableItem.coerceValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v16);
  if (!swift_dynamicCast())
  {
    return outlined init with copy of Any(a1, a2);
  }

  v9 = v15[0];
  v8 = v15[1];
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v10 = static LocalSearchService.dateFormatter;
  v11 = MEMORY[0x25F89F4C0](v9, v8);

  v12 = [v10 dateFromString_];

  if (!v12)
  {
    return outlined init with copy of Any(a1, a2);
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  a2[3] = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return (*(v5 + 32))(boxed_opaque_existential_1Tm, v7, v4);
}

void outlined bridged method (mbnn) of @objc CSSearchableItem.bundleID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1);

  [a3 setBundleID_];
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setEventMessageIdentifier_];
}

uint64_t static AudioSearchResultsRanker.domain.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_44(a1, v3);
  v1 = static AudioSearchResultsRanker.domain;

  return v1;
}

uint64_t static AudioSearchResultsRanker.domain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static AudioSearchResultsRanker.domain = a1;
  off_27FC70310 = a2;
}

uint64_t key path getter for static AudioSearchResultsRanker.domain : AudioSearchResultsRanker.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FC70310;
  *a1 = static AudioSearchResultsRanker.domain;
  a1[1] = v2;
}

uint64_t key path setter for static AudioSearchResultsRanker.domain : AudioSearchResultsRanker.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static AudioSearchResultsRanker.domain = v2;
  off_27FC70310 = v1;
}

id one-time initialization function for defaults()
{
  swift_beginAccess();
  v1 = static AudioSearchResultsRanker.domain;
  v0 = off_27FC70310;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  result = @nonobjc NSUserDefaults.init(suiteName:)(v1, v0);
  static AudioSearchResultsRanker.defaults = result;
  return result;
}

uint64_t *AudioSearchResultsRanker.defaults.unsafeMutableAddressor()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58(&one-time initialization token for defaults);
  }

  return &static AudioSearchResultsRanker.defaults;
}

uint64_t static AudioSearchResultsRanker.defaults.getter(uint64_t a1)
{
  if (one-time initialization token for defaults != -1)
  {
    a1 = OUTLINED_FUNCTION_0_58(&one-time initialization token for defaults);
  }

  OUTLINED_FUNCTION_3_44(a1, v4);
  v1 = static AudioSearchResultsRanker.defaults;
  v2 = static AudioSearchResultsRanker.defaults;
  return v1;
}

void static AudioSearchResultsRanker.defaults.setter(uint64_t a1)
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58(&one-time initialization token for defaults);
  }

  swift_beginAccess();
  v2 = static AudioSearchResultsRanker.defaults;
  static AudioSearchResultsRanker.defaults = a1;
}

uint64_t (*static AudioSearchResultsRanker.defaults.modify())(uint64_t a1)
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58(&one-time initialization token for defaults);
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

id key path getter for static AudioSearchResultsRanker.defaults : AudioSearchResultsRanker.Type@<X0>(void *a1@<X8>)
{
  AudioSearchResultsRanker.defaults.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static AudioSearchResultsRanker.defaults;
  *a1 = static AudioSearchResultsRanker.defaults;

  return v2;
}

void key path setter for static AudioSearchResultsRanker.defaults : AudioSearchResultsRanker.Type(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AudioSearchResultsRanker.defaults.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = static AudioSearchResultsRanker.defaults;
  static AudioSearchResultsRanker.defaults = v1;
}

uint64_t static AudioSearchResultsRanker.rankSearchResults(audioSearch:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for AudioSearch.Result.Item();
  OUTLINED_FUNCTION_14();
  v51 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v50 = v12 - v11;
  type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem(0);
  OUTLINED_FUNCTION_14();
  v61 = v14;
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  type metadata accessor for AudioSearch.SpotlightResult();
  OUTLINED_FUNCTION_14();
  v59 = v19;
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  if (one-time initialization token for defaults != -1)
  {
    v20 = OUTLINED_FUNCTION_0_58(&one-time initialization token for defaults);
  }

  OUTLINED_FUNCTION_3_44(v20, v63);
  if (static AudioSearchResultsRanker.defaults && (v24 = static AudioSearchResultsRanker.defaults, v25 = MEMORY[0x25F89F4C0](0xD000000000000016, 0x800000025DBF6960), v26 = [v24 stringForKey_], v24, v25, v26))
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v58 = a1;
  v30 = AudioSearchCriteria.spotlightSearchResults.getter();
  v31 = *(v30 + 16);
  if (v31)
  {
    v53 = v27;
    v54 = v29;
    v55 = v4;
    v56 = v7;
    v57 = v8;
    v32 = v59 + 16;
    v59 = *(v59 + 16);
    v33 = *(v32 + 64);
    v52 = v30;
    v34 = v30 + ((v33 + 32) & ~v33);
    v35 = *(v32 + 56);
    v36 = (v32 + 16);
    v37 = MEMORY[0x277D84F90];
    do
    {
      v38 = v60;
      (v59)(v23, v34, v60);
      (*v36)(v17, v23, v38);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
        v37 = v41;
      }

      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v37);
        v37 = v42;
      }

      *(v37 + 16) = v40 + 1;
      outlined init with take of AudioSearchResultsRanker.AudioSearchResultRankingItem(v17, v37 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v40);
      v34 += v35;
      --v31;
    }

    while (v31);

    v7 = v56;
    v8 = v57;
    v29 = v54;
    v4 = v55;
    v27 = v53;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  if (v29)
  {
    if (v27 == 0x676F6C61746163 && v29 == 0xE700000000000000)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        return v37;
      }
    }

    AudioSearchCriteria.privateSearchResult.getter();
    v45 = type metadata accessor for AudioSearch.Result();
    if (__swift_getEnumTagSinglePayload(v4, 1, v45) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v4, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMR);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    }

    else
    {
      AudioSearch.Result.searchResult.getter();
      (*(*(v45 - 8) + 8))(v4, v45);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        v47 = v50;
        v46 = v51;
        (*(v51 + 32))(v50, v7, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch05AudioE13ResultsRankerC0fE17ResultRankingItemOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch05AudioE13ResultsRankerC0fE17ResultRankingItemOGMR);
        v48 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_25DBC8180;
        (*(v46 + 16))(v37 + v48, v47, v8);
        swift_storeEnumTagMultiPayload();
        (*(v46 + 8))(v47, v8);
        return v37;
      }
    }

    outlined destroy of (offset: Int, element: SearchResult)(v7, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMR);
    return MEMORY[0x277D84F90];
  }

  return v37;
}

uint64_t type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for AudioSearchResultsRanker.AudioSearchResultRankingItem;
  if (!type metadata singleton initialization cache for AudioSearchResultsRanker.AudioSearchResultRankingItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of AudioSearchResultsRanker.AudioSearchResultRankingItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for AudioSearchResultsRanker.AudioSearchResultRankingItem(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for AudioSearch.Result.Item();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for AudioSearch.SpotlightResult();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_3_44(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

void __swiftcall AppEntityItem.init(id:bundleId:typeId:protocolId:)(OmniSearch::AppEntityItem *__return_ptr retstr, Swift::String id, Swift::String bundleId, Swift::String typeId, Swift::String_optional protocolId)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->typeId = typeId;
  retstr->protocolId = protocolId;
}

uint64_t AppEntityItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEA00000000006449)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AppEntityItem.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x644965707974;
      break;
    case 3:
      result = 0x6C6F636F746F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppEntityItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppEntityItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppEntityItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppEntityItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppEntityItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v14[5] = v1[3];
  v14[6] = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v12 = v14[7];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v17 = 1;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

uint64_t AppEntityItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_2_42();
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_2_42();
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_2_42();
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v35 = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  outlined init with copy of AppEntityItem(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return outlined destroy of AppEntityItem(v34);
}

unint64_t instantiation function for generic protocol witness table for AppEntityItem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  a1[2] = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  result = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem()
{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppEntityItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_155_3(a1);
  lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_32(a1);
  if (v1)
  {
    v4 = 0x6563697665446E6FLL;
  }

  else
  {
    v4 = 0x726576726573;
  }

  OUTLINED_FUNCTION_57_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisModelResult.AnswerResponse.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisModelResult.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisRequest.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_155_3(a1);
  v4 = 0x656372756F73;
  switch(v1)
  {
    case 1:
      v4 = 1685217635;
      break;
    case 2:
      v4 = 0x7453686372616573;
      break;
    case 3:
      v4 = 0x704F646C756F6873;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchToolIntentRequest.CodingKeys.rawValue.getter);
}

{
  OUTLINED_FUNCTION_155_3(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_155_3(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StructuredQueryEntity.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedCard.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedContact.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedBreadcrumb.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedSharedLink.Keys.rawValue.getter);
}

{
  OUTLINED_FUNCTION_155_3(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_6_32(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }
  }

  else
  {
    v4 = 0x6867696C746F7073;
  }

  OUTLINED_FUNCTION_57_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, MobileGestalt.DeviceClass.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, OmniSearchOptions.CodingKeys.rawValue.getter);
}

{
  v2 = OUTLINED_FUNCTION_6_32(a1);
  if (v1)
  {
    v4 = 0x6465646E61707865;
  }

  else
  {
    v4 = 0x4B746C7561666564;
  }

  OUTLINED_FUNCTION_57_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_6_32(a1);
  if (v1)
  {
    v4 = 0x697274744173635FLL;
  }

  else
  {
    v4 = 1835365481;
  }

  OUTLINED_FUNCTION_57_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  OUTLINED_FUNCTION_155_3(a1);
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchType.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_155_3(a1);
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_155_3(a1);
  a2(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t key path setter for SearchEntityTypeIdentifier.bundleId : SearchEntityTypeIdentifier(uint64_t *a1, uint64_t *a2)
{

  SearchEntityTypeIdentifier.bundleId.setter();
}

uint64_t (*SearchEntityTypeIdentifier.bundleId.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t key path getter for SearchEntityTypeIdentifier.typeName : SearchEntityTypeIdentifier@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchEntityTypeIdentifier.typeName.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SearchEntityTypeIdentifier.typeName : SearchEntityTypeIdentifier(uint64_t *a1, uint64_t *a2)
{

  SearchEntityTypeIdentifier.typeName.setter();
}

uint64_t (*SearchEntityTypeIdentifier.typeName.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntityTypeIdentifier.description.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  if (v5)
  {
    v1 = v4;
  }

  else
  {
    v1 = 7104878;
  }

  if (v5)
  {
    v2 = v5;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(29);

  MEMORY[0x25F89F6C0]();

  MEMORY[0x25F89F6C0](0x4E65707974207C20, 0xED0000203A656D61);
  MEMORY[0x25F89F6C0](v1, v2);

  MEMORY[0x25F89F6C0](62, 0xE100000000000000);
  return 0x49656C646E75623CLL;
}

uint64_t SearchEntityTypeIdentifier.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  v4 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.setter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t SearchEntityTypeIdentifier.init(bundleId:typeName:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[1] = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t static SearchEntityTypeIdentifier.make(identifier:)(uint64_t a1)
{
  v2 = type metadata accessor for TypeIdentifier.PrimitiveTypeIdentifier();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for TypeIdentifier();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  (*(v13 + 16))(v16 - v15, a1, v11);
  v17 = OUTLINED_FUNCTION_232();
  v19 = v18(v17);
  if (v19 != *MEMORY[0x277D72D50])
  {
    if (v19 == *MEMORY[0x277D72D28])
    {
      v28 = OUTLINED_FUNCTION_232();
      v29(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_25DBC8180;

      SearchEntityTypeIdentifier.init(bundleId:typeName:)((v27 + 32));
      goto LABEL_6;
    }

    v30 = OUTLINED_FUNCTION_232();
    v31(v30);
    return MEMORY[0x277D84F90];
  }

  v20 = OUTLINED_FUNCTION_232();
  v21(v20);
  v22 = swift_projectBox();
  v23 = *(v4 + 16);
  v23(v10, v22, v2);
  v23(v7, v10, v2);
  v24 = (*(v4 + 88))(v7, v2);
  v25 = *MEMORY[0x277D72CC0];
  v26 = *(v4 + 8);
  v26(v7, v2);
  if (v24 != v25)
  {
    v26(v10, v2);

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25DBC9D00;
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v27 + 32));
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v27 + 48));
  v26(v10, v2);
LABEL_6:

  return v27;
}

uint64_t SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchEntityTypeIdentifier.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25D871F24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchEntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchEntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEntityTypeIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMR);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  EntityProperty.wrappedValue.getter();
  LOBYTE(v11[0]) = 0;
  OUTLINED_FUNCTION_8_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {

    EntityProperty.wrappedValue.getter();
    LOBYTE(v11[0]) = 1;
    OUTLINED_FUNCTION_8_33();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v9, v4);
}

unint64_t lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

uint64_t SearchEntityTypeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  v7 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v8 = EntityProperty<>.init(title:)();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_34();
    KeyedDecodingContainer.decode(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_11_34();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    v10 = OUTLINED_FUNCTION_232();
    v11(v10);
    *a2 = v7;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t static SearchEntityTypeIdentifier.== infix(_:_:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  return static EntityProperty<>.== infix(_:_:)() & 1;
}

uint64_t static SearchEntityTypeIdentifier.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchEntityTypeIdentifier.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchEntityTypeIdentifier.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchEntityTypeIdentifier.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v11 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v26 = *v0;
  v22._countAndFlagsBits = SearchEntityTypeIdentifier.description.getter(v21);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v13 + 16))(v16, v19, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v24 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v13 + 8))(v19, v11);
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210C4B8](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SearchEntityTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_6_32(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t GeoLocation.metadata.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v28 = *(v0 + 56);
  v29 = *(v0 + 96);
  v30 = *(v0 + 120);
  v31 = *(v0 + 136);
  v32 = *(v0 + 148);
  v33 = *(v0 + 156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9E40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x73736572646461;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "thoroughfare");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x647261437370616DLL;
  *(inited + 136) = 0xEB000000006C7255;
  *(inited + 144) = v28;
  *(inited + 152) = v7;
  *(inited + 160) = 0x656475746974616CLL;
  *(inited + 168) = 0xE800000000000000;
  v10 = 0xE000000000000000;

  Float.write<A>(to:)();
  *(inited + 176) = 0;
  *(inited + 184) = 0xE000000000000000;
  *(inited + 192) = 0x64757469676E6F6CLL;
  *(inited + 200) = 0xE900000000000065;
  Float.write<A>(to:)();
  *(inited + 208) = 0;
  *(inited + 216) = 0xE000000000000000;
  *(inited + 224) = 0x6E6F6870656C6574;
  *(inited + 232) = 0xE900000000000065;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  MEMORY[0x25F89F8A0](v11, MEMORY[0x277D837D0]);
  v13 = v12;

  v14 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v14, v13);

  *(inited + 240) = 0;
  *(inited + 248) = 0xE000000000000000;
  *(inited + 256) = 0x65746973626577;
  *(inited + 264) = 0xE700000000000000;
  if (v29)
  {
    v15 = v29;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v16, v15);

  *(inited + 272) = 0;
  *(inited + 280) = 0xE000000000000000;
  *(inited + 288) = 0x6F746F68506D756ELL;
  *(inited + 296) = 0xE900000000000073;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v17);

  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  *(inited + 320) = 0x79726F6765746163;
  *(inited + 328) = 0xE800000000000000;
  if (v30)
  {
    v18 = v30;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v19, v18);

  *(inited + 336) = 0;
  *(inited + 344) = 0xE000000000000000;
  *(inited + 352) = 0x6765746163627573;
  *(inited + 360) = 0xEB0000000079726FLL;
  if (v31)
  {
    v20 = v31;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v21, v20);

  *(inited + 368) = 0;
  *(inited + 376) = 0xE000000000000000;
  *(inited + 384) = 0x656D69546E65706FLL;
  *(inited + 392) = 0xE800000000000000;
  if (v32)
  {
    v22 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v22 = BinaryInteger.description.getter();
    v10 = v23;
  }

  MEMORY[0x25F89F6C0](v22, v10);

  *(inited + 400) = 0;
  *(inited + 408) = 0xE000000000000000;
  *(inited + 416) = 0x6D695465736F6C63;
  *(inited + 424) = 0xE900000000000065;
  v24 = 0xE000000000000000;
  if (v33)
  {
    v25 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v25 = BinaryInteger.description.getter();
    v24 = v26;
  }

  MEMORY[0x25F89F6C0](v25, v24);

  *(inited + 432) = 0;
  *(inited + 440) = 0xE000000000000000;
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

void GeoLocation.openNow.getter()
{
  v1 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  if ((*(v0 + 148) & 1) == 0 && (*(v0 + 156) & 1) == 0)
  {
    static Date.now.getter();
    static Calendar.current.getter();
    Calendar.startOfDay(for:)();
    (*(v3 + 8))(v6, v1);
    Date.timeIntervalSince(_:)();
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -1.0)
    {
      if (v16 < 4294967300.0)
      {
        v17 = *(v9 + 8);
        v17(v12, v7);
        v17(v15, v7);
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t GeoLocation.init(uid:name:address:thoroughfare:mapsCardUrl:latitude:longitude:telephone:website:photos:category:subcategory:openTime:closeTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20, char a21)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 76) = a11;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 148) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 156) = a21 & 1;
  return result;
}

uint64_t GeoLocation.description.getter()
{
  memcpy(v43, (v0 + 8), 0x95uLL);
  v1 = GeoLocation.metadata.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v40 = v42;
    result = specialized Dictionary.startIndex.getter();
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v35 = v4;
    v36 = v2;
    v34 = v1 + 72;
    v37 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v39 = v4;
      v38 = v5;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v6);
      v12 = v1;
      v13 = *v11;
      v14 = v11[1];
      v15 = (v10 + 16 * v6);
      v16 = *v15;
      v17 = v15[1];
      v41 = v13;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
      MEMORY[0x25F89F6C0](v16, v17);

      v18 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v41;
      *(v21 + 40) = v14;
      v22 = 1 << *(v12 + 32);
      if (v6 >= v22)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v8 = v37;
      v23 = *(v37 + 8 * v9);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v40 = v18;
      if (*(v1 + 36) != v39)
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v34 + 8 * v9);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = outlined consume of [String : String].Index._Variant(v6, v39, v38 & 1);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v6, v39, v38 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v22;
      v4 = v35;
      if (v7 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v43[0] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v43[0] = 0x800000025DBF6A20;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F89F6C0](v33);

    MEMORY[0x25F89F6C0](0x202020200A2CLL, 0xE600000000000000);
    MEMORY[0x25F89F6C0](v30, v32);

    MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
    return 0xD000000000000018;
  }

  return result;
}

uint64_t GeoLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580597 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x647261437370616DLL && a2 == 0xEB000000006C7255;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000065;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65746973626577 && a2 == 0xE700000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736F746F6870 && a2 == 0xE600000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6765746163627573 && a2 == 0xEB0000000079726FLL;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656D69546E65706FLL && a2 == 0xE800000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6D695465736F6C63 && a2 == 0xE900000000000065)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
  }
}

uint64_t GeoLocation.CodingKeys.stringValue.getter(char a1)
{
  result = 6580597;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x73736572646461;
      break;
    case 3:
      result = 0x6867756F726F6874;
      break;
    case 4:
      result = 0x647261437370616DLL;
      break;
    case 5:
      result = 0x656475746974616CLL;
      break;
    case 6:
      result = 0x64757469676E6F6CLL;
      break;
    case 7:
      result = 0x6E6F6870656C6574;
      break;
    case 8:
      result = 0x65746973626577;
      break;
    case 9:
      result = 0x736F746F6870;
      break;
    case 10:
      result = 0x79726F6765746163;
      break;
    case 11:
      result = 0x6765746163627573;
      break;
    case 12:
      result = 0x656D69546E65706FLL;
      break;
    case 13:
      result = 0x6D695465736F6C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GeoLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance GeoLocation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = GeoLocation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v41 = *(v1 + 16);
  v42 = v7;
  v40 = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v38 = *(v1 + 48);
  v39 = v9;
  v11 = *(v1 + 56);
  v36 = *(v1 + 64);
  v37 = v10;
  v12 = *(v1 + 88);
  v34 = *(v1 + 80);
  v35 = v11;
  v32 = v12;
  v13 = *(v1 + 104);
  v33 = *(v1 + 96);
  v14 = *(v1 + 112);
  v30 = *(v1 + 120);
  v31 = v13;
  v15 = *(v1 + 128);
  v28 = *(v1 + 136);
  v29 = v14;
  v26 = *(v1 + 144);
  v27 = v15;
  v25 = *(v1 + 148);
  v16 = *(v1 + 152);
  v17 = *(v1 + 156);
  v18 = a1[3];
  v19 = a1;
  v21 = &v24 - v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v45) = 0;
  v22 = v43;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    v43 = v16;
    OUTLINED_FUNCTION_48_10(1);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(2);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(3);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(4);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v45) = 5;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v45) = 6;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = v34;
    v44 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_48_10(8);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = v31;
    v44 = 9;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_48_10(10);
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_48_10(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v45) = 12;
    v44 = v25;
    OUTLINED_FUNCTION_12_31(v25);
    LOBYTE(v45) = 13;
    v44 = v17;
    OUTLINED_FUNCTION_12_31(v17);
  }

  return (*(v5 + 8))(v21, v3);
}

uint64_t GeoLocation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v91 = v2;
    LODWORD(v12) = 0;
    LODWORD(v10) = 0;
    LODWORD(v66) = 0;
    LODWORD(a2) = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    LOBYTE(v69[0]) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_60(1);
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v65 = v17;
    OUTLINED_FUNCTION_0_60(2);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v64 = v19;
    OUTLINED_FUNCTION_0_60(3);
    v66 = KeyedDecodingContainer.decode(_:forKey:)();
    v63 = v20;
    OUTLINED_FUNCTION_0_60(4);
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v62 = v21;
    OUTLINED_FUNCTION_0_60(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v22;
    v55 = v18;
    OUTLINED_FUNCTION_0_60(6);
    KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    LOBYTE(v68[0]) = 7;
    v58 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v59 = v26;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v69[0];
    OUTLINED_FUNCTION_0_60(8);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v28;
    v91 = 0;
    v15 = v27;
    LOBYTE(v68[0]) = 9;
    v13 = v10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v91 = 0;
    v59 = v69[0];
    OUTLINED_FUNCTION_0_60(10);
    v29 = v91;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v30;
    v91 = v29;
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_4_41();
      v32(v31);
      v7 = 0;
      OUTLINED_FUNCTION_1_58();
      OUTLINED_FUNCTION_6_33();
    }

    else
    {
      OUTLINED_FUNCTION_0_60(11);
      v33 = v91;
      v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v57 = v34;
      v91 = v33;
      if (v33)
      {
        v35 = OUTLINED_FUNCTION_4_41();
        v36(v35);
        OUTLINED_FUNCTION_1_58();
        OUTLINED_FUNCTION_6_33();
        v7 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_0_60(12);
        v37 = v91;
        v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v91 = v37;
        if (!v37)
        {
          v90 = BYTE4(v52) & 1;
          v86 = 13;
          v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v91 = 0;
          v41 = v40;
          v42 = OUTLINED_FUNCTION_4_41();
          v43(v42);
          v87 = BYTE4(v41) & 1;
          v68[0] = v12;
          v68[1] = v14;
          v50 = v14;
          v45 = v64;
          v44 = v65;
          v68[2] = v65;
          v68[3] = v55;
          v68[4] = v64;
          v68[5] = v66;
          v47 = v62;
          v46 = v63;
          v68[6] = v63;
          v68[7] = v56;
          v68[8] = v62;
          v68[9] = __PAIR64__(v25, v23);
          v68[10] = v60;
          v68[11] = v15;
          v68[12] = v61;
          v68[13] = v59;
          v68[14] = v54;
          v68[15] = v58;
          v68[16] = v53;
          v68[17] = v57;
          LODWORD(v68[18]) = v52;
          v49 = v90;
          BYTE4(v68[18]) = v90;
          LODWORD(v68[19]) = v41;
          v51 = BYTE4(v41) & 1;
          BYTE4(v68[19]) = BYTE4(v41) & 1;
          memcpy(a2, v68, 0x9DuLL);
          outlined init with copy of GeoLocation(v68, v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          v69[0] = v12;
          v69[1] = v50;
          v69[2] = v44;
          v69[3] = v55;
          v69[4] = v45;
          v69[5] = v66;
          v69[6] = v46;
          v69[7] = v56;
          v69[8] = v47;
          v70 = v23;
          v71 = v25;
          v72 = v60;
          v73 = v15;
          v74 = v61;
          v75 = v59;
          v76 = v54;
          v77 = v58;
          v78 = v53;
          v79 = v57;
          v80 = v52;
          v81 = v49;
          v82 = v88;
          v83 = v89;
          v84 = v41;
          v85 = v51;
          return outlined destroy of GeoLocation(v69);
        }

        v38 = OUTLINED_FUNCTION_4_41();
        v39(v38);
        LODWORD(v12) = 1;
        OUTLINED_FUNCTION_2_43();
        OUTLINED_FUNCTION_13_24();
      }
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (v12)
  {

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
LABEL_6:

    if ((v66 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!v66)
  {
LABEL_7:
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (a2)
  {
LABEL_8:

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v13)
  {
LABEL_9:
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v14)
  {
LABEL_10:

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v15)
  {
LABEL_11:
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (!v5)
    {
      return result;
    }
  }

LABEL_20:

  if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

  if ((v5 & 1) == 0)
  {
    return result;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoLocation(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA11GeoLocationV_Tt1B5() & 1;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GeoLocation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  a1[2] = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  result = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation()
{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoLocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 157))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for GeoLocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 157) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 157) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GeoLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_31@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x2821FDB20](v1 | (a1 << 32), v3 - 72, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

uint64_t GlobalEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GlobalResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalResponse.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  v14 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v7);
}

unint64_t lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

uint64_t GlobalResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v22 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14();
  v21 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    (*(v14 + 8))(v13, v9);
    *v15 = v16;
    v15[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlobalEntityError(uint64_t a1)
{
  Hasher.init(_seed:)();
  GlobalEntityError.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for GlobalResponse(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  a1[2] = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  result = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse()
{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalEntityError and conformance GlobalEntityError()
{
  result = lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError;
  if (!lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError);
  }

  return result;
}