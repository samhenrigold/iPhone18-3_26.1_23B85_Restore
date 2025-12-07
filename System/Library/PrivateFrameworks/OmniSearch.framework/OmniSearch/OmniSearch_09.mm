unint64_t lazy protocol witness table accessor for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent()
{
  result = lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent;
  if (!lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent);
  }

  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenVehicleReservationEntityIntent(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenVehicleReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenVehicleReservationEntityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.description.getter in conformance OpenVehicleReservationEntityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentDescriptionVSgMd, &_s10AppIntents17IntentDescriptionVSgMR);
  v3 = __swift_project_value_buffer(v2, static OpenVehicleReservationEntityIntent.description);

  return outlined init with copy of IntentDescription?(v3, a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenVehicleReservationEntityIntent()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return OpenVehicleReservationEntityIntent.perform()();
}

uint64_t protocol witness for AppIntent.init() in conformance OpenVehicleReservationEntityIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenVehicleReservationEntityIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenVehicleReservationEntityIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenVehicleReservationEntityIntent and conformance OpenVehicleReservationEntityIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1)
{

  return swift_once();
}

uint64_t static SearchSpotlightOpener.openEntity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static SearchSpotlightOpener.openEntity<A>(_:));
}

uint64_t static SearchSpotlightOpener.openEntity<A>(_:)()
{
  v1 = static SearchSpotlightOpener.decodeOpenCommand<A>(_:)();
  v2 = [objc_opt_self() handlerForCommand:v1 environment:0];
  if (v2)
  {
    v3 = v2;
    [v3 executeWithTriggerEvent_];
  }

  v4 = *(v0 + 8);

  return v4();
}

Swift::Int SearchSpotlightOpenerError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchSpotlightOpenerError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SearchSpotlightOpenerError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t static SearchSpotlightOpener.decodeSearchableItem<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for IntentFile();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of IntentFile?(v9);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logging.search);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_3_17(&dword_25D85C000, v18, v19, "SearchSpotlightEntity missing data of the underlying CSSearchableItem");
      OUTLINED_FUNCTION_42_0();
    }

    v20 = lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchSpotlightOpenerError, v20);
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v22 = IntentFile.data.getter();
    v24 = v23;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v3)
    {
      v26 = OUTLINED_FUNCTION_1_28();
      v27(v26);
      outlined consume of Data._Representation(v22, v24);
    }

    else
    {
      v4 = v25;
      outlined consume of Data._Representation(v22, v24);
      if (v4)
      {
        v29 = OUTLINED_FUNCTION_1_28();
        v30(v29);
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logging.search);
        v32 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v4))
        {
          *OUTLINED_FUNCTION_172() = 0;
          OUTLINED_FUNCTION_4_14(&dword_25D85C000, v33, v34, "NSKeyedUnarchiver returning nil when unarchiving CSSearchableItem data");
          OUTLINED_FUNCTION_42_0();
        }

        v35 = lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        v36 = OUTLINED_FUNCTION_5_12(&type metadata for SearchSpotlightOpenerError, v35);
        OUTLINED_FUNCTION_2_16(v36, v37);
        v38 = OUTLINED_FUNCTION_1_28();
        v39(v38);
      }
    }
  }

  return v4;
}

uint64_t static SearchSpotlightOpener.decodeOpenCommand<A>(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = OUTLINED_FUNCTION_1_28();
  v6(v5);
  v7 = type metadata accessor for IntentFile();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    outlined destroy of IntentFile?(v4);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logging.search);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_3_17(&dword_25D85C000, v11, v12, "SearchSpotlightEntity missing data of the SFcommand");
      OUTLINED_FUNCTION_42_0();
    }

    v13 = lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    OUTLINED_FUNCTION_5_12(&type metadata for SearchSpotlightOpenerError, v13);
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    IntentFile.data.getter();
    (*(*(v7 - 8) + 8))(v4, v7);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
    v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (!v0)
    {
      v1 = v15;
      if (!v15)
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logging.search);
        v20 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v1))
        {
          *OUTLINED_FUNCTION_172() = 0;
          OUTLINED_FUNCTION_4_14(&dword_25D85C000, v21, v22, "NSKeyedUnarchiver returning nil when unarchiving SFCommand data");
          OUTLINED_FUNCTION_42_0();
        }

        v23 = lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        v24 = OUTLINED_FUNCTION_5_12(&type metadata for SearchSpotlightOpenerError, v23);
        OUTLINED_FUNCTION_2_16(v24, v25);
      }
    }

    v16 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v16, v17);
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightOpenerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t key path getter for IdCardEntity.subType : IdCardEntity@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = IdCardEntity.subType.getter(a1);
  *a2 = v4;
  return result;
}

uint64_t (*IdCardEntity.subType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t key path setter for IdCardEntity.personal : IdCardEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v3, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
  return IdCardEntity.personal.setter(__src);
}

uint64_t (*IdCardEntity.personal.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for IdCardEntity.business : IdCardEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v3, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
  return IdCardEntity.business.setter(__src);
}

uint64_t (*IdCardEntity.business.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t IdCardEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMR);
  v3 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_106_2(v3);
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  OUTLINED_FUNCTION_54_5();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  *(v0 + 24) = xmmword_25DBC9410;
  type metadata accessor for IdCardEntity(0);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type CardSubType and conformance CardSubType()
{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CardSubType and conformance CardSubType;
  if (!lazy protocol witness table cache variable for type CardSubType and conformance CardSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSubType and conformance CardSubType);
  }

  return result;
}

uint64_t type metadata accessor for IdCardEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for IdCardEntity;
  if (!type metadata singleton initialization cache for IdCardEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t one-time initialization function for typeDisplayRepresentation(uint64_t a1)
{
  return one-time initialization function for typeDisplayRepresentation(a1, static IdCardEntity.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static CardSubType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static PersonalCardEntity.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static BusinessCardEntity.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static Sex.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static HydrationEntityType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static SearchPropertyType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static ObjectType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static SortOrder.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static OrderByTime.typeDisplayRepresentation, 0x794220726564724FLL, 0xED0000656D695420);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static Person.typeDisplayRepresentation, 0x6E6F73726550, 0xE600000000000000);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static MediaType.typeDisplayRepresentation, 0x795420616964654DLL, 0xEA00000000006570);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static EntityUTType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static ReturnType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static FilterType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static PreferredType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static SourceType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static ContainsType.typeDisplayRepresentation);
}

{
  return one-time initialization function for typeDisplayRepresentation(a1, static ExtractedType.typeDisplayRepresentation);
}

uint64_t static IdCardEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static IdCardEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

void IdCardEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v40[1] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v40[0] = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v13 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v15);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v18._countAndFlagsBits = IdCardEntity.description.getter(v17);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  LocalizedStringResource.init(stringInterpolation:)();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  outlined copy of Data?(v20, v21);
  v22 = SFCard.init(data:)(v20, v21);
  if (v22)
  {
    v23 = v22;
    SFCard.snippetPluginModel.getter(v10);

    v24 = type metadata accessor for RGPluginModel();
    if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
    {
      outlined destroy of IntentApplication?(v10, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540], MEMORY[0x277D1C510]);
      SnippetPluginModel.data.getter();
      v26 = v25;
      (*(*(v24 - 8) + 8))(v10, v24);
      if (v26 >> 60 != 15)
      {
        v38 = OUTLINED_FUNCTION_64_4();
        v39(v38);
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        goto LABEL_6;
      }
    }
  }

  v27 = OUTLINED_FUNCTION_64_4();
  v28(v27);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v13);
  type metadata accessor for DisplayRepresentation.Image();
  v32 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  DisplayRepresentation.init(title:subtitle:image:)();
LABEL_6:
  v36 = OUTLINED_FUNCTION_30_5();
  v37(v36);
  OUTLINED_FUNCTION_148();
}

uint64_t IdCardEntity.description.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  if (v3)
  {
    v1 = 0x7373656E69737562;
  }

  else
  {
    v1 = 0x6C616E6F73726570;
  }

  MEMORY[0x25F89F6C0](v1, 0xE800000000000000);

  return 0x20647261434449;
}

id specialized CardDisplayable.card.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  return OUTLINED_FUNCTION_5_13();
}

uint64_t CardSubType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7373656E69737562;
  }

  else
  {
    return 0x6C616E6F73726570;
  }
}

uint64_t IdCardEntity.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t IdCardEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t IdCardEntity.sourceResult.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = type metadata accessor for IdCardEntity(v2);
  return outlined init with copy of ResourceBundle?(v1 + *(v3 + 32), v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
}

uint64_t IdCardEntity.sourceResult.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IdCardEntity(0) + 32);

  return outlined assign with take of SearchResult?(a1, v3);
}

void static IdCardEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v50 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_90_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSg_ADtMd, &_s10OmniSearch0B6ResultVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  if (specialized == infix<A>(_:_:)(v57[0]))
  {
    EntityProperty.wrappedValue.getter();
    memcpy(v57, v59, 0xC0uLL);
    EntityProperty.wrappedValue.getter();
    memcpy(&v57[24], v58, 0xC0uLL);
    OUTLINED_FUNCTION_81_5(v60);
    if (_s10OmniSearch0B7ContextVSgWOg(v60) == 1)
    {
      memcpy(v56, &v57[24], 0xC0uLL);
      if (_s10OmniSearch0B7ContextVSgWOg(v56) == 1)
      {
        OUTLINED_FUNCTION_81_5(v54);
        outlined destroy of IntentApplication?(v54, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
LABEL_9:
        EntityProperty.wrappedValue.getter();
        v17 = v56[0];
        OUTLINED_FUNCTION_89_4();
        memcpy(v18, v19, v20);
        EntityProperty.wrappedValue.getter();
        v21 = v59[0];
        OUTLINED_FUNCTION_89_4();
        memcpy(v22, v23, v24);
        if (v17)
        {
          v57[0] = v17;
          OUTLINED_FUNCTION_79_3(v57);
          memcpy(v58, v57, 0x60uLL);
          if (v21)
          {
            OUTLINED_FUNCTION_89_4();
            memcpy(v25, v26, v27);
            v54[0] = v21;
            outlined init with copy of ResourceBundle?(v57, v53, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
            v28 = static BusinessCardEntity.== infix(_:_:)(v58, v54);
            memcpy(v52, v54, 0x60uLL);
            outlined destroy of BusinessCardEntity(v52);
            memcpy(v53, v58, 0x60uLL);
            outlined destroy of BusinessCardEntity(v53);
            v54[0] = v17;
            OUTLINED_FUNCTION_79_3(v54);
            outlined destroy of IntentApplication?(v54, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
            if (!v28)
            {
              goto LABEL_21;
            }

LABEL_15:
            v29 = *(v3 + 32);
            v49 = *(v3 + 24);
            if (*(v5 + 32) >> 60 == 15)
            {
              if (v29 >> 60 == 15)
              {
                v30 = OUTLINED_FUNCTION_62_3();
                outlined copy of Data?(v30, v31);
                v32 = OUTLINED_FUNCTION_11_12(v49, v29);
                outlined consume of Data?(v32, v33);
LABEL_25:
                v43 = *(type metadata accessor for IdCardEntity(0) + 32);
                v44 = *(v11 + 48);
                outlined init with copy of ResourceBundle?(v5 + v43, v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
                outlined init with copy of ResourceBundle?(v3 + v43, v0 + v44, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
                OUTLINED_FUNCTION_105_3(v0);
                if (v45)
                {
                  OUTLINED_FUNCTION_105_3(v0 + v44);
                  if (v45)
                  {
                    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
                    goto LABEL_21;
                  }
                }

                else
                {
                  outlined init with copy of ResourceBundle?(v0, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
                  OUTLINED_FUNCTION_105_3(v0 + v44);
                  if (!v45)
                  {
                    _s10OmniSearch0B6ResultVWObTm_4(v0 + v44, v50, type metadata accessor for SearchResult);
                    static SearchResult.== infix(_:_:)();
                    _s10OmniSearch0B6ResultVWOhTm_2(v50, type metadata accessor for SearchResult);
                    v46 = OUTLINED_FUNCTION_64_0();
                    _s10OmniSearch0B6ResultVWOhTm_2(v46, v47);
                    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
                    goto LABEL_21;
                  }

                  OUTLINED_FUNCTION_41_4();
                }

                v13 = &_s10OmniSearch0B6ResultVSg_ADtMd;
                v14 = &_s10OmniSearch0B6ResultVSg_ADtMR;
                v15 = v0;
                goto LABEL_20;
              }
            }

            else if (v29 >> 60 != 15)
            {
              v38 = OUTLINED_FUNCTION_62_3();
              outlined copy of Data?(v38, v39);
              v40 = OUTLINED_FUNCTION_11_12(v49, v29);
              v48 = MEMORY[0x25F899380](v40);
              outlined consume of Data?(v49, v29);
              v41 = OUTLINED_FUNCTION_62_3();
              outlined consume of Data?(v41, v42);
              if ((v48 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_25;
            }

            v34 = OUTLINED_FUNCTION_62_3();
            outlined copy of Data?(v34, v35);
            v36 = OUTLINED_FUNCTION_11_12(v49, v29);
            outlined consume of Data?(v36, v37);
            outlined consume of Data?(v49, v29);
            goto LABEL_21;
          }

          memcpy(v54, v57, 0x60uLL);
          outlined init with copy of ResourceBundle?(v57, v53, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
          outlined destroy of BusinessCardEntity(v54);
        }

        else if (!v21)
        {
          v57[0] = 0;
          OUTLINED_FUNCTION_79_3(v57);
          outlined destroy of IntentApplication?(v57, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
          goto LABEL_15;
        }

        v57[0] = v17;
        memcpy(&v57[1], v51, 0x58uLL);
        v57[12] = v21;
        memcpy(&v57[13], v55, 0x58uLL);
        v13 = &_s10OmniSearch18BusinessCardEntityVSg_ADtMd;
        v14 = &_s10OmniSearch18BusinessCardEntityVSg_ADtMR;
        v15 = v57;
LABEL_20:
        outlined destroy of IntentApplication?(v15, v13, v14);
        goto LABEL_21;
      }

LABEL_7:
      memcpy(v56, v57, sizeof(v56));
      v13 = &_s10OmniSearch18PersonalCardEntityVSg_ADtMd;
      v14 = &_s10OmniSearch18PersonalCardEntityVSg_ADtMR;
      v15 = v56;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_81_5(v54);
    memcpy(v56, &v57[24], 0xC0uLL);
    if (_s10OmniSearch0B7ContextVSgWOg(v56) == 1)
    {
      OUTLINED_FUNCTION_81_5(v53);
      outlined init with copy of ResourceBundle?(v54, v52, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
      outlined destroy of PersonalCardEntity(v53);
      goto LABEL_7;
    }

    outlined init with copy of ResourceBundle?(v54, v53, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
    v16 = static PersonalCardEntity.== infix(_:_:)(v57, &v57[24]);
    memcpy(v51, &v57[24], sizeof(v51));
    outlined destroy of PersonalCardEntity(v51);
    OUTLINED_FUNCTION_81_5(v52);
    outlined destroy of PersonalCardEntity(v52);
    OUTLINED_FUNCTION_81_5(v53);
    outlined destroy of IntentApplication?(v53, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
    if (v16)
    {
      goto LABEL_9;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_148();
}

uint64_t IdCardEntity.convertToSystemIntentValue()@<X0>(_BYTE *a2@<X8>)
{
  v3 = v2;
  EntityProperty.wrappedValue.getter();
  v5 = *(type metadata accessor for IdCardEntity(0) + 32);
  v6 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  outlined init with copy of ResourceBundle?(v3 + v5, &a2[*(v6 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = v11;
  v9 = &a2[*(v6 + 24)];
  *v9 = v7;
  v9[1] = v8;
  return outlined copy of Data?(v7, v8);
}

void IdCardEntity.init(_:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v74 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v72 = v69 - v13;
  OUTLINED_FUNCTION_78_0();
  v73 = type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_14();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v69[1] = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = v69 - v19;
  v20 = OUTLINED_FUNCTION_78_0();
  v21 = type metadata accessor for SearchResultItem(v20);
  v22 = OUTLINED_FUNCTION_114(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_90_0();
  v28 = type metadata accessor for LocalizedStringResource();
  v29 = OUTLINED_FUNCTION_114(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  v76 = EntityProperty<>.init(title:)();
  *v4 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  v69[0] = EntityProperty<>.init(title:)();
  v4[1] = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMR);
  v30 = v2;
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  v4[2] = EntityProperty<>.init(title:)();
  *(v4 + 3) = xmmword_25DBC9410;
  v31 = *(type metadata accessor for IdCardEntity(0) + 32);
  v32 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v77 = v5;
  v36 = *(v5 + 20);
  outlined init with copy of ResourceBundle?(&v36[v30], v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v0, 1, v32) == 1)
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    memset(v79, 0, 40);
LABEL_8:
    v37 = v75;
    goto LABEL_9;
  }

  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v0, v25, type metadata accessor for SearchResultItem);
  OUTLINED_FUNCTION_41_4();
  SearchResultItem.associatedValue.getter(v78);
  _s10OmniSearch0B6ResultVWOhTm_2(v25, type metadata accessor for SearchResultItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26PreExtractedSourceDocument_pMd, &_s10OmniSearch26PreExtractedSourceDocument_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v79, 0, 40);
    goto LABEL_8;
  }

  v37 = v75;
  if (!*(&v79[1] + 1))
  {
LABEL_9:
    outlined destroy of IntentApplication?(v79, &_s10OmniSearch26PreExtractedSourceDocument_pSgMd, &_s10OmniSearch26PreExtractedSourceDocument_pSgMR);
    goto LABEL_10;
  }

  v38 = v31;
  outlined init with take of ResponseOverrideMatcherProtocol(v79, v80);
  v39 = v81;
  v40 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v41 = *(v40 + 24);
  v42 = v40;
  v43 = v72;
  v41(v39, v42);
  v44 = v73;
  if (__swift_getEnumTagSinglePayload(v43, 1, v73) != 1)
  {
    v62 = v43;
    v64 = v70;
    v63 = v71;
    (*(v71 + 32))(v70, v62, v44);
    if (*v30 == 1)
    {
      v65 = OUTLINED_FUNCTION_65_4();
      v66(v65);
      OUTLINED_FUNCTION_93_3();
      BusinessCardEntity.init(preExtractedCard:)();
    }

    else
    {
      v67 = OUTLINED_FUNCTION_65_4();
      v68(v67);
      OUTLINED_FUNCTION_93_3();
      PersonalCardEntity.init(preExtractedCard:)();
      _s10OmniSearch11GeoLocationVSgWOi_();
      memcpy(v78, v79, sizeof(v78));
    }

    EntityProperty.wrappedValue.setter();
    (*(v63 + 8))(v64, v44);
    v31 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    goto LABEL_15;
  }

  outlined destroy of IntentApplication?(v43, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v80);
  v31 = v38;
LABEL_10:
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logging.search);
  OUTLINED_FUNCTION_39_7();
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v30, v37, v46);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v75 = v36;
    v51 = v31;
    v52 = v50;
    *&v79[0] = v50;
    *v49 = 136315138;
    OUTLINED_FUNCTION_39_7();
    outlined init with copy of SearchPreExtractedCardStandardRepresentation(v37, v74, v53);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_38_7();
    _s10OmniSearch0B6ResultVWOhTm_2(v55, v54);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v49 + 4) = v56;
    _os_log_impl(&dword_25D85C000, v47, v48, "Unable to init IdCardEntity with SearchPreExtractedCardStandardRepresentation: %s. Initing Id Card Entity with just subtype and card", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    v31 = v51;
    v36 = v75;
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    OUTLINED_FUNCTION_38_7();
    _s10OmniSearch0B6ResultVWOhTm_2(v37, v57);
  }

LABEL_15:
  LOBYTE(v79[0]) = *v30;
  EntityProperty.wrappedValue.setter();
  v58 = (v30 + *(v77 + 24));
  v59 = v30;
  v60 = *v58;
  v61 = v58[1];
  outlined consume of Data?(v4[3], v4[4]);
  v4[3] = v60;
  v4[4] = v61;
  outlined assign with take of SearchResult?(&v36[v59], v4 + v31);
  OUTLINED_FUNCTION_148();
}

void BusinessCardEntity.init(preExtractedCard:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v31 = EntityProperty<>.init(title:)();
  *v3 = v31;
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  v11 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v11);
  v33 = EntityProperty<>.init(title:)();
  *(v3 + 24) = v33;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4(v12, v13);
  v34 = EntityProperty<>.init(title:)();
  *(v3 + 32) = v34;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4(v14, v15);
  v32 = EntityProperty<>.init(title:)();
  *(v3 + 40) = v32;
  OUTLINED_FUNCTION_14_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_63_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 72) = EntityProperty<>.init(title:)();
  *(v3 + 80) = xmmword_25DBC9410;
  v16 = PreExtractedCard.cardProvider.getter();
  OUTLINED_FUNCTION_62_5(v16, v17);
  EntityProperty.wrappedValue.setter();
  v18 = PreExtractedCard.cardSubType.getter();
  OUTLINED_FUNCTION_62_5(v18, v19);
  EntityProperty.wrappedValue.setter();
  PreExtractedCard.cardExpirationDate.getter();
  v20 = OUTLINED_FUNCTION_30_5();
  outlined init with copy of ResourceBundle?(v20, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.cardIssueDate.getter();
  v22 = OUTLINED_FUNCTION_30_5();
  outlined init with copy of ResourceBundle?(v22, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = PreExtractedCard.cardIssuedBy.getter();
  OUTLINED_FUNCTION_62_5(v24, v25);
  EntityProperty.wrappedValue.setter();
  v26 = PreExtractedCard.cardNumber.getter();
  OUTLINED_FUNCTION_62_5(v26, v27);
  EntityProperty.wrappedValue.setter();
  v35 = 0;
  v36 = 0;
  EntityProperty.wrappedValue.setter();
  v28 = PreExtractedCard.cardUnderName.getter();
  OUTLINED_FUNCTION_62_5(v28, v29);
  EntityProperty.wrappedValue.setter();
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_17();
  (*(v30 + 8))(v1);
  OUTLINED_FUNCTION_148();
}

void PersonalCardEntity.init(preExtractedCard:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v94 = OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  v101 = EntityProperty<>.init(title:)();
  v14 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_75_2(v14);
  v100 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_46_6();
  LocalizedStringResource.init(stringLiteral:)();
  v99 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_27_7();
  v98 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  v15 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v15);
  v16 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_27_7();
  v97 = OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_45_5();
  LocalizedStringResource.init(stringLiteral:)();
  v96 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_44_7();
  LocalizedStringResource.init(stringLiteral:)();
  v95 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  v93 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_6();
  LocalizedStringResource.init(stringLiteral:)();
  v92 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_7();
  LocalizedStringResource.init(stringLiteral:)();
  v80 = OUTLINED_FUNCTION_103_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  OUTLINED_FUNCTION_31_11();
  LocalizedStringResource.init(stringLiteral:)();
  v17 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  OUTLINED_FUNCTION_74_5();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  v90 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v89 = OUTLINED_FUNCTION_103_3();
  v18 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_75_2(v18);
  v88 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v87 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_16_13();
  LocalizedStringResource.init(stringLiteral:)();
  v86 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v84 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  v83 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v82 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v81 = EntityProperty<>.init(title:)();
  v19 = PreExtractedCard.cardProvider.getter();
  OUTLINED_FUNCTION_35_9(v19, v20);
  EntityProperty.wrappedValue.setter();
  v21 = PreExtractedCard.cardUnderName.getter();
  OUTLINED_FUNCTION_35_9(v21, v22);
  EntityProperty.wrappedValue.setter();
  v23 = PreExtractedCard.cardNumber.getter();
  OUTLINED_FUNCTION_35_9(v23, v24);
  EntityProperty.wrappedValue.setter();
  v102 = 0;
  v103 = 0;
  EntityProperty.wrappedValue.setter();
  v102 = 0;
  v103 = 0;
  EntityProperty.wrappedValue.setter();
  PreExtractedCard.cardIssueDate.getter();
  outlined init with copy of ResourceBundle?(v11, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v91 = v16;
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = PreExtractedCard.cardIssuedBy.getter();
  OUTLINED_FUNCTION_35_9(v25, v26);
  EntityProperty.wrappedValue.setter();
  v27 = PreExtractedCard.cardRegion.getter();
  OUTLINED_FUNCTION_35_9(v27, v28);
  EntityProperty.wrappedValue.setter();
  v29 = PreExtractedCard.cardCountry.getter();
  OUTLINED_FUNCTION_35_9(v29, v30);
  EntityProperty.wrappedValue.setter();
  PreExtractedCard.cardExpirationDate.getter();
  OUTLINED_FUNCTION_72_1();
  outlined init with copy of ResourceBundle?(v31, v32, v33, v34);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.birthday.getter();
  OUTLINED_FUNCTION_72_1();
  outlined init with copy of ResourceBundle?(v35, v36, v37, v38);
  EntityProperty.wrappedValue.setter();
  v39 = v11;
  v40 = v80;
  outlined destroy of IntentApplication?(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = PreExtractedCard.cardPlaceOfBirth.getter();
  OUTLINED_FUNCTION_35_9(v41, v42);
  EntityProperty.wrappedValue.setter();
  v102 = 0;
  v85 = v17;
  EntityProperty.wrappedValue.setter();
  PreExtractedCard.cardSex.getter();
  if (v43)
  {
    v44 = String.lowercased()();
    countAndFlagsBits = v44._countAndFlagsBits;
    object = v44._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v47._countAndFlagsBits = countAndFlagsBits;
  v47._object = object;
  v48 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Sex.init(rawValue:), v47);

  v49 = v48 == 1;
  if (v48 == 2)
  {
    v49 = 2;
  }

  LOBYTE(v102) = v49;
  v50 = v90;
  EntityProperty.wrappedValue.setter();
  v51 = PreExtractedCard.cardHeight.getter();
  OUTLINED_FUNCTION_35_9(v51, v52);
  v53 = v89;
  EntityProperty.wrappedValue.setter();
  v54 = PreExtractedCard.cardEyeColor.getter();
  OUTLINED_FUNCTION_35_9(v54, v55);
  v56 = v88;
  EntityProperty.wrappedValue.setter();
  v57 = PreExtractedCard.cardWeight.getter();
  OUTLINED_FUNCTION_35_9(v57, v58);
  v59 = v87;
  EntityProperty.wrappedValue.setter();
  v60 = PreExtractedCard.cardCategory.getter();
  OUTLINED_FUNCTION_35_9(v60, v61);
  v62 = v86;
  EntityProperty.wrappedValue.setter();
  v63 = PreExtractedCard.cardRestrictions.getter();
  OUTLINED_FUNCTION_35_9(v63, v64);
  v65 = v84;
  EntityProperty.wrappedValue.setter();
  v66 = PreExtractedCard.cardSubType.getter();
  OUTLINED_FUNCTION_35_9(v66, v67);
  v68 = v83;
  EntityProperty.wrappedValue.setter();
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_17();
  (*(v69 + 8))(v1);
  v71 = v100;
  v70 = v101;
  *v3 = v94;
  *(v3 + 8) = v70;
  v73 = v98;
  v72 = v99;
  *(v3 + 16) = v71;
  *(v3 + 24) = v72;
  v74 = v91;
  *(v3 + 32) = v73;
  *(v3 + 40) = v74;
  v75 = v96;
  *(v3 + 48) = v97;
  *(v3 + 56) = v75;
  v76 = v92;
  v77 = v93;
  *(v3 + 64) = v95;
  *(v3 + 72) = v77;
  *(v3 + 80) = v76;
  *(v3 + 88) = v40;
  *(v3 + 96) = v85;
  *(v3 + 104) = v50;
  *(v3 + 112) = v53;
  *(v3 + 120) = v56;
  *(v3 + 128) = v59;
  *(v3 + 136) = v62;
  *(v3 + 144) = v65;
  *(v3 + 152) = v68;
  v78 = v81;
  *(v3 + 160) = v82;
  *(v3 + 168) = v78;
  *(v3 + 176) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance IdCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance IdCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);

  return MEMORY[0x28210C5A0](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance IdCardEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance IdCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance IdCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static CardSubType.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static CardSubType.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t key path getter for static IdCardEntity.typeDisplayRepresentation : IdCardEntity.Type(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a4, a5, a6);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t key path setter for static IdCardEntity.typeDisplayRepresentation : IdCardEntity.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a5, a6, a7);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v7 = OUTLINED_FUNCTION_107();
  v8(v7);
  return swift_endAccess();
}

void static CardSubType.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch11CardSubTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch11CardSubTypeO_10AppIntents21DisplayRepresentationVtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11CardSubTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch11CardSubTypeO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_95_2();
  v8 = *(v7 + 72);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_88_3(v9, xmmword_25DBC9D00);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  v14 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_50_4();
  *(v0 + v8) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);
  v20 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v13);
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

OmniSearch::CardSubType_optional __swiftcall CardSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CardSubType.init(rawValue:), v3);

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

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CardSubType@<X0>(uint64_t *a1@<X8>)
{
  result = CardSubType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance CardSubType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CardSubType and conformance CardSubType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance CardSubType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CardSubType and conformance CardSubType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*PersonalCardEntity.cardName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.personName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.idNumber.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.idType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.memberIDNumber.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonalCardEntity.issueDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*PersonalCardEntity.issueDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.issuingBusiness.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.issuingRegion.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.issuingCountry.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for PersonalCardEntity.issueDate : PersonalCardEntity(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v17[-v14];
  outlined init with copy of ResourceBundle?(a1, &v17[-v14], a5, a6);
  memcpy(v17, a2, sizeof(v17));
  outlined init with copy of PersonalCardEntity(v17, v18);
  a7(v15);
  memcpy(v18, a2, sizeof(v18));
  return outlined destroy of PersonalCardEntity(v18);
}

uint64_t PersonalCardEntity.expirationDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*PersonalCardEntity.expirationDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonalCardEntity.birthday.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*PersonalCardEntity.birthday.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.placeOfBirth.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for PersonalCardEntity.address : PersonalCardEntity(void **a1, const void *a2)
{
  v3 = *a1;
  memcpy(v6, a2, sizeof(v6));
  v4 = v3;
  outlined init with copy of PersonalCardEntity(v6, __dst);
  PersonalCardEntity.address.setter(v3);
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of PersonalCardEntity(__dst);
}

void PersonalCardEntity.address.setter(void *a1)
{
  v1 = a1;
  EntityProperty.wrappedValue.setter();
}

uint64_t (*PersonalCardEntity.address.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for PersonalCardEntity.sex : PersonalCardEntity@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = PersonalCardEntity.sex.getter(a1);
  *a2 = v4;
  return result;
}

uint64_t key path setter for PersonalCardEntity.sex : PersonalCardEntity(char *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v3;
  outlined init with copy of PersonalCardEntity(__dst, v7);
  PersonalCardEntity.sex.setter(&v5);
  memcpy(v7, a2, sizeof(v7));
  return outlined destroy of PersonalCardEntity(v7);
}

uint64_t (*PersonalCardEntity.sex.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.height.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.eyeColor.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.weight.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.licenseClass.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*PersonalCardEntity.licenseRestrictions.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for PersonalCardEntity.cardName : PersonalCardEntity()
{
  OUTLINED_FUNCTION_96_2();
  memcpy(v2, v3, 0xC0uLL);

  outlined init with copy of PersonalCardEntity(&v6, __dst);
  v4 = OUTLINED_FUNCTION_34_11();
  v0(v4);
  memcpy(__dst, v1, sizeof(__dst));
  return outlined destroy of PersonalCardEntity(__dst);
}

uint64_t (*PersonalCardEntity.cardSubType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonalCardEntity.encodedSearchableItem.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*PersonalCardEntity.encodedSearchableItem.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonalCardEntity.openCommand.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*PersonalCardEntity.openCommand.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonalCardEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  v3 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_75_2(v3);
  *(v0 + 16) = EntityProperty<>.init(title:)();
  v4 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_106_2(v4);
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4(v5, v6);
  *(v0 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  v7 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v7);
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4(v8, v9);
  *(v0 + 48) = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_90_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_90_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_13_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 88) = OUTLINED_FUNCTION_80_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  v10 = OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_106_2(v10);
  *(v0 + 96) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  OUTLINED_FUNCTION_74_5();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 112) = OUTLINED_FUNCTION_80_4();
  v11 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_75_2(v11);
  *(v0 + 120) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 128) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_16_13();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 136) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 152) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 168) = EntityProperty<>.init(title:)();
  *(v0 + 176) = xmmword_25DBC9410;
  return EntityProperty.wrappedValue.setter();
}

uint64_t static PersonalCardEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static PersonalCardEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t PersonalCardEntity.description.getter()
{
  _StringGuts.grow(_:)(16);
  EntityProperty.wrappedValue.getter();
  if (v4)
  {
    v0 = v3;
  }

  else
  {
    v0 = 0;
  }

  if (v4)
  {
    v1 = v4;
  }

  else
  {
    v1 = 0xE000000000000000;
  }

  MEMORY[0x25F89F6C0](v0, v1);

  MEMORY[0x25F89F6C0](0x7469746E65646920, 0xEE00647261632079);
  return 0;
}

uint64_t PersonalCardEntity.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t PersonalCardEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 176), *(v2 + 184));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

OmniSearch::Sex_optional __swiftcall Sex.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Sex.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

BOOL static PersonalCardEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v57 = a1[4];
  v58 = a1[3];
  v56 = a1[6];
  v54 = a1[7];
  v52 = a1[8];
  v50 = a1[11];
  v48 = a1[14];
  v46 = a1[15];
  v44 = a1[16];
  v42 = a1[17];
  v40 = a1[18];
  v38 = a1[19];
  v32 = a1[21];
  v30 = a1[22];
  v36 = a1[23];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v55 = a2[6];
  v53 = a2[7];
  v51 = a2[8];
  v49 = a2[11];
  v47 = a2[14];
  v45 = a2[15];
  v43 = a2[16];
  v41 = a2[17];
  v39 = a2[18];
  v37 = a2[19];
  v31 = a2[21];
  v27 = a2[22];
  v33 = a2[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_55_3(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v3, v5) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v4, v7) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v58, v8) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v57, v9) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v56, v55) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v54, v53) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v52, v51) & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v50, v49) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  lazy protocol witness table accessor for type CLPlacemark? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  lazy protocol witness table accessor for type Sex and conformance Sex();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v48, v47) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v46, v45) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v44, v43) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v42, v41) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v40, v39) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3(v38, v37) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = static EntityProperty<>.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (v36 >> 60 != 15)
  {
    if (v33 >> 60 != 15)
    {
      outlined copy of Data?(v30, v36);
      OUTLINED_FUNCTION_11_12(v27, v33);
      OUTLINED_FUNCTION_72_1();
      v23 = MEMORY[0x25F899380]();
      outlined consume of Data?(v27, v33);
      v24 = OUTLINED_FUNCTION_62_3();
      outlined consume of Data?(v24, v25);
      return (v23 & 1) != 0;
    }

LABEL_27:
    OUTLINED_FUNCTION_98_3(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v30, v31, v32, v33, v36);
    outlined copy of Data?(v29, v35);
    v20 = OUTLINED_FUNCTION_107();
    outlined consume of Data?(v20, v21);
    outlined consume of Data?(v29, v35);
    return 0;
  }

  if (v33 >> 60 != 15)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_98_3(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v30, v31, v32, v33, v36);
  outlined copy of Data?(v28, v34);
  v18 = OUTLINED_FUNCTION_107();
  outlined consume of Data?(v18, v19);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance PersonalCardEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance PersonalCardEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PersonalCardEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return UUID.init()();
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance PersonalCardEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance PersonalCardEntity;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*BusinessCardEntity.cardName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*BusinessCardEntity.cardSubType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.expirationDate.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.expirationDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for BusinessCardEntity.expirationDate : BusinessCardEntity(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &__dst[-v13];
  v15 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v15, v16, a5, a6);
  memcpy(__dst, a2, sizeof(__dst));
  outlined init with copy of BusinessCardEntity(__dst, v19);
  a7(v14);
  memcpy(v19, a2, sizeof(v19));
  return outlined destroy of BusinessCardEntity(v19);
}

uint64_t BusinessCardEntity.issueDate.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.issueDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*BusinessCardEntity.issuingBusiness.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*BusinessCardEntity.memberIDNumber.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*BusinessCardEntity.membershipType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for BusinessCardEntity.cardName : BusinessCardEntity()
{
  OUTLINED_FUNCTION_96_2();
  memcpy(v2, v3, 0x60uLL);

  outlined init with copy of BusinessCardEntity(&v6, __dst);
  v4 = OUTLINED_FUNCTION_34_11();
  v0(v4);
  memcpy(__dst, v1, sizeof(__dst));
  return outlined destroy of BusinessCardEntity(__dst);
}

uint64_t (*BusinessCardEntity.personName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.encodedSearchableItem.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.encodedSearchableItem.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.openCommand.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.openCommand.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double BusinessCardEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  v3 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v3);
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4(v4, v5);
  *(v0 + 32) = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4(v6, v7);
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_14_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  result = 0.0;
  *(v0 + 80) = xmmword_25DBC9410;
  return result;
}

uint64_t static BusinessCardEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static BusinessCardEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t BusinessCardEntity.description.getter(uint64_t a1)
{
  v1 = 0xE000000000000000;
  EntityProperty.wrappedValue.getter();
  if (v5)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    v1 = v5;
  }

  MEMORY[0x25F89F6C0](v2, v1);

  MEMORY[0x25F89F6C0](0x6472616320, 0xE500000000000000);
  return 0;
}

uint64_t BusinessCardEntity.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t BusinessCardEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

BOOL static BusinessCardEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v34 = a1[4];
  v32 = a1[5];
  v30 = a1[6];
  v28 = a1[7];
  v26 = a1[11];
  v4 = *a2;
  v5 = a2[1];
  v33 = a2[4];
  v31 = a2[5];
  v29 = a2[6];
  v27 = a2[7];
  v24 = a2[10];
  v25 = a2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_76_4(v2, v4) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4(v3, v5) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  OUTLINED_FUNCTION_30_5();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4(v34, v33) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4(v32, v31) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4(v30, v29) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4(v28, v27) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v26 >> 60 != 15)
  {
    if (v25 >> 60 != 15)
    {
      v19 = OUTLINED_FUNCTION_62_3();
      outlined copy of Data?(v19, v20);
      OUTLINED_FUNCTION_11_12(v24, v25);
      OUTLINED_FUNCTION_72_1();
      v21 = MEMORY[0x25F899380]();
      outlined consume of Data?(v24, v25);
      v22 = OUTLINED_FUNCTION_62_3();
      outlined consume of Data?(v22, v23);
      return (v21 & 1) != 0;
    }

LABEL_15:
    v10 = OUTLINED_FUNCTION_94();
    outlined copy of Data?(v10, v11);
    v12 = OUTLINED_FUNCTION_34_11();
    outlined copy of Data?(v12, v13);
    v14 = OUTLINED_FUNCTION_94();
    outlined consume of Data?(v14, v15);
    v16 = OUTLINED_FUNCTION_34_11();
    outlined consume of Data?(v16, v17);
    return 0;
  }

  if (v25 >> 60 != 15)
  {
    goto LABEL_15;
  }

  v6 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v6, v7);
  outlined copy of Data?(v24, v25);
  v8 = OUTLINED_FUNCTION_94();
  outlined consume of Data?(v8, v9);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance BusinessCardEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance BusinessCardEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance BusinessCardEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t one-time initialization function for typeDisplayRepresentation(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_4();
  v5 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  OUTLINED_FUNCTION_107();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  OUTLINED_FUNCTION_90_3();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_1();
  v5 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v8 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_10_20();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_27();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  v8 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_10_20();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_27();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  v8 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static IdCardEntity.typeDisplayRepresentation.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v4, a2);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_94();
  return v6(v5);
}

uint64_t static IdCardEntity.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v6, a3);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  v7 = *(v6 - 8);
  v8 = OUTLINED_FUNCTION_107();
  v9(v8);
  swift_endAccess();
  return (*(v7 + 8))(a1, v6);
}

uint64_t static Sex.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static Sex.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

void static Sex.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_95_2();
  v8 = *(v7 + 72);
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_88_3(v28, xmmword_25DBC8400);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  v13 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_50_4();
  *(v0 + v8) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
  v19 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v12);
  OUTLINED_FUNCTION_50_4();
  *(v0 + 2 * v8) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
  v25 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

uint64_t Sex.rawValue.getter()
{
  v1 = 0x656C616D6566;
  if (*v0 != 1)
  {
    v1 = 1701601645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Sex@<X0>(uint64_t *a1@<X8>)
{
  result = Sex.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance Sex(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Sex and conformance Sex();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance Sex(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Sex and conformance Sex();

  return MEMORY[0x28210C300](a1, v2);
}

void IdCardEntity.init(preExtractedCard:card:encodedSearchableItem:)()
{
  OUTLINED_FUNCTION_155();
  v64 = v0;
  v65 = v1;
  v62 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v60 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v10;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_14();
  v66 = v12;
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v61 = v14 - v13;
  OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  v17 = type metadata accessor for IdCardEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMR);
  v22 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_106_2(v22);
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  OUTLINED_FUNCTION_54_5();
  *v21 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  OUTLINED_FUNCTION_54_5();
  *(v21 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  OUTLINED_FUNCTION_54_5();
  v23 = EntityProperty<>.init(title:)();
  *(v21 + 16) = v23;
  *(v21 + 24) = xmmword_25DBC9410;
  v63 = v17;
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  PreExtractedCard.cardType.getter();
  v28 = v4;
  PreExtractedCard.cardSubType.getter();
  static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)();

  v29 = LOBYTE(v69[0]);
  if (LOBYTE(v69[0]) != 2)
  {
    LOBYTE(v69[0]) &= 1u;
    EntityProperty.wrappedValue.setter();
    v40 = v66;
    v41 = OUTLINED_FUNCTION_60_3();
    v42(v41);
    OUTLINED_FUNCTION_93_3();
    if (v29)
    {
      BusinessCardEntity.init(preExtractedCard:)();
    }

    else
    {
      PersonalCardEntity.init(preExtractedCard:)();
      _s10OmniSearch11GeoLocationVSgWOi_();
      memcpy(v68, v69, sizeof(v68));
    }

    EntityProperty.wrappedValue.setter();
    v43 = v64;
    IdCardEntity.representedEntity.getter(v68);
    if (!*(&v68[1] + 1))
    {

      outlined destroy of IntentApplication?(v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      (*(v40 + 8))(v28, v67);
      outlined destroy of IntentApplication?(v68, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMR);
LABEL_23:
      v39 = v65;
      _s10OmniSearch0B6ResultVWObTm_4(v21, v65, type metadata accessor for IdCardEntity);
      v38 = 0;
      goto LABEL_24;
    }

    v64 = v28;
    outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(v68, v69);
    v44 = v59;
    outlined init with copy of ResourceBundle?(v43, v59, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_99_3();
    (*(v29 + 16))(v44, v23, v29);
    v45 = v69[3];
    v46 = v69[5];
    __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
    v47 = *(v46 + 16);
    v48 = *(v47 + 16);
    v49 = v62;
    v50 = v62;
    v48(v49, v45, v47);
    if (v49)
    {
      v51 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v50);
      v52 = v60;
      if (v51)
      {
        v53 = v51;
        if (specialized Array.count.getter())
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
          if ((v53 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x25F89FFD0](0, v53);
          }

          else
          {
            v54 = *(v53 + 32);
          }

          v45 = v54;

          v55 = [v45 command];

          if (v55)
          {
            v45 = 0;
            SFCommand.asIntentFile()();

            v57 = 0;
LABEL_22:
            v56 = type metadata accessor for IntentFile();
            __swift_storeEnumTagSinglePayload(v52, v57, 1, v56);
            OUTLINED_FUNCTION_99_3();
            (*(v47 + 40))(v52, v45, v47);

            outlined destroy of IntentApplication?(v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
            (*(v66 + 8))(v64, v67);
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v57 = 1;
      goto LABEL_22;
    }

    v57 = 1;
    v52 = v60;
    goto LABEL_22;
  }

  v30 = v66;
  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_12_12(&one-time initialization token for utilities);
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logging.utilities);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v34 = OUTLINED_FUNCTION_77_5(v33);
  v35 = v64;
  if (v34)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v36, v37, "Unsupported subType in PreExtractedCard. Returning nil for IdCardEntity.");
    OUTLINED_FUNCTION_42_0();
  }

  outlined destroy of IntentApplication?(v35, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(v30 + 8))(v4, v67);
  _s10OmniSearch0B6ResultVWOhTm_2(v21, type metadata accessor for IdCardEntity);
  v38 = 1;
  v39 = v65;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v39, v38, 1, v63);
  OUTLINED_FUNCTION_148();
}

void static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  if (!v4)
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_12_12(&one-time initialization token for utilities);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logging.utilities);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_77_5(v15))
    {
      goto LABEL_34;
    }

    *swift_slowAlloc() = 0;
    v18 = "preExtractedCardSubType is nil. Returning nil CardSubType.";
    goto LABEL_33;
  }

  v5 = v1;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000025DBF11D0;
  *(inited + 48) = 0x70737361705F6469;
  *(inited + 56) = 0xEB0000000074726FLL;
  strcpy((inited + 64), "id_green_card");
  *(inited + 78) = -4864;
  *(inited + 80) = 0x6E73735F6469;
  *(inited + 88) = 0xE600000000000000;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {

    goto LABEL_17;
  }

  if (v8 == v6 && v9 == v5)
  {
  }

  else
  {
    v11 = OUTLINED_FUNCTION_102_3(v8);

    if ((v11 & 1) == 0)
    {
LABEL_17:
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v5)
      {
        if (v21 == v6 && v22 == v5)
        {

          goto LABEL_27;
        }

        v24 = OUTLINED_FUNCTION_102_3(v21);

        if (v24)
        {
LABEL_27:
          MEMORY[0x28223BE20](v25);
          OUTLINED_FUNCTION_61_4();
          v27 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, inited);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          if (v27)
          {
            v20 = 0;
            goto LABEL_35;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_29:
      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_12_12(&one-time initialization token for utilities);
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logging.utilities);
      v14 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_77_5(v29))
      {
        goto LABEL_34;
      }

      *swift_slowAlloc() = 0;
      v18 = "preExtractedCardType is not supported. Returning nil CardSubType.";
LABEL_33:
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v16, v17, v18);
      OUTLINED_FUNCTION_42_0();
LABEL_34:

      v20 = 2;
      goto LABEL_35;
    }
  }

  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_4();
  if (!specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v19, &outlined read-only object #0 of static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)))
  {
    goto LABEL_17;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v20 = 1;
LABEL_35:
  *v3 = v20;
  OUTLINED_FUNCTION_148();
}

void *IdCardEntity.representedEntity.getter@<X0>(uint64_t a2@<X8>)
{
  EntityProperty.wrappedValue.getter();
  if ((v12 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    memcpy(__dst, __src, sizeof(__dst));
    result = _s10OmniSearch0B7ContextVSgWOg(__dst);
    if (result != 1)
    {
      *(a2 + 24) = &type metadata for PersonalCardEntity;
      *(a2 + 32) = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
      *(a2 + 40) = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
      *(a2 + 48) = &protocol witness table for PersonalCardEntity;
      v9 = swift_allocObject();
      *a2 = v9;
      v6 = (v9 + 16);
      v7 = __dst;
      v8 = 192;
      return memcpy(v6, v7, v8);
    }

LABEL_5:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  result = EntityProperty.wrappedValue.getter();
  v4 = __dst[0];
  if (!__dst[0])
  {
    goto LABEL_5;
  }

  *(a2 + 24) = &type metadata for BusinessCardEntity;
  *(a2 + 32) = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a2 + 40) = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a2 + 48) = &protocol witness table for BusinessCardEntity;
  v5 = swift_allocObject();
  *a2 = v5;
  *(v5 + 16) = v4;
  OUTLINED_FUNCTION_89_4();
  return memcpy(v6, v7, v8);
}

void PersonalCardEntity.init(cardName:personName:idNumber:idType:memberIDNumber:issueDate:issuingBusiness:issuingRegion:issuingCountry:expirationDate:birthday:placeOfBirth:address:sex:height:eyeColor:weight:licenseClass:licenseRestrictions:cardSubType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, unsigned __int8 *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  OUTLINED_FUNCTION_155();
  a19 = v47;
  a20 = v48;
  v108 = v49;
  v107 = v50;
  v106 = v51;
  v105 = v52;
  v103 = v53;
  v102 = v54;
  v99 = v55;
  v98 = v56;
  v58 = v57;
  v131 = a46;
  v132 = a47;
  v129 = a44;
  v130 = a45;
  v127 = a42;
  v128 = a43;
  v125 = a40;
  v126 = a41;
  v123 = a38;
  v124 = a39;
  v122 = a37;
  v119 = a33;
  v120 = a34;
  v117 = a31;
  v118 = a32;
  v114 = a29;
  v115 = a30;
  v113 = a28;
  v112 = a27;
  v111 = a26;
  v110 = a25;
  v109 = a24;
  v104 = a23;
  v101 = a22;
  v100 = a21;
  v59 = a35;
  v121 = a36;
  v60 = OUTLINED_FUNCTION_64_0();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  v63 = OUTLINED_FUNCTION_114(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v64);
  v66 = &v80 - v65;
  v67 = type metadata accessor for LocalizedStringResource();
  v68 = OUTLINED_FUNCTION_114(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_36();
  v116 = *v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v97 = OUTLINED_FUNCTION_104_2();
  *v58 = v97;
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  v96 = EntityProperty<>.init(title:)();
  *(v58 + 8) = v96;
  v69 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_75_2(v69);
  v95 = EntityProperty<>.init(title:)();
  *(v58 + 16) = v95;
  OUTLINED_FUNCTION_46_6();
  LocalizedStringResource.init(stringLiteral:)();
  v94 = EntityProperty<>.init(title:)();
  *(v58 + 24) = v94;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4(v70, v71);
  v93 = EntityProperty<>.init(title:)();
  *(v58 + 32) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  v72 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v72);
  v92 = EntityProperty<>.init(title:)();
  *(v58 + 40) = v92;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4(v73, v74);
  v89 = OUTLINED_FUNCTION_104_2();
  *(v58 + 48) = v89;
  OUTLINED_FUNCTION_45_5();
  LocalizedStringResource.init(stringLiteral:)();
  v88 = EntityProperty<>.init(title:)();
  *(v58 + 56) = v88;
  OUTLINED_FUNCTION_44_7();
  LocalizedStringResource.init(stringLiteral:)();
  v86 = EntityProperty<>.init(title:)();
  *(v58 + 64) = v86;
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  v82 = EntityProperty<>.init(title:)();
  *(v58 + 72) = v82;
  OUTLINED_FUNCTION_43_6();
  LocalizedStringResource.init(stringLiteral:)();
  v91 = EntityProperty<>.init(title:)();
  *(v58 + 80) = v91;
  OUTLINED_FUNCTION_13_7();
  LocalizedStringResource.init(stringLiteral:)();
  v90 = OUTLINED_FUNCTION_104_2();
  *(v58 + 88) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  OUTLINED_FUNCTION_31_11();
  LocalizedStringResource.init(stringLiteral:)();
  v87 = EntityProperty<>.init(title:)();
  *(v58 + 96) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  OUTLINED_FUNCTION_74_5();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  v85 = EntityProperty<>.init(title:)();
  *(v58 + 104) = v85;
  LocalizedStringResource.init(stringLiteral:)();
  v84 = OUTLINED_FUNCTION_104_2();
  *(v58 + 112) = v84;
  v75 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_75_2(v75);
  v83 = EntityProperty<>.init(title:)();
  *(v58 + 120) = v83;
  LocalizedStringResource.init(stringLiteral:)();
  v81 = EntityProperty<>.init(title:)();
  *(v58 + 128) = v81;
  OUTLINED_FUNCTION_16_13();
  LocalizedStringResource.init(stringLiteral:)();
  v80 = EntityProperty<>.init(title:)();
  *(v58 + 136) = v80;
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 152) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 168) = EntityProperty<>.init(title:)();
  *(v58 + 176) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&v131);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v134);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a11);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a13);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v133);
  EntityProperty.wrappedValue.setter();
  v76 = v104;
  OUTLINED_FUNCTION_82_4(v104);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v66);
  OUTLINED_FUNCTION_18_10(&a15);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a17);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v114);
  EntityProperty.wrappedValue.setter();
  v77 = v115;
  OUTLINED_FUNCTION_82_4(v115);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v66);
  v78 = v117;
  OUTLINED_FUNCTION_82_4(v117);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v66);
  OUTLINED_FUNCTION_26_5(v119);
  EntityProperty.wrappedValue.setter();
  v133 = v120;
  v79 = v120;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v133) = v116;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v122);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v124);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v126);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v128);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v130);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v132);
  EntityProperty.wrappedValue.setter();

  OUTLINED_FUNCTION_73_3(v78);
  OUTLINED_FUNCTION_73_3(v77);
  OUTLINED_FUNCTION_73_3(v76);
  OUTLINED_FUNCTION_148();
}

void BusinessCardEntity.init(cardName:cardSubType:expirationDate:issueDate:issuingBusiness:memberIDNumber:membershipType:personName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_155();
  v58 = v26;
  v59 = v27;
  v54 = v28;
  v55 = v29;
  v52 = v30;
  v53 = v31;
  v50 = v32;
  v51 = v33;
  v35 = v34;
  v62 = a25;
  v63 = a26;
  v60 = a23;
  v61 = a24;
  v56 = a21;
  v57 = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v38);
  v40 = &v47 - v39;
  v41 = type metadata accessor for LocalizedStringResource();
  v42 = OUTLINED_FUNCTION_114(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v49 = EntityProperty<>.init(title:)();
  *v35 = v49;
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 16) = EntityProperty<>.init(title:)();
  v43 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3(v43);
  v48 = EntityProperty<>.init(title:)();
  *(v35 + 24) = v48;
  OUTLINED_FUNCTION_27_7();
  v47 = EntityProperty<>.init(title:)();
  *(v35 + 32) = v47;
  OUTLINED_FUNCTION_27_7();
  *(v35 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_14_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_63_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 72) = EntityProperty<>.init(title:)();
  *(v35 + 80) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_26_5(v51);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v53);
  EntityProperty.wrappedValue.setter();
  v44 = v54;
  outlined init with copy of ResourceBundle?(v54, v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_97_2();
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v55, v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_97_2();
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_26_5(v59);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v57);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v61);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v63);
  EntityProperty.wrappedValue.setter();
  v45 = OUTLINED_FUNCTION_64_0();
  outlined destroy of IntentApplication?(v45, v46, &_s10Foundation4DateVSgMR);
  outlined destroy of IntentApplication?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t outlined assign with take of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SearchPreExtractedCardStandardRepresentation(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Sex and conformance Sex()
{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String and conformance String();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type Date and conformance Date);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CLPlacemark? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CLPlacemarkCSgMd, &_sSo11CLPlacemarkCSgMR);
    lazy protocol witness table accessor for type CLPlacemark and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CLPlacemarkCSgMd, &_sSo11CLPlacemarkCSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type CLPlacemark and conformance CLPlacemark);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLPlacemark and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject);
  }

  return result;
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_83_5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_62_3();
    v5 = MEMORY[0x25F89FFD0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_58_2();
}

{
  OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_62_3();
    v5 = MEMORY[0x25F89FFD0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_58_2();
}

{
  OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_83_5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_62_3();
    v5 = MEMORY[0x25F89FFD0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_58_2();
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_49_7(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined bridged method (ob) of @objc SFCard.cardSections.getter(void *a1)
{
  v2 = [a1 cardSections];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for IdCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PersonalCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BusinessCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for IdCardEntity(uint64_t a1)
{
  type metadata accessor for EntityProperty<CardSubType>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<PersonalCardEntity?>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<BusinessCardEntity?>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Data?();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SearchResult?(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for EntityProperty<CardSubType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<CardSubType>)
  {
    lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<CardSubType>);
    }
  }
}

void type metadata accessor for EntityProperty<PersonalCardEntity?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<PersonalCardEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
    lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type PersonalCardEntity? and conformance <A> A?, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR, lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity);
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<PersonalCardEntity?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for EntityProperty<BusinessCardEntity?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<BusinessCardEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
    lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type BusinessCardEntity? and conformance <A> A?, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR, lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity);
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<BusinessCardEntity?>);
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

void type metadata accessor for SearchResult?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchResult?)
  {
    type metadata accessor for SearchResult(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SearchResult?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CardSubType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PersonalCardEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for PersonalCardEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BusinessCardEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for BusinessCardEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Sex(_BYTE *result, unsigned int a2, unsigned int a3)
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

id OUTLINED_FUNCTION_5_13()
{
  outlined copy of Data?(v1, v0);

  return SFCard.init(data:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return outlined init with copy of ResourceBundle?(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 104) = v1;
  *(v2 - 96) = v3;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return outlined destroy of IntentApplication?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return _s10OmniSearch0B6ResultVWOhTm_2(v0, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_53_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_55_3(uint64_t a1, uint64_t a2)
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return outlined init with copy of ResourceBundle?(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return v2 - 96;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_74_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t a2)
{

  return static EntityProperty<>.== infix(_:_:)();
}

BOOL OUTLINED_FUNCTION_77_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t a1)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

void *OUTLINED_FUNCTION_79_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 8), (v1 + 32), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return EntityProperty<>.init(title:)();
}

void *OUTLINED_FUNCTION_81_5(void *a1)
{

  return memcpy(a1, (v1 + 1272), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1)
{

  return outlined init with copy of ResourceBundle?(a1, v3, v1, v2);
}

id OUTLINED_FUNCTION_83_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

__n128 *OUTLINED_FUNCTION_88_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result->n128_u8[v2] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_97_2()
{

  return outlined init with copy of ResourceBundle?(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_98_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{

  return outlined copy of Data?(a11, a15);
}

uint64_t OUTLINED_FUNCTION_99_3()
{
  v2 = *(v0 + 296);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 272, v2);
}

void OUTLINED_FUNCTION_100_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return type metadata accessor for LocalizedStringResource();
}

uint64_t OUTLINED_FUNCTION_102_3(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_106_2(uint64_t a1)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t static DerivedType.make(preferredType:filterType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (result)
  {
    v5 = *(result + 16);
    if (v5)
    {
      v6 = (result + 32);
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (v9 <= 0x38)
        {
          if (((1 << v8) & 0x19C860000000000) != 0)
          {
            v10 = 2;
LABEL_7:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
              v7 = v13;
            }

            v12 = *(v7 + 16);
            v11 = *(v7 + 24);
            if (v12 >= v11 >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v7);
              v7 = v14;
            }

            *(v7 + 16) = v12 + 1;
            *(v7 + v12 + 32) = v10;
            goto LABEL_12;
          }

          if (v8 == 2)
          {
            v10 = 1;
            goto LABEL_7;
          }

          if (v8 == 30)
          {
            v10 = 0;
            goto LABEL_7;
          }
        }

LABEL_12:
        if (!--v5)
        {
          goto LABEL_19;
        }
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_19:
    if (*(v7 + 16))
    {
      v15 = *(v7 + 32);

      *a3 = v15;
      return result;
    }
  }

  if (!a2)
  {
    goto LABEL_39;
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (a2 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v17++;
      if (v19 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
          v18 = v22;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v18);
          v18 = v23;
        }

        *(v18 + 16) = v21 + 1;
        *(v18 + v21 + 32) = 1;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (!*(v18 + 16))
  {

LABEL_39:
    *a3 = 3;
    return result;
  }

  *a3 = *(v18 + 32);
}

unsigned __int8 *static DerivedType.make(preferredType:)@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 > 0x38)
  {
    goto LABEL_8;
  }

  if (((1 << v2) & 0x19C860000000000) == 0)
  {
    if (v2 == 2)
    {
      v3 = 1;
      goto LABEL_4;
    }

    if (v2 == 30)
    {
      v3 = 0;
      goto LABEL_4;
    }

LABEL_8:
    v3 = 3;
    goto LABEL_4;
  }

  v3 = 2;
LABEL_4:
  *a2 = v3;
  return result;
}

_BYTE *static DerivedType.make(filterType:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int DerivedType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DerivedType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DerivedType and conformance DerivedType()
{
  result = lazy protocol witness table cache variable for type DerivedType and conformance DerivedType;
  if (!lazy protocol witness table cache variable for type DerivedType and conformance DerivedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedType and conformance DerivedType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DerivedType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized CardDisplayable.card.setter(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v1;
  *(v1 + 32) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 176), *(v1 + 184));
  *(v1 + 176) = v1;
  *(v1 + 184) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v1;
  *(v1 + 88) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v1;
  *(v1 + 80) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v1;
  *(v1 + 40) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 120), *(v1 + 128));
  *(v1 + 120) = v1;
  *(v1 + 128) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 224), *(v1 + 232));
  *(v1 + 224) = v1;
  *(v1 + 232) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 200), *(v1 + 208));
  *(v1 + 200) = v1;
  *(v1 + 208) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 136), *(v1 + 144));
  *(v1 + 136) = v1;
  *(v1 + 144) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v1;
  *(v1 + 120) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v1;
  *(v1 + 104) = v2;
  return result;
}

void EventEntity.init(result:card:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  v203 = v24;
  v204 = v23;
  v206 = v25;
  v198 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v31 = OUTLINED_FUNCTION_28_2(v30);
  v32 = type metadata accessor for SearchResult(v31);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v202 = v35 - v34;
  OUTLINED_FUNCTION_78_0();
  v194[36] = type metadata accessor for ShippingOrder();
  OUTLINED_FUNCTION_14();
  v194[35] = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v39);
  v40 = type metadata accessor for Trip();
  OUTLINED_FUNCTION_248(v40);
  OUTLINED_FUNCTION_14();
  v194[31] = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v44);
  v194[28] = type metadata accessor for Party();
  OUTLINED_FUNCTION_14();
  v194[27] = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v48);
  v49 = type metadata accessor for Appointment();
  OUTLINED_FUNCTION_146_1(v49);
  OUTLINED_FUNCTION_14();
  v194[23] = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v53);
  v54 = type metadata accessor for TicketedShow();
  OUTLINED_FUNCTION_114_3(v54);
  OUTLINED_FUNCTION_14();
  v194[19] = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v58);
  v59 = type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_176_1(v59);
  OUTLINED_FUNCTION_14();
  v194[15] = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v63);
  v194[12] = type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_14();
  v194[11] = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v67);
  v194[8] = type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_14();
  v194[7] = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v71);
  v72 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_245_0(v72);
  OUTLINED_FUNCTION_14();
  v194[3] = v73;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v76);
  v77 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_144_0(v77);
  OUTLINED_FUNCTION_14();
  v196 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_109();
  v82 = v80 - v81;
  MEMORY[0x28223BE20](v83);
  v84 = OUTLINED_FUNCTION_85_4();
  v85 = type metadata accessor for SearchResultItem(v84);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  v201 = v88;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v89);
  v91 = v194 - v90;
  v92 = type metadata accessor for LocalizedStringResource();
  v93 = OUTLINED_FUNCTION_114(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  v94 = type metadata accessor for EventEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_95_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v22 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  v22[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  v22[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  v22[8] = EntityProperty<>.init(title:)();
  *(v22 + 9) = xmmword_25DBC9410;
  v205 = v94;
  OUTLINED_FUNCTION_92();
  v199 = v32;
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v32);
  OUTLINED_FUNCTION_44_8();
  v100 = v206;
  _s10OmniSearch0B10ResultItemOWOcTm_2(v206, v91, v101);
  OUTLINED_FUNCTION_1_28();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for MobileSMSDocument();
      goto LABEL_53;
    case 2u:
      type metadata accessor for CalendarEvent();
      goto LABEL_53;
    case 3u:
      type metadata accessor for Photo();
      goto LABEL_53;
    case 4u:
      type metadata accessor for NoteDocument();
      goto LABEL_53;
    case 5u:
      type metadata accessor for Reminder();
      goto LABEL_53;
    case 6u:
      type metadata accessor for PhoneHistory();
      goto LABEL_53;
    case 7u:
      type metadata accessor for VoicemailTranscript();
      goto LABEL_53;
    case 8u:
      type metadata accessor for JournalEntry();
      goto LABEL_53;
    case 9u:
      type metadata accessor for VoiceMemo();
      goto LABEL_53;
    case 0xAu:
      type metadata accessor for Safari();
      goto LABEL_53;
    case 0xBu:
      type metadata accessor for FileDocument();
      goto LABEL_53;
    case 0xCu:
      type metadata accessor for WalletTransaction();
      goto LABEL_53;
    case 0xDu:
      type metadata accessor for WalletPass();
      goto LABEL_53;
    case 0xEu:
      type metadata accessor for Contact();
      goto LABEL_53;
    case 0xFu:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v109();
      OUTLINED_FUNCTION_106_3();
      v110 = OUTLINED_FUNCTION_27_8();
      v111(v110);
      v112 = OUTLINED_FUNCTION_28_8();
      EventEntity.init(appointment:)(v112);
      goto LABEL_30;
    case 0x10u:
      v202 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_105_4();
      v103();
      OUTLINED_FUNCTION_106_3();
      v104(v82, v21, v85);
      v32 = v200;
      EventEntity.init(reservation:)();
      (*(v20 + 8))(v21, v85);
      goto LABEL_31;
    case 0x11u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v113();
      OUTLINED_FUNCTION_106_3();
      v114 = OUTLINED_FUNCTION_27_8();
      v115(v114);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x12u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v122();
      OUTLINED_FUNCTION_106_3();
      v123 = OUTLINED_FUNCTION_27_8();
      v124(v123);
      v125 = OUTLINED_FUNCTION_28_8();
      EventEntity.init(party:)(v125);
      goto LABEL_30;
    case 0x13u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v129();
      OUTLINED_FUNCTION_106_3();
      v130 = OUTLINED_FUNCTION_27_8();
      v131(v130);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x14u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v116();
      OUTLINED_FUNCTION_106_3();
      v117 = OUTLINED_FUNCTION_27_8();
      v118(v117);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x15u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v119();
      OUTLINED_FUNCTION_106_3();
      v120 = OUTLINED_FUNCTION_27_8();
      v121(v120);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(shippingOrder:)();
      goto LABEL_30;
    case 0x16u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v126();
      OUTLINED_FUNCTION_106_3();
      v127 = OUTLINED_FUNCTION_27_8();
      v128(v127);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x17u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v132();
      OUTLINED_FUNCTION_106_3();
      v133 = OUTLINED_FUNCTION_27_8();
      v134(v133);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x18u:
      v202 = v85;
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v105();
      OUTLINED_FUNCTION_106_3();
      v106 = OUTLINED_FUNCTION_27_8();
      v107(v106);
      v108 = OUTLINED_FUNCTION_28_8();
      EventEntity.init(trip:)(v108);
LABEL_30:
      (*(v20 + 8))(v21, v85);
LABEL_31:
      v136 = v203;
      v135 = v204;
      v137 = v205;
      OUTLINED_FUNCTION_7_13();
      _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v138);
      outlined init with take of EventEntity(v32, v22);
      if (v135)
      {
        v139 = v135;
        v140 = SFCard.data.getter();
        v142 = v141;
      }

      else
      {
        v140 = 0;
        v142 = 0xF000000000000000;
      }

      outlined consume of Data?(v22[9], v22[10]);
      v22[9] = v140;
      v22[10] = v142;
      EventEntity.representedEntity.getter();
      if (!v208)
      {
        OUTLINED_FUNCTION_116_2();

        OUTLINED_FUNCTION_7_13();
        _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v154);
        outlined destroy of EagerResolutionService?(&v207, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMR);
        v155 = 1;
        goto LABEL_72;
      }

      outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(&v207, v209);
      v143 = v211;
      v144 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
      v145 = *(*(v143 + 16) + 16);
      v205 = v135;
      OUTLINED_FUNCTION_86_4();
      v145();
      OUTLINED_FUNCTION_44_8();
      OUTLINED_FUNCTION_131_2();
      _s10OmniSearch0B10ResultItemOWOcTm_2(v146, v147, v148);
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        _s10OmniSearch0B10ResultItemOWOhTm_3(v144, type metadata accessor for SearchResultItem);
        v152 = v198;
        if (v135)
        {
          v156 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v205);
          v157 = v195;
          if (v156)
          {
            v158 = v156;
            specialized Array.count.getter();
            OUTLINED_FUNCTION_244_0();
            if (v159)
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
              if ((v158 & 0xC000000000000001) != 0)
              {
                v160 = MEMORY[0x25F89FFD0](0, v158);
              }

              else
              {
                v160 = *(v158 + 32);
              }

              v161 = v160;

              v162 = [v161 command];

              if (v162)
              {
                SFCommand.asIntentFile()();
                if (!v152)
                {

                  v166 = 0;
                  goto LABEL_63;
                }

                v152 = 0;
              }
            }

            else
            {
            }

            v166 = 1;
          }

          else
          {
            v166 = 1;
            OUTLINED_FUNCTION_244_0();
          }
        }

        else
        {
          v166 = 1;
          OUTLINED_FUNCTION_244_0();
          v157 = v195;
        }

LABEL_63:
        v163 = type metadata accessor for IntentFile();
        v164 = v157;
        v165 = v166;
        goto LABEL_64;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

      (*(v196 + 8))(v144, v197);
      type metadata accessor for DefaultSpotlightCardBuilder();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v149 = CodableNSSecureCoding.wrappedValue.getter();
      v150 = static DefaultSpotlightCardBuilder.buildCommand(item:)(v149);

      v151 = v194[37];
      v152 = v198;
      SFCommand.asIntentFile()();
      OUTLINED_FUNCTION_244_0();
      if (v152)
      {

        v152 = 0;
        v153 = 1;
      }

      else
      {
        v153 = 0;
      }

      v163 = type metadata accessor for IntentFile();
      v164 = v151;
      v165 = v153;
LABEL_64:
      __swift_storeEnumTagSinglePayload(v164, v165, 1, v163);
      __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
      OUTLINED_FUNCTION_53_1();
      v179();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v180 = CodableNSSecureCoding.wrappedValue.getter();
      CSSearchableItem.asIntentFile()();
      if (v152)
      {

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
        }

        v181 = type metadata accessor for Logger();
        __swift_project_value_buffer(v181, static Logging.search);
        v182 = v152;
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          *v185 = 138412290;
          v187 = v152;
          v188 = _swift_stdlib_bridgeErrorToNSError();
          *(v185 + 4) = v188;
          *v186 = v188;
          _os_log_impl(&dword_25D85C000, v183, v184, "Unable to encode CSSI for Event document: %@", v185, 0xCu);
          outlined destroy of EagerResolutionService?(v186, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }

      else
      {

        type metadata accessor for IntentFile();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
        __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
        OUTLINED_FUNCTION_86_4();
        v193();
      }

      OUTLINED_FUNCTION_116_2();
      __swift_destroy_boxed_opaque_existential_1Tm(v209);
      outlined init with take of EventEntity(v22, v136);
      v155 = 0;
LABEL_72:
      __swift_storeEnumTagSinglePayload(v136, v155, 1, v137);
      OUTLINED_FUNCTION_148();
      return;
    case 0x19u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

      v102 = type metadata accessor for GlobalItem;
      goto LABEL_51;
    case 0x1Au:
    case 0x1Bu:
      v102 = type metadata accessor for SearchResultItem;
      goto LABEL_51;
    case 0x1Cu:
      v102 = type metadata accessor for Answer;
LABEL_51:
      _s10OmniSearch0B10ResultItemOWOhTm_3(v91, v102);
      goto LABEL_54;
    case 0x1Du:
      type metadata accessor for OnScreen();
      goto LABEL_53;
    case 0x1Eu:
      type metadata accessor for GenericSpotlightItem();
      goto LABEL_53;
    default:
      type metadata accessor for EmailDocument();
LABEL_53:
      OUTLINED_FUNCTION_2();
      (*(v167 + 8))(v91);
LABEL_54:
      v168 = v202;
      v136 = v203;
      v169 = v100;
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v170 = type metadata accessor for Logger();
      __swift_project_value_buffer(v170, static Logging.search);
      _s10OmniSearch0B10ResultItemOWOcTm_2(v100, v168, type metadata accessor for SearchResult);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v209[0] = v174;
        *v173 = 136642819;
        OUTLINED_FUNCTION_44_8();
        _s10OmniSearch0B10ResultItemOWOcTm_2(v168, v201, v175);
        String.init<A>(describing:)();
        _s10OmniSearch0B10ResultItemOWOhTm_3(v168, type metadata accessor for SearchResult);
        v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v173 + 4) = v176;
        _os_log_impl(&dword_25D85C000, v171, v172, "Unhandled event type: %{sensitive}s - dropping", v173, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v174);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        v177 = v169;
      }

      else
      {

        _s10OmniSearch0B10ResultItemOWOhTm_3(v100, type metadata accessor for SearchResult);
        v177 = v168;
      }

      _s10OmniSearch0B10ResultItemOWOhTm_3(v177, type metadata accessor for SearchResult);
      OUTLINED_FUNCTION_7_13();
      _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v178);
      v155 = 1;
      v137 = v205;
      goto LABEL_72;
  }
}

void EventEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  v0[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v14[0] = 0;
  EntityProperty.wrappedValue.setter();
  v9 = OUTLINED_FUNCTION_29_7();
  v10(v9);
  FlightReservationEntity.init(reservation:)();
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v13, v14, sizeof(v13));
  EntityProperty.wrappedValue.setter();
  v11 = OUTLINED_FUNCTION_34_11();
  v12(v11);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  v5 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0(v5);
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v6 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v16[0] = 2;
  EntityProperty.wrappedValue.setter();
  v11 = OUTLINED_FUNCTION_29_7();
  v12(v11);
  HotelReservationEntity.init(reservation:)();
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v15, v16, sizeof(v15));
  OUTLINED_FUNCTION_262();
  v13 = OUTLINED_FUNCTION_34_11();
  v14(v13);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_113_3();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  v8 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0(v8);
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v9 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v27[0] = 1;
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_29_7();
  v15(v14);
  RestaurantReservationEntity.init(reservation:)(v5, v16, v17, v18, v19, v20, v21, v22, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v26, v27, sizeof(v26));
  OUTLINED_FUNCTION_262();
  v23 = OUTLINED_FUNCTION_34_11();
  v24(v23);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_113_3();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  v8 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0(v8);
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v9 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v27[0] = 3;
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_29_7();
  v15(v14);
  VehicleReservationEntity.init(reservation:)(v5, v16, v17, v18, v19, v20, v21, v22, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v26, v27, sizeof(v26));
  OUTLINED_FUNCTION_262();
  v23 = OUTLINED_FUNCTION_34_11();
  v24(v23);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_121_2();
  *v3 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 64) = EntityProperty<>.init(title:)();
  *(v3 + 72) = xmmword_25DBC9410;
  type metadata accessor for EventEntity(0);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  LOBYTE(v26) = 5;
  EntityProperty.wrappedValue.setter();
  v17 = OUTLINED_FUNCTION_1_28();
  v18(v17);
  TicketedTransportationEntity.init(reservation:)(v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  EntityProperty.wrappedValue.setter();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  type metadata accessor for TicketedShow();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_113_3();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  v8 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0(v8);
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v9 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v27[0] = 6;
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_29_7();
  v15(v14);
  TicketedShowEntity.init(reservation:)(v5, v16, v17, v18, v19, v20, v21, v22, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v26, v27, sizeof(v26));
  OUTLINED_FUNCTION_262();
  v23 = OUTLINED_FUNCTION_34_11();
  v24(v23);
  OUTLINED_FUNCTION_148();
}

void EventEntity.init(appointment:)()
{
  OUTLINED_FUNCTION_155();
  v17[1] = v0;
  v18 = v1;
  v3 = v2;
  v4(0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v3 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 64) = EntityProperty<>.init(title:)();
  *(v3 + 72) = xmmword_25DBC9410;
  type metadata accessor for EventEntity(0);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  LOBYTE(v20[0]) = 7;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  v14();
  v18(v20, v7);
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v19, v20, sizeof(v19));
  EntityProperty.wrappedValue.setter();
  v15 = OUTLINED_FUNCTION_34_11();
  v16(v15);
  OUTLINED_FUNCTION_148();
}

void EventEntity.init(shippingOrder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  type metadata accessor for ShippingOrder();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  v5 = OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0(v5);
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v6 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v1[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v1[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v1[8] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v15[0] = 4;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  v11();
  ShippingOrderEntity.init(shippingOrder:)();
  _s10OmniSearch11GeoLocationVSgWOi_();
  memcpy(v14, v15, sizeof(v14));
  EntityProperty.wrappedValue.setter();
  v12 = OUTLINED_FUNCTION_34_11();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

void FlightReservationEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  v300 = v0;
  v235 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_49_3();
  v206 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39_0();
  v205 = v7;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  v271 = v9;
  OUTLINED_FUNCTION_78_0();
  v299 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v278 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v274 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v273 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  v272 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v301 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v270 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  v269 = v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_2();
  v303 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v29 = OUTLINED_FUNCTION_114(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v276 = v30;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  v277 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v302 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  v297 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  v296 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v290 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  v44 = &v204 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v204 - v46;
  v305 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v306 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  v304 = v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  v298 = v52;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  v307 = v54;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v55);
  v57 = &v204 - v56;
  v58 = type metadata accessor for LocalizedStringResource();
  v59 = OUTLINED_FUNCTION_114(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v234 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  v233 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_164_0();
  LocalizedStringResource.init(stringLiteral:)();
  v295 = 0x6E20746867696C46;
  v232 = EntityProperty<>.init(title:)();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  v294 = "Shipping Order Entity";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v231 = EntityProperty<>.init(title:)();
  v293 = "Boarding Date Time";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v230 = OUTLINED_FUNCTION_200_0();
  v292 = "Departure Airport Code";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v229 = EntityProperty<>.init(title:)();
  v291 = "Departure Airport Name";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v228 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  v227 = EntityProperty<>.init(title:)();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v289 = "Departure Terminal";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v226 = EntityProperty<>.init(title:)();
  v288 = "Departure Date Time";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v225 = OUTLINED_FUNCTION_200_0();
  v287 = "Arrival Airport Code";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v224 = EntityProperty<>.init(title:)();
  v285 = "Arrival Airport Name";
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4(v62, v63);
  v223 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  v222 = EntityProperty<>.init(title:)();
  v283 = "Arrival Terminal";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v221 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v286 = v61;
  v220 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_48_4();
  v219 = EntityProperty<>.init(title:)();
  v64 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v64 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v284 = v61;
  v218 = EntityProperty<>.init(title:)();
  v282 = "Arrival Date Time";
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4(v65, v66);
  v217 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_185_0();
  v216 = EntityProperty<>.init(title:)();
  v281 = "Booking Provider";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v215 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_183_0();
  v280 = v61;
  v214 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  v279 = v60;
  v213 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMd, &_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_88_4();
  v264 = v60;
  v212 = EntityProperty<>.init(title:)();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v263 = "Member ID Number";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v211 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v275 = v67;
  v210 = EntityProperty<>.init(title:)();
  v68 = FlightReservation.flightArrivalAirportCode.getter();
  v259 = v69;
  v260 = v68;
  v70 = FlightReservation.flightArrivalAirportName.getter();
  v261 = v71;
  v262 = v70;
  v308 = v57;
  FlightReservation.flightArrivalDateComponents.getter();
  FlightReservation.leg.getter(v47);
  v72 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_109_3(v47);
  if (v73)
  {
    outlined destroy of EagerResolutionService?(v47, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v257 = 0;
    v258 = 0;
  }

  else
  {
    v74 = (*&v47[*(v72 + 20)] + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
    OUTLINED_FUNCTION_89_0(v74, &v309);
    v75 = *v74;
    v257 = v74[1];
    v258 = v75;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v47, v76);
  }

  FlightReservation.leg.getter(v44);
  OUTLINED_FUNCTION_109_3(v44);
  v77 = v296;
  v78 = v290;
  if (v73)
  {
    outlined destroy of EagerResolutionService?(v44, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v244 = 0;
    v241 = 0;
  }

  else
  {
    v79 = (*&v44[*(v72 + 20)] + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
    OUTLINED_FUNCTION_89_0(v79, &v310);
    v80 = v79[1];
    v244 = *v79;
    v241 = v80;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v44, v81);
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v305);
  v85 = FlightReservation.flightBookingProvider.getter();
  v242 = v86;
  v243 = v85;
  v87 = FlightReservation.flightCarrier.getter();
  v245 = v88;
  v246 = v87;
  FlightReservation.flightCheckInUrl.getter();
  v89 = FlightReservation.flightConfirmationNumber.getter();
  v251 = v90;
  v252 = v89;
  v91 = FlightReservation.flightDepartureAirportCode.getter();
  v253 = v92;
  v254 = v91;
  v93 = FlightReservation.flightDepartureAirportName.getter();
  v255 = v94;
  v256 = v93;
  FlightReservation.flightDepartureDateComponents.getter();
  FlightReservation.leg.getter(v78);
  OUTLINED_FUNCTION_109_3(v78);
  v95 = v297;
  if (v73)
  {
    outlined destroy of EagerResolutionService?(v78, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v250 = 0;
    v247 = 0;
  }

  else
  {
    v96 = *(v78 + *(v72 + 20));
    OUTLINED_FUNCTION_89_0(v96 + 80, &v311);
    v97 = *(v96 + 88);
    v250 = *(v96 + 80);
    v247 = v97;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v78, v98);
  }

  FlightReservation.leg.getter(v77);
  OUTLINED_FUNCTION_109_3(v77);
  if (v73)
  {
    outlined destroy of EagerResolutionService?(v77, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v238 = 0;
    v239 = 0;
  }

  else
  {
    v99 = *(v77 + *(v72 + 20));
    OUTLINED_FUNCTION_89_0(v99 + 64, &v312);
    v100 = *(v99 + 64);
    v238 = *(v99 + 72);
    v239 = v100;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v77, v101);
  }

  v102 = FlightReservation.flightDesignator.getter();
  v236 = v103;
  v237 = v102;
  v104 = ShippingOrder.eventType.getter();
  v265 = v105;
  v266 = v104;
  v267 = FlightReservation.flightPassengerNames.getter();
  v268 = FlightReservation.flightPassengerSeatNumbers.getter();
  FlightReservation.leg.getter(v95);
  OUTLINED_FUNCTION_109_3(v95);
  if (v73)
  {
    outlined destroy of EagerResolutionService?(v95, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v107 = 0;
    v108 = 1;
  }

  else
  {
    v106 = *(v95 + *(v72 + 20));
    OUTLINED_FUNCTION_89_0(v106 + 16, &v313);
    v107 = *(v106 + 16);
    v108 = *(v106 + 24);
    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v95, v109);
  }

  v314 = v107;
  LOBYTE(v315) = v108;
  v110 = String.init<A>(describing:)();
  v248 = v111;
  v249 = v110;
  FlightReservation.flightCostAmount.getter();
  if ((v112 & 0x100000000) != 0 || (FlightReservation.flightCostCurrency.getter(), !v113))
  {
    v114 = 1;
  }

  else
  {
    IntentCurrencyAmount.init(amount:currencyCode:)();
    v114 = 0;
  }

  v115 = type metadata accessor for IntentCurrencyAmount();
  __swift_storeEnumTagSinglePayload(v301, v114, 1, v115);
  v204 = COERCE_DOUBLE(FlightReservation.flightDuration.getter());
  v240 = v116;
  LocalizedStringResource.init(stringLiteral:)();
  v297 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  v296 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v295 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v294 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v293 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v292 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v291 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  v290 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v289 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v117 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v118 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4(v119, v120);
  v288 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  v287 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v121 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v286 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_48_4();
  v285 = EntityProperty<>.init(title:)();
  v122 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v122 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v284 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4(v123, v124);
  v283 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_185_0();
  v282 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v281 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_183_0();
  v280 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  v209 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  v279 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v208 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v207 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_5(v259);
  v263 = v117;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v261);
  v262 = v118;
  EntityProperty.wrappedValue.setter();
  v125 = v306;
  v126 = *(v306 + 16);
  v264 = v306 + 16;
  v127 = v298;
  v128 = v305;
  v126(v298, v308, v305);
  v129 = OUTLINED_FUNCTION_196_1();
  (v126)(v129);
  v261 = v121;
  EntityProperty.wrappedValue.setter();
  v275 = *(v125 + 8);
  v275(v127, v128);
  OUTLINED_FUNCTION_41_5(v257);
  EntityProperty.wrappedValue.setter();
  v314 = v244;
  v315 = v241;
  EntityProperty.wrappedValue.setter();
  v130 = v277;
  OUTLINED_FUNCTION_179_1();
  outlined init with copy of Date?(v131, v132, v133, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_177_1(v130);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v130);
  OUTLINED_FUNCTION_41_5(v242);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v245);
  EntityProperty.wrappedValue.setter();
  v134 = v269;
  OUTLINED_FUNCTION_179_1();
  outlined init with copy of Date?(v135, v136, v137, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_177_1(v134);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v134);
  OUTLINED_FUNCTION_41_5(v251);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v253);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v255);
  EntityProperty.wrappedValue.setter();
  v126(v127, v307, v128);
  v138 = OUTLINED_FUNCTION_196_1();
  v270 = v126;
  (v126)(v138);
  v139 = v275;
  EntityProperty.wrappedValue.setter();
  v306 = v125 + 8;
  v139(v127, v128);
  v314 = v250;
  v315 = v247;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v238);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v236);
  EntityProperty.wrappedValue.setter();
  v140 = v271;
  DateComponents.calendar.getter();
  v141 = v299;
  if (__swift_getEnumTagSinglePayload(v140, 1, v299) == 1)
  {
    v142 = v274;
    static Calendar.current.getter();
    if (__swift_getEnumTagSinglePayload(v140, 1, v141) != 1)
    {
      outlined destroy of EagerResolutionService?(v140, &_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
    }
  }

  else
  {
    v142 = v274;
    (*(v278 + 32))(v274, v140, v141);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v143 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14();
  v145 = v144;
  v147 = *(v146 + 72);
  v148 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_25DBC8930;
  v150 = v149 + v148;
  v151 = *(v145 + 104);
  v151(v150, *MEMORY[0x277CC9968], v143);
  v151(v150 + v147, *MEMORY[0x277CC9980], v143);
  v151(v150 + 2 * v147, *MEMORY[0x277CC99A0], v143);
  v151(v150 + 3 * v147, *MEMORY[0x277CC99A8], v143);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
  v152 = v298;
  Calendar.dateComponents(_:from:to:)();

  v153 = OUTLINED_FUNCTION_196_1();
  v154 = v305;
  v270(v153);
  EntityProperty.wrappedValue.setter();
  v139(v152, v154);
  OUTLINED_FUNCTION_41_5(v265);
  EntityProperty.wrappedValue.setter();
  v314 = v267;
  EntityProperty.wrappedValue.setter();
  v314 = v268;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v248);
  EntityProperty.wrappedValue.setter();
  v155 = v301;
  v156 = v272;
  outlined init with copy of Date?(v301, v272, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
  OUTLINED_FUNCTION_177_1(v156);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v156);
  if (v240)
  {
    type metadata accessor for FlightReservation();
    OUTLINED_FUNCTION_2();
    (*(v157 + 8))(v300);
    (*(v278 + 8))(v142, v299);
    outlined destroy of EagerResolutionService?(v155, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v139(v307, v154);
    outlined destroy of EagerResolutionService?(v303, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of EagerResolutionService?(v302, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v139(v308, v154);
    OUTLINED_FUNCTION_70_5();
    v316 = xmmword_25DBC9410;
    outlined destroy of FlightReservationEntity(&v314);
    v158 = v209;
LABEL_31:
    v190 = v235;
    v191 = v296;
    *v235 = v297;
    v190[1] = v191;
    v192 = v294;
    v190[2] = v295;
    v190[3] = v192;
    v193 = v292;
    v190[4] = v293;
    v190[5] = v193;
    v194 = v290;
    v190[6] = v291;
    v190[7] = v194;
    v195 = v262;
    v196 = v263;
    v190[8] = v289;
    v190[9] = v196;
    v190[10] = v195;
    v197 = v287;
    v190[11] = v288;
    v190[12] = v197;
    v198 = v286;
    v190[13] = v261;
    v190[14] = v198;
    v199 = v284;
    v190[15] = v285;
    v190[16] = v199;
    v200 = v282;
    v190[17] = v283;
    v190[18] = v200;
    v201 = v280;
    v190[19] = v281;
    v190[20] = v201;
    v202 = v279;
    v190[21] = v158;
    v190[22] = v202;
    v203 = v207;
    v190[23] = v208;
    v190[24] = v203;
    *(v190 + 25) = xmmword_25DBC9410;
    OUTLINED_FUNCTION_148();
    return;
  }

  v159 = v205;
  OUTLINED_FUNCTION_92();
  v160 = v299;
  OUTLINED_FUNCTION_237_0(v161, v162, v163, v299);
  type metadata accessor for TimeZone();
  v164 = v206;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  v169 = v300;
  if ((~*&v204 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v204 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_75_3();
  if (v170)
  {
    OUTLINED_FUNCTION_1_30();
    v171 = v277;
    OUTLINED_FUNCTION_43_7(v159, v164, v172, v173, v174, v175, v176, v177, *&v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v154);
    outlined init with copy of Date?(v171, v276, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v181 = v209;
    EntityProperty.wrappedValue.setter();
    type metadata accessor for FlightReservation();
    OUTLINED_FUNCTION_2();
    (*(v182 + 8))(v169);
    v158 = v181;
    OUTLINED_FUNCTION_104_3();
    outlined destroy of EagerResolutionService?(v183, v184, v185);
    (*(v278 + 8))(v142, v160);
    outlined destroy of EagerResolutionService?(v301, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v186 = v275;
    v275(v307, v154);
    outlined destroy of EagerResolutionService?(v303, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_104_3();
    outlined destroy of EagerResolutionService?(v187, v188, v189);
    v186(v308, v154);
    OUTLINED_FUNCTION_70_5();
    v316 = xmmword_25DBC9410;
    outlined destroy of FlightReservationEntity(&v314);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
}

void HotelReservationEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_85_4();
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  LocalizedStringResource.init(stringLiteral:)();
  v58 = OUTLINED_FUNCTION_264();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_223_0();
  v55 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_223_0();
  v54 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v15 = OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_97_3(v15);
  LocalizedStringResource.init(stringLiteral:)();
  v53 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  v52 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v51 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v49 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_39_8(0x4E206D6F6F52);
  LocalizedStringResource.init(stringLiteral:)();
  v47 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v45 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  v43 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  v41 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v39 = EntityProperty<>.init(title:)();
  v16 = ShippingOrder.eventType.getter();
  v37 = v17;
  v38 = v16;
  v18 = HotelReservation.hotelUnderName.getter();
  v35 = v19;
  v36 = v18;
  v20 = HotelReservation.hotelReservationForName.getter();
  v33 = v21;
  v34 = v20;
  v22 = HotelReservation.hotelReservationForAddress.getter();
  v24 = v23;
  HotelReservation.hotelCheckinDateComponents.getter();
  HotelReservation.hotelCheckoutDateComponents.getter();
  v25 = HotelReservation.hotelReservationForTelephone.getter();
  v27 = v26;
  HotelReservation.hotelModifyReservationUrl.getter();
  URL.init(string:)();

  HotelReservationEntity.init(confirmationNumber:guest:bookingProvider:businessName:roomNumbers:address:checkInDateTime:checkOutDateTime:phoneNumber:url:)(v38, v37, v36, v35, 0, 0, v34, v33, MEMORY[0x277D84F90], v22, v24, v0, v11, v25, v27, v59, v33, v34, v35, v36, v37, v38, v39, v41, v43, v45, v47, v49);
  type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_2();
  (*(v28 + 8))(v2);
  v61[0] = v58;
  v61[1] = v57;
  v61[2] = v56;
  v61[3] = v55;
  v61[4] = v54;
  v61[5] = v53;
  v61[6] = v52;
  v61[7] = v51;
  v61[8] = v50;
  v61[9] = v48;
  v61[10] = v46;
  v61[11] = v44;
  v61[12] = v42;
  v61[13] = v40;
  v62 = xmmword_25DBC9410;
  outlined destroy of HotelReservationEntity(v61);
  v29 = v64;
  *v60 = v63;
  v60[1] = v29;
  v30 = v66;
  v60[2] = v65;
  v60[3] = v30;
  v31 = v68;
  v60[4] = v67;
  v60[5] = v31;
  v32 = v70;
  v60[6] = v69;
  v60[7] = v32;
  OUTLINED_FUNCTION_148();
}

void RestaurantReservationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v137 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v29);
  v30 = type metadata accessor for LocalizedStringResource();
  v31 = OUTLINED_FUNCTION_114(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v32 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_163_0(v32);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v33 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_159_1(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_164_0();
  LocalizedStringResource.init(stringLiteral:)();
  v34 = EntityProperty<>.init(title:)();
  v35 = OUTLINED_FUNCTION_144_0(v34);
  OUTLINED_FUNCTION_57_4(v35, 0x800000025DBF1330);
  v36 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_102_4(v36, &a12);
  LocalizedStringResource.init(stringLiteral:)();
  v37 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_102_4(v37, &a11);
  LocalizedStringResource.init(stringLiteral:)();
  v133 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198_0();
  v38 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_102_4(v38, &v151);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v132[0] = OUTLINED_FUNCTION_189_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v131 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v39 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v40 = EntityProperty<>.init(title:)();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v42 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v43 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  v128[0] = OUTLINED_FUNCTION_189_1();
  v44 = ShippingOrder.eventType.getter();
  OUTLINED_FUNCTION_155_1(v44);
  HotelReservation.hotelUnderName.getter();
  v45 = RestaurantReservation.restaurantCustomerNames.getter();
  OUTLINED_FUNCTION_114_3(v45);
  v46 = RestaurantReservation.restaurantPartySize.getter();
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = HIBYTE(v48) & 0xF;
  v50 = v46 & 0xFFFFFFFFFFFFLL;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v48) & 0xF;
  }

  else
  {
    v51 = v46 & 0xFFFFFFFFFFFFLL;
  }

  v130[1] = v39;
  v130[0] = v40;
  v129 = v42;
  v128[1] = v43;
  if (!v51)
  {

    v126 = 0;
    LODWORD(v138) = 1;
LABEL_77:
    v71 = RestaurantReservation.restaurantReservationForName.getter();
    OUTLINED_FUNCTION_245_0(v71);
    v72 = RestaurantReservation.restaurantReservationForAddress.getter();
    OUTLINED_FUNCTION_135_2(v72, v73);
    v74 = RestaurantReservation.restaurantReservationForTelephone.getter();
    OUTLINED_FUNCTION_80_5(v74, v75);
    v76 = v132[2];
    RestaurantReservation.restaurantStartDateComponents.getter();
    v77 = RestaurantReservation.restaurantMealType.getter();
    OUTLINED_FUNCTION_137_1(v77, v78);
    v79 = RestaurantReservation.restaurantStatus.getter();
    OUTLINED_FUNCTION_197_1(v79);
    *(v81 - 256) = v80;
    v82 = HotelReservation.hotelUnderName.getter();
    OUTLINED_FUNCTION_138_1(v82, v83);
    OUTLINED_FUNCTION_255_0();
    LocalizedStringResource.init(stringLiteral:)();
    v84 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v85 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v85, v130);
    OUTLINED_FUNCTION_33_8();
    LocalizedStringResource.init(stringLiteral:)();
    v119 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_57_4(v86, v87);
    v88 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v88, &v138 + 8);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v89 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v89, &v131);
    LocalizedStringResource.init(stringLiteral:)();
    v90 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v90, v149);
    OUTLINED_FUNCTION_198_0();
    v91 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v91, v128);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v92 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v92, &v129);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v93 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v93, &v146);
    OUTLINED_FUNCTION_60_4();
    LocalizedStringResource.init(stringLiteral:)();
    v94 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_160_1(v94);
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v95 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v95, &v148);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v96 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v96, v147);
    OUTLINED_FUNCTION_195_1();
    LocalizedStringResource.init(stringLiteral:)();
    v97 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_180_1(v97);
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_63_5(&v139);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v141);
    EntityProperty.wrappedValue.setter();
    v142 = v127;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(v132);
    EntityProperty.wrappedValue.setter();
    v142 = v126;
    LOBYTE(v143) = v138 & 1;
    EntityProperty.wrappedValue.setter();
    v142 = 0;
    v143 = 0;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v133);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v134);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v135);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_251_0();
    outlined init with copy of Date?(v98, v99, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of Date?(v100, v101, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(v97, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_63_5(&v136);
    EntityProperty.wrappedValue.setter();
    v140 = v125;
    v141 = v124;
    EntityProperty.wrappedValue.setter();
    type metadata accessor for RestaurantReservation();
    OUTLINED_FUNCTION_2();
    (*(v102 + 8))(v23);
    outlined destroy of EagerResolutionService?(v76, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_127_3();
    v142 = v104;
    v143 = v103;
    OUTLINED_FUNCTION_125_2();
    v144 = v106;
    v145 = v105;
    OUTLINED_FUNCTION_123_3();
    v146 = v108;
    v147[0] = v107;
    OUTLINED_FUNCTION_250_0();
    v147[1] = v110;
    v148 = v109;
    OUTLINED_FUNCTION_122_2();
    v149[0] = v112;
    v149[1] = v111;
    OUTLINED_FUNCTION_128_3();
    v149[2] = v114;
    v149[3] = v113;
    OUTLINED_FUNCTION_249_0();
    v149[4] = v115;
    v149[5] = v128[0];
    v138 = xmmword_25DBC9410;
    v150 = xmmword_25DBC9410;
    outlined destroy of RestaurantReservationEntity(&v142);
    v116 = v137;
    *v137 = v84;
    v116[1] = v121;
    v116[2] = v119;
    v116[3] = "Arrival Date Time";
    v116[4] = v123;
    v116[5] = "Checkout Date Time";
    v116[6] = v118;
    v116[7] = v120;
    v116[8] = v122;
    v116[9] = 0x73736572646441;
    v116[10] = "Booking Provider";
    v116[11] = 0x73736572646441;
    v116[12] = v41;
    v116[13] = "Member ID Number";
    *(v116 + 7) = v138;
    OUTLINED_FUNCTION_148();
    return;
  }

  if ((v48 & 0x1000000000000000) != 0)
  {
    v54 = specialized _parseInteger<A, B>(ascii:radix:)(v46, v48, 10);
    LODWORD(v138) = v117;
    goto LABEL_73;
  }

  if ((v48 & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v52 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v52 = _StringObject.sharedUTF8.getter();
    }

    v53 = *v52;
    if (v53 == 43)
    {
      if (v50 >= 1)
      {
        if (v50 != 1)
        {
          v54 = 0;
          if (v52)
          {
            while (1)
            {
              OUTLINED_FUNCTION_91_4();
              if (!v56 & v55)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_51_6();
              if (!v56)
              {
                goto LABEL_71;
              }

              v54 = v63 + v62;
              if (__OFADD__(v63, v62))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_204_1();
              if (v56)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_83;
    }

    if (v53 != 45)
    {
      if (v50)
      {
        v54 = 0;
        if (v52)
        {
          while (1)
          {
            v66 = *v52 - 48;
            if (v66 > 9)
            {
              goto LABEL_71;
            }

            v67 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              goto LABEL_71;
            }

            v54 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_71;
            }

            ++v52;
            if (!--v50)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v54 = 0;
      v59 = 1;
      goto LABEL_72;
    }

    if (v50 >= 1)
    {
      if (v50 != 1)
      {
        v54 = 0;
        if (v52)
        {
          while (1)
          {
            OUTLINED_FUNCTION_91_4();
            if (!v56 & v55)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_51_6();
            if (!v56)
            {
              goto LABEL_71;
            }

            v54 = v58 - v57;
            if (__OFSUB__(v58, v57))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_204_1();
            if (v56)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v59 = 0;
LABEL_72:
        LOBYTE(v140) = v59;
        LODWORD(v138) = v59;
LABEL_73:

        if (v138)
        {
          v70 = 0;
        }

        else
        {
          v70 = v54;
        }

        v126 = v70;
        goto LABEL_77;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v142 = v46;
  v143 = v48 & 0xFFFFFFFFFFFFFFLL;
  if (v46 != 43)
  {
    if (v46 != 45)
    {
      if (v49)
      {
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v56 & v55)
          {
            break;
          }

          OUTLINED_FUNCTION_51_6();
          if (!v56)
          {
            break;
          }

          v54 = v69 + v68;
          if (__OFADD__(v69, v68))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v56)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        OUTLINED_FUNCTION_239();
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v56 & v55)
          {
            break;
          }

          OUTLINED_FUNCTION_51_6();
          if (!v56)
          {
            break;
          }

          v54 = v61 - v60;
          if (__OFSUB__(v61, v60))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v56)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      OUTLINED_FUNCTION_239();
      while (1)
      {
        OUTLINED_FUNCTION_91_4();
        if (!v56 & v55)
        {
          break;
        }

        OUTLINED_FUNCTION_51_6();
        if (!v56)
        {
          break;
        }

        v54 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          break;
        }

        OUTLINED_FUNCTION_204_1();
        if (v56)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_84:
  __break(1u);
}

void VehicleReservationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v27);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v159 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v35 = OUTLINED_FUNCTION_114(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_85_4();
  v40 = type metadata accessor for LocalizedStringResource();
  v41 = OUTLINED_FUNCTION_114(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_36_8("Arrival Date Time");
  OUTLINED_FUNCTION_57_4(v42, v43);
  v44 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_56_6(v44, &v212);
  v192 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Reservation Under Name");
  OUTLINED_FUNCTION_57_4(v45, v46);
  v47 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v47);
  OUTLINED_FUNCTION_36_8("Drop-off Address");
  LocalizedStringResource.init(stringLiteral:)();
  v191[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_8("Drop-off Business Name");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v48 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v48);
  OUTLINED_FUNCTION_36_8("Drop-off Date Time");
  LocalizedStringResource.init(stringLiteral:)();
  v49 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v49, v209);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v50 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v50, &v208);
  OUTLINED_FUNCTION_168_1();
  v190[0] = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_36_8("Drop-off Phone Number");
  LocalizedStringResource.init(stringLiteral:)();
  v51 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_145_1(v51);
  OUTLINED_FUNCTION_36_8("Pick-up Business Name");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v52);
  OUTLINED_FUNCTION_36_8("Pick-up Date Time");
  LocalizedStringResource.init(stringLiteral:)();
  v53 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v53, v207);
  OUTLINED_FUNCTION_178_1();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v54, &v206);
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v55, &v205);
  OUTLINED_FUNCTION_166_0();
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_180_1(v56);
  OUTLINED_FUNCTION_36_8("Booking Provider");
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_114_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_8("Member ID Number");
  LocalizedStringResource.init(stringLiteral:)();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v59, v204);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v185 = v58;
  v60 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_162_1(v60);
  v61 = Appointment.startLocationAddress.getter();
  OUTLINED_FUNCTION_138_1(v61, v62);
  v63 = RentalCarReservation.totalCost.getter();
  OUTLINED_FUNCTION_234_0(v63, v64);
  v65 = RentalCarReservation.endLocationAddress.getter();
  OUTLINED_FUNCTION_135_2(v65, v66);
  v67 = RentalCarReservation.endLocationName.getter();
  OUTLINED_FUNCTION_80_5(v67, v68);
  v69 = type metadata accessor for DateComponents();
  v197 = v20;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v73 = RentalCarReservation.endLocationTelephone.getter();
  OUTLINED_FUNCTION_148_0(v73);
  OUTLINED_FUNCTION_154_0(v74, v200);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v75, v76, v77, v78);
  type metadata accessor for TimeZone();
  v79 = v196[1];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = RentalCarReservation.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v84);
  OUTLINED_FUNCTION_93_4();
  if (!v87 && !v85)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v88)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_43_7(v33, v79, v89, v90, v91, v92, v93, v94, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v69);
    v166 = RentalCarReservation.startLocationAddress.getter();
    v165 = v98;
    v168 = RentalCarReservation.startLocationName.getter();
    v167 = v99;
    v100 = OUTLINED_FUNCTION_62_6(&a16);
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v69);
    v103 = RentalCarReservation.endLocationTelephone.getter();
    OUTLINED_FUNCTION_242_0(v103, v104);
    v173 = TicketedShow.startLocationAddress.getter();
    v172 = v105;
    v175 = RentalCarReservation.status.getter();
    v174 = v106;
    v177 = Appointment.startLocationName.getter();
    v176 = v107;
    OUTLINED_FUNCTION_26_6();
    OUTLINED_FUNCTION_57_4(v108, v109);
    v110 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_56_6(v110, &v186);
    v163 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6();
    OUTLINED_FUNCTION_57_4(v111, v112);
    v113 = EntityProperty<>.init(title:)();
    v114 = v178;
    v169 = v24;
    v115 = v113;
    v162 = v113;
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v116 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_159_1(v116);
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v117 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_144_0(v117);
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v118 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_59_5(v118, &a12);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v119 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v119, &a11);
    OUTLINED_FUNCTION_168_1();
    v194[1] = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v194[0] = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v161 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v120 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_59_5(v120, &v199 + 8);
    OUTLINED_FUNCTION_178_1();
    v121 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v121, &v199);
    OUTLINED_FUNCTION_60_4();
    LocalizedStringResource.init(stringLiteral:)();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v122, v184);
    OUTLINED_FUNCTION_166_0();
    v159 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v181 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6();
    LocalizedStringResource.init(stringLiteral:)();
    v123 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v123, &v201);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v124 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_155_1(v124);
    OUTLINED_FUNCTION_45_6(v193);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v194);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(&v195);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v196);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_218_0(v197, v114);
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_218_0(v125, v126);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_170_1(v114);
    OUTLINED_FUNCTION_45_6(v200);
    OUTLINED_FUNCTION_229_0();
    v127 = OUTLINED_FUNCTION_153_1();
    OUTLINED_FUNCTION_218_0(v127, v114);
    v128 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_218_0(v128, v129);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_170_1(v114);
    OUTLINED_FUNCTION_45_6(&v187);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(&v188);
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    v130 = v198;
    OUTLINED_FUNCTION_218_0(v198, v114);
    v131 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_218_0(v131, v132);
    v133 = v161;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_170_1(v114);
    OUTLINED_FUNCTION_45_6(&v189);
    v134 = v183;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v190);
    v135 = v182;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v191);
    OUTLINED_FUNCTION_240_0();
    EntityProperty.wrappedValue.setter();
    v201 = 0;
    v202 = 0;
    v136 = v159;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_253_0();
    v200[0] = v138;
    v200[1] = v137;
    v139 = v181;
    EntityProperty.wrappedValue.setter();
    type metadata accessor for RentalCarReservation();
    OUTLINED_FUNCTION_2();
    (*(v140 + 8))(v169);
    OUTLINED_FUNCTION_170_1(v130);
    v141 = OUTLINED_FUNCTION_153_1();
    OUTLINED_FUNCTION_170_1(v141);
    OUTLINED_FUNCTION_170_1(v197);
    v201 = v193[1];
    v202 = v192;
    OUTLINED_FUNCTION_87_4(&v210);
    v204[1] = v191[1];
    v204[2] = v191[0];
    v205 = v190[1];
    v206 = v190[0];
    OUTLINED_FUNCTION_126_3();
    v207[0] = v143;
    v207[1] = v142;
    OUTLINED_FUNCTION_84_3();
    v207[2] = v145;
    v207[3] = v144;
    OUTLINED_FUNCTION_133_2();
    v208 = v147;
    v209[0] = v146;
    OUTLINED_FUNCTION_129_3();
    v209[1] = v149;
    v210 = v148;
    OUTLINED_FUNCTION_247_0(&v203);
    v199 = xmmword_25DBC9410;
    v211 = xmmword_25DBC9410;
    outlined destroy of VehicleReservationEntity(&v201);
    v150 = v163;
    *v26 = v164;
    *(v26 + 8) = v150;
    OUTLINED_FUNCTION_127_3();
    *(v26 + 16) = v152;
    *(v26 + 24) = v151;
    OUTLINED_FUNCTION_125_2();
    *(v26 + 32) = v154;
    *(v26 + 40) = v153;
    OUTLINED_FUNCTION_123_3();
    *(v26 + 48) = v156;
    *(v26 + 56) = v155;
    OUTLINED_FUNCTION_213_0();
    *(v26 + 64) = v157;
    *(v26 + 72) = v133;
    *(v26 + 80) = v134;
    *(v26 + 88) = v135;
    *(v26 + 96) = v115;
    *(v26 + 104) = v136;
    v158 = v184[1];
    *(v26 + 112) = v139;
    *(v26 + 120) = v158;
    *(v26 + 128) = v185;
    *(v26 + 136) = v199;
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void TicketedTransportationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v27);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  v179 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_49_3();
  v182[0] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  v37 = &v145 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  *&v181 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  v42 = &v145 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_85_4();
  v44 = type metadata accessor for LocalizedStringResource();
  v45 = OUTLINED_FUNCTION_114(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  v170 = "Pick-up Phone Number";
  OUTLINED_FUNCTION_65_5();
  v177 = OUTLINED_FUNCTION_224_0();
  v169 = "Arrival Station Name";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_163_0(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_81_6();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  v47 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_159_1(v47);
  v166 = "Arrival Station Address";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v48 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_144_0(v48);
  v165 = "Departure Station Name";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v49 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v49, &a12);
  v50 = OUTLINED_FUNCTION_82_5();
  OUTLINED_FUNCTION_256_0(v50);
  v51 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_101_3(v51, &a11);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v52, &a10);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v172 = OUTLINED_FUNCTION_224_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_48_4();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v54, &v190);
  v55 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v55 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v168 = v53;
  v171 = EntityProperty<>.init(title:)();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v160 = "Member ID Number";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v57, &v189);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v167 = v56;
  v58 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v58);
  v59 = TicketedShow.startLocationName.getter();
  OUTLINED_FUNCTION_162_1(v59);
  v156 = v60;
  v61 = TicketedShow.startLocationAddress.getter();
  OUTLINED_FUNCTION_114_3(v61);
  OUTLINED_FUNCTION_154_0(v62, v182);
  v63 = type metadata accessor for DateComponents();
  v180 = v20;
  v64 = v179;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v63);
  v68 = TicketedTransportation.startLocationName.getter();
  OUTLINED_FUNCTION_150_1(v68);
  v161 = v69;
  v70 = TicketedTransportation.startLocationAddress.getter();
  OUTLINED_FUNCTION_156_1(v70);
  v163 = v71;
  v178 = v42;
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v72, v73, v74, v63);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v75, v76, v77, v78);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = TicketedShow.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v83);
  OUTLINED_FUNCTION_93_4();
  if (!v86 && !v84)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_75_3();
  if (!v87)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_43_7(v182[0], v64, v88, v89, v90, v91, v92, v93, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v63);
  v97 = Appointment.eventSubType.getter();
  OUTLINED_FUNCTION_148_0(v97);
  v153 = v98;
  v155 = v24;
  v99 = TicketedTransportation.customerNames.getter();
  v100 = MEMORY[0x277D84F90];
  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = MEMORY[0x277D84F90];
  }

  v152 = v101;
  v102 = TicketedShow.seatNumbers.getter();
  if (v102)
  {
    v103 = v102;
  }

  else
  {
    v103 = v100;
  }

  v151 = v103;
  OUTLINED_FUNCTION_65_5();
  v150 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_71_5();
  LocalizedStringResource.init(stringLiteral:)();
  v104 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v104, &v176);
  OUTLINED_FUNCTION_81_6();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  v182[0] = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_71_5();
  LocalizedStringResource.init(stringLiteral:)();
  v179 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_71_5();
  LocalizedStringResource.init(stringLiteral:)();
  v105 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v105, &v173);
  v106 = OUTLINED_FUNCTION_82_5();
  OUTLINED_FUNCTION_256_0(v106);
  v107 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_101_3(v107, &v174);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v108 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v108, &v186);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v109 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_101_3(v109, v187);
  OUTLINED_FUNCTION_48_4();
  v110 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v110, &v175);
  v111 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v111 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v168 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_71_5();
  LocalizedStringResource.init(stringLiteral:)();
  v112 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v112, v188);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v113 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v113);
  OUTLINED_FUNCTION_94_3(&v181 + 8);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_94_3(v182);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of Date?(v180, v37, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v114, v115, v116, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v37);
  OUTLINED_FUNCTION_94_3(v184);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_94_3(v185);
  EntityProperty.wrappedValue.setter();
  v117 = v178;
  outlined init with copy of Date?(v178, v37, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v118, v119, v120, &_s10Foundation14DateComponentsVSgMR);
  v121 = v147;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v37);
  v122 = v181;
  v123 = OUTLINED_FUNCTION_1_28();
  outlined init with copy of Date?(v123, v124, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v125, v126, v127, &_s10Foundation14DateComponentsVSgMR);
  v128 = v165;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v37);
  OUTLINED_FUNCTION_94_3(&v179);
  v129 = v166;
  EntityProperty.wrappedValue.setter();
  v183 = v152;
  v130 = v148;
  EntityProperty.wrappedValue.setter();
  v182[1] = v151;
  v131 = v168;
  EntityProperty.wrappedValue.setter();
  type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_2();
  (*(v132 + 8))(v155);
  OUTLINED_FUNCTION_221_0(v122);
  OUTLINED_FUNCTION_221_0(v117);
  OUTLINED_FUNCTION_221_0(v180);
  v183 = v177;
  v184[0] = v176;
  v184[1] = v175;
  v185[0] = v174;
  OUTLINED_FUNCTION_117_3();
  v185[1] = v134;
  v186 = v133;
  OUTLINED_FUNCTION_213_0();
  v187[0] = v136;
  v187[1] = v135;
  OUTLINED_FUNCTION_250_0();
  v187[2] = v138;
  v187[3] = v137;
  OUTLINED_FUNCTION_122_2();
  v188[0] = v140;
  v188[1] = v139;
  v181 = xmmword_25DBC9410;
  v189 = xmmword_25DBC9410;
  outlined destroy of TicketedTransportationEntity(&v183);
  v141 = v149;
  *v26 = v150;
  *(v26 + 8) = v141;
  v142 = v179;
  *(v26 + 16) = v182[0];
  *(v26 + 24) = v142;
  *(v26 + 32) = v146;
  *(v26 + 40) = v121;
  *(v26 + 48) = v128;
  *(v26 + 56) = v129;
  *(v26 + 64) = v130;
  *(v26 + 72) = v131;
  OUTLINED_FUNCTION_128_3();
  *(v26 + 80) = v144;
  *(v26 + 88) = v143;
  *(v26 + 96) = v181;
  OUTLINED_FUNCTION_148();
}

void TicketedShowEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v189 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v32);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_194_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v35 = OUTLINED_FUNCTION_114(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  *&v211 = v40;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for LocalizedStringResource();
  v42 = OUTLINED_FUNCTION_114(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v203[1] = OUTLINED_FUNCTION_259_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v45 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_167_0();
  OUTLINED_FUNCTION_108_2();
  v46 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v46, &v223);
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  v47 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v47);
  OUTLINED_FUNCTION_193_1("Departure Station Address");
  OUTLINED_FUNCTION_57_4(v48, v49);
  v50 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v50, v222);
  v51 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v51 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v207 = v44;
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v52, &v221);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_108_2();
  v53 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v53, &v220);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v54, &v219);
  v55 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_257_0(v55);
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_134_1();
  LocalizedStringResource.init(stringLiteral:)();
  v206 = v57;
  v58 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v58, &v215);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_108_2();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v59, v218);
  OUTLINED_FUNCTION_11_13();
  LocalizedStringResource.init(stringLiteral:)();
  v60 = OUTLINED_FUNCTION_259_0();
  OUTLINED_FUNCTION_73_4(v60, &v217);
  OUTLINED_FUNCTION_31_12();
  LocalizedStringResource.init(stringLiteral:)();
  v61 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_160_1(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_193_1("Member ID Number");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  v62 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v62, &v214);
  LocalizedStringResource.init(stringLiteral:)();
  v63 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_180_1(v63);
  v64 = Appointment.eventName.getter();
  OUTLINED_FUNCTION_80_5(v64, v65);
  v66 = Appointment.startLocationName.getter();
  OUTLINED_FUNCTION_137_1(v66, v67);
  v195 = TicketedShow.customerNames.getter();
  TicketedShow.startLocationName.getter();
  v68 = TicketedShow.startLocationAddress.getter();
  OUTLINED_FUNCTION_155_1(v68);
  v69 = TicketedShow.seatNumbers.getter();
  OUTLINED_FUNCTION_162_1(v69);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v70, v71, v72, v73);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = TicketedShow.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v78);
  OUTLINED_FUNCTION_93_4();
  if (!v81 && !v79)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v80 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v82)
  {
    OUTLINED_FUNCTION_1_30();
    v83 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_43_7(v83, v84, v85, v86, v87, v88, v89, v90, v163, v164, v166, v167, v169, v171, v173, v175, v177, v179, v181, v182, v183, v184, v185, v186, v187, v189, v191, v192, v193, v194);
    v91 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
    v165 = v23;
    TicketedShow.ticketType.getter();
    TicketedShow.ticketUrl.getter();
    v95 = TicketedShow.totalCost.getter();
    OUTLINED_FUNCTION_138_1(v95, v96);
    v97 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v91);
    v100 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v91);
    v103 = Appointment.eventSubType.getter();
    OUTLINED_FUNCTION_234_0(v103, v104);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v105 = OUTLINED_FUNCTION_259_0();
    OUTLINED_FUNCTION_73_4(v105, &a15);
    OUTLINED_FUNCTION_33_8();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_240_0();
    v106 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v106, &a14);
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_108_2();
    v107 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v107, &v201);
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_23_8();
    LocalizedStringResource.init(stringLiteral:)();
    v108 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_144_0(v108);
    OUTLINED_FUNCTION_71_5();
    OUTLINED_FUNCTION_57_4(v109, v110);
    v111 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v111, &v199);
    v112 = OUTLINED_FUNCTION_184_1();
    OUTLINED_FUNCTION_39_8(v112 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
    LocalizedStringResource.init(stringLiteral:)();
    v113 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v113, &v198);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_108_2();
    v114 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v114, &v200);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v115 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v115, &v202);
    v116 = OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_257_0(v116);
    v117 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v117, &a12);
    OUTLINED_FUNCTION_134_1();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_157_1();
    v118 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v118, &a11);
    OUTLINED_FUNCTION_88_4();
    OUTLINED_FUNCTION_108_2();
    v119 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v119, &a10);
    OUTLINED_FUNCTION_11_13();
    LocalizedStringResource.init(stringLiteral:)();
    v120 = OUTLINED_FUNCTION_259_0();
    OUTLINED_FUNCTION_73_4(v120, &v197);
    OUTLINED_FUNCTION_31_12();
    LocalizedStringResource.init(stringLiteral:)();
    v168 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_71_5();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_235_0();
    v121 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v121, &v211 + 8);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v178 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_34_12(&v208);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(v209);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_211_0(v195);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v210);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_34_12(&v212);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_211_0(v196);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_201_1(v211, v188);
    OUTLINED_FUNCTION_172_1(v188);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v122, v123, v124);
    OUTLINED_FUNCTION_34_12(v203);
    OUTLINED_FUNCTION_229_0();
    v125 = v209[1];
    OUTLINED_FUNCTION_252_0();
    outlined init with copy of Date?(v126, v127, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of Date?(v128, v129, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_230();
    outlined destroy of EagerResolutionService?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v204);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_201_1(v209[2], v188);
    OUTLINED_FUNCTION_172_1(v188);
    OUTLINED_FUNCTION_240_0();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v130, v131, v132);
    OUTLINED_FUNCTION_201_1(v210, v188);
    OUTLINED_FUNCTION_172_1(v188);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v133, v134, v135);
    OUTLINED_FUNCTION_45_6(&v205);
    EntityProperty.wrappedValue.setter();
    type metadata accessor for TicketedShow();
    OUTLINED_FUNCTION_2();
    (*(v136 + 8))(v165);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v137, v138, v139);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v140, v141, v142);
    outlined destroy of EagerResolutionService?(v125, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v143, v144, v145);
    OUTLINED_FUNCTION_87_4(v224);
    OUTLINED_FUNCTION_128_3();
    v215 = v147;
    v216[0] = v146;
    OUTLINED_FUNCTION_249_0();
    v216[1] = v148;
    v217 = v200;
    OUTLINED_FUNCTION_136_2();
    v218[0] = v150;
    v218[1] = v149;
    OUTLINED_FUNCTION_192_1();
    v219 = v152;
    v220 = v151;
    OUTLINED_FUNCTION_84_3();
    v221 = v154;
    v222[0] = v153;
    OUTLINED_FUNCTION_129_3();
    v222[1] = v156;
    v223 = v155;
    OUTLINED_FUNCTION_247_0(v216);
    v211 = xmmword_25DBC9410;
    *&v224[8] = xmmword_25DBC9410;
    outlined destroy of TicketedShowEntity(&v213);
    OUTLINED_FUNCTION_127_3();
    *v190 = v158;
    *(v190 + 8) = v157;
    v159 = v208;
    *(v190 + 16) = v176;
    *(v190 + 24) = v159;
    *(v190 + 32) = v172;
    *(v190 + 40) = v170;
    *(v190 + 48) = v174;
    *(v190 + 56) = v180;
    OUTLINED_FUNCTION_117_3();
    *(v190 + 64) = v161;
    *(v190 + 72) = v160;
    *(v190 + 80) = v206;
    *(v190 + 88) = &_s10Foundation3URLVSgMd;
    OUTLINED_FUNCTION_182_1();
    *(v190 + 96) = v168;
    *(v190 + 104) = v162;
    *(v190 + 112) = v178;
    *(v190 + 120) = v211;
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void GenericEventEntity.init(appointment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  OUTLINED_FUNCTION_161_0(v26);
  OUTLINED_FUNCTION_246_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v28 = OUTLINED_FUNCTION_114(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = OUTLINED_FUNCTION_114(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  *&v213 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v37);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v177 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v41);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_194_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v44 = OUTLINED_FUNCTION_114(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  v212 = v48;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  v211 = v50;
  OUTLINED_FUNCTION_78_0();
  v51 = type metadata accessor for LocalizedStringResource();
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_205_1();
  *(v53 - 256) = v20;
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v55 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_56_6(v55, v219);
  v199 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v56 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_59_5(v56, v218);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_1(v59);
  v60 = OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_152_1(v60);
  v61 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_150_1(v61);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v62 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v62, v217);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v63 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v63, &v216);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v64 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_114_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  v66 = OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2(v66);
  v206[0] = v65;
  v67 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v67, v215);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v68 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_59_5(v68, &v214);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v69 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_155_1(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_8("Member ID Number");
  OUTLINED_FUNCTION_225_0(v71, v72);
  v73 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v73, &v212);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v195 = v70;
  v74 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_176_1(v74);
  v75 = Appointment.totalCost.getter();
  OUTLINED_FUNCTION_197_1(v75);
  OUTLINED_FUNCTION_154_0(v76, v77);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v78, v79, v80, v81);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = Appointment.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v86);
  OUTLINED_FUNCTION_93_4();
  if (!v89 && !v87)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v90)
  {
    OUTLINED_FUNCTION_1_30();
    v207[3] = v58;
    v91 = v211;
    OUTLINED_FUNCTION_43_7(v21, v40, v92, v93, v94, v95, v96, v97, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
    v98 = type metadata accessor for DateComponents();
    v190 = v25;
    v99 = v98;
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_237_0(v103, v104, v105, v99);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
    v183 = Appointment.eventName.getter();
    v182 = v110;
    v111 = Appointment.eventType.getter();
    OUTLINED_FUNCTION_245_0(v111);
    v184 = v112;
    v187 = Appointment.eventSubType.getter();
    v186 = v113;
    v189 = Appointment.startLocationAddress.getter();
    OUTLINED_FUNCTION_154_0(v114, v207);
    type metadata accessor for IntentPerson();
    v115 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
    v119 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v99);
    OUTLINED_FUNCTION_83_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_205_1();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v122, &v203);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v123 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_56_6(v123, &v202);
    v124 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v124, &v201);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v125 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_59_5(v125, &v200);
    OUTLINED_FUNCTION_9_15();
    LocalizedStringResource.init(stringLiteral:)();
    v208 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_181_1();
    v126 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_163_0(v126);
    v127 = OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_152_1(v127);
    v128 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_159_1(v128);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    v129 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v129, &a13);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v130 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v130, &a12);
    OUTLINED_FUNCTION_32_11();
    LocalizedStringResource.init(stringLiteral:)();
    v131 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v131, &a11);
    v132 = OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_2(v132);
    OUTLINED_FUNCTION_157_1();
    v133 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v133, &a10);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v134 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_59_5(v134, &a9);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v177 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_26_6();
    OUTLINED_FUNCTION_225_0(v135, v136);
    v137 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v137, &v208);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v195 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v209);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_132_2(v91);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v138, v139, v140, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_132_2(v212);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v141, v142, v143, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_265(v144, v145);
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_265(v146, v147);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    v148 = OUTLINED_FUNCTION_1_28();
    outlined destroy of EagerResolutionService?(v148, v149, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v204);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v205);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_34_12(v206);
    OUTLINED_FUNCTION_229_0();
    OUTLINED_FUNCTION_34_12(v207);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_252_0();
    outlined init with copy of Date?(v150, v151, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of Date?(v152, v153, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(&_s10Foundation3URLVSgMR, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    v154 = v210;
    OUTLINED_FUNCTION_132_2(v210);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v155, v156, v157, &_s10Foundation14DateComponentsVSgMR);
    v158 = v177;
    EntityProperty.wrappedValue.setter();
    type metadata accessor for Appointment();
    OUTLINED_FUNCTION_2();
    (*(v159 + 8))(v190);
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_174_1(v154);
    outlined destroy of EagerResolutionService?(v122, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    outlined destroy of EagerResolutionService?(v213, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_174_1(v212);
    OUTLINED_FUNCTION_174_1(v211);
    OUTLINED_FUNCTION_87_4(v219);
    OUTLINED_FUNCTION_136_2();
    v215[1] = v161;
    v216 = v160;
    OUTLINED_FUNCTION_124_3();
    v217[0] = v163;
    v217[1] = v162;
    OUTLINED_FUNCTION_139_2();
    v217[2] = v165;
    v217[3] = v164;
    OUTLINED_FUNCTION_192_1();
    v218[0] = v167;
    v218[1] = v166;
    OUTLINED_FUNCTION_130_3();
    v219[0] = v169;
    v219[1] = v168;
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_182_1();
    v219[2] = v171;
    v219[3] = v170;
    OUTLINED_FUNCTION_247_0(&v213);
    v213 = xmmword_25DBC9410;
    v220 = xmmword_25DBC9410;
    outlined destroy of GenericEventEntity(&v214);
    OUTLINED_FUNCTION_253_0();
    _s10Foundation3URLVSgMd = v173;
    _s10OmniSearch0B10ResultItemOSgMd = v172;
    OUTLINED_FUNCTION_99_4(&v200);
    lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity = *(v174 - 256);
    lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError = v206[1];
    OUTLINED_FUNCTION_213_0();
    lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph = v176;
    _s15OmniSearchTypes13CalendarEventVSgMd = v175;
    _s15OmniSearchTypes16HotelReservationVSgMd = v158;
    _s15OmniSearchTypes17WalletTransactionVSgMd = v192;
    OUTLINED_FUNCTION_210(&v211);
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void GenericEventEntity.init(party:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v125 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v127 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v129 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  v126 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  v128 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_95_3();
  v124 = v20;
  v44 = type metadata accessor for LocalizedStringResource();
  v45 = OUTLINED_FUNCTION_114(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_83_6();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  *v25 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 8) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_88_4();
  *(v25 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  *(v25 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 32) = EntityProperty<>.init(title:)();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_163_0(v46);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 48) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 72) = EntityProperty<>.init(title:)();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_114_3(v47);
  v48 = OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2(v48);
  *(v25 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 88) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  *(v25 + 96) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_193_1("Member ID Number");
  OUTLINED_FUNCTION_225_0(v49, v50);
  *(v25 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 112) = EntityProperty<>.init(title:)();
  *(v25 + 120) = xmmword_25DBC9410;
  v51 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
  Party.eventUrl.getter();
  v58 = Appointment.eventName.getter();
  OUTLINED_FUNCTION_160_1(v58);
  v59 = Appointment.eventType.getter();
  OUTLINED_FUNCTION_146_1(v59);
  v60 = Appointment.eventSubType.getter();
  OUTLINED_FUNCTION_145_1(v60);
  Appointment.startLocationAddress.getter();
  OUTLINED_FUNCTION_154_0(v61, &v130[72]);
  type metadata accessor for IntentPerson();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v51);
  OUTLINED_FUNCTION_83_6();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  v69 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v69, &a11);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v70 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_73_4(v70, v130);
  OUTLINED_FUNCTION_88_4();
  v71 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v71, &v129);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  v72 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v72, &v128);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_181_1();
  v73 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v73, &a15);
  v74 = OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_152_1(v74);
  v75 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_159_1(v75);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  v76 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v76, &a13);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v77 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v77, &a12);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v78 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v78, &v124);
  v79 = OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2(v79);
  v80 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v80, &v125);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v81 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_73_4(v81, &v126);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  v82 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_148_0(v82);
  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_225_0(v83, v84);
  v85 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v85, &v130[16]);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v119 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_119_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_119_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_252_0();
  outlined init with copy of Date?(v86, v87, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_86_4();
  outlined init with copy of Date?(v88, v89, v90, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v71, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v128, v71, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v91 = OUTLINED_FUNCTION_78_4();
  outlined init with copy of Date?(v91, v92, v93, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v71, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v129, v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_53_1();
  outlined init with copy of Date?(v94, v95, v96, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_181_1();
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_34_12(&v130[24]);
  OUTLINED_FUNCTION_158_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_34_12(&v130[40]);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_34_12(&v130[56]);
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_34_12(&v130[72]);
  EntityProperty.wrappedValue.setter();
  v97 = v127;
  outlined init with copy of Date?(v127, v123, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  OUTLINED_FUNCTION_131_2();
  outlined init with copy of Date?(v98, v99, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v123);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_240_0();
  EntityProperty.wrappedValue.setter();
  outlined init with copy of Date?(v126, v71, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v71, v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  type metadata accessor for Party();
  OUTLINED_FUNCTION_2();
  (*(v100 + 8))(v125);
  memcpy(v130, v25, 0x88uLL);
  outlined destroy of GenericEventEntity(v130);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v101, v102, v103);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v104, v105, v106);
  outlined destroy of EagerResolutionService?(v97, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  outlined destroy of EagerResolutionService?(v129, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v107, v108, v109);
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v110, v111, v112);
  OUTLINED_FUNCTION_130_3();
  *v25 = v114;
  *(v25 + 8) = v113;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_99_4(&v128);
  *(v25 + 64) = *(v115 - 256);
  *(v25 + 72) = v116;
  *(v25 + 80) = v117;
  *(v25 + 88) = &_s10AppIntents12IntentPersonVSgMR;
  *(v25 + 96) = v118;
  *(v25 + 104) = v120;
  *(v25 + 112) = v119;
  *(v25 + 120) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_148();
}

void GenericEventEntity.init(trip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_161_0(v25);
  OUTLINED_FUNCTION_246_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  *&v202 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v36);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_194_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_208();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v201 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v200 = v47;
  OUTLINED_FUNCTION_78_0();
  v48 = type metadata accessor for LocalizedStringResource();
  v49 = OUTLINED_FUNCTION_114(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_205_1();
  *(v50 - 256) = v20;
  EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v51 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_56_6(v51, v207);
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_145_1(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v53 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_59_5(v53, v206);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_1(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v197[1] = v55;
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_150_1(v56);
  v57 = OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_152_1(v57);
  v58 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_160_1(v58);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v59, v205);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v60 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v60, &v204);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v188 = EntityProperty<>.init(title:)();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  v62 = OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2(v62);
  v194 = v61;
  v63 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v63, v203);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v64 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_59_5(v64, &v202 + 8);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v65 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_176_1(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_225_0(v66, 0x800000025DBF1190);
  v67 = OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_59_5(v67, &v201);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v181 = EntityProperty<>.init(title:)();
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v68, v69, v70, v71);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v76 = Trip.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v76);
  OUTLINED_FUNCTION_93_4();
  if (!v79 && !v77)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v78 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v80)
  {
    OUTLINED_FUNCTION_1_30();
    v81 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_43_7(v81, v82, v83, v84, v85, v86, v87, v88, v162, v164, v166, v168, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v186, v188, v189, v190);
    v89 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v89);
    Trip.eventUrl.getter();
    v96 = Appointment.eventName.getter();
    OUTLINED_FUNCTION_135_2(v96, v97);
    v98 = Appointment.eventType.getter();
    OUTLINED_FUNCTION_80_5(v98, v99);
    v100 = Appointment.eventSubType.getter();
    OUTLINED_FUNCTION_137_1(v100, v101);
    type metadata accessor for IntentPerson();
    v102 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    v106 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v89);
    OUTLINED_FUNCTION_83_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_205_1();
    v109 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v109, &v193);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v110 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_56_6(v110, &v192);
    v111 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v111, &v191);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v112 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_59_5(v112, &a16);
    OUTLINED_FUNCTION_9_15();
    LocalizedStringResource.init(stringLiteral:)();
    v113 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_163_0(v113);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_158_1();
    v114 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_159_1(v114);
    v115 = OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_152_1(v115);
    v116 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_144_0(v116);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    v117 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v117, &a12);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v118 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v118, &a11);
    OUTLINED_FUNCTION_32_11();
    LocalizedStringResource.init(stringLiteral:)();
    v119 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v119, &a10);
    v120 = OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_2(v120);
    OUTLINED_FUNCTION_212_0();
    v121 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v121, &a9);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v122 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_59_5(v122, &v209);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v163 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_225_0(v163, 0x800000025DBF1190);
    v123 = OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_59_5(v123, &v195);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v124 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_245_0(v124);
    OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_132_2(v200);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v125, v126, v127, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_132_2(v201);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v128, v129, v130, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_265(v131, v132);
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_265(v133, v134);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    v135 = OUTLINED_FUNCTION_1_28();
    outlined destroy of EagerResolutionService?(v135, v136, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v196);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_34_12(v197);
    OUTLINED_FUNCTION_229_0();
    OUTLINED_FUNCTION_34_12(v198);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_252_0();
    outlined init with copy of Date?(v137, v138, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of Date?(v139, v140, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(&_s10Foundation3URLVSgMR, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    v141 = v199;
    OUTLINED_FUNCTION_132_2(v199);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v142, v143, v144, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    type metadata accessor for Trip();
    OUTLINED_FUNCTION_2();
    (*(v145 + 8))(v24);
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_174_1(v141);
    outlined destroy of EagerResolutionService?(v110, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    outlined destroy of EagerResolutionService?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_174_1(v201);
    OUTLINED_FUNCTION_174_1(v200);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_87_4(v207);
    OUTLINED_FUNCTION_126_3();
    v204 = v147;
    v205[0] = v146;
    OUTLINED_FUNCTION_84_3();
    v205[1] = v149;
    v205[2] = v148;
    OUTLINED_FUNCTION_133_2();
    v205[3] = v151;
    v206[0] = v150;
    OUTLINED_FUNCTION_129_3();
    v206[1] = v153;
    v207[0] = v152;
    v207[1] = v187;
    v207[2] = v185;
    OUTLINED_FUNCTION_182_1();
    v207[3] = v155;
    v207[4] = v154;
    OUTLINED_FUNCTION_247_0(&v200);
    v202 = xmmword_25DBC9410;
    v208 = xmmword_25DBC9410;
    outlined destroy of GenericEventEntity(v203);
    _s10Foundation3URLVSgMd = v169;
    _s10OmniSearch0B10ResultItemOSgMd = v167;
    _s10OmniSearch11GeoLocationVSgMd = v165;
    lazy protocol witness table cache variable for type URL and conformance URL = v198[1];
    OUTLINED_FUNCTION_127_3();
    _s12SiriOntology17UsoBuilderOptionsVSgMd = v157;
    _s12SiriOntology9MatchInfoVSgMd = v156;
    OUTLINED_FUNCTION_125_2();
    _s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd = v159;
    _ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd = v158;
    OUTLINED_FUNCTION_123_3();
    lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity = v161;
    lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError = v160;
    lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph = v194;
    _s15OmniSearchTypes13CalendarEventVSgMd = v193;
    _s15OmniSearchTypes16HotelReservationVSgMd = v163;
    _s15OmniSearchTypes17WalletTransactionVSgMd = v172;
    OUTLINED_FUNCTION_210(&v194);
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}