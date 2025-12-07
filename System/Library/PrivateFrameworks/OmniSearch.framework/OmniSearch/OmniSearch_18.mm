uint64_t SearchCATContext.interactionMode.setter()
{
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t static SearchCATContext.overrideCATContext()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  type metadata accessor for SearchCATContext(0);
  v6 = OUTLINED_FUNCTION_11_1();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  result = AFIsInternalInstall();
  if (result)
  {
    v10 = type metadata accessor for NSUserDefaults();
    result = static NSUserDefaults.searchCATContextOverride.getter(v10, v11, v12, v13, v14);
    if (v15)
    {
      static SearchCATContext.loadFromJson(_:)(v5);

      outlined destroy of IntentApplication?(a1, &_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
      return outlined init with take of SearchCATContext?(v5, a1);
    }
  }

  return result;
}

uint64_t SearchCATContext.interfaceIdiom.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_11_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t static SearchCATContext.loadFromJson(_:)@<X0>(uint64_t a3@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v19 = v18 - v17;
  v20 = OUTLINED_FUNCTION_11_1();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v4);
  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;
  (*(v15 + 8))(v19, v13);
  if (v24 >> 60 == 15)
  {
    v25 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_8;
  }

  v26 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v68 = 0;
  v28 = [v26 JSONObjectWithData:isa options:0 error:&v68];

  if (v28)
  {
    v29 = v68;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (OUTLINED_FUNCTION_3_31(v30, v31, v32, v30))
    {
      outlined consume of Data?(v22, v24);
      v25 = v66;
      goto LABEL_8;
    }
  }

  else
  {
    v33 = v68;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v25 = Dictionary.init(dictionaryLiteral:)();
  outlined consume of Data?(v22, v24);
LABEL_8:
  v35 = OUTLINED_FUNCTION_8_23();
  specialized Dictionary.subscript.getter(v25, &v68, v35, v36);
  if (!v69)
  {
LABEL_17:

    return outlined destroy of IntentApplication?(&v68, &_sypSgMd, &_sypSgMR);
  }

  if ((OUTLINED_FUNCTION_3_31(v37, v38, v39, MEMORY[0x277D837D0]) & 1) == 0)
  {
  }

  v41 = v66;
  v40 = v67;
  v42 = OUTLINED_FUNCTION_7_23();
  specialized Dictionary.subscript.getter(v25, &v68, v42, v43);
  if (!v69)
  {
    goto LABEL_16;
  }

  if ((OUTLINED_FUNCTION_3_31(v44, v45, v46, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_18:
  }

  v48 = v66;
  v47 = v67;
  v49 = OUTLINED_FUNCTION_6_16();
  specialized Dictionary.subscript.getter(v25, &v68, v49, v50);

  if (!v69)
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((OUTLINED_FUNCTION_3_31(v51, v52, v53, MEMORY[0x277D837D0]) & 1) == 0)
  {
    goto LABEL_18;
  }

  v55 = v66;
  v54 = v67;
  SearchCATContext.init()(v12);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  v56 = OUTLINED_FUNCTION_107();
  outlined assign with take of SearchCATContext?(v56, v57);
  v58 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v58, v59, v4))
  {
  }

  else
  {
    outlined init with copy of SearchCATContext(a3, v8);
    *&v68 = v41;
    *(&v68 + 1) = v40;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchCATContext(v8);
  }

  v61 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v61, v62, v4))
  {
  }

  else
  {
    outlined init with copy of SearchCATContext(a3, v8);
    *&v68 = v55;
    *(&v68 + 1) = v54;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchCATContext(v8);
  }

  v63 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v63, v64, v4))
  {
  }

  outlined init with copy of SearchCATContext(a3, v8);
  *&v68 = v48;
  *(&v68 + 1) = v47;
  EntityProperty.wrappedValue.setter();
  return outlined destroy of SearchCATContext(v8);
}

uint64_t outlined init with take of SearchCATContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t String.asDictionary.getter(uint64_t a1, uint64_t a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v4 + 8))(v8, v2);
  if (v10 >> 60 != 15)
  {
    v12 = objc_opt_self();
    OUTLINED_FUNCTION_107();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v14 = [v12 JSONObjectWithData:isa options:0 error:v24];

    if (v14)
    {
      v15 = v24[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v16 = OUTLINED_FUNCTION_107();
        outlined consume of Data?(v16, v17);
        return v23;
      }
    }

    else
    {
      v18 = v24[0];
      v19 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v11 = Dictionary.init(dictionaryLiteral:)();
    v20 = OUTLINED_FUNCTION_107();
    outlined consume of Data?(v20, v21);
    return v11;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t outlined assign with take of SearchCATContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SearchCATContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCATContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCATContext(uint64_t a1)
{
  v2 = type metadata accessor for SearchCATContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchCATContext.typeDisplayRepresentation);
}

uint64_t static SearchCATContext.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchCATContext.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchCATContext.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchCATContext.typeDisplayRepresentation : SearchCATContext.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchCATContext.typeDisplayRepresentation : SearchCATContext.Type(uint64_t a1)
{
  v2 = SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchCATContext.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SearchCATContext.deviceClass.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchCATContext.deviceClass.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchCATContext.$deviceClass.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t (*SearchCATContext.interfaceIdiom.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$interfaceIdiom.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t SearchCATContext.interactionMode.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_10_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchCATContext.deviceClass : SearchCATContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*SearchCATContext.interactionMode.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_10_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$interactionMode.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t SearchCATContext.deviceIsLocked.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_216_2();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchCATContext.deviceIsLocked.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_216_2();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$deviceIsLocked.getter()
{
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_216_2();
  return EntityProperty.projectedValue.getter();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext, &protocol conformance descriptor for SearchCATContext);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchCATContext(uint64_t a1)
{
  lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext, &protocol conformance descriptor for SearchCATContext);

  return UUID.init()();
}

uint64_t protocol witness for static TypeDisplayRepresentable.typeDisplayRepresentation.getter in conformance SearchCATContext@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext, &protocol conformance descriptor for SearchCATContext);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation.getter in conformance SearchCATContext@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayRepresentation();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext, &protocol conformance descriptor for SearchCATContext);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SearchCATContext.dictionaryDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0x6C43656369766564;
  *(inited + 40) = 0xEB00000000737361;
  type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  v1 = v9;
  v2 = v10;
  v3 = MEMORY[0x277D837D0];
  if (!v10)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  strcpy((inited + 80), "interfaceIdiom");
  *(inited + 95) = -18;
  EntityProperty.wrappedValue.getter();
  v4 = v9;
  v5 = v10;
  if (!v10)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = v3;
  *(inited + 128) = 0x7463617265746E69;
  *(inited + 136) = 0xEF65646F4D6E6F69;
  EntityProperty.wrappedValue.getter();
  v6 = v9;
  v7 = v10;
  if (!v10)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(inited + 144) = v6;
  *(inited + 152) = v7;
  *(inited + 168) = v3;
  strcpy((inited + 176), "deviceIsLocked");
  *(inited + 191) = -18;
  EntityProperty.wrappedValue.getter();
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = v9 & 1;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t SearchCATContext.description.getter()
{
  _StringGuts.grow(_:)(86);
  MEMORY[0x25F89F6C0](0xD000000000000021, 0x800000025DBF3880);
  type metadata accessor for SearchCATContext(0);
  v0 = EntityProperty.wrappedValue.getter();
  v8 = OUTLINED_FUNCTION_67_5(v0, v1, v2, v3, v4, v5, v6, v7, v35, v38);
  if (v10)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v9;
  }

  MEMORY[0x25F89F6C0](v8, v11);

  MEMORY[0x25F89F6C0](0xD000000000000016, 0x800000025DBF38B0);
  v12 = EntityProperty.wrappedValue.getter();
  v20 = OUTLINED_FUNCTION_67_5(v12, v13, v14, v15, v16, v17, v18, v19, v36, v39);
  if (v10)
  {
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = v21;
  }

  MEMORY[0x25F89F6C0](v20, v22);

  MEMORY[0x25F89F6C0](0xD000000000000017, 0x800000025DBF38D0);
  v23 = EntityProperty.wrappedValue.getter();
  v31 = OUTLINED_FUNCTION_67_5(v23, v24, v25, v26, v27, v28, v29, v30, v37, v40);
  if (v10)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = v32;
  }

  MEMORY[0x25F89F6C0](v31, v33);

  MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
  return 0;
}

void type metadata completion function for SearchCATContext(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<String?>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<Bool?>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EntityProperty<Bool?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<Bool?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<Bool?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_21(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCATContext(0);
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return type metadata accessor for SearchCATContext(0);
}

uint64_t SearchCATEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  DisplayRepresentation.init(title:subtitle:image:)();
  v13 = type metadata accessor for SearchCATEntity(0);
  v14 = v13[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v14) = OUTLINED_FUNCTION_80_4();
  v15 = v13[6];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v15) = EntityProperty<>.init(title:)();
  v16 = v13[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v16) = EntityProperty<>.init(title:)();
  v17 = v13[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v17) = EntityProperty<>.init(title:)();
  v18 = v13[9];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v18) = OUTLINED_FUNCTION_80_4();
  v19 = v13[10];
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v19) = EntityProperty<>.init(title:)();
  v20 = v13[11];
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v20) = EntityProperty<>.init(title:)();
  v21 = v13[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v21) = EntityProperty<>.init(title:)();
  v22 = v13[13];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v22) = OUTLINED_FUNCTION_80_4();
  v23 = v13[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_9_24();
  *(a1 + v23) = EntityProperty<>.init(title:)();
  v24 = v13[15];
  OUTLINED_FUNCTION_9_24();
  *(a1 + v24) = OUTLINED_FUNCTION_80_4();
  v25 = v13[16];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v25) = EntityProperty<>.init(title:)();
  v26 = v13[17];
  OUTLINED_FUNCTION_9_24();
  *(a1 + v26) = EntityProperty<>.init(title:)();
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v28[0]) = 0;
  return EntityProperty.wrappedValue.setter();
}

uint64_t type metadata accessor for SearchCATEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCATEntity;
  if (!type metadata singleton initialization cache for SearchCATEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCATEntity.contentCreationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  type metadata accessor for SearchCATEntity(0);
  outlined init with copy of Date?(a1, v5);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchCATEntity.sentFrom.getter()
{
  type metadata accessor for SearchCATEntity(0);
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchCATEntity.typeDisplayRepresentation);
}

uint64_t static SearchCATEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchCATEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_33_13();
  v4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static SearchCATEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchCATEntity.typeDisplayRepresentation : SearchCATEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchCATEntity.typeDisplayRepresentation : SearchCATEntity.Type(uint64_t a1)
{
  v2 = SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchCATEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SearchCATEntity.documentSource.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.documentSource.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.title.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.title.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchCATEntity.contentCreationDate : SearchCATEntity(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of Date?(a1, &v6 - v3);
  return SearchCATEntity.contentCreationDate.setter(v4);
}

uint64_t (*SearchCATEntity.contentCreationDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchCATEntity.sentFrom.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.answer.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.answer.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.fullSearchEntityDescription.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.fullSearchEntityDescription.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchCATEntity.supportSearchEntityDescription.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.supportSearchEntityDescription.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.resultSourceDialogDisplayName.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.resultSourceDialogDisplayName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.fullContent.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.fullContent.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.messageIsFromMe.getter()
{
  type metadata accessor for SearchCATEntity(0);
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchCATEntity.messageIsFromMe.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.flightDestination.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.flightDestination.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.senderHandle.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t (*SearchCATEntity.senderHandle.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.resultType.getter()
{
  v0 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_17_19(v0);
  return v2;
}

uint64_t key path setter for SearchCATEntity.documentSource : SearchCATEntity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*SearchCATEntity.resultType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity, &protocol conformance descriptor for SearchCATEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchCATEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity, &protocol conformance descriptor for SearchCATEntity);

  return UUID.init()();
}

uint64_t protocol witness for static TypeDisplayRepresentable.typeDisplayRepresentation.getter in conformance SearchCATEntity@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity, &protocol conformance descriptor for SearchCATEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity, &protocol conformance descriptor for SearchCATEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static SearchCATEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v101 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v99 = &v97[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v97[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  v100 = &v97[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v97[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v97[-v17];
  v19 = type metadata accessor for SearchCATEntity(0);
  v104 = a1;
  v20 = EntityProperty.wrappedValue.getter();
  v22 = v105;
  v21 = v106;
  v102 = a2;
  v103 = v19;
  v23 = OUTLINED_FUNCTION_15_18(v20);
  v24 = v106;
  if (v21)
  {
    if (!v106)
    {
      goto LABEL_120;
    }

    OUTLINED_FUNCTION_11_22();
    v25 = v25 && v21 == v24;
    if (v25)
    {
    }

    else
    {
      v26 = OUTLINED_FUNCTION_23_16(v22);

      if ((v26 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  v27 = OUTLINED_FUNCTION_15_18(v23);
  v29 = v105;
  v28 = v106;
  OUTLINED_FUNCTION_12_22(v27);
  v30 = v106;
  if (v28)
  {
    if (!v106)
    {
      goto LABEL_120;
    }

    v31 = v4;
    OUTLINED_FUNCTION_11_22();
    if (v25 && v28 == v30)
    {
    }

    else
    {
      v33 = OUTLINED_FUNCTION_23_16(v29);

      if ((v33 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v31 = v4;
    if (v106)
    {
      goto LABEL_120;
    }
  }

  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  v34 = *(v6 + 48);
  outlined init with copy of Date?(v18, v9);
  outlined init with copy of Date?(v15, &v9[v34]);
  OUTLINED_FUNCTION_26_13(v9);
  if (v25)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v35, v36, v37);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v38, v39, v40);
    OUTLINED_FUNCTION_26_13(&v9[v34]);
    if (v25)
    {
      v41 = outlined destroy of IntentApplication?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_33;
    }

LABEL_31:
    outlined destroy of IntentApplication?(v9, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_121;
  }

  v42 = v100;
  outlined init with copy of Date?(v9, v100);
  OUTLINED_FUNCTION_26_13(&v9[v34]);
  if (v43)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v44, v45, v46);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v47, v48, v49);
    (*(v101 + 8))(v42, v31);
    goto LABEL_31;
  }

  v50 = v101;
  v51 = &v9[v34];
  v52 = v99;
  (*(v101 + 32))(v99, v51, v31);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v52, v31);
  outlined destroy of IntentApplication?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of IntentApplication?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53(v42, v31);
  v41 = outlined destroy of IntentApplication?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_33:
  v54 = v103;
  OUTLINED_FUNCTION_15_18(v41);
  v55 = v105;
  v56 = EntityProperty.wrappedValue.getter();
  v57 = v105;
  if (v55)
  {
    if (!v105)
    {
      goto LABEL_120;
    }

    v58 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5();

    if ((v58 & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  else if (v105)
  {
    goto LABEL_120;
  }

  v59 = OUTLINED_FUNCTION_15_18(v56);
  v60 = v106;
  v61 = OUTLINED_FUNCTION_18_15(v59);
  v62 = v106;
  if (v60)
  {
    if (!v106)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v25 && v60 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v57 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  v64 = OUTLINED_FUNCTION_15_18(v61);
  v65 = v106;
  v66 = OUTLINED_FUNCTION_12_22(v64);
  v62 = v106;
  if (v65)
  {
    if (!v106)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v25 && v65 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v57 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  v68 = OUTLINED_FUNCTION_15_18(v66);
  v69 = v106;
  v70 = OUTLINED_FUNCTION_12_22(v68);
  v62 = v106;
  if (v69)
  {
    if (!v106)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v25 && v69 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v57 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  v72 = OUTLINED_FUNCTION_15_18(v70);
  v73 = v106;
  v74 = OUTLINED_FUNCTION_12_22(v72);
  v62 = v106;
  if (v73)
  {
    if (!v106)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v25 && v73 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v57 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v74);
  v77 = v105;
  v76 = v106;
  EntityProperty.wrappedValue.getter();
  v78 = v106;
  if (v77 == v105 && v76 == v106)
  {
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  v82 = OUTLINED_FUNCTION_15_18(v81);
  v83 = v106;
  v84 = OUTLINED_FUNCTION_18_15(v82);
  v62 = v106;
  if (v83)
  {
    if (!v106)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v25 && v83 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v78 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v106)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v84);
  v86 = v105;
  v87 = *(v102 + *(v54 + 56));
  v88 = EntityProperty.wrappedValue.getter();
  if (v86 != v105)
  {
LABEL_121:
    LOBYTE(v62) = 0;
    return v62 & 1;
  }

  v89 = OUTLINED_FUNCTION_15_18(v88);
  v90 = v106;
  v91 = OUTLINED_FUNCTION_18_15(v89);
  v62 = v106;
  if (!v90)
  {
    if (!v106)
    {
      goto LABEL_113;
    }

LABEL_120:

    goto LABEL_121;
  }

  if (v106)
  {
    OUTLINED_FUNCTION_11_22();
    if (v25 && v90 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v87 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

LABEL_113:
    v93 = OUTLINED_FUNCTION_18_15(v91);
    v62 = v105;
    v94 = v106;
    OUTLINED_FUNCTION_12_22(v93);
    if (v94)
    {
      if (v106)
      {
        if (v62 != v105 || v94 != v106)
        {
          LOBYTE(v62) = OUTLINED_FUNCTION_23_16(v62);

          goto LABEL_109;
        }

LABEL_126:
        LOBYTE(v62) = 1;
        return v62 & 1;
      }
    }

    else if (!v106)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

LABEL_109:

  return v62 & 1;
}

uint64_t SearchCATEntity.dictionaryDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v3 = v45 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9E40;
  strcpy((inited + 32), "documentSource");
  *(inited + 47) = -18;
  type metadata accessor for SearchCATEntity(0);
  EntityProperty.wrappedValue.getter();
  v5 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v7 = 0xE000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 72) = v5;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v10 = 0xE000000000000000;
  }

  *(inited + 96) = v9;
  *(inited + 104) = v10;
  OUTLINED_FUNCTION_44_6();
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v11;
  EntityProperty.wrappedValue.getter();
  v12 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
  {
    v13 = outlined destroy of IntentApplication?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(inited + 168) = v5;
    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
  }

  else
  {
    v46 = v12;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45);
    (*(*(v12 - 8) + 32))(boxed_opaque_existential_1Tm, v3, v12);
    v13 = outlined init with take of Any(v45, (inited + 144));
  }

  *(inited + 176) = 0x6D6F7246746E6573;
  *(inited + 184) = 0xE800000000000000;
  v15 = OUTLINED_FUNCTION_16_19(v13);
  v16 = v45[0];
  if (v45[0])
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v45[0] = v16;
    v15 = outlined init with take of Any(v45, (inited + 192));
  }

  else
  {
    *(inited + 216) = v5;
    *(inited + 192) = 0;
    *(inited + 200) = 0xE000000000000000;
  }

  *(inited + 224) = 0x726577736E61;
  *(inited + 232) = 0xE600000000000000;
  OUTLINED_FUNCTION_16_19(v15);
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v18;
  OUTLINED_FUNCTION_44_6();
  *(inited + 264) = v5;
  *(inited + 272) = 0xD00000000000001BLL;
  *(inited + 280) = v19;
  OUTLINED_FUNCTION_16_19(v20);
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v22 = 0xE000000000000000;
  }

  *(inited + 288) = v21;
  *(inited + 296) = v22;
  OUTLINED_FUNCTION_44_6();
  *(inited + 312) = v5;
  *(inited + 320) = 0xD00000000000001ELL;
  *(inited + 328) = v23;
  OUTLINED_FUNCTION_16_19(v24);
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v26 = 0xE000000000000000;
  }

  *(inited + 336) = v25;
  *(inited + 344) = v26;
  OUTLINED_FUNCTION_44_6();
  *(inited + 360) = v5;
  *(inited + 368) = 0xD00000000000001DLL;
  *(inited + 376) = v27;
  v29 = OUTLINED_FUNCTION_16_19(v28);
  v30 = v45[1];
  *(inited + 384) = v45[0];
  *(inited + 392) = v30;
  *(inited + 408) = v5;
  *(inited + 416) = 0x746E6F436C6C7566;
  *(inited + 424) = 0xEB00000000746E65;
  OUTLINED_FUNCTION_16_19(v29);
  OUTLINED_FUNCTION_1_43();
  if (v8)
  {
    v33 = 0xE000000000000000;
  }

  *(inited + 432) = v32;
  *(inited + 440) = v33;
  *(inited + 456) = v5;
  *(inited + 464) = 0x496567617373656DLL;
  *(inited + 472) = 0xEF654D6D6F724673;
  v34 = OUTLINED_FUNCTION_16_19(v31);
  v35 = MEMORY[0x277D839B0];
  *(inited + 480) = v45[0];
  *(inited + 504) = v35;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x800000025DBF3A70;
  v36 = OUTLINED_FUNCTION_16_19(v34);
  v38 = v45[1];
  v37 = v45[0];
  *(inited + 552) = v5;
  if (!v38)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  *(inited + 528) = v37;
  *(inited + 536) = v38;
  strcpy((inited + 560), "senderHandle");
  *(inited + 573) = 0;
  *(inited + 574) = -5120;
  v39 = OUTLINED_FUNCTION_16_19(v36);
  v41 = v45[1];
  v40 = v45[0];
  *(inited + 600) = v5;
  if (!v41)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  *(inited + 576) = v40;
  *(inited + 584) = v41;
  *(inited + 608) = 0x7954746C75736572;
  *(inited + 616) = 0xEA00000000006570;
  OUTLINED_FUNCTION_16_19(v39);
  v43 = v45[1];
  v42 = v45[0];
  *(inited + 648) = v5;
  if (!v43)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  *(inited + 624) = v42;
  *(inited + 632) = v43;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t dispatch thunk of SearchCATEntityConvertible.asCATEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return v9(a1, a2, a3);
}

uint64_t type metadata completion function for SearchCATEntity(uint64_t a1)
{
  v1 = type metadata accessor for DisplayRepresentation();
  if (v2 <= 0x3F)
  {
    type metadata accessor for EntityProperty<String?>(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, lazy protocol witness table accessor for type Date? and conformance <A> A?);
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<[String]?>, &_sSaySSGSgMd, &_sSaySSGSgMR, lazy protocol witness table accessor for type [String]? and conformance <A> A?);
      if (v7 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<String>, lazy protocol witness table accessor for type String and conformance String, MEMORY[0x277D837D0]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<Bool>, lazy protocol witness table accessor for type Bool and conformance Bool, MEMORY[0x277D839B0]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for EntityProperty<Date?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCATEntity(0);
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return type metadata accessor for SearchCATEntity(0);
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_12_22(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_18_15(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t DialogContext.init(interactionMode:interfaceIdiom:assistantLocale:isQuestionQuery:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>, uint64_t a5@<X0>, uint64_t a6@<X1>)
{
  outlined init with take of SearchResultItem?(a5, a4, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v11 = type metadata accessor for DialogContext(0);
  result = outlined init with take of SearchResultItem?(a6, a4 + v11[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v13 = (a4 + v11[6]);
  *v13 = a1;
  v13[1] = a2;
  *(a4 + v11[7]) = a3;
  return result;
}

uint64_t type metadata accessor for DialogContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for DialogContext;
  if (!type metadata singleton initialization cache for DialogContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DialogContext.assistantLocale.getter()
{
  type metadata accessor for DialogContext(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:)()
{
  OUTLINED_FUNCTION_48();
  v1[10] = v2;
  v1[11] = v3;
  v1[8] = v4;
  v1[9] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for CATOption();
  v1[12] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[13] = v8;
  v9 = OUTLINED_FUNCTION_199();
  v10 = *v0;
  v1[14] = v9;
  v1[15] = v10;
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11);
}

{
  type metadata accessor for CATResponse();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  static CATOption.defaultMode.getter();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  return MEMORY[0x2821B7E50](v5, v6, v7, v4, v2, v0 + 16, v3);
}

{
  OUTLINED_FUNCTION_52();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[17] = v9;
  v3[18] = v0;

  (*(v5 + 8))(v4, v6);
  outlined destroy of IntentApplication?((v3 + 2), &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  if (v0)
  {
    v10 = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  }

  else
  {
    v10 = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  }

  return MEMORY[0x2822009F8](v10);
}

{
  v1 = [*(v0 + 136) dialog];
  type metadata accessor for PatternExecutionDialog();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25F89FFD0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v15 = *(v0 + 136);

    v5 = [v4 fullPrint];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v4 fullSpeak];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v4 supportingPrint];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [v4 supportingSpeak];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SearchToolDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)();
  }

  else
  {

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_19_16(v9, v10, v11, v12);
    v4 = *(v0 + 136);
  }

  OUTLINED_FUNCTION_127();

  return v13();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

unint64_t type metadata accessor for PatternExecutionDialog()
{
  result = lazy cache variable for type metadata for PatternExecutionDialog;
  if (!lazy cache variable for type metadata for PatternExecutionDialog)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PatternExecutionDialog);
  }

  return result;
}

uint64_t protocol witness for CatDialogGenerating.dialog(catId:templateDirectoryURL:parameters:) in conformance CatDialogGenerator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:)();
}

uint64_t one-time initialization function for templateDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
  __swift_project_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
  return closure #1 in variable initialization expression of static DialogBuilder.templateDirectoryURL();
}

uint64_t closure #1 in variable initialization expression of static DialogBuilder.templateDirectoryURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  type metadata accessor for DialogBuilder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = [v11 resourceURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v4 + 32);
    v14(v2, v6, v3);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    v14(v9, v2, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    v15 = [v11 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
    {
      outlined destroy of IntentApplication?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL.appendingPathComponent(_:)();

  return (*(v4 + 8))(v9, v3);
}

uint64_t DialogBuilder.templateDirectoryURL.unsafeMutableAddressor()
{
  if (one-time initialization token for templateDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_0_46(&one-time initialization token for templateDirectoryURL);
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
}

uint64_t static DialogBuilder.templateDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for templateDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_0_46(&one-time initialization token for templateDirectoryURL);
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static DialogBuilder.templateDirectoryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DialogBuilder.__allocating_init(catDialogGenerator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v2 + 16);
  return v2;
}

uint64_t DialogBuilder.dialog(dialogData:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 72) = *(a2 + 32);
  v5 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v5);
}

uint64_t DialogBuilder.dialog(dialogData:)()
{
  v1 = *(v0 + 40);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = v3[5];
    v5 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
    if (one-time initialization token for templateDirectoryURL != -1)
    {
      OUTLINED_FUNCTION_0_46(&one-time initialization token for templateDirectoryURL);
    }

    v6 = type metadata accessor for URL();
    v7 = __swift_project_value_buffer(v6, static DialogBuilder.templateDirectoryURL);
    OUTLINED_FUNCTION_17_20(v5);
    v17 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = DialogBuilder.dialog(dialogData:);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);

    return v17(v11, v10, v1, v7, v2, v4, v5);
  }

  else
  {
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 32);

    OUTLINED_FUNCTION_19_16(v15, v1, v14, v13);
    OUTLINED_FUNCTION_127();

    return v16();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t DialogBuilder.buildDialog(for:context:)()
{
  OUTLINED_FUNCTION_48();
  v1[74] = v0;
  v1[73] = v2;
  v1[72] = v3;
  v1[71] = v4;
  v5 = type metadata accessor for SearchCATEntity(0);
  OUTLINED_FUNCTION_21(v5);
  v1[75] = v6;
  v1[76] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for SearchGlobalEntity(0);
  v1[77] = v7;
  OUTLINED_FUNCTION_114(v7);
  v1[78] = OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v1[79] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchEntity.Builder(0);
  v1[80] = v9;
  OUTLINED_FUNCTION_114(v9);
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v11 = type metadata accessor for SearchEntity(0);
  v1[88] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[89] = v12;
  v1[90] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for SearchCATContext(0);
  OUTLINED_FUNCTION_114(v13);
  v1[91] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for SearchResult(0);
  v1[92] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[93] = v15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v16 = type metadata accessor for DialogContext(0);
  v1[98] = v16;
  OUTLINED_FUNCTION_114(v16);
  v1[99] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for AssistantSystemContext(0);
  v1[100] = v17;
  OUTLINED_FUNCTION_114(v17);
  v1[101] = OUTLINED_FUNCTION_199();
  v18 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v18);
}

{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 576);
  outlined init with copy of DialogContext(*(v0 + 584), v3, type metadata accessor for DialogContext);
  v6 = OUTLINED_FUNCTION_94();
  outlined init with take of SearchResultItem?(v6, v7, v8, v9);
  outlined init with take of SearchResultItem?(v3 + *(v4 + 20), v1 + v2[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  *(v1 + v2[6]) = *(v3 + *(v4 + 24));
  v10 = (v1 + v2[7]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v2[8]) = 0;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = *(v0 + 744);
    v102 = *(v0 + 736);
    v103 = *(v0 + 712);
    v105 = *(v0 + 640);
    v13 = *(v0 + 576) + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    _s10OmniSearch18GenericEventEntityVSgWOi0_((v0 + 240));
    v14 = v13;
    v104 = *(v12 + 72);
    v106 = MEMORY[0x277D84F90];
    do
    {
      v109 = v14;
      v110 = v11;
      v15 = *(v0 + 776);
      v16 = *(v0 + 768);
      v17 = *(v0 + 760);
      v18 = *(v0 + 752);
      v19 = *(v0 + 736);
      v107 = *(v0 + 664);
      v108 = *(v0 + 704);
      v20 = *(v0 + 656);
      v21 = *(v0 + 648);
      v22 = *(v0 + 616);
      outlined init with copy of DialogContext(v14, v15, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v15, v16, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v16, v17, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v17, v18, type metadata accessor for SearchResult);
      type metadata accessor for SearchEntityVisualContext();
      v23 = swift_allocObject();
      *(v0 + 400) = &type metadata for EntityCardBuilder;
      *(v0 + 408) = &protocol witness table for EntityCardBuilder;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 376), v23 + 16);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      outlined init with copy of ChatMessageRecord(v23 + 16, v0 + 416);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      OUTLINED_FUNCTION_28_1();
      v25 = v24();
      *v20 = 0;
      v20[1] = 0;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v19);
      type metadata accessor for SearchResultType();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      memcpy(v20 + v105[9], (v0 + 240), 0x88uLL);
      type metadata accessor for SearchAppEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      v44 = type metadata accessor for IntentFile();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
      v48 = (v20 + v105[12]);
      *v48 = 0;
      v48[1] = 0;
      type metadata accessor for EventEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
      type metadata accessor for IdCardEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
      v57 = (v20 + v105[15]);
      v57[1] = 0u;
      v57[2] = 0u;
      *v57 = 0u;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v44);
      *(v20 + v105[17]) = 5;
      v61 = (v20 + v105[18]);
      *v61 = 0;
      v61[1] = 0;
      OUTLINED_FUNCTION_28_1();
      closure #1 in SearchEntity.init(result:context:searchString:derivedType:)();
      outlined init with copy of DialogContext(v20, v21, type metadata accessor for SearchEntity.Builder);
      SearchEntity.init(builder:)();
      outlined destroy of SearchEntity.Builder(v20, type metadata accessor for SearchEntity.Builder);
      if (__swift_getEnumTagSinglePayload(v107, 1, v108))
      {
        v62 = outlined destroy of IntentApplication?(*(v0 + 664), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v63 = 1;
      }

      else
      {
        v62 = outlined init with take of SearchEntity(*(v0 + 664), *(v0 + 672));
        v63 = 0;
      }

      if (OUTLINED_FUNCTION_6_17(v62, v63))
      {
        v64 = *(v0 + 776);
        v65 = *(v0 + 768);
        v66 = *(v0 + 760);
        v67 = *(v0 + 752);
        v68 = *(v0 + 704);
        v69 = *(v0 + 672);

        outlined destroy of SearchEntity.Builder(v66, type metadata accessor for SearchResult);
        outlined destroy of SearchEntity.Builder(v65, type metadata accessor for SearchResult);
        outlined destroy of SearchEntity.Builder(v64, type metadata accessor for SearchResult);
        outlined destroy of IntentApplication?(v69, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        outlined destroy of SearchEntity.Builder(v67, type metadata accessor for SearchResult);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
      }

      else
      {
        v73 = *(v0 + 752);
        v74 = *(v0 + 632);
        v75 = *(v0 + 616);
        outlined init with take of SearchEntity(*(v0 + 672), *(v0 + 680));
        v76 = (v73 + *(v102 + 40));
        v77 = v76[1];
        *(v0 + 520) = *v76;
        *(v0 + 528) = v77;

        EntityProperty.wrappedValue.setter();
        EntityProperty.wrappedValue.getter();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v75);
        v79 = *(v0 + 776);
        v80 = *(v0 + 768);
        v81 = *(v0 + 760);
        v82 = *(v0 + 632);
        if (EnumTagSinglePayload)
        {

          outlined destroy of SearchEntity.Builder(v81, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v80, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v79, type metadata accessor for SearchResult);
          outlined destroy of IntentApplication?(v82, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
        }

        else
        {
          v83 = *(v0 + 624);
          outlined init with copy of DialogContext(*(v0 + 632), v83, type metadata accessor for SearchGlobalEntity);
          outlined destroy of IntentApplication?(v82, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
          EntityProperty.wrappedValue.getter();
          v84 = *(v0 + 544);
          *(v0 + 552) = *(v0 + 536);
          *(v0 + 560) = v84;
          EntityProperty.wrappedValue.setter();

          outlined destroy of SearchEntity.Builder(v81, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v80, type metadata accessor for SearchResult);
          v85 = OUTLINED_FUNCTION_94();
          outlined destroy of SearchEntity.Builder(v85, v86);
          outlined destroy of SearchEntity.Builder(v83, type metadata accessor for SearchGlobalEntity);
        }

        v87 = *(v0 + 752);
        v88 = *(v0 + 704);
        v89 = *(v0 + 680);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v88);
        outlined destroy of SearchEntity.Builder(v87, type metadata accessor for SearchResult);
      }

      v90 = *(v0 + 680);
      if (__swift_getEnumTagSinglePayload(v90, 1, *(v0 + 704)))
      {
        v91 = outlined destroy of IntentApplication?(v90, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v92 = 1;
      }

      else
      {
        v91 = outlined init with take of SearchEntity(v90, *(v0 + 688));
        v92 = 0;
      }

      if (OUTLINED_FUNCTION_6_17(v91, v92))
      {
        v93 = outlined destroy of IntentApplication?(*(v0 + 688), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v94 = 1;
      }

      else
      {
        v93 = outlined init with take of SearchEntity(*(v0 + 688), *(v0 + 696));
        v94 = 0;
      }

      if (OUTLINED_FUNCTION_6_17(v93, v94) == 1)
      {
        outlined destroy of IntentApplication?(*(v0 + 696), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
      }

      else
      {
        outlined init with take of SearchEntity(*(v0 + 696), *(v0 + 720));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1, v106);
          v106 = v98;
        }

        v96 = *(v106 + 16);
        v95 = *(v106 + 24);
        if (v96 >= v95 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1, v106);
          v106 = v99;
        }

        v97 = *(v0 + 720);
        *(v106 + 16) = v96 + 1;
        outlined init with take of SearchEntity(v97, v106 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v96);
      }

      v14 = v109 + v104;
      v11 = v110 - 1;
    }

    while (v110 != 1);
  }

  else
  {
    v106 = MEMORY[0x277D84F90];
  }

  *(v0 + 816) = v106;
  v100 = swift_task_alloc();
  *(v0 + 824) = v100;
  *v100 = v0;
  v100[1] = DialogBuilder.buildDialog(for:context:);

  return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  *(v1 + 832) = v0;

  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  v1 = *(v0 + 816);
  Array<A>.isHomogenousResults.getter();
  v3 = v2;
  AssistantSystemContext.asCATContext.getter();
  Array<A>.isEffectivelyEmptySearchResult.getter(v1, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v0);
  v12 = v11;

  if (v12)
  {

    v13 = Dictionary.init(dictionaryLiteral:)();
    v14 = "tion in time for display.";
    v15 = 0xD000000000000017;
  }

  else
  {
    v16 = *(v0 + 832);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8930;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000025DBF2DB0;
    v18 = *(v16 + 16);
    v19 = *(v0 + 832);
    if (v18)
    {
      v20 = *(v0 + 600);
      v39 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v21 = v39;
      v22 = v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v23 = *(v20 + 72);
      do
      {
        v24 = *(v0 + 608);
        outlined init with copy of DialogContext(v22, v24, type metadata accessor for SearchCATEntity);
        v25 = SearchCATEntity.dictionaryDescription.getter();
        outlined destroy of SearchEntity.Builder(v24, type metadata accessor for SearchCATEntity);
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        }

        *(v39 + 16) = v27 + 1;
        *(v39 + 8 * v27 + 32) = v25;
        v22 += v23;
        --v18;
      }

      while (v18);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v28 = *(v0 + 784);
    v29 = *(v0 + 584);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *(inited + 48) = v21;
    *(inited + 72) = v30;
    *(inited + 80) = 0x6974736575517369;
    *(inited + 88) = 0xEF79726575516E6FLL;
    v31 = MEMORY[0x277D839B0];
    *(inited + 96) = *(v29 + *(v28 + 28)) & 1;
    *(inited + 120) = v31;
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x800000025DBF2E50;
    *(inited + 144) = v3 & 1;
    *(inited + 168) = v31;
    *(inited + 176) = 0xD000000000000010;
    *(inited + 184) = 0x800000025DBF2E70;
    v32 = SearchCATContext.dictionaryDescription.getter();
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    *(inited + 192) = v32;
    v13 = Dictionary.init(dictionaryLiteral:)();
    v14 = "isHomogenousSources";
    v15 = 0xD000000000000015;
  }

  *(v0 + 456) = v15;
  *(v0 + 464) = v14 | 0x8000000000000000;
  *(v0 + 472) = v13;
  *(v0 + 480) = 0;
  *(v0 + 488) = 1;
  v33 = swift_task_alloc();
  *(v0 + 840) = v33;
  *v33 = v0;
  v33[1] = DialogBuilder.buildDialog(for:context:);
  v34 = *(v0 + 568);

  return DialogBuilder.dialog(dialogData:)(v34, v0 + 456);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 848) = v0;

  outlined consume of SearchToolDialogData();
  if (v0)
  {
    v4 = DialogBuilder.buildDialog(for:context:);
  }

  else
  {
    v4 = DialogBuilder.buildDialog(for:context:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_5_25();

  OUTLINED_FUNCTION_127();

  return v0();
}

{
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_5_25();

  OUTLINED_FUNCTION_127();

  return v0();
}

__n128 AssistantSystemContext.init(dialogContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of SearchResultItem?(a1, a2, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v4 = type metadata accessor for DialogContext(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for AssistantSystemContext(0);
  outlined init with take of SearchResultItem?(a1 + v5, a2 + v6[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  result = *(a1 + *(v4 + 24));
  *(a2 + v6[6]) = result;
  v8 = (a2 + v6[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v6[8]) = 0;
  return result;
}

uint64_t DialogBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t outlined consume of SearchToolDialogData()
{
}

uint64_t outlined init with take of SearchEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DialogContext(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of SearchEntity.Builder(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogBuilderError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DialogBuilderError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchToolDialogData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchToolDialogData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata completion function for DialogContext(uint64_t a1)
{
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?, MEMORY[0x277CBA0C8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.InterfaceIdiom?, MEMORY[0x277CBA120]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t dispatch thunk of CatDialogGenerating.dialog(catId:templateDirectoryURL:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_17_20(a7);
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getEnumTagSinglePayload for CatDialogGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CatDialogGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_44()
{
  v2 = *(v0 + 728);

  return outlined destroy of SearchEntity.Builder(v2, type metadata accessor for SearchCATContext);
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return outlined destroy of SearchEntity.Builder(v0, type metadata accessor for AssistantSystemContext);
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return SearchToolDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)();
}

void static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  v22 = v21;
  v24 = v23;
  v213 = v25;
  v189 = v26;
  v211 = v27;
  v209 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone.Width();
  OUTLINED_FUNCTION_14();
  v207 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_3();
  v205 = v30;
  OUTLINED_FUNCTION_78_0();
  v210 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  OUTLINED_FUNCTION_14();
  v208 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3();
  v206 = v33;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Minute();
  OUTLINED_FUNCTION_14();
  v203 = v35;
  v204 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  v202 = v36;
  OUTLINED_FUNCTION_78_0();
  v200 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  OUTLINED_FUNCTION_14();
  v198 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_3();
  v196 = v39;
  OUTLINED_FUNCTION_78_0();
  v201 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  OUTLINED_FUNCTION_14();
  v199 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  v197 = v42;
  OUTLINED_FUNCTION_78_0();
  v195 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  OUTLINED_FUNCTION_14();
  v194 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v45);
  v193 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  OUTLINED_FUNCTION_14();
  v192 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v48);
  v49 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  OUTLINED_FUNCTION_14();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v188 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  OUTLINED_FUNCTION_14();
  v187[18] = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v55);
  v56 = type metadata accessor for FormatStyleCapitalizationContext();
  v57 = OUTLINED_FUNCTION_114(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v58);
  v59 = type metadata accessor for Calendar();
  v60 = OUTLINED_FUNCTION_114(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v61);
  v62 = type metadata accessor for Locale();
  v63 = OUTLINED_FUNCTION_114(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  v67 = OUTLINED_FUNCTION_114(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  v71 = OUTLINED_FUNCTION_114(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v73);
  v74 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v76 = v75;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v91);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v92);
  v94 = v187 - v93;
  v214 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v212 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_2();
  v215 = v98;
  static TimeZone.current.getter();
  if (v22)
  {
    TimeZone.init(identifier:)();
    v99 = v214;
    OUTLINED_FUNCTION_166(v94, 1, v214);
    if (v100)
    {
      outlined destroy of IntentApplication?(v94, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v101 = v51;
      v102 = v49;
      v103 = v212;
      v104 = v76;
      v105 = v24;
      v106 = v74;
      v107 = v20;
      v108 = v215;
      (*(v212 + 8))(v215, v99);
      v109 = v103;
      v49 = v102;
      v51 = v101;
      v110 = v108;
      v20 = v107;
      v74 = v106;
      v24 = v105;
      v76 = v104;
      (*(v109 + 32))(v110, v94, v99);
    }
  }

  type metadata accessor for Date.FormatStyle.DateStyle();
  v191 = v51;
  v190 = v49;
  if (v24)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
    v187[0] = v20;
    if (!v213)
    {
      v127 = type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter(v127, v128, v129, v130, v131);
    }

    OUTLINED_FUNCTION_70_8();
    Locale.init(identifier:)();
    v132 = v212;
    v133 = OUTLINED_FUNCTION_68_9();
    v134 = v214;
    v135(v133, v215, v214);
    OUTLINED_FUNCTION_66_10();
    static Calendar.autoupdatingCurrent.getter();
    OUTLINED_FUNCTION_64_7();
    MEMORY[0x25F899230]();
    v136 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v137 = v187[17];
    MEMORY[0x25F899530](v136);
    OUTLINED_FUNCTION_70_8();
    Date.FormatStyle.weekday(_:)();
    OUTLINED_FUNCTION_4_4();
    v138(v137, v188);
    v139 = *(v76 + 8);
    v140 = OUTLINED_FUNCTION_51_11();
    v141 = v139(v140);
    v142 = v187[0];
    MEMORY[0x25F899430](v141);
    v143 = v187[3];
    Date.FormatStyle.day(_:)();
    OUTLINED_FUNCTION_4_4();
    v144(v142, v190);
    v145 = v24;
    v146 = v134;
    (v139)(v145, v74);
    OUTLINED_FUNCTION_30_14();
    MEMORY[0x25F8994E0]();
    OUTLINED_FUNCTION_28_15();
    Date.FormatStyle.month(_:)();
    v147 = OUTLINED_FUNCTION_17_21();
    v148(v147, v193);
    v149 = v143;
    v150 = v132;
    (v139)(v149, v74);
    OUTLINED_FUNCTION_30_14();
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    OUTLINED_FUNCTION_76_9();
    Date.FormatStyle.year(_:)();
    v151 = OUTLINED_FUNCTION_17_21();
    v152(v151, v195);
    v153 = OUTLINED_FUNCTION_51_11();
    v139(v153);
    static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
    static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
    v154 = OUTLINED_FUNCTION_75_9();
    v155(v154);
    OUTLINED_FUNCTION_28_15();
    Date.FormatStyle.hour(_:)();
    v156 = OUTLINED_FUNCTION_25_15();
    v157(v156, v201);
    v158 = (v139)(v132, v74);
    MEMORY[0x25F899510](v158);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
    if (!v213)
    {
      v159 = type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter(v159, v160, v161, v162, v163);
    }

    v164 = v214;
    v150 = v212;

    OUTLINED_FUNCTION_70_8();
    OUTLINED_FUNCTION_37_5();
    Locale.init(identifier:)();
    v165 = OUTLINED_FUNCTION_68_9();
    v166(v165, v215, v164);
    OUTLINED_FUNCTION_66_10();
    static Calendar.autoupdatingCurrent.getter();
    OUTLINED_FUNCTION_76_9();
    MEMORY[0x25F899230]();
    OUTLINED_FUNCTION_30_14();
    v146 = v164;
    v167 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899430](v167);
    OUTLINED_FUNCTION_64_7();
    Date.FormatStyle.day(_:)();
    v168 = v191 + 8;
    (*(v191 + 8))(v20, v190);
    v139 = *(v76 + 8);
    (v139)(v164, v74);
    OUTLINED_FUNCTION_30_14();
    MEMORY[0x25F8994E0]();
    OUTLINED_FUNCTION_28_15();
    Date.FormatStyle.month(_:)();
    v169 = OUTLINED_FUNCTION_17_21();
    v170(v169, v193);
    (v139)(v20, v74);
    OUTLINED_FUNCTION_30_14();
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    OUTLINED_FUNCTION_76_9();
    Date.FormatStyle.year(_:)();
    v171 = OUTLINED_FUNCTION_17_21();
    v172(v171, v195);
    v173 = OUTLINED_FUNCTION_51_11();
    v139(v173);
    static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
    static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
    v174 = OUTLINED_FUNCTION_75_9();
    v175(v174);
    OUTLINED_FUNCTION_28_15();
    Date.FormatStyle.hour(_:)();
    v176 = OUTLINED_FUNCTION_25_15();
    v177(v176, v201);
    v178 = (v139)(v168, v74);
    MEMORY[0x25F899510](v178);
  }

  OUTLINED_FUNCTION_64_7();
  Date.FormatStyle.minute(_:)();
  v179 = OUTLINED_FUNCTION_25_15();
  v180(v179);
  v181 = OUTLINED_FUNCTION_51_11();
  v139(v181);
  v182 = v207;
  v183 = v205;
  v184 = v209;
  (*(v207 + 104))(v205, *MEMORY[0x277CC9400], v209);
  static Date.FormatStyle.Symbol.TimeZone.specificName(_:)();
  (*(v182 + 8))(v183, v184);
  Date.FormatStyle.timeZone(_:)();
  v185 = OUTLINED_FUNCTION_129_5();
  v186(v185, v210);
  (v139)(v20, v74);
  (*(v150 + 8))(v215, v146);
  OUTLINED_FUNCTION_148();
}

void LLMFormatter.sanitized.getter()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_65_12();
  v38 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13TextSanitizer33_3BE4AA3428794E5481C5DF6D00897BA3LLVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13TextSanitizer33_3BE4AA3428794E5481C5DF6D00897BA3LLVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = v0;
  *(inited + 40) = 0xA800000000000000;
  *(inited + 48) = 32;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 1024;
  v4 = type metadata accessor for NSUserDefaults();
  v9 = static NSUserDefaults.llmPromptLineBreak.getter(v4, v5, v6, v7, v8);
  v11 = v10;
  *(inited + 72) = 4091452;
  *(inited + 80) = 0xE300000000000000;
  *(inited + 88) = v9;
  *(inited + 96) = v10;
  *(inited + 104) = 2;
  v15 = static NSUserDefaults.llmPromptLineBreak.getter(v9, v10, v12, v13, v14);
  v17 = v16;
  *(inited + 112) = 10;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  *(inited + 144) = 2;
  static NSUserDefaults.llmPromptLineBreak.getter(v15, v16, v18, v19, v20);
  OUTLINED_FUNCTION_65_12();
  *(inited + 152) = 28252;
  *(inited + 160) = 0xE200000000000000;
  v37 = v21;
  *(inited + 168) = v21;
  *(inited + 176) = v22;
  v36 = v22;
  *(inited + 184) = 2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    v23 = OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16(v23, v24, 1024);
    OUTLINED_FUNCTION_74_13();
  }

  v25 = v9 == 4091452 && v11 == 0xE300000000000000;
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    v26 = OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16(v26, v27, 2);
    OUTLINED_FUNCTION_74_13();
  }

  v28 = v15 == 10 && v17 == 0xE100000000000000;
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    v29 = OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16(v29, v30, 2);
    OUTLINED_FUNCTION_74_13();
  }

  v31 = v37 == 28252 && v36 == 0xE200000000000000;
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    v32 = OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16(v32, v33, 2);
    OUTLINED_FUNCTION_74_13();
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_14_17();
  OUTLINED_FUNCTION_30_14();
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  v34 = OUTLINED_FUNCTION_17_21();
  v35(v34, v38);

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_148();
}

OmniSearch::LLMFormatter::StringInterpolation __swiftcall LLMFormatter.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v2 = 10 * interpolationCount;
  if ((interpolationCount * 10) >> 64 != (10 * interpolationCount) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = __OFADD__(literalCapacity, v2);
  literalCapacity += v2;
  if (v3)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x25F89F5D0](literalCapacity);
  literalCapacity = 0;
  interpolationCount = 0xE000000000000000;
LABEL_6:
  result.resolvedOutput._object = interpolationCount;
  result.resolvedOutput._countAndFlagsBits = literalCapacity;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.appendInterpolation(_:)()
{
  outlined init with copy of EagerResolutionService?();
  if (!v11)
  {
    return outlined destroy of IntentApplication?(&v10, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  }

  outlined init with take of ResponseOverrideMatcherProtocol(&v10, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_19_14();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_36();
    (*(v7 + 16))(v6 - v5);
    OUTLINED_FUNCTION_37_5();
    v8 = String.init<A>(describing:)();
    MEMORY[0x25F89F6C0](v8);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

void EditorialDateFormatter.init(now:calendar:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_46_14();
  v18 = type metadata accessor for Date();
  OUTLINED_FUNCTION_135();
  v42 = v19;
  (*(v19 + 16))(v7, v5, v18);
  v20 = type metadata accessor for EditorialDateFormatter(0);
  v21 = *(v20 + 28);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_135();
  v38 = v23;
  v39 = v22;
  (*(v23 + 16))(v7 + v21, v3);
  v41 = v20;
  *(v7 + *(v20 + 32)) = (*(*v1 + 80))(16) & 1;
  v24 = *MEMORY[0x277CC9968];
  v25 = *(v10 + 104);
  v25(v14, v24, v8);
  v40 = v3;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v26 = *(v10 + 8);
  v27 = v8;
  v26(v14, v8);
  v28 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v28, v29, v18);
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v31 = *(v42 + 32);
    v32 = OUTLINED_FUNCTION_71_9(*(v41 + 20));
    v31(v32);
    v25(v14, v24, v27);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v26(v14, v27);
    v33 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v33, v34, v18);
    if (!v30)
    {

      (*(v38 + 8))(v40, v39);
      v35 = OUTLINED_FUNCTION_41_10();
      v36(v35, v18);
      v37 = OUTLINED_FUNCTION_71_9(*(v41 + 24));
      v31(v37);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  __break(1u);
}

uint64_t EditorialDateFormatter.DateInput.init(includesTime:includesWeekday:date:locale:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v11 = *(v10 + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_17();
  result = (*(v12 + 32))(&a6[v11], a3);
  v14 = &a6[*(v10 + 28)];
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.resolvedOutput.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  outlined init with copy of EagerResolutionService?();
  if (!v26)
  {
    return outlined destroy of IntentApplication?(&v25, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  }

  outlined init with take of ResponseOverrideMatcherProtocol(&v25, v27);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_63_0();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v27, v28);
    OUTLINED_FUNCTION_19_14();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_36();
    (*(v14 + 16))(v13 - v12);
    String.init<A>(describing:)();
    *&v25 = a1;
    *(&v25 + 1) = a2;

    OUTLINED_FUNCTION_48_9();
    v15 = OUTLINED_FUNCTION_63_0();
    MEMORY[0x25F89F6C0](v15);
    OUTLINED_FUNCTION_57_9();

    v16 = OUTLINED_FUNCTION_63_0();
    v18 = specialized BidirectionalCollection.last.getter(v16, v17);
    v20 = v19;

    if (!v20)
    {
      goto LABEL_11;
    }

    if (v18 == 46 && v20 == 0xE100000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_37_5();
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
LABEL_11:
        if ((a4 & 1) == 0)
        {
          v23 = OUTLINED_FUNCTION_40_15();
          MEMORY[0x25F89F6C0](v23);
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(Swift::OpaquePointer _, Swift::String separator)
{
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v2 + 32;
    do
    {
      outlined init with copy of EagerResolutionService?();
      v28[0] = v31;
      v28[1] = v32;
      v29 = v33;
      if (*(&v32 + 1))
      {
        outlined init with take of ResponseOverrideMatcherProtocol(v28, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v9;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v7);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v10;
        }

        *(v5 + 16) = v8 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(v30, v5 + 40 * v8 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    *&v30[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = *&v30[0];
    v13 = v5 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v13, &v31);
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      OUTLINED_FUNCTION_19_14();
      MEMORY[0x28223BE20](v14);
      OUTLINED_FUNCTION_36();
      (*(v17 + 16))(v16 - v15);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
      *&v30[0] = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_26_3(v21);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v22 + 1, 1);
        v12 = *&v30[0];
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v13 += 40;
      --v11;
    }

    while (v11);

    *&v31 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x25F89F6C0](v25, v27);
  }

  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:ifAll:)(Swift::String _, Swift::OpaquePointer ifAll)
{
  v22 = _;
  v3 = *(ifAll._rawValue + 2);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v5 = ifAll._rawValue + 32;
    do
    {
      v6 = OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_42_12(v6, v7, v8, v9, v10, v11, v12, v13, v22._countAndFlagsBits, v22._object, *&v23[0], *(&v23[0] + 1), *&v23[1], *(&v23[1] + 1), *&v23[2], *(&v23[2] + 1), v24, *(&v24 + 1), v25, v26, v27, v28._countAndFlagsBits, v28._object, v29);
      if (v14)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(v23, &v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v17;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v15);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v18;
        }

        *(v4 + 16) = v16 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v24, v4 + 40 * v16 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(v23, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v19 = *(v4 + 16);

  if (v19)
  {
    v28 = v22;

    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_57_9();

    v20._countAndFlagsBits = 8236;
    v20._object = 0xE200000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(ifAll, v20);
    v21 = OUTLINED_FUNCTION_40_15();
    MEMORY[0x25F89F6C0](v21);
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:startNewLinesIf:)(Swift::String _, Swift::OpaquePointer startNewLinesIf)
{
  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v4 = *(startNewLinesIf._rawValue + 2);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = startNewLinesIf._rawValue + 32;
    do
    {
      v7 = OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_42_12(v7, v8, v9, v10, v11, v12, v13, v14, countAndFlagsBits, v37, *&v38[0], *(&v38[0] + 1), *&v38[1], *(&v38[1] + 1), *&v38[2], *(&v38[2] + 1), v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45);
      if (v15)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(v38, &v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v18;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v19;
        }

        *(v5 + 16) = v17 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v39, v5 + 40 * v17 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(v38, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v20 = *(v5 + 16);

  if (v20)
  {
    v43 = countAndFlagsBits;
    v44 = object;
    type metadata accessor for NSUserDefaults();

    v26 = static NSUserDefaults.llmPromptLineBreak.getter(v21, v22, v23, v24, v25);
    MEMORY[0x25F89F6C0](v26);

    MEMORY[0x25F89F6C0](v43, v44);

    v32 = static NSUserDefaults.llmPromptLineBreak.getter(v27, v28, v29, v30, v31);
    v34 = v33;
    v35._countAndFlagsBits = v32;
    v35._object = v34;
    LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(startNewLinesIf, v35);
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(Swift::String _, Swift::OpaquePointer_optional names)
{
  if (names.value._rawValue)
  {
    rawValue = names.value._rawValue;
    if (*(names.value._rawValue + 2))
    {
      v5[1] = _._object;

      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_57_9();

      v5[0] = rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v3 = lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_56_9(v3);
      OUTLINED_FUNCTION_79_10();
      outlined destroy of IntentApplication?(v5, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      v4 = OUTLINED_FUNCTION_40_15();
      MEMORY[0x25F89F6C0](v4);
    }
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(names:)(Swift::OpaquePointer_optional names)
{
  if (names.value._rawValue)
  {
    if (*(names.value._rawValue + 2))
    {
      rawValue = names.value._rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v1 = lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_56_9(v1);
      OUTLINED_FUNCTION_79_10();
      outlined destroy of IntentApplication?(&rawValue, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:names:isFromMe:countToShow:suffix:skipValue:)(Swift::String _, Swift::OpaquePointer_optional names, Swift::Bool isFromMe, Swift::Int countToShow, Swift::String suffix, Swift::Bool skipValue)
{
  if ((suffix._object & 1) == 0 && (rawValue = names.value._rawValue) != 0 && *(names.value._rawValue + 2))
  {
    countAndFlagsBits = suffix._countAndFlagsBits;
    is_nil = names.is_nil;

    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](_._countAndFlagsBits, _._object);

    v14.value._rawValue = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(rawValue, is_nil);
    v14.is_nil = isFromMe;
    v11._countAndFlagsBits = countAndFlagsBits;
    LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(v14, countToShow, v11);
    OUTLINED_FUNCTION_78_11();
  }

  else
  {
    OUTLINED_FUNCTION_78_11();
  }
}

uint64_t static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v4 = v2 + 40;
      v2 = v11;
      do
      {

        v5 = OUTLINED_FUNCTION_121_0();
        MEMORY[0x25F89F6C0](v5);
        MEMORY[0x25F89F6C0](41, 0xE100000000000000);

        v7 = *(v11 + 16);
        v6 = *(v11 + 24);
        if (v7 >= v6 >> 1)
        {
          v9 = OUTLINED_FUNCTION_26_3(v6);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9, v7 + 1, 1);
        }

        *(v11 + 16) = v7 + 1;
        v8 = v11 + 16 * v7;
        *(v8 + 32) = 673211757;
        *(v8 + 40) = 0xE400000000000000;
        v4 += 16;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
  }

  return v2;
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(Swift::OpaquePointer_optional names, Swift::Int countToShow, Swift::String suffix)
{
  if (!names.value._rawValue)
  {
    return;
  }

  rawValue = names.value._rawValue;
  v4 = *(names.value._rawValue + 2);
  if (!v4)
  {
    return;
  }

  countAndFlagsBits = suffix._countAndFlagsBits;
  if (*&names.is_nil <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *&names.is_nil;
  }

  v8 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(0, v7);
  specialized Array.elements(at:)(v8, rawValue);
  v10 = v9;

  if (*(v10 + 16))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v10 = v23;
LABEL_8:
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = v10 + 16 * v12;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    *(v10 + 16) = v12;
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v24 = v7;
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v16 = BidirectionalCollection<>.joined(separator:)();
      v18 = v17;

      MEMORY[0x25F89F6C0](v15, v14);

      v19 = OUTLINED_FUNCTION_63_0();
      MEMORY[0x25F89F6C0](v19);

      v20 = v16;
      v21 = v18;
      if (v24 < v4)
      {
        MEMORY[0x25F89F6C0](0x6C6120746520, 0xE600000000000000);
        v20 = v16;
        v21 = v18;
      }

      MEMORY[0x25F89F6C0](v20, v21);
    }

    else
    {

      MEMORY[0x25F89F6C0](v15, v14);
    }

    v22 = HIBYTE(countAndFlagsBits) & 0xF;
    if ((countAndFlagsBits & 0x2000000000000000) == 0)
    {
      v22 = countToShow & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      MEMORY[0x25F89F6C0](countToShow, countAndFlagsBits);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:names:countToShow:suffix:skipValue:)(Swift::String _, Swift::OpaquePointer_optional names, Swift::Int countToShow, Swift::String suffix, Swift::Bool skipValue)
{
  if ((suffix._object & 1) == 0 && names.value._rawValue && *(names.value._rawValue + 2))
  {

    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](_._countAndFlagsBits, _._object);

    OUTLINED_FUNCTION_78_11();

    LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(v5, v6, *&v7);
  }

  else
  {
    OUTLINED_FUNCTION_78_11();
  }
}

void LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_155();
  v93 = v21;
  v94 = v23;
  v86 = v24;
  v87 = v25;
  v96 = __PAIR64__(v27, v26);
  v95 = v28;
  v92 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v32 = (v31 - v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  v88 = &v85 - v35;
  OUTLINED_FUNCTION_78_0();
  v89 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v85 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v90 = v39;
  v91 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v40 = &_s10Foundation4DateVSgMd;
  v41 = &_s10Foundation4DateVSgMR;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v42);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  v45 = &v85 - v44;
  v46 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_36();
  v52 = v51 - v50;
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_166(v45, 1, v46);
  if (v53)
  {
    v54 = &_s10Foundation4DateVSgMd;
    v55 = &_s10Foundation4DateVSgMR;
    v56 = v45;
LABEL_15:
    outlined destroy of IntentApplication?(v56, v54, v55);
    OUTLINED_FUNCTION_148();
    return;
  }

  (*(v48 + 32))(v52, v45, v46);
  v57 = v96;
  if (v96)
  {
    v58 = OUTLINED_FUNCTION_44_15();
    static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v58, v59, v60, v86, v87, v61, v62, v63, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
    if ((a21 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v64 = OUTLINED_FUNCTION_44_15();
    static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v64, v65, v66, v67, v68, v69, v70, v71, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
    if ((a21 & 1) == 0)
    {
LABEL_14:
      v79 = v92;
      (*(v48 + 16))(&v32[*(v92 + 24)], v52, v46);
      *v32 = v57 & 1;
      v32[1] = BYTE4(v96) & 1;
      v80 = &v32[*(v79 + 28)];
      *v80 = v41;
      v80[1] = v40;
      v97[3] = MEMORY[0x277D837D0];
      v97[4] = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_5_26();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v81, v82, MEMORY[0x277CC9420]);

      v83 = v91;
      Date.formatted<A>(_:)();
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v32, v84);
      (*(v90 + 8))(v22, v83);
      (*(v48 + 8))(v52, v46);
      v54 = &_ss23CustomStringConvertible_pSgMd;
      v55 = &_ss23CustomStringConvertible_pSgMR;
      v56 = v97;
      goto LABEL_15;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logging.answerSynthesis);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_25D85C000, v73, v74, "LLMFormatter using default timeZone GMT", v75, 2u);
    v41 = v94;
    OUTLINED_FUNCTION_42_0();
  }

  v76 = v88;
  TimeZone.init(secondsFromGMT:)();
  OUTLINED_FUNCTION_166(v76, 1, v89);
  v57 = v96;
  if (!v53)
  {
    v77 = OUTLINED_FUNCTION_51_11();
    v78(v77);
    Date.FormatStyle.timeZone.setter();
    v40 = v95;
    goto LABEL_14;
  }

  __break(1u);
}

void static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  v127 = v23;
  v131 = v24;
  v126[7] = v25;
  v141 = v26;
  type metadata accessor for Date.FormatStyle.Symbol.Year();
  OUTLINED_FUNCTION_14();
  v142 = v28;
  v143 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_3();
  v140 = v29;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Month();
  OUTLINED_FUNCTION_14();
  v138 = v31;
  v139 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  v137 = v32;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Day();
  OUTLINED_FUNCTION_14();
  v135 = v34;
  v136 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  v134 = v35;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  OUTLINED_FUNCTION_14();
  v126[5] = v37;
  v126[6] = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v126[4] = v38;
  OUTLINED_FUNCTION_78_0();
  v39 = type metadata accessor for FormatStyleCapitalizationContext();
  v40 = OUTLINED_FUNCTION_114(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_3();
  v130 = v41;
  OUTLINED_FUNCTION_78_0();
  v42 = type metadata accessor for TimeZone();
  v43 = OUTLINED_FUNCTION_114(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_3();
  v129 = v44;
  OUTLINED_FUNCTION_78_0();
  v45 = type metadata accessor for Calendar();
  v46 = OUTLINED_FUNCTION_114(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  v128 = v47;
  OUTLINED_FUNCTION_78_0();
  v48 = type metadata accessor for Locale();
  v49 = OUTLINED_FUNCTION_114(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  v53 = OUTLINED_FUNCTION_114(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  v56 = OUTLINED_FUNCTION_114(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v57);
  type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v132 = v59;
  v133 = v58;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_109();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v66);
  v68 = v126 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = v126 - v70;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_62_9();
  type metadata accessor for Date.FormatStyle.DateStyle();
  if (v127)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    if (!v131)
    {
      v89 = type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter(v89, v90, v91, v92, v93);
    }

    Locale.init(identifier:)();
    static Calendar.autoupdatingCurrent.getter();
    v94 = static TimeZone.autoupdatingCurrent.getter();
    MEMORY[0x25F899230](v94);
    v95 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899530](v95);
    Date.FormatStyle.weekday(_:)();
    v96 = OUTLINED_FUNCTION_41_10();
    v97(v96);
    v98 = *(v132 + 8);
    v99 = v22;
    v100 = v133;
    v101 = v98(v99, v133);
    MEMORY[0x25F899430](v101);
    Date.FormatStyle.day(_:)();
    v102 = OUTLINED_FUNCTION_129_5();
    v103(v102);
    v104 = v98(v68, v100);
    MEMORY[0x25F8994E0](v104);
    Date.FormatStyle.month(_:)();
    v105 = OUTLINED_FUNCTION_129_5();
    v106(v105);
    v98(v71, v100);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    v107 = OUTLINED_FUNCTION_129_5();
    v108(v107);
    v98(v21, v100);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    if (!v131)
    {
      v109 = type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter(v109, v110, v111, v112, v113);
    }

    OUTLINED_FUNCTION_76_9();
    OUTLINED_FUNCTION_37_5();
    Locale.init(identifier:)();
    static Calendar.autoupdatingCurrent.getter();
    v114 = static TimeZone.autoupdatingCurrent.getter();
    MEMORY[0x25F899230](v114);
    v115 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899430](v115);
    Date.FormatStyle.day(_:)();
    v116 = OUTLINED_FUNCTION_25_15();
    v117(v116);
    v118 = v133;
    v119 = *(v132 + 8);
    v120 = v119(v62, v133);
    MEMORY[0x25F8994E0](v120);
    v121 = v126[1];
    Date.FormatStyle.month(_:)();
    v122 = OUTLINED_FUNCTION_129_5();
    v123(v122);
    v119(v20, v118);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    v124 = OUTLINED_FUNCTION_41_10();
    v125(v124);
    v119(v121, v118);
  }

  OUTLINED_FUNCTION_148();
}

void LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)()
{
  OUTLINED_FUNCTION_155();
  if (v2)
  {
    v8 = v2;
    if (*(v2 + 16))
    {
      v9 = v7;
      v10 = v6;
      v11 = v5;
      v12 = v4;
      v13 = v3;
      v17 = v0;
      v18 = v1;

      OUTLINED_FUNCTION_48_9();
      MEMORY[0x25F89F6C0](v17, v18);

      MEMORY[0x28223BE20](v14);
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v13;
      v16[5] = v12;
      v16[6] = v11;
      v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DateVG_SSs5NeverOTg5(partial apply for closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:), v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      OUTLINED_FUNCTION_57_9();

      v15 = OUTLINED_FUNCTION_40_15();
      MEMORY[0x25F89F6C0](v15);
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a6;
  v9 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 16))(&v12[v13], a1, v14);
  *v12 = 257;
  v15 = &v12[*(v10 + 36)];
  *v15 = a2;
  *(v15 + 1) = a3;

  dispatch thunk of FormatStyle.format(_:)();
  return outlined destroy of EditorialDateFormatter.DateInput(v12, type metadata accessor for EditorialDateFormatter.DateInput);
}

void LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)()
{
  OUTLINED_FUNCTION_155();
  v96 = v3;
  v97 = v4;
  HIDWORD(v93) = v5;
  v94 = v6;
  v95 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v92 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_9();
  v98 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v90 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v87 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  v89 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v88 = v20;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v100 = v22;
  v101 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  v99 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v25 = OUTLINED_FUNCTION_114(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_46_14();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v85 - v32;
  v34 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v102 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v38 = v37;
  v91 = v9;
  outlined init with copy of EagerResolutionService?();
  v39 = type metadata accessor for DateComponents();
  v40 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v40, v41, v39);
  if (v46)
  {
    outlined destroy of IntentApplication?(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v34);
  }

  else
  {
    v86 = v0;
    DateComponents.date.getter();
    v45 = *(*(v39 - 8) + 8);
    v45(v2, v39);
    OUTLINED_FUNCTION_166(v33, 1, v34);
    if (!v46)
    {
      v85 = v45;
      v50 = v38;
      (*(v102 + 32))(v38, v33, v34);
      if ((v93 & 0x100000000) != 0)
      {
        v51 = OUTLINED_FUNCTION_67_11();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v51, v52, v53, v54, v55, v56, v57, v58, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
        v59 = v98;
        if (!v97)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v60 = OUTLINED_FUNCTION_67_11();
        v61 = v97;
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v60, v62, v63, v96, v97, v64, v65, v66, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
        v59 = v98;
        if (!v61)
        {
          goto LABEL_14;
        }
      }

      TimeZone.init(identifier:)();
      OUTLINED_FUNCTION_166(v1, 1, v59);
      if (!v46)
      {
        v72 = v90;
        v73 = v88;
        (*(v90 + 32))(v88, v1, v59);
        v74 = OUTLINED_FUNCTION_54_13();
        v75(v74);
        Date.FormatStyle.timeZone.setter();
        (*(v72 + 8))(v73, v59);
LABEL_20:
        v103[3] = MEMORY[0x277D837D0];
        v103[4] = MEMORY[0x277D83838];
        OUTLINED_FUNCTION_5_26();
        _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v80, v81, MEMORY[0x277CC9420]);
        v82 = v101;
        Date.formatted<A>(_:)();
        LLMFormatter.StringInterpolation.appendInterpolation(_:)();
        v83 = OUTLINED_FUNCTION_129_5();
        v84(v83, v82);
        (*(v102 + 8))(v50, v34);
        v47 = &_ss23CustomStringConvertible_pSgMd;
        v48 = &_ss23CustomStringConvertible_pSgMR;
        v49 = v103;
        goto LABEL_21;
      }

      outlined destroy of IntentApplication?(v1, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
LABEL_14:
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_166(v28, 1, v39);
      if (v46)
      {
        outlined destroy of IntentApplication?(v28, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        v70 = v92;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v59);
      }

      else
      {
        v70 = v92;
        DateComponents.timeZone.getter();
        v85(v28, v39);
        OUTLINED_FUNCTION_166(v70, 1, v59);
        if (!v71)
        {
          v76 = v90;
          v77 = v87;
          (*(v90 + 32))(v87, v70, v59);
          v78 = OUTLINED_FUNCTION_54_13();
          v79(v78);
          Date.FormatStyle.timeZone.setter();
          (*(v76 + 8))(v77, v59);
          goto LABEL_20;
        }
      }

      outlined destroy of IntentApplication?(v70, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
      goto LABEL_20;
    }
  }

  v47 = &_s10Foundation4DateVSgMd;
  v48 = &_s10Foundation4DateVSgMR;
  v49 = v33;
LABEL_21:
  outlined destroy of IntentApplication?(v49, v47, v48);
  OUTLINED_FUNCTION_148();
}

void LLMFormatter.StringInterpolation.appendInterpolation(_:date:locale:timeIsUnknown:timeZone:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_63_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_46_14();
  v14 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  outlined init with copy of EagerResolutionService?();
  v18 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v18, v19, v14);
  if (v20)
  {
    outlined destroy of IntentApplication?(v0, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  else
  {
    (*(v16 + 32))(v1, v0, v14);

    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](v5, v3);

    (*(v16 + 16))(v12, v1, v14);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
    LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)();
    outlined destroy of IntentApplication?(v12, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v21 = OUTLINED_FUNCTION_40_15();
    MEMORY[0x25F89F6C0](v21);
    (*(v16 + 8))(v1, v14);
  }

  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:dictionary:)(Swift::String _, Swift::OpaquePointer_optional dictionary)
{
  if (dictionary.value._rawValue)
  {
    rawValue = dictionary.value._rawValue;
    object = _._object;

    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_57_9();

    v37 = specialized _copyCollectionToContiguousArray<A>(_:)(rawValue);
    specialized MutableCollection<>.sort(by:)(&v37);
    v3 = 0;
    v4 = v37;
    v5 = *(v37 + 16);
    v6 = v37 + 56;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    for (i = (v6 + 32 * v3); ; i += 4)
    {
      if (v5 == v3)
      {

        v41 = v7;
        v23 = type metadata accessor for NSUserDefaults();
        v37 = static NSUserDefaults.llmPromptLineBreak.getter(v23, v24, v25, v26, v27);
        object = v28;
        v32 = static NSUserDefaults.llmPromptLineBreak.getter(v37, v28, v29, v30, v31);
        MEMORY[0x25F89F6C0](v32);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_121_0();
        v33 = BidirectionalCollection<>.joined(separator:)();
        v35 = v34;

        v39 = MEMORY[0x277D837D0];
        v40 = MEMORY[0x277D83838];
        v37 = v33;
        object = v35;
        LLMFormatter.StringInterpolation.appendInterpolation(_:)();
        outlined destroy of IntentApplication?(&v37, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        v36 = OUTLINED_FUNCTION_40_15();
        MEMORY[0x25F89F6C0](v36);
        return;
      }

      if (v3 >= *(v4 + 16))
      {
        break;
      }

      v9 = *(i - 2);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(i - 3) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v12 = *(i - 1);
        v11 = *i;
        v13 = HIBYTE(*i) & 0xF;
        if ((*i & 0x2000000000000000) == 0)
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          v37 = *(i - 3);
          object = v9;
          swift_bridgeObjectRetain_n();

          MEMORY[0x25F89F6C0](58, 0xE100000000000000);
          MEMORY[0x25F89F6C0](v12, v11);

          v14 = v37;
          v15 = object;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19);
            v7 = v20;
          }

          v17 = v7[2];
          v16 = v7[3];
          if (v17 >= v16 >> 1)
          {
            v21 = OUTLINED_FUNCTION_26_3(v16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21);
            v7 = v22;
          }

          ++v3;
          v7[2] = v17 + 1;
          v18 = &v7[2 * v17];
          v18[4] = v14;
          v18[5] = v15;
          goto LABEL_3;
        }
      }

      ++v3;
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance LLMFormatter.StringInterpolation@<X0>(Swift::Int a1@<X0>, Swift::Int a2@<X1>, OmniSearch::LLMFormatter::StringInterpolation *a3@<X8>)
{
  v5 = LLMFormatter.StringInterpolation.init(literalCapacity:interpolationCount:)(a1, a2);
  result = v5.resolvedOutput._countAndFlagsBits;
  *a3 = v5;
  return result;
}

uint64_t LLMFormatter.description.getter()
{
  OUTLINED_FUNCTION_134();

  return v0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMFormatter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialDateFormatter.DateInput.date.getter()
{
  return EditorialDateFormatter.DateInput.date.getter();
}

{
  v0 = OUTLINED_FUNCTION_113();
  v1(v0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_47_12();

  return v3(v2);
}

uint64_t EditorialDateFormatter.DateInput.locale.getter()
{
  type metadata accessor for EditorialDateFormatter.DateInput(0);

  return OUTLINED_FUNCTION_94();
}

OmniSearch::EditorialDateFormatter::ComponentOptions __swiftcall EditorialDateFormatter.ComponentOptions.init(minute:hour:weekday:year:)(Swift::Bool minute, Swift::Bool hour, Swift::Bool weekday, Swift::Bool year)
{
  if (year)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  if (weekday)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (hour)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 0xFFFFFFFE | minute | v5 | v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance EditorialDateFormatter.ComponentOptions(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (a1[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v2;
  v7 = v4 | v3;
  if (a2[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  if (a2[2])
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (a2[1])
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return static EditorialDateFormatter.ComponentOptions.== infix(_:_:)(v6 | v7, v10 | *a2 | v9 | v8);
}

uint64_t EditorialDateFormatter.now.getter()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t EditorialDateFormatter.yesterday.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for EditorialDateFormatter(v0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_47_12();

  return v2(v1);
}

uint64_t EditorialDateFormatter.calendar.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for EditorialDateFormatter(v0);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_47_12();

  return v2(v1);
}

void EditorialDateFormatter.format(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  v24 = v21;
  v26 = v25;
  type metadata accessor for Date.FormatStyle.Symbol.Minute();
  OUTLINED_FUNCTION_14();
  v205 = v28;
  v206 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_3();
  v204 = v29;
  OUTLINED_FUNCTION_78_0();
  v181 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  OUTLINED_FUNCTION_14();
  v180 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v32);
  type metadata accessor for Date.FormatStyle.Symbol.Hour();
  OUTLINED_FUNCTION_14();
  v202 = v34;
  v203 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  v201 = v35;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Year();
  OUTLINED_FUNCTION_14();
  v199 = v37;
  v200 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v198 = v38;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Date.FormatStyle.Symbol.Month();
  OUTLINED_FUNCTION_14();
  v196 = v40;
  v197 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_3();
  v195 = v41;
  OUTLINED_FUNCTION_78_0();
  v194 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  OUTLINED_FUNCTION_14();
  v193 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v44);
  v191 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  OUTLINED_FUNCTION_14();
  v190 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v47);
  v48 = type metadata accessor for FormatStyleCapitalizationContext();
  v49 = OUTLINED_FUNCTION_114(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v50);
  v51 = type metadata accessor for TimeZone();
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v53);
  v54 = type metadata accessor for Calendar();
  v55 = OUTLINED_FUNCTION_114(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v56);
  v57 = type metadata accessor for Locale();
  v58 = OUTLINED_FUNCTION_114(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  OUTLINED_FUNCTION_114(v59);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_15_4(&v177 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  OUTLINED_FUNCTION_114(v62);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_28_2(&v177 - v64);
  type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v209 = v66;
  v210 = v65;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_109();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  v207 = v74;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  v78 = &v177 - v77;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_14_2();
  v81 = OUTLINED_FUNCTION_28_2(v80);
  type metadata accessor for EditorialDateFormatter.DateInput(v81);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_109();
  v85 = v83 - v84;
  MEMORY[0x28223BE20](v86);
  v88 = &v177 - v87;
  v212 = v89;
  v213 = v26;
  v90 = &v26[*(v89 + 28)];
  v91 = v90[1];
  v189 = v78;
  if (v91)
  {
    v208 = *v90;
    v211 = v91;
  }

  else
  {
    v92 = type metadata accessor for NSUserDefaults();
    v208 = static NSUserDefaults.fallbackLocale.getter(v92, v93, v94, v95, v96);
    v211 = v97;
  }

  v98 = *(v24 + *(type metadata accessor for EditorialDateFormatter(0) + 32));
  v99 = one-time initialization token for answerSynthesis;

  if (v98 == 1)
  {
    if (v99 != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_23_17();
    outlined init with copy of EditorialDateFormatter.DateInput();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v178 = v23;
      v105 = v104;
      v214 = v104;
      *v103 = 136315138;
      type metadata accessor for Date();
      OUTLINED_FUNCTION_2_29();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v106, v107, MEMORY[0x277CC95B8]);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v88, v108);
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v103 + 4) = v109;
      _os_log_impl(&dword_25D85C000, v101, v102, "OmniSearch/editorialDates FF enabled. Return editorial date formatted string for %s.", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v23 = v178;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v88, v119);
    }

    EditorialDateFormatter.components(for:)();
    if (HIDWORD(v120))
    {

      v139 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v139 setDateStyle_];
      [v139 setTimeStyle_];
      [v139 setDoesRelativeDateFormatting_];
      [v139 setFormattingContext_];
      isa = Date._bridgeToObjectiveC()().super.isa;
      v141 = [v139 stringFromDate_];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v121 = v120;
      type metadata accessor for Date.FormatStyle.DateStyle();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
      type metadata accessor for Date.FormatStyle.TimeStyle();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
      Locale.init(identifier:)();
      OUTLINED_FUNCTION_70_8();
      static Calendar.autoupdatingCurrent.getter();
      OUTLINED_FUNCTION_30_14();
      static TimeZone.autoupdatingCurrent.getter();
      OUTLINED_FUNCTION_66_10();
      MEMORY[0x25F899230]();
      Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
      OUTLINED_FUNCTION_30_14();
      if ((v121 & 0x10000) != 0)
      {
        MEMORY[0x25F899530]();
      }

      else
      {
        MEMORY[0x25F899540]();
      }

      v152 = v209;
      v153 = v201;
      v154 = v198;
      Date.FormatStyle.weekday(_:)();
      v155 = OUTLINED_FUNCTION_17_21();
      v156(v155, v191);
      v157 = *(v152 + 8);
      v158 = v22;
      v159 = v210;
      v160 = v157(v158, v210);
      v161 = v192;
      MEMORY[0x25F899430](v160);
      OUTLINED_FUNCTION_64_7();
      Date.FormatStyle.day(_:)();
      OUTLINED_FUNCTION_4_4();
      v162(v161, v194);
      v163 = v157(v20, v159);
      MEMORY[0x25F8994E0](v163);
      Date.FormatStyle.month(_:)();
      v164 = OUTLINED_FUNCTION_41_10();
      v165(v164);
      v166 = v157(v23, v159);
      if ((v121 & 0x1000000) != 0)
      {
        static Date.FormatStyle.Symbol.Year.extended(minimumLength:)();
      }

      else
      {
        MEMORY[0x25F8994B0](v166);
      }

      v167 = v188;
      v168 = v207;
      Date.FormatStyle.year(_:)();
      (*(v199 + 8))(v154, v200);
      v157(v168, v159);
      if ((v121 & 0x100) != 0)
      {
        OUTLINED_FUNCTION_66_10();
        static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
        static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
        OUTLINED_FUNCTION_4_4();
        v169(v168, v181);
      }

      else
      {
        static Date.FormatStyle.Symbol.Hour.omitted.getter();
      }

      v170 = v189;
      Date.FormatStyle.hour(_:)();
      (*(v202 + 8))(v153, v203);
      v171 = v157(v167, v159);
      if (v121)
      {
        MEMORY[0x25F899510](v171);
      }

      else
      {
        MEMORY[0x25F899500](v171);
      }

      Date.FormatStyle.minute(_:)();
      v172 = OUTLINED_FUNCTION_41_10();
      v173(v172);
      v157(v170, v159);
      OUTLINED_FUNCTION_5_26();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v174, v175, MEMORY[0x277CC9420]);
      OUTLINED_FUNCTION_121_0();
      Date.formatted<A>(_:)();
      v176 = OUTLINED_FUNCTION_121_0();
      (v157)(v176);
    }
  }

  else
  {
    if (v99 != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_23_17();
    outlined init with copy of EditorialDateFormatter.DateInput();
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v214 = v114;
      *v113 = 136315138;
      type metadata accessor for Date();
      OUTLINED_FUNCTION_2_29();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v115, v116, MEMORY[0x277CC95B8]);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v85, v117);
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v113 + 4) = v118;
      _os_log_impl(&dword_25D85C000, v111, v112, "OmniSearch/editorialDates FF disabled. Return original date formatted string for %s.", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v85, v130);
    }

    v131 = v210;
    v132 = (v209 + 8);
    if (*v213 == 1)
    {
      v133 = OUTLINED_FUNCTION_39_13();
      static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v133, v134, v135, 0, 0, v136, v137, v138, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);
    }

    else
    {
      v142 = OUTLINED_FUNCTION_39_13();
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v142, v143, v144, v145, v146, v147, v148, v149, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);
    }

    OUTLINED_FUNCTION_5_26();
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v150, v151, MEMORY[0x277CC9420]);
    Date.formatted<A>(_:)();
    (*v132)(v69, v131);
  }

  OUTLINED_FUNCTION_148();
}

void EditorialDateFormatter.components(for:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = *(type metadata accessor for EditorialDateFormatter.DateInput(0) + 24);
  EditorialDateFormatter.isThisWeek(_:)(&v1[v9]);
  type metadata accessor for EditorialDateFormatter(0);
  v11 = *(v4 + 104);
  v11(v8, *MEMORY[0x277CC9988], v2);
  Calendar.isDate(_:equalTo:toGranularity:)();
  v10 = *(v4 + 8);
  v10(v8, v2);
  if (*v1 == 1)
  {
    v11(v8, *MEMORY[0x277CC99A0], v2);
    Calendar.component(_:from:)();
    v10(v8, v2);
  }

  EditorialDateFormatter.isYesterdayTodayOrTomorrow(_:)(&v1[v9]);
  OUTLINED_FUNCTION_148();
}

uint64_t EditorialDateFormatter.isThisWeek(_:)(uint64_t a1)
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialDateFormatter(0);
  v5 = *(v2 + 104);
  v5(v4, *MEMORY[0x277CC9940], v1);
  v6 = Calendar.isDate(_:equalTo:toGranularity:)();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    v5(v4, *MEMORY[0x277CC9988], v1);
    v8 = Calendar.isDate(_:equalTo:toGranularity:)();
    v7(v4, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t EditorialDateFormatter.isYesterdayTodayOrTomorrow(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for EditorialDateFormatter(0) + 28);
  v7 = *MEMORY[0x277CC9968];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v13[0] = v6;
  v13[1] = a1;
  LOBYTE(v6) = Calendar.isDate(_:equalTo:toGranularity:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6 & 1) != 0 || (v8(v5, v7, v2), v10 = Calendar.isDate(_:equalTo:toGranularity:)(), v9(v5, v2), (v10))
  {
    v11 = 1;
  }

  else
  {
    v8(v5, v7, v2);
    v11 = Calendar.isDate(_:equalTo:toGranularity:)();
    v9(v5, v2);
  }

  return v11 & 1;
}

uint64_t static EditorialDateFormatter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_134();
  if (static Date.== infix(_:_:)() & 1) != 0 && (v2 = type metadata accessor for EditorialDateFormatter(0), (static Date.== infix(_:_:)()) && (static Date.== infix(_:_:)() & 1) != 0 && (MEMORY[0x25F899820](v1 + *(v2 + 28), v0 + *(v2 + 28)))
  {
    v3 = *(v1 + *(v2 + 32)) ^ *(v0 + *(v2 + 32)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t EditorialDateFormatter.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827310 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6164726574736579 && a2 == 0xE900000000000079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F72726F6D6F74 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x800000025DBF3AD0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t EditorialDateFormatter.CodingKeys.stringValue.getter(char a1)
{
  result = 7827310;
  switch(a1)
  {
    case 1:
      result = 0x6164726574736579;
      break;
    case 2:
      result = 0x776F72726F6D6F74;
      break;
    case 3:
      result = 0x7261646E656C6163;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EditorialDateFormatter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EditorialDateFormatter.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EditorialDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EditorialDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_29_11(v3);
  if (!v2)
  {
    v13 = type metadata accessor for EditorialDateFormatter(0);
    v14 = *(v13 + 20);
    v23 = 1;
    OUTLINED_FUNCTION_29_11(v3 + v14);
    v15 = *(v13 + 24);
    v22 = 2;
    OUTLINED_FUNCTION_29_11(v3 + v15);
    v21 = 3;
    type metadata accessor for Calendar();
    OUTLINED_FUNCTION_13_11();
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v16, v17, MEMORY[0x277CC99F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void EditorialDateFormatter.hash(into:)(uint64_t a1)
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v2, v3, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_55_10();
  v4 = type metadata accessor for EditorialDateFormatter(0);
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_55_10();
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_13_11();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v5, v6, MEMORY[0x277CC99F8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v4 + 32)));
}

Swift::Int EditorialDateFormatter.hashValue.getter()
{
  Hasher.init(_seed:)();
  EditorialDateFormatter.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t EditorialDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v54 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v49 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v48 = v6;
  OUTLINED_FUNCTION_78_0();
  v52 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v50 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_2();
  v51 = v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMR);
  OUTLINED_FUNCTION_14();
  v53 = v15;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for EditorialDateFormatter(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();
  v56 = v18;
  v24 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v2;
  v44 = v11;
  v45 = v19;
  v46 = v23;
  v57 = a1;
  v26 = v54;
  v62 = 0;
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v27, v28, MEMORY[0x277CC95A0]);
  v30 = v51;
  v29 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = *(v50 + 32);
  v51(v46, v30, v29);
  v61 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51(v46 + v45[5], v25, v29);
  v60 = 2;
  v31 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v49;
  v51(v46 + v45[6], v31, v29);
  v59 = 3;
  OUTLINED_FUNCTION_13_11();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v33, v34, MEMORY[0x277CC9A00]);
  v35 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 32))(v46 + v45[7], v35, v26);
  v58 = 4;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v57;
  v38 = v36;
  v39 = OUTLINED_FUNCTION_61_12();
  v40(v39);
  *(v46 + v45[8]) = v38 & 1;
  outlined init with copy of EditorialDateFormatter.DateInput();
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v41 = OUTLINED_FUNCTION_37_5();
  return outlined destroy of EditorialDateFormatter.DateInput(v41, v42);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditorialDateFormatter(uint64_t a1)
{
  Hasher.init(_seed:)();
  EditorialDateFormatter.hash(into:)(v2);
  return Hasher._finalize()();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v93 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v93;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        v8 = v88;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v8);
        v8 = v89;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v92;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_69:
            if (v55)
            {
              goto LABEL_109;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_112;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_117;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v46 < 2)
          {
            goto LABEL_111;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_84:
          if (v70)
          {
            goto LABEL_114;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (v77 < v69)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v84 < v82)
          {
            goto LABEL_104;
          }

          v85 = v8;
          v86 = v8[2];
          if (v49 > v86)
          {
            goto LABEL_105;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_106;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_98;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_107;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_108;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_110;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v96, *result, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_OWORD *a1, void *a2, _OWORD *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && v6[1] == v4[1];
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 4;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 2;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 4;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = v13[1];
    *v7 = *v13;
    v7[1] = v14;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_19:
  v15 = v6 - 4;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 2 == v6;
      v6 -= 4;
      if (!v12)
      {
        v19 = v15[1];
        *v5 = *v15;
        v5[1] = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 2))
    {
      v18 = *(v10 - 1);
      *v5 = *(v10 - 2);
      v5[1] = v18;
    }

    v10 -= 4;
  }

LABEL_36:
  v20 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v20])
  {
    memmove(v6, v4, 32 * v20);
  }

  return 1;
}

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of EditorialDateFormatter.DateInput()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of EditorialDateFormatter.DateInput(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LLMFormatter and conformance LLMFormatter()
{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation;
  if (!lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation);
  }

  return result;
}

uint64_t type metadata completion function for EditorialDateFormatter(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for EditorialDateFormatter.DateInput(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for EditorialDateFormatter.ComponentOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for EditorialDateFormatter.ComponentOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EditorialDateFormatter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for TextSanitizer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextSanitizer(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_21_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_48_9()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_55_10()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_56_9(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

void OUTLINED_FUNCTION_57_9()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_79_10()
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:)();
}

Swift::String __swiftcall SearchResultItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  SearchResultItem.associatedValue.getter(v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 56))(countAndFlagsBits, object, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v5 = OUTLINED_FUNCTION_94();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15OmniSearchTypes5PhotoV7elementtMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(*v1 + 16);
  if (v7 == v8)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v7 >= v8)
    {
      __break(1u);
    }

    else
    {
      v9 = type metadata accessor for Photo();
      v10 = *(v9 - 8);
      v11 = *(v10 + 16);
      v12 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7;
      v1[1] = v7 + 1;
      v13 = *(v3 + 48);
      v14 = v1[2];
      *v5 = v14;
      v11(&v5[v13], v12, v9);
      if (!__OFADD__(v14, 1))
      {
        v1[2] = v14 + 1;
        outlined init with take of SearchResultItem?(v5, a1, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMR);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS8bundleId_SS03docB0tMd, &_sSS8bundleId_SS03docB0tMR);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  if (v0 >> 62)
  {
    if (v0 >= 0)
    {
      v0 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x25F8A01B0](v0);
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v22;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F89FFD0](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
      v20 = v7;
      v21 = &protocol witness table for IMSPIMessage;
      v19[0] = v6;
      v22 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1);
        v10 = v20;
        v11 = v21;
      }

      else
      {
        v10 = v7;
        v11 = &protocol witness table for IMSPIMessage;
      }

      ++v3;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x28223BE20](v12);
      OUTLINED_FUNCTION_36();
      (*(v15 + 16))(v14 - v13);
      v16 = OUTLINED_FUNCTION_32_3();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16, v17, v18, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v4 = v22;
    }

    while (v2 != v3);
LABEL_14:
    OUTLINED_FUNCTION_148();
    return;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(v1 + 16);
  if (v10)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v19;
    v12 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_233_3();
      outlined init with copy of SpotlightRankingItem?(v14, v15, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
      OUTLINED_FUNCTION_21_7();
      swift_dynamicCast();
      v19 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v17 + 1;
      outlined init with take of SearchResultItem?(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchResultItem.llmConsumableDescription.getter(uint64_t a1)
{
  SearchResultItem.associatedValue.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 56))(0, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return OUTLINED_FUNCTION_94();
}

void specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)()
{
  OUTLINED_FUNCTION_155();
  v31 = v1;
  v35 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14();
  v37 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v34 = v10;
  v11 = OUTLINED_FUNCTION_78_0();
  v12 = type metadata accessor for EditorialDateFormatter(v11);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v14 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  Date.init()();
  static Calendar.current.getter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  OUTLINED_FUNCTION_189_4();
  v25();
  (*(v16 + 16))(v0 + v12[7], v20, v14);
  v36 = v0;
  *(v0 + v12[8]) = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_editorialDates);
  v26 = *MEMORY[0x277CC9968];
  v33 = *(v37 + 104);
  v33(v6, v26, v35);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v32 = *(v37 + 8);
  v32(v6, v35);
  OUTLINED_FUNCTION_166(v34, 1, v21);
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v23 + 32);
    v28(v36 + v12[5], v34, v21);
    v33(v6, v26, v35);
    OUTLINED_FUNCTION_266_1();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v32(v6, v35);
    OUTLINED_FUNCTION_166(v6, 1, v21);
    if (!v27)
    {
      (*(v16 + 8))(v20, v14);
      v29 = OUTLINED_FUNCTION_158();
      v30(v29);
      v28(v36 + v12[6], v6, v21);
      outlined init with take of EditorialDateFormatter(v36, v31);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  __break(1u);
}

Swift::String __swiftcall EmailDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v305 = v7;
  v306 = v8;
  v296 = v9;
  v297 = v1;
  v295 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v292 = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_229_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  v290 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v291 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v288 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v289 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  v286 = v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v287 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  v284 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v285 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v40 = OUTLINED_FUNCTION_28_2(v39);
  v41 = type metadata accessor for EditorialDateFormatter.DateInput(v40);
  v42 = OUTLINED_FUNCTION_27_14(v41, &v303);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v43);
  v277 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v276 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v46);
  v47 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v294 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_2();
  v54 = OUTLINED_FUNCTION_28_2(v53);
  v55 = type metadata accessor for EditorialDateFormatter(v54);
  v56 = OUTLINED_FUNCTION_114(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v57);
  v59 = &v271 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v61 = OUTLINED_FUNCTION_114(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v64);
  v66 = &v271 - v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_21_17(v69, v70, v71, v72, v73, v74, v75, v76, v271);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_62_10();
  MEMORY[0x28223BE20](v78);
  v80 = &v271 - v79;
  v81 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if (static NSUserDefaults.sendInstantAnswerDocToAS.getter(v81))
  {
    v298 = 0;
    v299 = 0xE000000000000000;
    MEMORY[0x25F89F5D0](137);
    OUTLINED_FUNCTION_119_4();
    OUTLINED_FUNCTION_244_2();
    v82 = EmailDocument.from.getter();
    v83._countAndFlagsBits = OUTLINED_FUNCTION_261_1();
    v307.value._rawValue = v82;
    LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v83, v307);

    OUTLINED_FUNCTION_48_9();
    EmailDocument.date.getter();
    specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
    v84 = OUTLINED_FUNCTION_116_1();
    outlined init with copy of SpotlightRankingItem?(v84, v85, v86, v87);
    v88 = OUTLINED_FUNCTION_93_6();
    OUTLINED_FUNCTION_166(v88, v89, v47);
    if (v108)
    {
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v59, v90);
      outlined destroy of IntentApplication?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v80 = v2;
      v91 = v291;
      v92 = v289;
    }

    else
    {
      v97 = v47;
      v292 = v59;
      v98 = v294;
      v99 = OUTLINED_FUNCTION_227_1();
      v290 = v100;
      (v100)(v99, v2, v97);
      OUTLINED_FUNCTION_277_0();
      v101 = *(v98 + 16);
      v102 = OUTLINED_FUNCTION_226_1(v304);
      v101(v102, v5, v97);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v97);
      outlined init with copy of SpotlightRankingItem?(v59, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v106 = OUTLINED_FUNCTION_159_2();
      OUTLINED_FUNCTION_166(v106, v107, v97);
      v110 = v295;
      v109 = v296;
      if (v108)
      {
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v111, v112, v113);
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v114, v115, v116);
      }

      else
      {
        v136 = OUTLINED_FUNCTION_226_1(&v302);
        (v290)(v136, v3, v97);
        v137 = v109;
        OUTLINED_FUNCTION_113_9(v110, v109, v138, v139, v140, v141, v142, v143, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
        v290 = *(v274 + 24);
        v144 = v275;
        v101(&v290[v275], v59, v97);
        OUTLINED_FUNCTION_255_2();
        *v145 = v110;
        v145[1] = v137;
        v300 = MEMORY[0x277D837D0];
        v301 = MEMORY[0x277D83838];
        OUTLINED_FUNCTION_2_30();
        _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v146, v147, MEMORY[0x277CC9420]);

        OUTLINED_FUNCTION_227_1();
        Date.formatted<A>(_:)();
        OUTLINED_FUNCTION_178_5();
        OUTLINED_FUNCTION_1_45();
        outlined destroy of EditorialDateFormatter(v144, v148);
        OUTLINED_FUNCTION_4_4();
        v149 = OUTLINED_FUNCTION_51_4();
        v150(v149);
        (*(v98 + 8))(v273, v97);
        outlined destroy of IntentApplication?(v278, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v92 = v289;
      OUTLINED_FUNCTION_92_7();
      (*(v98 + 8))(v280, v97);
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v292, v151);
      v91 = v291;
    }

    outlined destroy of IntentApplication?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_115_7();
    v152 = WalletPass.description.getter();
    v154 = v287;
    v155 = v283;
    if (v153)
    {
      v156 = MEMORY[0x277D83838];
    }

    else
    {
      v152 = OUTLINED_FUNCTION_7_24();
    }

    v96 = v293;
    OUTLINED_FUNCTION_10_22(v152, v153, v156);
    OUTLINED_FUNCTION_179_5(0x3A7463656A627553, v157, v158);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v159 = NoteDocument.folderName.getter();
    if (v160)
    {
      v161 = MEMORY[0x277D83838];
    }

    else
    {
      v159 = OUTLINED_FUNCTION_7_24();
    }

    v162 = OUTLINED_FUNCTION_10_22(v159, v160, v161);
    OUTLINED_FUNCTION_248_2(v162, v163, v164);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v165 = EmailDocument.extractedEventsLLMConsumableDescription.getter();
    if (v166)
    {
      v167 = MEMORY[0x277D83838];
    }

    else
    {
      v165 = OUTLINED_FUNCTION_7_24();
    }

    OUTLINED_FUNCTION_10_22(v165, v166, v167);
    LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, v168, 0);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.dataDetectorResults.getter();
    v169 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_71_10(v155);
    if (v108)
    {
      outlined destroy of IntentApplication?(v155, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      OUTLINED_FUNCTION_78_12();
    }

    else
    {
      v170 = DataDetectorResults.description.getter();
      v300 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_252_3(v170, v171, MEMORY[0x277D83838]);
      OUTLINED_FUNCTION_51();
      (*(v172 + 8))(v155, v169);
    }

    v173 = v285;
    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_197_5(23, v174, v175);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v176 = EmailDocument.instantAnswerDescription.getter();
    if (v177)
    {
      v178 = MEMORY[0x277D83838];
    }

    else
    {
      v176 = OUTLINED_FUNCTION_7_24();
    }

    OUTLINED_FUNCTION_81_12(v176, v177, v178);
    OUTLINED_FUNCTION_53_12();
    LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v179, v180, v181, 0);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.partialExtractedAttributes.getter();
    type metadata accessor for PartialExtractedAttributes();
    v182 = OUTLINED_FUNCTION_211_3();
    OUTLINED_FUNCTION_9_5(v182);
    if (v108)
    {
      outlined destroy of IntentApplication?(v173, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      OUTLINED_FUNCTION_140_4();
      specialized PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)();
      OUTLINED_FUNCTION_6_18();
      v183 = OUTLINED_FUNCTION_236_2();
      v184(v183);
      v185 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v185);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedCard.getter();
    type metadata accessor for PreExtractedCard();
    v186 = OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_9_5(v186);
    if (v108)
    {
      outlined destroy of IntentApplication?(v154, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v187.value._countAndFlagsBits = OUTLINED_FUNCTION_140_4();
      PreExtractedCard.llmConsumableDescription(locale:)(v187);
      OUTLINED_FUNCTION_6_18();
      v188 = OUTLINED_FUNCTION_159_4();
      v189(v188);
      v190 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v190);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedContact.getter();
    type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_9_5(v92);
    if (v108)
    {
      outlined destroy of IntentApplication?(v92, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v191.value._countAndFlagsBits = OUTLINED_FUNCTION_140_4();
      PreExtractedContact.llmConsumableDescription(locale:)(v191);
      OUTLINED_FUNCTION_6_18();
      v192 = OUTLINED_FUNCTION_233_3();
      v193(v192);
      v194 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v194);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedSharedLink.getter();
    type metadata accessor for PreExtractedSharedLink();
    v195 = OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_9_5(v195);
    if (v108)
    {
      outlined destroy of IntentApplication?(v91, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v196.value._countAndFlagsBits = OUTLINED_FUNCTION_140_4();
      PreExtractedSharedLink.llmConsumableDescription(locale:)(v196);
      OUTLINED_FUNCTION_6_18();
      v197 = OUTLINED_FUNCTION_21_7();
      v198(v197);
      v199 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v199);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedBreadcrumb.getter();
    type metadata accessor for PreExtractedBreadcrumb();
    v200 = OUTLINED_FUNCTION_240_2();
    OUTLINED_FUNCTION_9_5(v200);
    if (!v108)
    {
      v201 = OUTLINED_FUNCTION_140_4();
LABEL_72:
      PreExtractedBreadcrumb.llmConsumableDescription(locale:)(*&v201);
      OUTLINED_FUNCTION_6_18();
      v266 = OUTLINED_FUNCTION_116_1();
      v267(v266);
      v265 = MEMORY[0x277D83838];
      goto LABEL_73;
    }
  }

  else
  {
    v298 = 0;
    v299 = 0xE000000000000000;
    MEMORY[0x25F89F5D0](126);
    OUTLINED_FUNCTION_119_4();
    OUTLINED_FUNCTION_244_2();
    v93 = EmailDocument.from.getter();
    v94._countAndFlagsBits = OUTLINED_FUNCTION_261_1();
    v308.value._rawValue = v93;
    LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v94, v308);

    OUTLINED_FUNCTION_48_9();
    EmailDocument.date.getter();
    specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
    outlined init with copy of SpotlightRankingItem?(v66, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_166(v5, 1, v47);
    if (v108)
    {
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v6, v95);
      outlined destroy of IntentApplication?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v66 = v5;
      v96 = v292;
      OUTLINED_FUNCTION_259_3();
    }

    else
    {
      v293 = v6;
      v117 = v294;
      v118 = *(v294 + 32);
      v119 = OUTLINED_FUNCTION_48_3();
      v118(v119);
      OUTLINED_FUNCTION_277_0();
      v120 = *(v117 + 16);
      v121 = OUTLINED_FUNCTION_51_4();
      (v120)(v121);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v47);
      v125 = OUTLINED_FUNCTION_118_0();
      outlined init with copy of SpotlightRankingItem?(v125, v126, v127, v128);
      OUTLINED_FUNCTION_166(v4, 1, v47);
      if (v129)
      {
        v93 = &_s10Foundation4DateVSgMR;
        OUTLINED_FUNCTION_47_11();
        outlined destroy of IntentApplication?(v130, v131, v132);
        OUTLINED_FUNCTION_47_11();
        outlined destroy of IntentApplication?(v133, v134, v135);
        v96 = v292;
        v220 = v294;
      }

      else
      {
        v203 = OUTLINED_FUNCTION_140_4();
        v118(v203);
        v93 = v295;
        v4 = v47;
        v204 = v296;
        OUTLINED_FUNCTION_113_9(v295, v296, v205, v206, v207, v208, v209, v210, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
        v211 = v274;
        v212 = v275;
        OUTLINED_FUNCTION_183_3();
        v120();
        OUTLINED_FUNCTION_254_1();
        v213 = (v212 + *(v211 + 28));
        *v213 = v93;
        v213[1] = v204;
        v300 = MEMORY[0x277D837D0];
        v301 = MEMORY[0x277D83838];
        OUTLINED_FUNCTION_2_30();
        _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v214, v215, MEMORY[0x277CC9420]);
        OUTLINED_FUNCTION_239_1();
        v47 = v4;

        OUTLINED_FUNCTION_251_3();
        v216 = v282;
        v217 = v277;
        OUTLINED_FUNCTION_142_3();
        Date.formatted<A>(_:)();
        OUTLINED_FUNCTION_178_5();
        OUTLINED_FUNCTION_1_45();
        outlined destroy of EditorialDateFormatter(v212, v218);
        OUTLINED_FUNCTION_4_4();
        v219(v216, v217);
        v220 = v294;
        OUTLINED_FUNCTION_172_4();
        v221 = OUTLINED_FUNCTION_140_4();
        v222(v221);
        outlined destroy of IntentApplication?(v279, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        v96 = v292;
      }

      OUTLINED_FUNCTION_92_7();
      (*(v220 + 8))(v281, v47);
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v293, v223);
      OUTLINED_FUNCTION_259_3();
    }

    outlined destroy of IntentApplication?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_115_7();
    v224 = WalletPass.description.getter();
    v226 = v286;
    if (v225)
    {
      v227 = MEMORY[0x277D83838];
    }

    else
    {
      v224 = OUTLINED_FUNCTION_7_24();
    }

    OUTLINED_FUNCTION_10_22(v224, v225, v227);
    OUTLINED_FUNCTION_179_5(0x3A7463656A627553, v228, v229);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v230 = NoteDocument.folderName.getter();
    if (v231)
    {
      v232 = MEMORY[0x277D83838];
    }

    else
    {
      v230 = OUTLINED_FUNCTION_7_24();
    }

    v233 = OUTLINED_FUNCTION_10_22(v230, v231, v232);
    OUTLINED_FUNCTION_248_2(v233, v234, v235);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v236 = EmailDocument.extractedEventsLLMConsumableDescription.getter();
    if (v237)
    {
      v238 = MEMORY[0x277D83838];
    }

    else
    {
      v236 = OUTLINED_FUNCTION_7_24();
    }

    OUTLINED_FUNCTION_10_22(v236, v237, v238);
    LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, v239, 0);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.dataDetectorResults.getter();
    v240 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_71_10(v93);
    if (v108)
    {
      outlined destroy of IntentApplication?(v93, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      OUTLINED_FUNCTION_78_12();
    }

    else
    {
      v241 = DataDetectorResults.description.getter();
      v300 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_252_3(v241, v242, MEMORY[0x277D83838]);
      OUTLINED_FUNCTION_51();
      (*(v243 + 8))(v93, v240);
    }

    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_197_5(23, v244, v245);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    v246 = v284;
    EmailDocument.partialExtractedAttributes.getter();
    type metadata accessor for PartialExtractedAttributes();
    v247 = OUTLINED_FUNCTION_211_3();
    OUTLINED_FUNCTION_9_5(v247);
    if (v108)
    {
      outlined destroy of IntentApplication?(v246, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      OUTLINED_FUNCTION_48_3();
      specialized PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)();
      OUTLINED_FUNCTION_6_18();
      v248 = OUTLINED_FUNCTION_236_2();
      v249(v248);
      v250 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v250);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedCard.getter();
    type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_9_5(v226);
    if (v108)
    {
      outlined destroy of IntentApplication?(v226, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v251.value._countAndFlagsBits = OUTLINED_FUNCTION_48_3();
      PreExtractedCard.llmConsumableDescription(locale:)(v251);
      OUTLINED_FUNCTION_6_18();
      v252 = OUTLINED_FUNCTION_181_4();
      v253(v252);
      v254 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v254);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedContact.getter();
    type metadata accessor for PreExtractedContact();
    v255 = OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_9_5(v255);
    if (v108)
    {
      outlined destroy of IntentApplication?(v47, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v256.value._countAndFlagsBits = OUTLINED_FUNCTION_48_3();
      PreExtractedContact.llmConsumableDescription(locale:)(v256);
      OUTLINED_FUNCTION_6_18();
      v257 = OUTLINED_FUNCTION_159_4();
      v258(v257);
      v259 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v259);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedSharedLink.getter();
    v260 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_9_5(v4);
    if (v108)
    {
      outlined destroy of IntentApplication?(v4, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
      OUTLINED_FUNCTION_12_23();
    }

    else
    {
      v261.value._countAndFlagsBits = OUTLINED_FUNCTION_48_3();
      PreExtractedSharedLink.llmConsumableDescription(locale:)(v261);
      OUTLINED_FUNCTION_6_18();
      (*(v262 + 8))(v4, v260);
      v263 = MEMORY[0x277D83838];
    }

    OUTLINED_FUNCTION_19_17(v263);
    outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_48_9();
    EmailDocument.preExtractedBreadcrumb.getter();
    type metadata accessor for PreExtractedBreadcrumb();
    v264 = OUTLINED_FUNCTION_240_2();
    OUTLINED_FUNCTION_9_5(v264);
    if (!v108)
    {
      v201 = OUTLINED_FUNCTION_48_3();
      goto LABEL_72;
    }
  }

  outlined destroy of IntentApplication?(v96, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_12_23();
LABEL_73:
  OUTLINED_FUNCTION_19_17(v265);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v269;
  result._countAndFlagsBits = v268;
  return result;
}

void specialized PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)()
{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v107 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v106 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v105 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v104 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_168_4(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v103 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v32);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](98);
  OUTLINED_FUNCTION_274_1();
  v34 = v0;
  PartialExtractedAttributes.party.getter();
  v35 = type metadata accessor for Party();
  OUTLINED_FUNCTION_166(v2, 1, v35);
  v37 = v6;
  if (v36)
  {
    v39 = v4;
    outlined destroy of IntentApplication?(v2, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    countAndFlagsBits = 0;
    object = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v38.value._countAndFlagsBits = v6;
    v39 = v4;
    v38.value._object = v4;
    v40 = Party.llmConsumableDescription(locale:)(v38);
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
    OUTLINED_FUNCTION_51();
    (*(v43 + 8))(v2, v35);
    v44 = MEMORY[0x277D83838];
  }

  v108 = countAndFlagsBits;
  v109 = object;
  OUTLINED_FUNCTION_23_18(v44);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  PartialExtractedAttributes.flightReservation.getter();
  v45 = type metadata accessor for FlightReservation();
  v46 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v46, v47, v45);
  if (v36)
  {
    outlined destroy of IntentApplication?(v1, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v51 = 0;
    v52 = 0;
    OUTLINED_FUNCTION_30_15();
    v48 = v37;
  }

  else
  {
    v48 = v37;
    v49.value._countAndFlagsBits = v37;
    v49.value._object = v39;
    v50 = FlightReservation.llmConsumableDescription(locale:)(v49);
    v51 = v50._countAndFlagsBits;
    v52 = v50._object;
    OUTLINED_FUNCTION_51();
    v53 = OUTLINED_FUNCTION_212();
    v54(v53);
    v55 = MEMORY[0x277D83838];
  }

  v108 = v51;
  v109 = v52;
  OUTLINED_FUNCTION_23_18(v55);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v56 = v34;
  PartialExtractedAttributes.hotelReservation.getter();
  v57 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_50_12(v29);
  if (v36)
  {
    outlined destroy of IntentApplication?(v29, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    v60 = 0;
    v61 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v58.value._countAndFlagsBits = v48;
    v58.value._object = v39;
    v59 = HotelReservation.llmConsumableDescription(locale:)(v58);
    v60 = v59._countAndFlagsBits;
    v61 = v59._object;
    OUTLINED_FUNCTION_51();
    (*(v62 + 8))(v29, v57);
    v63 = MEMORY[0x277D83838];
  }

  v64 = v107;
  v65 = v105;
  v108 = v60;
  v109 = v61;
  OUTLINED_FUNCTION_23_18(v63);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v66 = v56;
  PartialExtractedAttributes.restaurantReservation.getter();
  type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_9_5(v25);
  v67 = v106;
  if (v36)
  {
    outlined destroy of IntentApplication?(v25, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v68.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v66 = v25;
    RestaurantReservation.llmConsumableDescription(locale:)(v68);
    OUTLINED_FUNCTION_6_18();
    v69 = OUTLINED_FUNCTION_181_4();
    v70(v69);
    v71 = MEMORY[0x277D83838];
  }

  v108 = v29;
  v109 = v66;
  OUTLINED_FUNCTION_23_18(v71);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v72 = v103;
  v73 = v56;
  PartialExtractedAttributes.rentalCarReservation.getter();
  type metadata accessor for RentalCarReservation();
  v74 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v74);
  v75 = v104;
  if (v36)
  {
    outlined destroy of IntentApplication?(v72, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v76.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v73 = v72;
    RentalCarReservation.llmConsumableDescription(locale:)(v76);
    OUTLINED_FUNCTION_6_18();
    v77 = OUTLINED_FUNCTION_236_2();
    v78(v77);
    v79 = MEMORY[0x277D83838];
  }

  v108 = v72;
  v109 = v73;
  OUTLINED_FUNCTION_23_18(v79);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v80 = v56;
  PartialExtractedAttributes.ticketedTransportation.getter();
  type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_9_5(v75);
  if (v36)
  {
    outlined destroy of IntentApplication?(v75, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v81.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v80 = v75;
    TicketedTransportation.llmConsumableDescription(locale:)(v81);
    OUTLINED_FUNCTION_6_18();
    v82 = OUTLINED_FUNCTION_181_4();
    v83(v82);
    v84 = MEMORY[0x277D83838];
  }

  v108 = v72;
  v109 = v80;
  OUTLINED_FUNCTION_23_18(v84);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v85 = v56;
  PartialExtractedAttributes.ticketedShow.getter();
  type metadata accessor for TicketedShow();
  v86 = OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_9_5(v86);
  if (v36)
  {
    outlined destroy of IntentApplication?(v65, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v87.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v85 = v65;
    TicketedShow.llmConsumableDescription(locale:)(v87);
    OUTLINED_FUNCTION_6_18();
    v88 = OUTLINED_FUNCTION_159_4();
    v89(v88);
    v90 = MEMORY[0x277D83838];
  }

  v108 = v72;
  v109 = v85;
  OUTLINED_FUNCTION_23_18(v90);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v91 = v56;
  PartialExtractedAttributes.appointment.getter();
  type metadata accessor for Appointment();
  v92 = OUTLINED_FUNCTION_240_2();
  OUTLINED_FUNCTION_9_5(v92);
  if (v36)
  {
    outlined destroy of IntentApplication?(v67, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v93.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v91 = v67;
    Appointment.llmConsumableDescription(locale:)(v93);
    OUTLINED_FUNCTION_6_18();
    v94 = OUTLINED_FUNCTION_116_1();
    v95(v94);
    v96 = MEMORY[0x277D83838];
  }

  v108 = v72;
  v109 = v91;
  OUTLINED_FUNCTION_23_18(v96);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v97 = v56;
  PartialExtractedAttributes.trip.getter();
  type metadata accessor for Trip();
  v98 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v98);
  if (v36)
  {
    outlined destroy of IntentApplication?(v64, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    OUTLINED_FUNCTION_15_19();
    v110 = 0;
  }

  else
  {
    v99.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v97 = v64;
    Trip.llmConsumableDescription(locale:)(v99);
    OUTLINED_FUNCTION_6_18();
    v100 = OUTLINED_FUNCTION_52_1();
    v101(v100);
    v102 = MEMORY[0x277D83838];
  }

  v108 = v72;
  v109 = v97;
  OUTLINED_FUNCTION_23_18(v102);
  outlined destroy of IntentApplication?(&v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
}

Swift::String __swiftcall PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  v6 = v5;
  v117 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v122 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v121 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_168_4(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_229_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v118 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v25);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v27);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_136_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v116 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v116 - v35;
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](98);
  OUTLINED_FUNCTION_274_1();
  v37 = v4[7];
  v124 = v6;
  v37(v6, v4);
  v38 = type metadata accessor for Party();
  OUTLINED_FUNCTION_166(v36, 1, v38);
  v123 = v9;
  if (v39)
  {
    v41 = v117;
    outlined destroy of IntentApplication?(v36, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    countAndFlagsBits = 0;
    object = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v40.value._countAndFlagsBits = v9;
    v40.value._object = v117;
    v41 = v117;
    v42 = Party.llmConsumableDescription(locale:)(v40);
    countAndFlagsBits = v42._countAndFlagsBits;
    object = v42._object;
    OUTLINED_FUNCTION_51();
    (*(v45 + 8))(v36, v38);
    v46 = MEMORY[0x277D83838];
  }

  v125 = countAndFlagsBits;
  v126 = object;
  OUTLINED_FUNCTION_23_18(v46);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v4[9](v124, v4);
  v47 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_166(v32, 1, v47);
  if (v39)
  {
    outlined destroy of IntentApplication?(v32, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v50 = 0;
    v51 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v48.value._countAndFlagsBits = v123;
    v48.value._object = v41;
    v49 = FlightReservation.llmConsumableDescription(locale:)(v48);
    v50 = v49._countAndFlagsBits;
    v51 = v49._object;
    OUTLINED_FUNCTION_51();
    v52 = OUTLINED_FUNCTION_51_4();
    v53(v52);
    v54 = MEMORY[0x277D83838];
  }

  v125 = v50;
  v126 = v51;
  OUTLINED_FUNCTION_23_18(v54);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v4[10](v124, v4);
  v55 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_166(v2, 1, v55);
  if (v39)
  {
    outlined destroy of IntentApplication?(v2, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    v58 = 0;
    v59 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v56.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v57 = HotelReservation.llmConsumableDescription(locale:)(v56);
    v58 = v57._countAndFlagsBits;
    v59 = v57._object;
    OUTLINED_FUNCTION_51();
    (*(v60 + 8))(v2, v55);
    v61 = MEMORY[0x277D83838];
  }

  v62 = v119;
  v125 = v58;
  v126 = v59;
  OUTLINED_FUNCTION_23_18(v61);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v4[11](v124, v4);
  v63 = type metadata accessor for RestaurantReservation();
  v64 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v64, v65, v63);
  if (v39)
  {
    outlined destroy of IntentApplication?(v1, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    v68 = 0;
    v69 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v66.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v67 = RestaurantReservation.llmConsumableDescription(locale:)(v66);
    v68 = v67._countAndFlagsBits;
    v69 = v67._object;
    OUTLINED_FUNCTION_51();
    v70 = OUTLINED_FUNCTION_212();
    v71(v70);
    v72 = MEMORY[0x277D83838];
  }

  v73 = v121;
  v125 = v68;
  v126 = v69;
  OUTLINED_FUNCTION_23_18(v72);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v74 = v118;
  v75 = OUTLINED_FUNCTION_122_6();
  v76(v75);
  type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_50_12(v74);
  if (v39)
  {
    outlined destroy of IntentApplication?(v74, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    v79 = 0;
    v80 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v77.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v78 = RentalCarReservation.llmConsumableDescription(locale:)(v77);
    v79 = v78._countAndFlagsBits;
    v80 = v78._object;
    OUTLINED_FUNCTION_51();
    (*(v81 + 8))();
    v82 = MEMORY[0x277D83838];
  }

  v83 = v122;
  v125 = v79;
  v126 = v80;
  OUTLINED_FUNCTION_23_18(v82);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v84 = OUTLINED_FUNCTION_122_6();
  v85(v84);
  type metadata accessor for TicketedTransportation();
  v86 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v86);
  if (v39)
  {
    outlined destroy of IntentApplication?(v62, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v127 = 0;
  }

  else
  {
    v87.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v79 = v62;
    TicketedTransportation.llmConsumableDescription(locale:)(v87);
    OUTLINED_FUNCTION_6_18();
    v88 = OUTLINED_FUNCTION_236_2();
    v89(v88);
    v90 = MEMORY[0x277D83838];
  }

  v125 = v62;
  v126 = v79;
  OUTLINED_FUNCTION_23_18(v90);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v91 = v120;
  v92 = OUTLINED_FUNCTION_122_6();
  v93(v92);
  type metadata accessor for TicketedShow();
  v94 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v94);
  if (v39)
  {
    outlined destroy of IntentApplication?(v91, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    OUTLINED_FUNCTION_15_19();
    v127 = 0;
  }

  else
  {
    v95.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v79 = v91;
    TicketedShow.llmConsumableDescription(locale:)(v95);
    OUTLINED_FUNCTION_6_18();
    v96 = OUTLINED_FUNCTION_236_2();
    v97(v96);
    v98 = MEMORY[0x277D83838];
  }

  v125 = v91;
  v126 = v79;
  OUTLINED_FUNCTION_23_18(v98);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v99 = OUTLINED_FUNCTION_122_6();
  v100(v99);
  type metadata accessor for Appointment();
  v101 = OUTLINED_FUNCTION_212_2();
  OUTLINED_FUNCTION_9_5(v101);
  if (v39)
  {
    outlined destroy of IntentApplication?(v73, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    OUTLINED_FUNCTION_15_19();
    v127 = 0;
  }

  else
  {
    v102.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v79 = v73;
    Appointment.llmConsumableDescription(locale:)(v102);
    OUTLINED_FUNCTION_6_18();
    v103 = OUTLINED_FUNCTION_21_7();
    v104(v103);
    v105 = MEMORY[0x277D83838];
  }

  v125 = v91;
  v126 = v79;
  OUTLINED_FUNCTION_23_18(v105);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v106 = OUTLINED_FUNCTION_122_6();
  v107(v106);
  type metadata accessor for Trip();
  v108 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v108);
  if (v39)
  {
    outlined destroy of IntentApplication?(v83, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    OUTLINED_FUNCTION_15_19();
    v127 = 0;
  }

  else
  {
    v109.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v79 = v83;
    Trip.llmConsumableDescription(locale:)(v109);
    OUTLINED_FUNCTION_6_18();
    v110 = OUTLINED_FUNCTION_52_1();
    v111(v110);
    v112 = MEMORY[0x277D83838];
  }

  v125 = v91;
  v126 = v79;
  OUTLINED_FUNCTION_23_18(v112);
  outlined destroy of IntentApplication?(&v125, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v114;
  result._countAndFlagsBits = v113;
  return result;
}

Swift::String __swiftcall PreExtractedCard.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v389 = v8;
  v390 = v9;
  v376 = v10;
  v377 = v11;
  v12 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v13 = OUTLINED_FUNCTION_27_14(v12, &v387);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v365 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_156_4();
  v369 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v22);
  v363 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v26);
  v27 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v382 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_16(v33, v34, v35, v36, v37, v38, v39, v40, v341);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_157_4();
  v44 = type metadata accessor for EditorialDateFormatter(v43);
  v45 = OUTLINED_FUNCTION_114(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_75_10();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_72_8(v48, v49, v50, v51, v52, v53, v54, v55, v342);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v57 = OUTLINED_FUNCTION_114(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  v373 = v64;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_38_18(v66, v67, v68, v69, v70, v71, v72, v73, v343);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_59_10(v78, v79, v80, v81, v82, v83, v84, v85, v344);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](210);
  OUTLINED_FUNCTION_119_4();
  PreExtractedCard.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_42_13();
  v86 = PreExtractedCard.cardType.getter();
  if (v87)
  {
    v88 = MEMORY[0x277D83838];
  }

  else
  {
    v86 = OUTLINED_FUNCTION_7_24();
  }

  v89 = OUTLINED_FUNCTION_3_34(v86, v87, v88);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v89, v90, v91, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_42_13();
  v92 = PreExtractedCard.cardSubType.getter();
  if (v93)
  {
    v94 = MEMORY[0x277D83838];
  }

  else
  {
    v92 = OUTLINED_FUNCTION_7_24();
  }

  v95 = OUTLINED_FUNCTION_3_34(v92, v93, v94);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v95, v96, v97, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_42_13();
  v98 = PreExtractedCard.cardProvider.getter();
  if (v99)
  {
    v100 = MEMORY[0x277D83838];
  }

  else
  {
    v98 = OUTLINED_FUNCTION_7_24();
  }

  v101 = OUTLINED_FUNCTION_3_34(v98, v99, v100);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v101, v102, v103, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(3);
  OUTLINED_FUNCTION_42_13();
  v104 = PreExtractedCard.cardUnderName.getter();
  if (v105)
  {
    v106 = MEMORY[0x277D83838];
  }

  else
  {
    v104 = OUTLINED_FUNCTION_7_24();
  }

  v107 = OUTLINED_FUNCTION_3_34(v104, v105, v106);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v107, v108, v109, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(4);
  OUTLINED_FUNCTION_45_11();
  v110 = PreExtractedCard.cardNumber.getter();
  if (v111)
  {
    v112 = MEMORY[0x277D83838];
  }

  else
  {
    v110 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v110, v111, v112);
  v113 = OUTLINED_FUNCTION_34_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v113, v114, v115, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_45_11();
  v116 = PreExtractedCard.cardGroupNumber.getter();
  if (v117)
  {
    v118 = MEMORY[0x277D83838];
  }

  else
  {
    v116 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v116, v117, v118);
  v119 = OUTLINED_FUNCTION_34_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v119, v120, v121, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(6);
  OUTLINED_FUNCTION_114_7();
  PreExtractedCard.cardIssueDate.getter();
  OUTLINED_FUNCTION_282_0();
  outlined init with copy of SpotlightRankingItem?(v380, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_166(v6, 1, v27);
  v375 = v4;
  if (v133)
  {
    v122 = v4;
    v123 = v382;

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v124);
    outlined destroy of IntentApplication?(v380, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v125 = v6;
  }

  else
  {
    v347 = v7;
    v126 = *(v382 + 32);
    v127 = OUTLINED_FUNCTION_158();
    v126(v127);
    v383 = v2;
    v384 = v3;

    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v2 = *(v382 + 16);
    v348 = v5;
    v2();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v27);
    outlined init with copy of SpotlightRankingItem?(v368, v362, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v131 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v131, v132, v27);
    if (v133)
    {

      v3 = v362;
      v2 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v134, v135, v136);
      v137 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v137, v138, v139);
      v140 = v382;
    }

    else
    {
      (v126)(v359, v362, v27);
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v376, v377, 0, v141, v142, v143, v144, v145, v345, v2, v7, v5, v349, v351, v352, v353, v354, v355, v356, v357);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v146 = type metadata accessor for Logger();
      __swift_project_value_buffer(v146, static Logging.answerSynthesis);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.debug.getter();
      v140 = v382;
      if (OUTLINED_FUNCTION_77_5(v148))
      {
        v149 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_157_0(v149);
        OUTLINED_FUNCTION_194_4(&dword_25D85C000, v150, v151, "LLMFormatter using default timeZone GMT");
        OUTLINED_FUNCTION_37_0();
      }

      OUTLINED_FUNCTION_30_14();
      TimeZone.init(secondsFromGMT:)();
      v152 = OUTLINED_FUNCTION_93_6();
      v154 = OUTLINED_FUNCTION_166(v152, v153, v369);
      if (v133)
      {
        __break(1u);
        goto LABEL_96;
      }

      v156 = OUTLINED_FUNCTION_52_1();
      v157(v156);
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_183_3();
      v346();
      *v365 = 0;
      v158 = (v365 + *(v364 + 28));
      *v158 = v376;
      v158[1] = v377;
      v385 = MEMORY[0x277D837D0];
      v386 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v159, v160, MEMORY[0x277CC9420]);
      OUTLINED_FUNCTION_176_5();

      v3 = v363;
      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v365, v161);
      OUTLINED_FUNCTION_148_5();
      v162(v360, v363);
      OUTLINED_FUNCTION_172_4();
      v163 = OUTLINED_FUNCTION_140_4();
      v164(v163);
      v165 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v165, v166, v167);
      outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v123 = v140;
    OUTLINED_FUNCTION_172_4();
    v168(v348, v27);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v381, v169);
    v122 = v375;
    v125 = v380;
  }

  outlined destroy of IntentApplication?(v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(7);
  OUTLINED_FUNCTION_114_7();
  PreExtractedCard.cardExpirationDate.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v378, v373, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_166(v373, 1, v27);
  if (v133)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v379, v170);
    outlined destroy of IntentApplication?(v378, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v171 = v373;
    v172 = v123;
    v173 = v374;
    goto LABEL_45;
  }

  v174 = *(v123 + 32);
  v174(v371, v373, v27);
  v383 = v2;
  v384 = v3;

  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_200_4();
  MEMORY[0x25F89F6C0]();

  v175 = *(v123 + 16);
  OUTLINED_FUNCTION_183_3();
  v175();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v27);
  outlined init with copy of SpotlightRankingItem?(v367, v361, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v179 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v179, v180, v27);
  if (!v181)
  {
    v188 = OUTLINED_FUNCTION_181_4();
    v189 = (v174)(v188);
    OUTLINED_FUNCTION_278_1(v189, v190, v191, v192, v193, v194, v195, v196, v345, v346, v347, v348, v349, v351, v352, v353, v354, v355, v356, v357);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v197 = type metadata accessor for Logger();
    __swift_project_value_buffer(v197, static Logging.answerSynthesis);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v199))
    {
      v200 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v200);
      OUTLINED_FUNCTION_194_4(&dword_25D85C000, v201, v202, "LLMFormatter using default timeZone GMT");
      OUTLINED_FUNCTION_37_0();
    }

    OUTLINED_FUNCTION_30_14();
    TimeZone.init(secondsFromGMT:)();
    v203 = OUTLINED_FUNCTION_93_6();
    v154 = OUTLINED_FUNCTION_166(v203, v204, v369);
    if (!v133)
    {

      v205 = OUTLINED_FUNCTION_52_1();
      v206(v205);
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_183_3();
      v175();
      *v365 = 0;
      v207 = (v365 + *(v361 + 28));
      *v207 = v376;
      v207[1] = v377;
      v385 = MEMORY[0x277D837D0];
      v386 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v208, v209, MEMORY[0x277CC9420]);
      OUTLINED_FUNCTION_176_5();

      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v365, v210);
      OUTLINED_FUNCTION_148_5();
      v211 = OUTLINED_FUNCTION_235_3();
      v212(v211);
      v172 = v382;
      OUTLINED_FUNCTION_172_4();
      v213 = OUTLINED_FUNCTION_140_4();
      v214(v213);
      outlined destroy of IntentApplication?(v367, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      goto LABEL_44;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_47_11();
  outlined destroy of IntentApplication?(v182, v183, v184);
  v185 = OUTLINED_FUNCTION_87_8();
  outlined destroy of IntentApplication?(v185, v186, v187);
  v172 = v382;
LABEL_44:
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_172_4();
  v215(v371, v27);
  OUTLINED_FUNCTION_0_47();
  outlined destroy of EditorialDateFormatter(v379, v216);
  v173 = v374;
  v122 = v375;
  v171 = v378;
LABEL_45:
  outlined destroy of IntentApplication?(v171, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(8);
  OUTLINED_FUNCTION_42_13();
  v217 = PreExtractedCard.cardIssuedBy.getter();
  if (v218)
  {
    v219 = MEMORY[0x277D83838];
  }

  else
  {
    v217 = OUTLINED_FUNCTION_7_24();
  }

  v220 = OUTLINED_FUNCTION_3_34(v217, v218, v219);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v220, v221, v222, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(9);
  OUTLINED_FUNCTION_42_13();
  v223 = PreExtractedCard.cardRegion.getter();
  if (v224)
  {
    v225 = MEMORY[0x277D83838];
  }

  else
  {
    v223 = OUTLINED_FUNCTION_7_24();
  }

  v226 = OUTLINED_FUNCTION_3_34(v223, v224, v225);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v226, v227, v228, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_42_13();
  v229 = PreExtractedCard.cardCountry.getter();
  if (v230)
  {
    v231 = MEMORY[0x277D83838];
  }

  else
  {
    v229 = OUTLINED_FUNCTION_7_24();
  }

  v232 = OUTLINED_FUNCTION_3_34(v229, v230, v231);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v232, v233, v234, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v235 = PreExtractedCard.Keys.llmPrompt.getter(11);
  v237 = v236;
  PreExtractedCard.birthday.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v173, v372, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v238 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v238, v239, v27);
  if (!v133)
  {
    v242 = *(v172 + 32);
    v243 = OUTLINED_FUNCTION_28_12();
    (v242)(v243);
    v383 = v235;
    v384 = v237;

    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v383, v384);

    v244 = *(v172 + 16);
    OUTLINED_FUNCTION_226_1(v388);
    OUTLINED_FUNCTION_183_3();
    v244();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v27);
    OUTLINED_FUNCTION_190_5();
    outlined init with copy of SpotlightRankingItem?(v248, v249, v250, v251);
    v252 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_166(v252, v253, v27);
    if (v254)
    {

      v255 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v255, v256, v257);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v258, v259, v260);
      v261 = v382;
LABEL_66:
      OUTLINED_FUNCTION_92_7();
      (*(v261 + 8))(v370, v27);
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v375, v285);
      v241 = v374;
      goto LABEL_67;
    }

    OUTLINED_FUNCTION_183_3();
    v262 = v242();
    OUTLINED_FUNCTION_278_1(v262, v263, v264, v265, v266, v267, v268, v269, v345, v346, v347, v348, v349, v351, v352, v353, v354, v355, v356, v357);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v270 = type metadata accessor for Logger();
    __swift_project_value_buffer(v270, static Logging.answerSynthesis);
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v273);
      _os_log_impl(&dword_25D85C000, v271, v272, "LLMFormatter using default timeZone GMT", (v172 + 32), 2u);
      OUTLINED_FUNCTION_37_0();
    }

    TimeZone.init(secondsFromGMT:)();
    v274 = OUTLINED_FUNCTION_65();
    v154 = OUTLINED_FUNCTION_166(v274, v275, v369);
    if (!v133)
    {

      v276 = OUTLINED_FUNCTION_106_8();
      v277(v276);
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_198_3();
      (v244)(v242 + v370, v358, v27);
      *v370 = 0;
      v278 = (v370 + *(v350 + 28));
      *v278 = v376;
      v278[1] = v377;
      v385 = MEMORY[0x277D837D0];
      v386 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v279, v280, MEMORY[0x277CC9420]);
      OUTLINED_FUNCTION_176_5();

      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v370, v281);
      OUTLINED_FUNCTION_4_4();
      v282 = OUTLINED_FUNCTION_235_3();
      v283(v282);
      v261 = v382;
      OUTLINED_FUNCTION_204_5();
      v284(v358, v27);
      outlined destroy of IntentApplication?(v366, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      goto LABEL_66;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  OUTLINED_FUNCTION_0_47();
  outlined destroy of EditorialDateFormatter(v122, v240);
  outlined destroy of IntentApplication?(v173, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v241 = v372;
LABEL_67:
  outlined destroy of IntentApplication?(v241, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_42_13();
  v286 = PreExtractedCard.cardPlaceOfBirth.getter();
  if (v287)
  {
    v288 = MEMORY[0x277D83838];
  }

  else
  {
    v286 = OUTLINED_FUNCTION_7_24();
  }

  v289 = OUTLINED_FUNCTION_3_34(v286, v287, v288);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v289, v290, v291, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_42_13();
  v292 = PreExtractedCard.cardAddress.getter();
  if (v293)
  {
    v294 = MEMORY[0x277D83838];
  }

  else
  {
    v292 = OUTLINED_FUNCTION_7_24();
  }

  v295 = OUTLINED_FUNCTION_3_34(v292, v293, v294);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v295, v296, v297, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_42_13();
  v298 = PreExtractedCard.cardSex.getter();
  if (v299)
  {
    v300 = MEMORY[0x277D83838];
  }

  else
  {
    v298 = OUTLINED_FUNCTION_7_24();
  }

  v301 = OUTLINED_FUNCTION_3_34(v298, v299, v300);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v301, v302, v303, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(15);
  OUTLINED_FUNCTION_42_13();
  v304 = PreExtractedCard.cardHeight.getter();
  if (v305)
  {
    v306 = MEMORY[0x277D83838];
  }

  else
  {
    v304 = OUTLINED_FUNCTION_7_24();
  }

  v307 = OUTLINED_FUNCTION_3_34(v304, v305, v306);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v307, v308, v309, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(16);
  OUTLINED_FUNCTION_42_13();
  v310 = PreExtractedCard.cardEyeColor.getter();
  if (v311)
  {
    v312 = MEMORY[0x277D83838];
  }

  else
  {
    v310 = OUTLINED_FUNCTION_7_24();
  }

  v313 = OUTLINED_FUNCTION_3_34(v310, v311, v312);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v313, v314, v315, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(17);
  OUTLINED_FUNCTION_42_13();
  v316 = PreExtractedCard.cardWeight.getter();
  if (v317)
  {
    v318 = MEMORY[0x277D83838];
  }

  else
  {
    v316 = OUTLINED_FUNCTION_7_24();
  }

  v319 = OUTLINED_FUNCTION_3_34(v316, v317, v318);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v319, v320, v321, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(18);
  OUTLINED_FUNCTION_42_13();
  v322 = PreExtractedCard.cardCategory.getter();
  if (v323)
  {
    v324 = MEMORY[0x277D83838];
  }

  else
  {
    v322 = OUTLINED_FUNCTION_7_24();
  }

  v325 = OUTLINED_FUNCTION_3_34(v322, v323, v324);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v325, v326, v327, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(8);
  OUTLINED_FUNCTION_42_13();
  v328 = PreExtractedCard.cardIssuedBy.getter();
  if (v329)
  {
    v330 = MEMORY[0x277D83838];
  }

  else
  {
    v328 = OUTLINED_FUNCTION_7_24();
  }

  v331 = OUTLINED_FUNCTION_3_34(v328, v329, v330);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v331, v332, v333, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(19);
  OUTLINED_FUNCTION_42_13();
  v334 = PreExtractedCard.cardRestrictions.getter();
  if (v335)
  {
    v336 = MEMORY[0x277D83838];
  }

  else
  {
    v334 = OUTLINED_FUNCTION_7_24();
  }

  v337 = OUTLINED_FUNCTION_3_34(v334, v335, v336);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v337, v338, v339, 0);

  outlined destroy of IntentApplication?(&v383, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
LABEL_98:
  result._object = v155;
  result._countAndFlagsBits = v154;
  return result;
}

Swift::String __swiftcall PreExtractedContact.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v268 = v5;
  v269 = v6;
  v253 = v7;
  v254 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v11);
  v239 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v237 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v15 = OUTLINED_FUNCTION_28_2(v14);
  v16 = type metadata accessor for EditorialDateFormatter.DateInput(v15);
  v17 = OUTLINED_FUNCTION_27_14(v16, &v267);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v18);
  v248 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v245 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v22);
  v262 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_14(v27, v28, v29, v30, v31, v32, v33, v34, v229);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  v250 = v36;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  v257 = v38;
  v39 = OUTLINED_FUNCTION_78_0();
  v40 = type metadata accessor for EditorialDateFormatter(v39);
  v41 = OUTLINED_FUNCTION_114(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_72_8(v43, v44, v45, v46, v47, v48, v49, v50, v230);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  v251 = v53;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_16(v55, v56, v57, v58, v59, v60, v61, v62, v231);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_38_18(v64, v65, v66, v67, v68, v69, v70, v71, v232);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  v76 = v75;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_61_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_59_10(v79, v80, v81, v82, v83, v84, v85, v86, v233);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](150);
  OUTLINED_FUNCTION_119_4();
  PreExtractedContact.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_111_6();
  v87 = PreExtractedCard.cardType.getter();
  if (v88)
  {
    v89 = MEMORY[0x277D83838];
  }

  else
  {
    v87 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v87, v88, v89);
  v90 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v90, v91, v92, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_111_6();
  v93 = PreExtractedCard.cardSubType.getter();
  if (v94)
  {
    v95 = MEMORY[0x277D83838];
  }

  else
  {
    v93 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v93, v94, v95);
  v96 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v96, v97, v98, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_111_6();
  v99 = PreExtractedCard.cardProvider.getter();
  v259 = v2;
  if (v100)
  {
    v101 = MEMORY[0x277D83838];
  }

  else
  {
    v99 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v99, v100, v101);
  v102 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v102, v103, v104, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v105 = PreExtractedContact.Keys.llmPrompt.getter(3);
  v107 = v106;
  v108 = MEMORY[0x25F89BFB0]();
  v109._countAndFlagsBits = v105;
  v109._object = v107;
  v270.value._rawValue = v108;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v109, v270);

  v110 = PreExtractedContact.Keys.llmPrompt.getter(4);
  v112 = v111;
  v113 = MEMORY[0x25F89BF60]();
  v114._countAndFlagsBits = v110;
  v114._object = v112;
  v271.value._rawValue = v113;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v114, v271);

  PreExtractedContact.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_111_6();
  v115 = PreExtractedCard.cardNumber.getter();
  if (v116)
  {
    v117 = MEMORY[0x277D83838];
  }

  else
  {
    v115 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v115, v116, v117);
  v118 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v118, v119, v120, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v121 = PreExtractedContact.Keys.llmPrompt.getter(6);
  v123 = v122;
  PreExtractedContact.contactSharedDateTime.getter();
  OUTLINED_FUNCTION_282_0();
  outlined init with copy of SpotlightRankingItem?(v260, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v4);
  v255 = v24;
  if (v134)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v124);
    outlined destroy of IntentApplication?(v260, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v125 = v4;
  }

  else
  {
    v126 = *(v24 + 32);
    v127 = OUTLINED_FUNCTION_173_4();
    (v126)(v127);
    v263 = v121;
    v264 = v123;
    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v128 = *(v24 + 16);
    v128(v76, v257, v262);
    v129 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v262);
    outlined init with copy of SpotlightRankingItem?(v76, v249, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v132 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v132, v133, v262);
    if (v134)
    {
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v135, v136, v137);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v138, v139, v140);
    }

    else
    {
      v126();
      OUTLINED_FUNCTION_113_9(v253, v254, v141, v142, v143, v144, v145, v146, v234, v1, v236, v237, v238, v239, v241, v242, v243, v244, v245, v246);
      v128(v246 + *(v244 + 24), v250, v262);
      OUTLINED_FUNCTION_253_2();
      *v147 = v253;
      v147[1] = v254;
      v265 = MEMORY[0x277D837D0];
      v266 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v148, v149, MEMORY[0x277CC9420]);

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v246, v150);
      OUTLINED_FUNCTION_148_5();
      v151 = OUTLINED_FUNCTION_30_5();
      v152(v151);
      OUTLINED_FUNCTION_184_3();
      v153(v250, v262);
      v154 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v154, v155, v156);
      outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_184_3();
    v157(v257, v262);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v261, v158);
    v125 = v260;
  }

  outlined destroy of IntentApplication?(v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(7);
  OUTLINED_FUNCTION_111_6();
  v159 = PreExtractedContact.contactSharedAppName.getter();
  if (v160)
  {
    v161 = MEMORY[0x277D83838];
  }

  else
  {
    v159 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v159, v160, v161);
  v162 = OUTLINED_FUNCTION_21_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v162, v163, v164, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v165 = PreExtractedContact.Keys.llmPrompt.getter(8);
  v167 = v166;
  v168 = PreExtractedContact.links.getter();
  v169._countAndFlagsBits = v165;
  v169._object = v167;
  v272.value._rawValue = v168;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v169, v272);

  v170 = PreExtractedContact.Keys.llmPrompt.getter(9);
  v172 = v171;
  PreExtractedContact.birthday.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v259, v258, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v258);
  if (v134)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v3, v173);
    outlined destroy of IntentApplication?(v259, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v174 = v258;
  }

  else
  {
    v175 = *(v24 + 32);
    v176 = OUTLINED_FUNCTION_28_12();
    v175(v176);
    v263 = v170;
    v264 = v172;

    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v177 = *(v24 + 16);
    (v177)(v252, v256, v262);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v262);
    outlined init with copy of SpotlightRankingItem?(v252, v251, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_50_12(v251);
    if (v181)
    {

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v182, v183, v184);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v185, v186, v187);
      v188 = v255;
    }

    else
    {
      (v175)(v243, v251, v262);
      v189 = v242;
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v253, v254, 0, v190, v191, v192, v193, v194, v234, v235, v236, v237, v238, v239, v241, v242, v243, v244, v245, v246);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v195 = type metadata accessor for Logger();
      __swift_project_value_buffer(v195, static Logging.answerSynthesis);
      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_77_5(v197))
      {
        v198 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_157_0(v198);
        OUTLINED_FUNCTION_194_4(&dword_25D85C000, v199, v200, "LLMFormatter using default timeZone GMT");
        OUTLINED_FUNCTION_37_0();
      }

      TimeZone.init(secondsFromGMT:)();
      v201 = OUTLINED_FUNCTION_65();
      v203 = OUTLINED_FUNCTION_166(v201, v202, v240);
      if (v134)
      {
        __break(1u);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_47_11();
      v205();
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_251_1();
      v177();
      *v247 = 0;
      v206 = (v247 + *(v240 + 28));
      *v206 = v253;
      v206[1] = v254;
      v265 = MEMORY[0x277D837D0];
      v266 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v207, v208, MEMORY[0x277CC9420]);
      OUTLINED_FUNCTION_240_2();

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v247, v209);
      OUTLINED_FUNCTION_4_4();
      v210(v189, v248);
      v188 = v255;
      OUTLINED_FUNCTION_204_5();
      v211 = OUTLINED_FUNCTION_235_3();
      v212(v211);
      outlined destroy of IntentApplication?(v252, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v188 + 8))(v256, v262);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v3, v213);
    v174 = v259;
  }

  outlined destroy of IntentApplication?(v174, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_45_11();
  v214 = PreExtractedContact.homeAddresses.getter();
  v215._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v273.value._rawValue = v214;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v215, v273);

  PreExtractedContact.Keys.llmPrompt.getter(11);
  OUTLINED_FUNCTION_45_11();
  v216 = PreExtractedContact.workAddresses.getter();
  v217._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v274.value._rawValue = v216;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v217, v274);

  PreExtractedContact.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_42_13();
  v218 = PreExtractedContact.relationship.getter();
  if (v219)
  {
    v220 = MEMORY[0x277D83838];
  }

  else
  {
    v218 = OUTLINED_FUNCTION_7_24();
  }

  v221 = OUTLINED_FUNCTION_3_34(v218, v219, v220);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v221, v222, v223, 0);

  outlined destroy of IntentApplication?(&v263, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_45_11();
  v224 = PreExtractedContact.addresses.getter();
  v225._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v275.value._rawValue = v224;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v225, v275);

  PreExtractedContact.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_45_11();
  v226 = PreExtractedContact.businessHours.getter();
  v227._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v276.value._rawValue = v226;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v227, v276);

  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
LABEL_41:
  result._object = v204;
  result._countAndFlagsBits = v203;
  return result;
}

Swift::String __swiftcall PreExtractedSharedLink.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v254 = v5;
  v255 = v6;
  v7 = v2;
  v234 = v8;
  v233 = v9;
  v10 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v11 = OUTLINED_FUNCTION_27_14(v10, v253);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v236 = v12;
  OUTLINED_FUNCTION_78_0();
  v237 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v235 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v240 = v15;
  OUTLINED_FUNCTION_78_0();
  v247 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  v241 = v22;
  v23 = OUTLINED_FUNCTION_78_0();
  v24 = type metadata accessor for EditorialDateFormatter(v23);
  v25 = OUTLINED_FUNCTION_114(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v244 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_59_10(v28, v29, v30, v31, v32, v33, v34, v35, v226);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74_14();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v246 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_17(v43, v44, v45, v46, v47, v48, v49, v50, v226);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  v238 = v52;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v54);
  v56 = &v226 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v57);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v58);
  v60 = &v226 - v59;
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](174);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000018);
  PreExtractedSharedLink.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_102_7();
  v61 = PreExtractedCard.cardType.getter();
  if (v62)
  {
    v63 = MEMORY[0x277D83838];
  }

  else
  {
    v61 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v61, v62, v63);
  v64 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v64, v65, v66, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_102_7();
  v67 = PreExtractedCard.cardSubType.getter();
  if (v68)
  {
    v69 = MEMORY[0x277D83838];
  }

  else
  {
    v67 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v67, v68, v69);
  v70 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v70, v71, v72, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_102_7();
  v73 = PreExtractedCard.cardProvider.getter();
  if (v74)
  {
    v75 = MEMORY[0x277D83838];
  }

  else
  {
    v73 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v73, v74, v75);
  v76 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v76, v77, v78, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v79 = PreExtractedSharedLink.Keys.llmPrompt.getter(3);
  v81 = v80;
  PreExtractedSharedLink.url.getter();
  v82 = type metadata accessor for URL();
  OUTLINED_FUNCTION_166(v60, 1, v82);
  if (v120)
  {
    outlined destroy of IntentApplication?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v251 = v82;
    OUTLINED_FUNCTION_18_16();
    v85 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v83, v84, MEMORY[0x277CC9290]);
    OUTLINED_FUNCTION_280_1(v85);
    OUTLINED_FUNCTION_51();
    (*(v86 + 32))();
  }

  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v79, v81, v87, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(4);
  OUTLINED_FUNCTION_102_7();
  v88 = PreExtractedSharedLink.urlDescription.getter();
  if (v89)
  {
    v90 = MEMORY[0x277D83838];
  }

  else
  {
    v88 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v88, v89, v90);
  v91 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v91, v92, v93, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_102_7();
  v94 = PreExtractedSharedLink.artist.getter();
  if (v95)
  {
    v96 = MEMORY[0x277D83838];
  }

  else
  {
    v94 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v94, v95, v96);
  v97 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v97, v98, v99, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(6);
  OUTLINED_FUNCTION_102_7();
  v100 = PreExtractedSharedLink.album.getter();
  if (v101)
  {
    v102 = MEMORY[0x277D83838];
  }

  else
  {
    v100 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v100, v101, v102);
  v103 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v103, v104, v105, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v106 = PreExtractedSharedLink.Keys.llmPrompt.getter(7);
  v108 = v107;
  PreExtractedSharedLink.publishedDate.getter();
  OUTLINED_FUNCTION_241_3();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v56, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v3);
  v243 = v4;
  if (v120)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v7, v109);
    outlined destroy of IntentApplication?(v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v110 = v3;
  }

  else
  {
    v226 = v56;
    v231 = v7;
    v111 = v17;
    v112 = *(v17 + 32);
    v113 = v247;
    v112(v241, v3, v247);
    v248 = v106;
    v249 = v108;
    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v248, v249);

    v114 = *(v111 + 16);
    v115 = v238;
    OUTLINED_FUNCTION_206_3();
    v114();
    v116 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v113);
    v119 = v227;
    outlined init with copy of SpotlightRankingItem?(v115, v227, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v119);
    if (v120)
    {
      outlined destroy of IntentApplication?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v142 = OUTLINED_FUNCTION_188_5();
      v141 = &_s10Foundation4DateVSgMR;
    }

    else
    {
      v121 = v228;
      v122 = v119;
      v123 = v247;
      v112(v228, v122, v247);
      v124 = v233;
      v125 = v234;
      OUTLINED_FUNCTION_113_9(v233, v234, v126, v127, v128, v129, v130, v131, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237);
      v132 = OUTLINED_FUNCTION_225_3();
      (v114)(v132, v121, v123);
      OUTLINED_FUNCTION_254_1();
      v133 = (v115 + *(v1 + 28));
      *v133 = v124;
      v133[1] = v125;
      v251 = MEMORY[0x277D837D0];
      v252 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v134, v135, MEMORY[0x277CC9420]);

      OUTLINED_FUNCTION_251_3();
      v136 = v240;
      v137 = v237;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v115, v138);
      (*(v235 + 8))(v136, v137);
      OUTLINED_FUNCTION_204_5();
      v139(v228, v123);
      outlined destroy of IntentApplication?(v238, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v140 = &_ss23CustomStringConvertible_pSgMd;
      v141 = &_ss23CustomStringConvertible_pSgMR;
      v142 = &v248;
    }

    outlined destroy of IntentApplication?(v142, v140, v141);
    v17 = v111;
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_204_5();
    v143(v241, v247);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v245, v144);
    v7 = v231;
    v110 = v226;
  }

  outlined destroy of IntentApplication?(v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v145 = PreExtractedSharedLink.Keys.llmPrompt.getter(8);
  v147 = v146;
  v148 = v246;
  PreExtractedSharedLink.releaseDate.getter();
  v149 = v244;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v150 = v242;
  outlined init with copy of SpotlightRankingItem?(v148, v242, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v150);
  if (v120)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v149, v151);
    outlined destroy of IntentApplication?(v246, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v246 = v150;
  }

  else
  {
    v152 = *(v17 + 32);
    v153 = OUTLINED_FUNCTION_188_5();
    v154 = v247;
    (v152)(v153);
    v248 = v145;
    v249 = v147;
    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v248, v249);

    v245 = v17;
    v155 = v17 + 16;
    v156 = *(v17 + 16);
    v157 = v239;
    v158 = OUTLINED_FUNCTION_48_3();
    v156(v158);
    v159 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v159, v160, v161, v154);
    v162 = v229;
    outlined init with copy of SpotlightRankingItem?(v157, v229, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v162);
    if (v163)
    {
      outlined destroy of IntentApplication?(v157, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v164 = OUTLINED_FUNCTION_188_5();
      outlined destroy of IntentApplication?(v164, v165, &_s10Foundation4DateVSgMR);
      v185 = v245;
    }

    else
    {
      v166 = v232;
      v167 = v247;
      (v152)();
      v231 = v7;
      v168 = v240;
      v169 = OUTLINED_FUNCTION_191_5();
      v170 = v234;
      OUTLINED_FUNCTION_113_9(v169, v234, v171, v172, v173, v174, v175, v176, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237);
      v177 = OUTLINED_FUNCTION_225_3();
      v178 = v166;
      v149 = v244;
      (v156)(v177, v178, v167);
      OUTLINED_FUNCTION_254_1();
      v179 = (v157 + *(v152 + 28));
      *v179 = v154;
      v179[1] = v170;
      v251 = MEMORY[0x277D837D0];
      v252 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v180, v181, MEMORY[0x277CC9420]);

      OUTLINED_FUNCTION_251_3();
      v182 = v237;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v157, v183);
      (*(v235 + 8))(v168, v182);
      OUTLINED_FUNCTION_241_3();
      (*(v184 + 8))(v232, v167);
      outlined destroy of IntentApplication?(v239, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      v185 = v155;
    }

    OUTLINED_FUNCTION_92_7();
    (*(v185 + 8))(v243, v247);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v149, v186);
  }

  outlined destroy of IntentApplication?(v246, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(9);
  OUTLINED_FUNCTION_101_7();
  v187 = PreExtractedSharedLink.lengthInSeconds.getter();
  if (v188)
  {
    v187 = OUTLINED_FUNCTION_22_16();
    v249 = 0;
    v250 = 0;
  }

  else
  {
    v189 = MEMORY[0x277D83A60];
  }

  OUTLINED_FUNCTION_237_3(v187, v189);
  OUTLINED_FUNCTION_80_9();
  v190 = OUTLINED_FUNCTION_52_1();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v190, v191, v192, 0);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_101_7();
  v193 = PreExtractedSharedLink.musicalGenre.getter();
  if (v194)
  {
    v195 = MEMORY[0x277D83838];
  }

  else
  {
    v193 = OUTLINED_FUNCTION_7_24();
  }

  v196 = OUTLINED_FUNCTION_3_34(v193, v194, v195);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v196, v197, v198, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(11);
  OUTLINED_FUNCTION_101_7();
  v199 = PreExtractedSharedLink.curator.getter();
  if (v200)
  {
    v201 = MEMORY[0x277D83838];
  }

  else
  {
    v199 = OUTLINED_FUNCTION_7_24();
  }

  v202 = OUTLINED_FUNCTION_3_34(v199, v200, v201);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v202, v203, v204, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_101_7();
  v205 = PreExtractedSharedLink.episode.getter();
  if (v206)
  {
    v207 = MEMORY[0x277D83838];
  }

  else
  {
    v205 = OUTLINED_FUNCTION_7_24();
  }

  v208 = OUTLINED_FUNCTION_3_34(v205, v206, v207);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v208, v209, v210, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_101_7();
  v211 = PreExtractedSharedLink.podcastName.getter();
  if (v212)
  {
    v213 = MEMORY[0x277D83838];
  }

  else
  {
    v211 = OUTLINED_FUNCTION_7_24();
  }

  v214 = OUTLINED_FUNCTION_3_34(v211, v212, v213);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v214, v215, v216, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_101_7();
  v217 = PreExtractedSharedLink.summary.getter();
  if (v218)
  {
    v219 = MEMORY[0x277D83838];
  }

  else
  {
    v217 = OUTLINED_FUNCTION_7_24();
  }

  v220 = OUTLINED_FUNCTION_3_34(v217, v218, v219);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v220, v221, v222, 1);

  outlined destroy of IntentApplication?(&v248, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v224;
  result._countAndFlagsBits = v223;
  return result;
}