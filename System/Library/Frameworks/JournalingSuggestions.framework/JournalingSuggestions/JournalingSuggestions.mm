void createUrlForImage(_:)(UIImage *a1@<X0>, char *a2@<X8>)
{
  v22 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  URL.appendingPathComponent(_:)();
  v13 = v22;

  v14 = *(v8 + 8);
  v14(v10, v7);
  v15 = UIImageHEICRepresentation(v13);
  if (v15 || (v15 = UIImagePNGRepresentation(v13)) != 0)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    URL.appendingPathExtension(_:)();
    v14(a2, v7);
    (*(v8 + 32))(a2, v10, v7);
    v20 = v23;
    Data.write(to:options:)();
    if (v20)
    {
      v14(a2, v7);
    }

    outlined consume of Data._Representation(v17, v19);
  }
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t prepareUrlAccess(_:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](prepareUrlAccess(_:), 0, 0);
}

uint64_t prepareUrlAccess(_:)()
{
  v1 = v0[12];
  v2 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v23 = *(v4 + 56);
  v23(v1, 1, 1, v3);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in prepareUrlAccess(_:);
  *(v9 + 24) = v8;
  v0[6] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  v0[5] = &block_descriptor;
  v10 = _Block_copy(v0 + 2);

  v0[8] = 0;
  [v2 coordinateReadingItemAtURL:v7 options:0 error:v0 + 8 byAccessor:v10];
  _Block_release(v10);

  v11 = v0[8];
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  if (v11)
  {
    goto LABEL_5;
  }

  v12 = v0[11];
  outlined init with copy of URL?(v0[12], v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    v22 = v0[10];
    outlined destroy of URL?(v0[11], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for JournalingSuggestionsError(0);
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError, &protocol conformance descriptor for JournalingSuggestionsError);
    swift_allocError();
    v13 = v2;
    v15 = v14;
    (*(v4 + 16))(v14, v22, v3);
    v23(v15, 0, 1, v3);
    v2 = v13;
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v16 = v0[12];
    swift_willThrow();

    outlined destroy of URL?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v17 = v0[1];
    goto LABEL_6;
  }

  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[9];

  (*(v4 + 32))(v21, v20, v3);
  outlined destroy of URL?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v17 = v0[1];
LABEL_6:

  return v17();
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

void closure #1 in prepareUrlAccess(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = URL.path.getter();
  v6 = MEMORY[0x23EE70700](v5);

  v7 = [v4 fileExistsAtPath_];

  if (v7)
  {
    outlined destroy of URL?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = type metadata accessor for URL();
    v10 = *(v8 - 8);
    (*(v10 + 16))(a2, a1, v8);
    v9 = *(v10 + 56);

    v9(a2, 0, 1, v8);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void assetImageContentToUrl(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v42 - v15;
  v47 = [a1 content];
  v17 = swift_dynamicCast();
  v18 = v11[7];
  if (v17)
  {
    v18(v9, 0, 1, v10);
    v19 = v11[4];
    v19(v16, v9, v10);
    v19(a2, v16, v10);
    return;
  }

  v43 = a2;
  v18(v9, 1, 1, v10);
  outlined destroy of URL?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = [a1 content];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    [a1 content];
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      type metadata accessor for JournalingSuggestionsError(0);
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError, &protocol conformance descriptor for JournalingSuggestionsError);
      swift_allocError();
      *v40 = 0x6D4949552C4C5255;
      v40[1] = 0xEB00000000656761;
      v40[2] = 0;
      v40[3] = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v33 = v32;
    if (getCurrentTheme()() == 2)
    {
      v34 = [v33 darkURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return;
    }

    v41 = [v33 lightURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_18;
  }

  v22 = v21;
  v42[1] = v20;
  v23 = [objc_opt_self() defaultManager];
  v24 = [v23 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v44 + 8))(v6, v45);
  v25 = v43;
  URL.appendingPathComponent(_:)();

  v45 = v11[1];
  v45(v14, v10);
  v26 = UIImageHEICRepresentation(v22);
  if (!v26)
  {
    v35 = UIImagePNGRepresentation(v22);
    if (v35)
    {
      v36 = v35;
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v37;

      v31 = v43;
      goto LABEL_12;
    }

LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  v27 = v26;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v25;
LABEL_12:
  URL.appendingPathExtension(_:)();
  v38 = v45;
  v45(v31, v10);
  (v11[4])(v31, v14, v10);
  v39 = v46;
  Data.write(to:options:)();
  if (v39)
  {
    v38(v31, v10);
  }

  outlined consume of Data._Representation(v28, v30);
  swift_unknownObjectRelease();
}

uint64_t getCurrentTheme()()
{
  v7 = 1;
  type metadata accessor for OS_dispatch_queue();
  v0 = static OS_dispatch_queue.main.getter();
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in getCurrentTheme();
  *(v2 + 24) = v1;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

uint64_t makeDateInternal(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v33 = &v30 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  outlined init with copy of URL?(a1, v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = v12[6];
  if (v23(v10, 1, v11) == 1)
  {
    outlined destroy of URL?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v24 = 1;
  }

  else
  {
    v30 = v15;
    v31 = a3;
    v25 = v12[4];
    v25(v22, v10, v11);
    outlined init with copy of URL?(v32, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v23(v8, 1, v11) == 1)
    {
      v26 = v12[2];
      v26(v20, v22, v11);
      if (v23(v8, 1, v11) != 1)
      {
        outlined destroy of URL?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v25(v20, v8, v11);
      v26 = v12[2];
    }

    a3 = v31;
    v26(v33, v22, v11);
    v26(v30, v20, v11);
    DateInterval.init(start:end:)();
    v27 = v12[1];
    v27(v20, v11);
    v27(v22, v11);
    v24 = 0;
  }

  v28 = type metadata accessor for DateInterval();
  return (*(*(v28 - 8) + 56))(a3, v24, 1, v28);
}

void closure #1 in getCurrentTheme()(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  *a1 = v4;
}

void *_sSo26MOSuggestionSheetViewStateVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo35MOSuggestionAssetMotionActivityTypeaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance MOSuggestionAssetsType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance MOSuggestionAssetsType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance MOSuggestionAssetsType@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x23EE70700](v3);

  *a2 = v4;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for JournalingSuggestionsError(uint64_t a1)
{
  result = type metadata singleton initialization cache for JournalingSuggestionsError;
  if (!type metadata singleton initialization cache for JournalingSuggestionsError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for JournalingSuggestionsError(uint64_t a1)
{
  type metadata accessor for (url: URL?)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (assetType: String)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (expected: String, from: String?)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (context: String)();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (url: URL?)()
{
  if (!lazy cache variable for type metadata for (url: URL?))
  {
    type metadata accessor for URL?(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL?));
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t type metadata accessor for (assetType: String)()
{
  result = lazy cache variable for type metadata for (assetType: String);
  if (!lazy cache variable for type metadata for (assetType: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (assetType: String));
  }

  return result;
}

void type metadata accessor for (expected: String, from: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (expected: String, from: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, "\\7");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (expected: String, from: String?));
    }
  }
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

uint64_t type metadata accessor for (context: String)()
{
  result = lazy cache variable for type metadata for (context: String);
  if (!lazy cache variable for type metadata for (context: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (context: String));
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetMotionActivityType(void *a1, uint64_t *a2)
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

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetsType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType, ")\rvI,l");
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType, &protocol conformance descriptor for MOSuggestionAssetsType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetsType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE70700](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, "}\x1BvIDn");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMotionActivityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType, &protocol conformance descriptor for MOSuggestionAssetMotionActivityType);
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType, &protocol conformance descriptor for MOSuggestionAssetMotionActivityType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMetadataKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x23EE707F0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMetadataKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMetadataKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatformVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatformVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGRect(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t (*static JournalingSuggestion.Contact.getAssetLoader(for:)())()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferContactViewModel();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = v2, v4 = dispatch thunk of TransferContactViewModel.name.getter(), v5))
    {
      v6 = v4;
      v7 = v5;
      v8 = swift_allocObject();
      v8[2] = v3;
      v8[3] = v6;
      v8[4] = v7;
      return partial apply for closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:)(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v45 = a2;
  v42 = type metadata accessor for JournalingSuggestion.Contact(0);
  MEMORY[0x28223BE20](v42);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v41 = v12;
  v40 = *(v12 + 56);
  v40(&v36 - v19, 1, 1, v11);
  v21 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v21)
  {
    v22 = v21;
    v23 = Image.uiImage.getter();

    if (v23)
    {
      v37 = a1;
      v24 = [objc_opt_self() defaultManager];
      v25 = [v24 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      v38[1](v10, v39);
      URL.appendingPathComponent(_:)();

      v26 = *(v41 + 8);
      (v26)(v14, v11);
      v27 = UIImageHEICRepresentation(v23);
      if (v27 || (v27 = UIImagePNGRepresentation(v23)) != 0)
      {
        v38 = v26;
        v39 = v23;
        v28 = v27;
        v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        URL.appendingPathExtension(_:)();
        (v38)(v18, v11);
        (*(v41 + 32))(v18, v14, v11);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v29, v31);
        v23 = v39;
      }

      outlined destroy of URL?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v40(v18, 0, 1, v11);
      outlined init with take of URL?(v18, v20);
      a1 = v37;
    }
  }

  v32 = v42;
  outlined init with copy of URL?(v20, v7 + *(v42 + 20));
  v33 = v44;
  *v7 = v43;
  v7[1] = v33;
  v46[3] = v32;
  v46[4] = &protocol witness table for JournalingSuggestion.Contact;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  outlined init with copy of JournalingSuggestion.Contact(v7, boxed_opaque_existential_1);

  a1(v46, 0);
  outlined destroy of JournalingSuggestion.Contact(v7);
  outlined destroy of URL?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of URL?(v46, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Contact()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferContactViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = dispatch thunk of TransferContactViewModel.name.getter();
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = swift_allocObject();
        v9[2] = v4;
        v9[3] = v7;
        v9[4] = v8;
        v1 = closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:)partial apply;
        goto LABEL_7;
      }
    }

    v1 = 0;
  }

  v9 = 0;
LABEL_7:
  v10 = *(v0 + 8);

  return v10(v1, v9);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of JournalingSuggestion.Contact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Contact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Contact(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Contact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:);
}

uint64_t closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for JournalingSuggestion.Location(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 28);
  v13 = type metadata accessor for Date();
  v31 = *(*(v13 - 8) + 56);
  v32 = v12;
  v31(v11 + v12, 1, 1, v13);
  v30 = v8[9];
  *(v11 + v30) = 0;
  *(v11 + v8[10]) = 2;
  *v11 = dispatch thunk of TransferMapViewModel.placeName.getter();
  v11[1] = v14;
  v11[2] = dispatch thunk of TransferMapViewModel.cityName.getter();
  v11[3] = v15;
  v11[4] = dispatch thunk of TransferMapViewModel.location.getter();
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    outlined destroy of URL?(v4, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v18 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v17 + 8))(v4, v16);
    v18 = 0;
  }

  v31(v7, v18, 1, v13);
  v19 = (v11 + v8[8]);
  outlined assign with take of Date?(v7, v11 + v32);
  *v19 = dispatch thunk of TransferMapViewModel.mapItem.getter();
  v19[1] = v20;
  v21 = dispatch thunk of TransferMapViewModel.mapItem.getter();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = objc_allocWithZone(MEMORY[0x277CD4E98]);
    v26 = MEMORY[0x23EE70700](v23, v24);

    v27 = [v25 initWithIdentifierString_];

    *(v11 + v30) = v27;
  }

  v35[3] = v8;
  v35[4] = &protocol witness table for JournalingSuggestion.Location;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  outlined init with copy of JournalingSuggestion.Location(v11, boxed_opaque_existential_1);
  v34(v35, 0);
  outlined destroy of URL?(v35, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Location(v11);
}

uint64_t sub_238A79FA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t (*static JournalingSuggestion.Location.getAssetLoader(for:)())()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMapViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*static JournalingSuggestion.LocationGroup.getAssetLoader(for:)())(uint64_t a1, uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMapViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v10);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV8LocationVGSgMd, &_sSay21JournalingSuggestions0A10SuggestionV8LocationVGSgMR);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return MEMORY[0x282200600](v0 + 12, v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v4, v2);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 112);
  if (v1)
  {
    *(v0 + 56) = v1;
    v3 = v0 + 56;
    *(v0 + 80) = &type metadata for JournalingSuggestion.LocationGroup;
    *(v0 + 88) = &protocol witness table for JournalingSuggestion.LocationGroup;
  }

  else
  {
    *(v0 + 16) = 0u;
    v3 = v0 + 16;
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
  }

  v2(v3, 0);
  outlined destroy of URL?(v3, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Location(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMR);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMR);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = dispatch thunk of TransferMapViewModel.mapViewModels.getter();
  if (v1)
  {
    v3 = v1;
    if (v1 >> 62)
    {
      if (v1 >= 0)
      {
        v1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v23 = v3;
      v4 = MEMORY[0x23EE70C40](v1);
      v3 = v23;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return MEMORY[0x282200308](v4, v3, v2);
    }

    v5 = 0;
    v27 = v3 & 0xC000000000000001;
    v28 = v4;
    v26 = **(v0 + 80);
    v29 = v3;
    do
    {
      v31 = v5;
      if (v27)
      {
        v8 = MEMORY[0x23EE70B80](v5);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v10, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
      v15[5] = v12;
      outlined init with copy of URL?(v10, v11, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);
      v30 = v9;

      v16 = *(v0 + 96);
      if (v10 == 1)
      {
        outlined destroy of URL?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v16, v13);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
      *(v20 + 24) = v15;

      if (v19 | v17)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v6 = 0;
      }

      v5 = v31 + 1;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v26;
      swift_task_create();

      outlined destroy of URL?(v7, &_sScPSgMd, &_sScPSgMR);
      v3 = v29;
    }

    while (v28 != v31 + 1);
LABEL_25:

    TaskGroup.makeAsyncIterator()();
    *(v0 + 208) = MEMORY[0x277D84F90];
    v24 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator();
    v25 = swift_task_alloc();
    *(v0 + 216) = v25;
    *v25 = v0;
    v25[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    v3 = *(v0 + 184);
    v4 = *(v0 + 144);
    v2 = v24;

    return MEMORY[0x282200308](v4, v3, v2);
  }

  **(v0 + 72) = 0;

  v21 = *(v0 + 8);

  return v21();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 200);
    v6 = v2 + 184;
    v4 = *(v2 + 184);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v7 = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 208);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMR);
    **(v0 + 72) = v2;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    outlined init with take of JournalingSuggestion.Location?(v1, v5);
    outlined init with copy of URL?(v5, v6, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = *(v0 + 168);
      outlined destroy of URL?(*(v0 + 176), &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      outlined destroy of URL?(v9, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      v10 = *(v0 + 208);
    }

    else
    {
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      outlined init with take of JournalingSuggestion.Location(*(v0 + 168), v11);
      outlined init with copy of JournalingSuggestion.Location(v11, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, *(v0 + 208));
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
      }

      v16 = *(v0 + 176);
      v17 = *(v0 + 128);
      v18 = *(v0 + 120);
      outlined destroy of JournalingSuggestion.Location(*(v0 + 136));
      outlined destroy of URL?(v16, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      v10[2] = v15 + 1;
      outlined init with take of JournalingSuggestion.Location(v17, v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15);
    }

    *(v0 + 208) = v10;
    v19 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator();
    v20 = swift_task_alloc();
    *(v0 + 216) = v20;
    *v20 = v0;
    v20[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    v21 = *(v0 + 184);
    v22 = *(v0 + 144);

    return MEMORY[0x282200308](v22, v21, v19);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000014, 0x8000000238ADF470, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v1, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  outlined init with copy of URL?(a1, v10, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    v5 = type metadata accessor for JournalingSuggestion.Location(0);
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    outlined destroy of URL?(v10, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v7 = type metadata accessor for JournalingSuggestion.Location(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Location()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMapViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.LocationGroup()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMapViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t sub_238A7B6F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, a2, v6);
}

uint64_t sub_238A7B8B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238A7BAAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t outlined init with take of JournalingSuggestion.Location?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion.Location(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.Location(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Location(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A7BD9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5 = *(v0 + 8);
  v3 = v1;

  return v5(partial apply for closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:), v2);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v71 = a2;
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v63 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v69 = v57 - v6;
  MEMORY[0x28223BE20](v5);
  v66 = (v57 - v7);
  v70 = type metadata accessor for Date();
  v65 = *(v70 - 8);
  v8 = MEMORY[0x28223BE20](v70);
  v62 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = v57 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v60 = v57 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v64 = v57 - v17;
  MEMORY[0x28223BE20](v16);
  v68 = v57 - v18;
  v19 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  MEMORY[0x28223BE20](v19);
  v21 = (v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = dispatch thunk of TransferWorkoutViewModel.activityType.getter();
  if (v23)
  {
    v24 = 3000;
  }

  else
  {
    v24 = v22;
  }

  v25 = v19[8];
  v26 = type metadata accessor for DateInterval();
  v73 = *(v26 - 8);
  v27 = *(v73 + 56);
  v58 = v25;
  v57[1] = v73 + 56;
  v57[0] = v27;
  v27(v21 + v25, 1, 1, v26);
  *v21 = v24;
  v28 = (v21 + v19[9]);
  v29 = (v21 + v19[10]);
  v30 = (v21 + v19[11]);
  v31 = (v21 + v19[12]);
  v32 = v19[14];
  v67 = v19[13];
  v33 = (v21 + v32);
  v21[1] = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurned.getter();
  *v29 = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurnedLocalizedString.getter();
  v29[1] = v34;
  v21[2] = dispatch thunk of TransferWorkoutViewModel.distance.getter();
  *v28 = dispatch thunk of TransferWorkoutViewModel.distanceLocalizedString.getter();
  v28[1] = v35;
  v21[3] = dispatch thunk of TransferWorkoutViewModel.averageHeartRate.getter();
  *v30 = dispatch thunk of TransferWorkoutViewModel.averageHeartRateLocalizedString.getter();
  v30[1] = v36;
  v37 = v66;
  *v31 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v31[1] = v38;
  *v33 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v33[1] = v39;
  v40 = v73;
  *(v21 + v67) = dispatch thunk of TransferWorkoutViewModel.isIndoors.getter();
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v41 = *(v40 + 48);
  v67 = v26;
  if (v41(v37, 1, v26) == 1)
  {
    outlined destroy of URL?(v37, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  }

  else
  {
    v42 = v64;
    DateInterval.start.getter();
    v43 = *(v40 + 8);
    v44 = v67;
    v73 = v40 + 8;
    v66 = v43;
    v43(v37, v67);
    v45 = v65;
    v64 = *(v65 + 32);
    (v64)(v68, v42, v70);
    v46 = v69;
    dispatch thunk of AssetViewModel.baseDateInterval.getter();
    if (v41(v46, 1, v44) == 1)
    {
      (*(v45 + 8))(v68, v70);
      outlined destroy of URL?(v69, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    else
    {
      v47 = v59;
      v48 = v69;
      DateInterval.end.getter();
      v66(v48, v67);
      v49 = v60;
      v50 = v70;
      (v64)(v60, v47, v70);
      v51 = *(v45 + 16);
      v52 = v68;
      v51(v61, v68, v50);
      v51(v62, v49, v50);
      v53 = v63;
      DateInterval.init(start:end:)();
      v54 = *(v45 + 8);
      v54(v49, v50);
      v54(v52, v50);
      (v57[0])(v53, 0, 1, v67);
      outlined assign with take of URL?(v53, v21 + v58, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }
  }

  v74[3] = v19;
  v74[4] = &protocol witness table for JournalingSuggestion.Workout.Details;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v21, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout.Details);
  v72(v74, 0);
  outlined destroy of URL?(v74, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.WorkoutGroup(v21, type metadata accessor for JournalingSuggestion.Workout.Details);
}

uint64_t sub_238A7C614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static JournalingSuggestion.Workout.Details.getAssetLoader(for:)()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferWorkoutViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), 0, 0);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v7 = v0[1];

  v5 = v3;

  return v7(partial apply for closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v4);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a5;

  a3(partial apply for closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v9);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of URL?(a1, v20, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = v20[1];
  *(v14 + 32) = v20[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v21;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a2;
  v16 = a3;

  v17 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v14);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for UUID();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[28] = swift_task_alloc();
  v8[29] = type metadata accessor for JournalingSuggestion.Workout(0);
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
  v8[31] = swift_task_alloc();
  v11 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)()
{
  v1 = *(v0 + 264);
  outlined init with copy of URL?(*(v0 + 136), v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v2 = (v1 + 56);
  if (!*(v0 + 40))
  {
    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*v2)(v30, 1, 1, v31);
    goto LABEL_9;
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v6 = swift_dynamicCast();
  v7 = *v2;
  (*v2)(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    v32 = *(v0 + 168);
    v33 = *(v0 + 152);
    outlined destroy of URL?(*(v0 + 248), &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v33(v0 + 56, v32);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    goto LABEL_14;
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  outlined init with take of JournalingSuggestion.Workout(*(v0 + 248), v8, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v8, v10, type metadata accessor for JournalingSuggestion.Workout.Details);
  v7(v10, 0, 1, v9);
  v14 = *(v11 + 20);
  v15 = *(v13 + 56);
  v15(v10 + v14, 1, 1, v12);
  v16 = *(v11 + 24);
  *(v10 + v16) = dispatch thunk of TransferWorkoutViewModel.routeLocations.getter();
  if ((dispatch thunk of TransferWorkoutViewModel.isRouteBasedWorkout.getter() & 1) == 0)
  {
    v17 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v17)
    {
      v18 = v17;
      v19 = Image.uiImage.getter();

      if (v19)
      {
        v53 = v15;
        v54 = v14;
        v20 = *(v0 + 216);
        v21 = *(v0 + 208);
        v51 = *(v0 + 200);
        v23 = *(v0 + 184);
        v22 = *(v0 + 192);
        v24 = *(v0 + 176);
        v55 = v19;
        v25 = [objc_opt_self() defaultManager];
        v26 = [v25 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.init()();
        UUID.uuidString.getter();
        (*(v23 + 8))(v22, v24);
        v27 = v55;
        URL.appendingPathComponent(_:)();

        v28 = *(v21 + 8);
        v28(v20, v51);
        v29 = UIImageHEICRepresentation(v55);
        if (v29 || (v29 = UIImagePNGRepresentation(v55)) != 0)
        {
          v52 = v28;
          v34 = v29;
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          URL.appendingPathExtension(_:)();
          v38 = *(v0 + 216);
          v37 = *(v0 + 224);
          v39 = *(v0 + 200);
          v40 = *(v0 + 208);
          v52(v37, v39);
          (*(v40 + 32))(v37, v38, v39);
          Data.write(to:options:)();
          outlined consume of Data._Representation(v50, v36);
          v41 = v53;
          v27 = v55;
        }

        else
        {
          v41 = v53;
        }

        v42 = *(v0 + 224);
        v43 = *(v0 + 200);

        v41(v42, 0, 1, v43);
        outlined assign with take of URL?(v42, v10 + v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }
  }

  v44 = *(v0 + 272);
  v45 = *(v0 + 240);
  v46 = *(v0 + 152);
  *(v0 + 120) = *(v0 + 232);
  *(v0 + 128) = &protocol witness table for JournalingSuggestion.Workout;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v45, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout);
  v46(v0 + 96, 0);
  outlined destroy of JournalingSuggestion.WorkoutGroup(v44, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.WorkoutGroup(v45, type metadata accessor for JournalingSuggestion.Workout);
LABEL_14:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Workout.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t (*static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)())(uint64_t a1, uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferWorkoutViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v10);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = type metadata accessor for UUID();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV7WorkoutVGSgMd, &_sSay21JournalingSuggestions0A10SuggestionV7WorkoutVGSgMR);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);

  return MEMORY[0x282200600](v0 + 12, v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v4, v2);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = v2[5];
    v5 = *(*(v0 + 160) + 56);
    v5(&v3[v4], 1, 1, *(v0 + 152));
    *v3 = v1;
    v6 = v2[6];
    v7 = v2[7];
    v8 = &v3[v2[8]];
    *&v3[v7] = dispatch thunk of TransferWorkoutViewModel.averageHeartRate.getter();
    *&v3[v6] = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurned.getter();
    *v8 = dispatch thunk of TransferWorkoutViewModel.duration.getter();
    v8[8] = v9 & 1;
    v10 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v10)
    {
      v11 = v10;
      v12 = Image.uiImage.getter();

      if (v12)
      {
        v40 = v5;
        v41 = v4;
        v13 = *(v0 + 168);
        v43 = *(v0 + 160);
        v39 = *(v0 + 152);
        v15 = *(v0 + 136);
        v14 = *(v0 + 144);
        v16 = *(v0 + 128);
        v17 = [objc_opt_self() defaultManager];
        v42 = v12;
        v18 = [v17 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.init()();
        UUID.uuidString.getter();
        (*(v15 + 8))(v14, v16);
        URL.appendingPathComponent(_:)();
        v19 = v42;

        v20 = *(v43 + 8);
        v20(v13, v39);
        v21 = UIImageHEICRepresentation(v42);
        if (v21 || (v21 = UIImagePNGRepresentation(v42)) != 0)
        {
          v23 = v21;
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          URL.appendingPathExtension(_:)();
          v27 = *(v0 + 168);
          v26 = *(v0 + 176);
          v28 = *(v0 + 152);
          v29 = *(v0 + 160);
          v20(v26, v28);
          (*(v29 + 32))(v26, v27, v28);
          Data.write(to:options:)();
          outlined consume of Data._Representation(v38, v25);
          v30 = v41;
          v19 = v42;
        }

        else
        {
          v30 = v41;
        }

        v31 = *(v0 + 176);
        v32 = *(v0 + 152);

        v40(v31, 0, 1, v32);
        outlined assign with take of URL?(v31, &v3[v30], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    v33 = *(v0 + 192);
    v34 = *(v0 + 112);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 88) = &protocol witness table for JournalingSuggestion.WorkoutGroup;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    outlined init with copy of JournalingSuggestion.WorkoutGroup(v33, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.WorkoutGroup);
    v34(v0 + 56, 0);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestion.WorkoutGroup(v33, type metadata accessor for JournalingSuggestion.WorkoutGroup);
  }

  else
  {
    *(v0 + 16) = 0u;
    v22 = *(v0 + 112);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v22(v0 + 16, 0);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Workout(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMR);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMR);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = dispatch thunk of TransferWorkoutViewModel.workoutViewModels.getter();
  if (v1)
  {
    v3 = v1;
    if (v1 >> 62)
    {
      if (v1 >= 0)
      {
        v1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v25 = v3;
      v4 = MEMORY[0x23EE70C40](v1);
      v3 = v25;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return MEMORY[0x282200308](v4, v3, v2);
    }

    v5 = 0;
    v29 = **(v0 + 80);
    v30 = v4;
    v28 = v3 & 0xC000000000000001;
    v31 = v3;
    do
    {
      v33 = v5;
      if (v28)
      {
        v8 = MEMORY[0x23EE70B80](v5);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = *(v0 + 96);
      v11 = *(v0 + 104);
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v13 = swift_allocObject();
      v13[2] = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      v13[3] = v12;
      v13[4] = v9;
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      v16 = *(v15 + 56);
      v32 = v9;

      v16(v11, 1, 1, v14);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)partial apply;
      v17[5] = v13;
      outlined init with copy of URL?(v11, v10, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v11) = (*(v15 + 48))(v10, 1, v14);

      v18 = *(v0 + 96);
      if (v11 == 1)
      {
        outlined destroy of URL?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v18, v14);
      }

      if (v17[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = dispatch thunk of Actor.unownedExecutor.getter();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
      *(v22 + 24) = v17;

      if (v21 | v19)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v6 = 0;
      }

      v5 = v33 + 1;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v29;
      swift_task_create();

      outlined destroy of URL?(v7, &_sScPSgMd, &_sScPSgMR);
      v3 = v31;
    }

    while (v30 != v33 + 1);
LABEL_25:

    TaskGroup.makeAsyncIterator()();
    *(v0 + 208) = MEMORY[0x277D84F90];
    v26 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator();
    v27 = swift_task_alloc();
    *(v0 + 216) = v27;
    *v27 = v0;
    v27[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    v3 = *(v0 + 184);
    v4 = *(v0 + 144);
    v2 = v26;

    return MEMORY[0x282200308](v4, v3, v2);
  }

  **(v0 + 72) = 0;

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 200);
    v6 = v2 + 184;
    v4 = *(v2 + 184);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v7 = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 208);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMR);
    **(v0 + 72) = v2;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    outlined init with take of JournalingSuggestion.Workout?(v1, v5);
    outlined init with copy of URL?(v5, v6, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = *(v0 + 168);
      outlined destroy of URL?(*(v0 + 176), &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      outlined destroy of URL?(v9, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      v10 = *(v0 + 208);
    }

    else
    {
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      outlined init with take of JournalingSuggestion.Workout(*(v0 + 168), v11, type metadata accessor for JournalingSuggestion.Workout);
      outlined init with copy of JournalingSuggestion.WorkoutGroup(v11, v12, type metadata accessor for JournalingSuggestion.Workout);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, *(v0 + 208));
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
      }

      v16 = *(v0 + 176);
      v17 = *(v0 + 128);
      v18 = *(v0 + 120);
      outlined destroy of JournalingSuggestion.WorkoutGroup(*(v0 + 136), type metadata accessor for JournalingSuggestion.Workout);
      outlined destroy of URL?(v16, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      v10[2] = v15 + 1;
      outlined init with take of JournalingSuggestion.Workout(v17, v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, type metadata accessor for JournalingSuggestion.Workout);
    }

    *(v0 + 208) = v10;
    v19 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator();
    v20 = swift_task_alloc();
    *(v0 + 216) = v20;
    *v20 = v0;
    v20[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    v21 = *(v0 + 184);
    v22 = *(v0 + 144);

    return MEMORY[0x282200308](v22, v21, v19);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000014, 0x8000000238ADF470, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v1, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  outlined init with copy of URL?(a1, v10, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    v5 = type metadata accessor for JournalingSuggestion.Workout(0);
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    outlined destroy of URL?(v10, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v7 = type metadata accessor for JournalingSuggestion.Workout(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout.Details()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferWorkoutViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Workout.getAssetLoader(for:)(a1);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.WorkoutGroup()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferWorkoutViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t specialized static JournalingSuggestion.Workout.getAssetLoader(for:)()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferWorkoutViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = swift_allocObject();
      v6[2] = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      v6[3] = v5;
      v6[4] = v4;
      v7 = v2;
      v1 = closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v6 = 0;
LABEL_6:
  v8 = *(v0 + 8);

  return v8(v1, v6);
}

uint64_t sub_238A7F064()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, a2, v6);
}

uint64_t sub_238A7F228()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, v4, v5, v7, v6);
}

uint64_t sub_238A7F328()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV7WorkoutVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t outlined init with take of JournalingSuggestion.Workout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A7F4F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1);
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A7F654()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A7F6A0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t outlined init with take of JournalingSuggestion.Workout(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.WorkoutGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.WorkoutGroup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t (*static UIImage.getAssetLoader(for:)())()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    v2 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v2)
    {
      v3 = v2;
      v4 = Image.uiImage.getter();

      if (v4)
      {
        *(swift_allocObject() + 16) = v4;
        return partial apply for closure #1 in static UIImage.getAssetLoader(for:);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static UIImage.getAssetLoader(for:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v7[3] = type metadata accessor for UIImage();
  v7[4] = &protocol witness table for UIImage;
  v7[0] = a3;
  v5 = a3;
  a1(v7, 0);
  return outlined destroy of JournalingSuggestionAsset?(v7);
}

uint64_t sub_238A7FAF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance UIImage()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v3)
    {
      v4 = v3;
      v5 = Image.uiImage.getter();

      if (v5)
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v1 = closure #1 in static UIImage.getAssetLoader(for:)partial apply;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v1 = 0;
  }

  v6 = 0;
LABEL_8:
  v7 = *(v0 + 8);

  return v7(v1, v6);
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t outlined destroy of JournalingSuggestionAsset?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static JournalingSuggestion.StateOfMind.loaderError(_:for:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.bridge);

  v7 = a3;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    type metadata accessor for JournalingSuggestion.StateOfMind(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMd, &_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    *(v9 + 22) = 2080;
    [v7 content];
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_238A75000, oslog, v8, "%s.getAssetLoader, Unexpected content %s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v10, -1, -1);
    MEMORY[0x23EE71510](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlF10Foundation4DateV_Tt2g5@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a1, a2, &v21 - v7);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  outlined destroy of URL?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  type metadata accessor for JournalingSuggestionsError(0);
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  swift_allocError();
  v12 = v11;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v13;
  MEMORY[0x23EE70790](8250, 0xE200000000000000);
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVmMd, &_s10Foundation4DateVmMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v14);

  v15 = v21;
  v16 = v22;
  v21 = 0x203A7465737341;
  v22 = 0xE700000000000000;
  v23 = [a1 content];
  v17 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v17);

  v18 = v21;
  v19 = v22;
  *v12 = v15;
  v12[1] = v16;
  v12[2] = v18;
  v12[3] = v19;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSi_Tt2g5(void *a1, void *a2)
{
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, a2);
  if (v4)
  {
    v5 = result;
    type metadata accessor for JournalingSuggestionsError(0);
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    swift_allocError();
    v7 = v6;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v8;
    MEMORY[0x23EE70790](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSimMd, &_sSimMR);
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v9);

    [a1 content];
    v10 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v10);

    *v7 = v11;
    v7[1] = v12;
    v7[2] = 0x203A7465737341;
    v7[3] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSd_Tt2g5(void *a1, void *a2)
{
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSd_Tt2g5(a1, a2);
  if (v4)
  {
    type metadata accessor for JournalingSuggestionsError(0);
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    swift_allocError();
    v6 = v5;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v7;
    MEMORY[0x23EE70790](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v8);

    [a1 content];
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v9);

    *v6 = v10;
    v6[1] = v11;
    v6[2] = 0x203A7465737341;
    v6[3] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, void *a11)
{
  v49 = a7;
  v50 = a8;
  v52 = a2;
  v53 = a4;
  v45 = a3;
  v51 = a1;
  v47 = a6;
  v48 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v40 - v16;
  v44 = &v40 - v16;
  v18 = type metadata accessor for Date();
  v42 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v40 - v22;
  v46 = &v40 - v22;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = v19;
  (*(v19 + 16))(&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v18);
  outlined init with copy of URL?(a10, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v41 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v14 + 80) + v29 + 8) & ~*(v14 + 80);
  v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v53;
  *(v32 + 4) = v45;
  *(v32 + 5) = v33;
  (*(v25 + 32))(&v32[v26], v43, v42);
  *&v32[v41] = v47;
  *&v32[v27] = a9;
  v34 = v50;
  *&v32[v28] = v49;
  *&v32[v29] = v34;
  outlined init with take of URL?(v44, &v32[v30]);
  v35 = v48;
  *&v32[v31] = v48;
  v36 = &v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8];
  v37 = v52;
  *v36 = v51;
  v36[1] = v37;

  v38 = v35;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:), v32);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 152) = v16;
  *(v9 + 136) = v15;
  *(v9 + 120) = v14;
  *(v9 + 112) = a9;
  *(v9 + 104) = a1;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v9 + 160) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v9 + 168) = v10;
  *(v9 + 176) = *(v10 - 8);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  *(v9 + 208) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v9 + 216) = v11;
  *(v9 + 224) = *(v11 - 8);
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v5;
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 80);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v14 = *v11++;
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      *&v12[8 * v16 + 32] = v13;
      --v10;
    }

    while (v10);
  }

  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 176);
  v45 = *(v0 + 128);
  v46 = *(v0 + 160);
  v44 = *(v0 + 120);
  v42 = *(v0 + 168);
  v43 = *(v0 + 112);
  v22 = *(v0 + 88);
  v41 = *(v0 + 216);
  type metadata accessor for HKStateOfMind();
  (*(v18 + 16))(v17, v22, v41);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v23 = HKStateOfMind.init(date:kind:valence:labels:associations:metadata:)();
  v24 = v20[5];
  *(v0 + 288) = v24;
  v25 = *(v21 + 56);
  *(v0 + 240) = v25;
  *(v0 + 248) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v25(v19 + v24, 1, 1, v42);
  *v19 = v23;
  v27 = v20[6];
  v26 = v20[7];
  *(v19 + v27) = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v43);
  *(v19 + v26) = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v44);
  outlined init with copy of URL?(v45, v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v21 + 48))(v46, 1, v42) == 1)
  {
    outlined destroy of URL?(*(v0 + 160), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v28 = *(v0 + 208);
    v29 = *(v0 + 144);
    *(v0 + 40) = *(v0 + 200);
    *(v0 + 48) = &protocol witness table for JournalingSuggestion.StateOfMind;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    outlined init with copy of JournalingSuggestion.StateOfMind(v28, boxed_opaque_existential_1);
    v29(v0 + 16, 0);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestion.StateOfMind(v28);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v33 = *(v0 + 192);
    v34 = *(v0 + 168);
    v35 = *(v0 + 176);
    v36 = *(v0 + 160);
    v37 = *(v35 + 32);
    *(v0 + 256) = v37;
    *(v0 + 264) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v37(v33, v36, v34);
    v38 = swift_task_alloc();
    *(v0 + 272) = v38;
    *v38 = v0;
    v38[1] = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
    v39 = *(v0 + 184);
    v40 = *(v0 + 192);

    return prepareUrlAccess(_:)(v39, v40);
  }
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
  }

  else
  {
    v2 = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 288);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  (*(*(v0 + 176) + 8))(*(v0 + 192), v6);
  outlined destroy of URL?(v4 + v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1(v4 + v3, v5, v6);
  v2(v4 + v3, 0, 1, v6);
  v7 = *(v0 + 208);
  v8 = *(v0 + 144);
  *(v0 + 40) = *(v0 + 200);
  *(v0 + 48) = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  outlined init with copy of JournalingSuggestion.StateOfMind(v7, boxed_opaque_existential_1);
  v8(v0 + 16, 0);
  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.StateOfMind(v7);

  v10 = *(v0 + 8);

  return v10();
}

{
  v30 = v0;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = v0[25];
    v9 = v0[22];
    v27 = v0[21];
    v28 = v0[24];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315394;
    v0[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMd, &_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[8] = [v10 content];
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_238A75000, v4, v5, "Unable to access state of mind image url: %s.getAssetLoader, Unexpected content: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v12, -1, -1);
    MEMORY[0x23EE71510](v11, -1, -1);

    (*(v9 + 8))(v28, v27);
  }

  else
  {
    v19 = v0[24];
    v20 = v0[21];
    v21 = v0[22];

    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[26];
  v23 = v0[18];
  v0[5] = v0[25];
  v0[6] = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  outlined init with copy of JournalingSuggestion.StateOfMind(v22, boxed_opaque_existential_1);
  v23(v0 + 2, 0);
  outlined destroy of URL?((v0 + 2), &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.StateOfMind(v22);

  v25 = v0[1];

  return v25();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderVGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result >> 62)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        result &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v2 = MEMORY[0x23EE70C40](result);
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v9 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x23EE70B80]();
          MEMORY[0x23EE6FF50](v6);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (v1 + 32);
        do
        {
          v8 = *v7++;
          MEMORY[0x23EE6FF50](v8);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      v3 = v9;
    }

    return MEMORY[0x23EE6FFF0](v3);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t (*specialized static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = type metadata accessor for Date();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v16;
  v17 = [a1 assetType];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlF10Foundation4DateV_Tt2g5(a1, *MEMORY[0x277D29FC0], v15);
  v24 = *(v54 + 32);
  v24(v53, v15, v55);
  v25 = _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSi_Tt2g5(a1, *MEMORY[0x277D29FB8]);
  _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSd_Tt2g5(a1, *MEMORY[0x277D29FC8]);
  v28 = v27;
  (*(v54 + 16))(v12, v53, v55);
  v29 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySiG_Tt2g5(a1, *MEMORY[0x277D29FB0]);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v48 = v31;
  v32 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySiG_Tt2g5(a1, *MEMORY[0x277D29FA8]);
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v46 = v33;
  v47 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySo7UIColorCG_Tt2g5(a1, *MEMORY[0x277D29FA0]);
  v45 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySo7UIColorCG_Tt2g5(a1, *MEMORY[0x277D29F98]);
  assetImageContentToUrl(_:)(a1, v6);
  v49 = v25;
  v34 = v54 + 8;
  v35 = v55;
  (*(v54 + 8))(v53, v55);
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
  v24(v51, v12, v35);
  outlined init with take of URL?(v6, v52);
  v37 = (*(v34 + 72) + 32) & ~*(v34 + 72);
  v54 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v50 + 80) + v40 + 8) & ~*(v50 + 80);
  v42 = swift_allocObject();
  v43 = v46;
  *(v42 + 16) = v48;
  *(v42 + 24) = v43;
  v24((v42 + v37), v51, v55);
  *(v42 + v54) = v49;
  *(v42 + v38) = v28;
  *(v42 + v39) = v47;
  *(v42 + v40) = v45;
  outlined init with take of URL?(v52, v42 + v41);
  *(v42 + ((v3 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v44 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
}

uint64_t sub_238A82140()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + v5 + 8) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v3 | v7 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  return closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v9), *(v2 + v10), *(v2 + v8), v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_238A82498()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + v5 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v3 | v7 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = v1[2];
  v14 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(v8, a1, v15, v14, v13, v12, v1 + v4, v7, v9);
}

unint64_t type metadata accessor for HKStateOfMind()
{
  result = lazy cache variable for type metadata for HKStateOfMind;
  if (!lazy cache variable for type metadata for HKStateOfMind)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKStateOfMind);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of JournalingSuggestion.StateOfMind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.StateOfMind(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError)
  {
    type metadata accessor for JournalingSuggestionsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t (*static JournalingSuggestion.GenericMedia.getAssetLoader(for:)())()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMediaThirdPartyViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3)
{
  v102 = a2;
  v103 = a1;
  v4 = type metadata accessor for MediaThirdPartyBackgroundColorVariant();
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMd, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v83 - v11;
  v95 = type metadata accessor for MediaThirdPartyCategory();
  v105 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v106 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = &v83 - v16;
  v85 = type metadata accessor for UUID();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v83 - v24;
  v26 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v27 + 28);
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v94 = v30;
  v93 = v31;
  v92 = v33;
  v91 = v32 + 56;
  (v33)(v29 + v30, 1, 1);
  v34 = *(v20 + 56);
  v87 = v26[8];
  v86 = v34;
  v34(v87 + v29, 1, 1, v19);
  v89 = v26[10];
  *(v29 + v89) = 0;
  v98 = v26;
  v96 = v26[11];
  *(v29 + v96) = 4;
  v108 = a3;
  v35 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v35)
  {
    v36 = v35;
    v37 = Image.uiImage.getter();

    if (v37)
    {
      v38 = [objc_opt_self() defaultManager];
      v39 = [v38 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      v84[1](v18, v85);
      URL.appendingPathComponent(_:)();

      v40 = *(v20 + 8);
      (v40)(v22, v19);
      v41 = UIImageHEICRepresentation(v37);
      if (v41 || (v41 = UIImagePNGRepresentation(v37)) != 0)
      {
        v84 = v40;
        v85 = v37;
        v42 = v41;
        v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        URL.appendingPathExtension(_:)();
        (v84)(v25, v19);
        (*(v20 + 32))(v25, v22, v19);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v43, v45);
        v37 = v85;
      }

      v86(v25, 0, 1, v19);
      outlined assign with take of URL?(v25, v87 + v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  *v29 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v29[1] = v46;
  v47 = v107;
  dispatch thunk of TransferMediaThirdPartyViewModel.mediaThirdPartyCategory.getter();
  v48 = v105;
  v49 = *(v105 + 48);
  v50 = v95;
  if (v49(v47, 1, v95) == 1)
  {
    outlined destroy of URL?(v47, &_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
    v51 = 0;
    v52 = 0;
    v53 = v104;
  }

  else
  {
    v54 = dispatch thunk of TransferMediaThirdPartyViewModel.subtitle.getter();
    v52 = v55;
    v56 = v90;
    if (v55)
    {
      v51 = v54;
      (*(v48 + 104))(v90, *MEMORY[0x277D2A1B8], v50);
      lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();
      v57 = v56;

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v58 = *(v48 + 8);
      v58(v57, v50);

      if (v110[0] != v109)
      {

        v51 = 0;
        v52 = 0;
      }

      v53 = v104;
    }

    else
    {
      v51 = 0;
      v58 = *(v48 + 8);
      v53 = v104;
    }

    v58(v107, v50);
  }

  v59 = v106;
  v29[2] = v51;
  v29[3] = v52;
  dispatch thunk of TransferMediaThirdPartyViewModel.mediaThirdPartyCategory.getter();
  if (v49(v59, 1, v50) == 1)
  {
    outlined destroy of URL?(v59, &_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
    v60 = 0;
    v61 = 0;
    v63 = v98;
    v62 = v99;
    v64 = v97;
    goto LABEL_26;
  }

  v65 = dispatch thunk of TransferMediaThirdPartyViewModel.subtitle.getter();
  v61 = v66;
  if (v66)
  {
    v107 = v65;
    v67 = *MEMORY[0x277D2A1B0];
    v68 = v105;
    v69 = v90;
    v87 = *(v105 + 104);
    v87(v90, v67, v50);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v70 = *(v68 + 8);
    v70(v69, v50);
    if (v110[0] == v109)
    {
    }

    else
    {
      v87(v69, *MEMORY[0x277D2A1C0], v50);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v70(v69, v50);

      if (v110[0] != v109)
      {

        v60 = 0;
        v61 = 0;
        v62 = v99;
        v53 = v104;
        goto LABEL_24;
      }
    }

    v62 = v99;
    v53 = v104;
    v60 = v107;
LABEL_24:
    v70(v106, v50);
    goto LABEL_25;
  }

  v60 = 0;
  v62 = v99;
  (*(v105 + 8))(v106, v50);
LABEL_25:
  v64 = v97;
  v63 = v98;
LABEL_26:
  v29[4] = v60;
  v29[5] = v61;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v71 = type metadata accessor for DateInterval();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v53, 1, v71) == 1)
  {
    outlined destroy of URL?(v53, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v73 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v72 + 8))(v53, v71);
    v73 = 0;
  }

  v92(v64, v73, 1, v93);
  v74 = (v29 + *(v63 + 36));
  outlined assign with take of URL?(v64, v29 + v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *v74 = dispatch thunk of TransferMediaThirdPartyViewModel.appIconAccessibilityString.getter();
  v74[1] = v75;
  dispatch thunk of TransferMediaThirdPartyViewModel.colorVariant.getter();
  v77 = v100;
  v76 = v101;
  if ((*(v100 + 48))(v62, 1, v101) == 1)
  {
    outlined destroy of URL?(v62, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMd, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMR);
    v78 = 4;
  }

  else
  {
    v79 = v88;
    (*(v77 + 16))(v88, v62, v76);
    v80 = (*(v77 + 88))(v79, v76);
    if (v80 == *MEMORY[0x277D2A1E0])
    {
      v78 = 0;
    }

    else if (v80 == *MEMORY[0x277D2A1D8])
    {
      v78 = 1;
    }

    else if (v80 == *MEMORY[0x277D2A1D0])
    {
      v78 = 2;
    }

    else if (v80 == *MEMORY[0x277D2A1E8])
    {
      v78 = 3;
    }

    else
    {
      (*(v77 + 8))(v79, v76);
      v78 = 4;
    }

    (*(v77 + 8))(v62, v76);
  }

  *(v29 + v96) = v78;
  if (dispatch thunk of TransferMediaThirdPartyViewModel.backgroundColor.getter())
  {
    *(v29 + v89) = MEMORY[0x23EE6FF50]();
  }

  v110[3] = v63;
  v110[4] = &protocol witness table for JournalingSuggestion.GenericMedia;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  outlined init with copy of JournalingSuggestion.GenericMedia(v29, boxed_opaque_existential_1);
  v103(v110, 0);
  outlined destroy of URL?(v110, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.GenericMedia(v29);
}

uint64_t sub_238A839F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::String_optional __swiftcall MediaThirdPartyCategory.artist(subtitle:)(Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v3 = type metadata accessor for MediaThirdPartyCategory();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D2A1B8], v3);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v4 + 8))(v6, v3);
    if (v10[1] == v10[0])
    {
      v7 = countAndFlagsBits;
    }

    else
    {

      v7 = 0;
      object = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = object;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory()
{
  result = lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory)
  {
    type metadata accessor for MediaThirdPartyCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory);
  }

  return result;
}

Swift::String_optional __swiftcall MediaThirdPartyCategory.album(subtitle:)(Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v2 = type metadata accessor for MediaThirdPartyCategory();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    v6 = *(v3 + 104);
    v6(v5, *MEMORY[0x277D2A1B0], v2);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7 = *(v3 + 8);
    v7(v5, v2);
    if (v14 == v13 || (v6(v5, *MEMORY[0x277D2A1C0], v2), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v7(v5, v2), v14 == v13))
    {
      v8 = countAndFlagsBits;
    }

    else
    {

      v8 = 0;
      object = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = object;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t MediaThirdPartyBackgroundColorVariant.mediaVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MediaThirdPartyBackgroundColorVariant();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x277D2A1E0])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x277D2A1D8])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x277D2A1D0])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x277D2A1E8])
  {
    *a1 = 3;
  }

  else
  {
    *a1 = 4;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.GenericMedia()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMediaThirdPartyViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t outlined init with copy of JournalingSuggestion.GenericMedia(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.GenericMedia(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static UIImage.getLoaderForImageUrl(_:)(uint64_t a1))()
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return partial apply for closure #1 in static UIImage.getLoaderForImageUrl(_:);
}

uint64_t closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:), v14);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v6[20] = type metadata accessor for JournalingSuggestionsError(0);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[24] = v9;
  v10 = swift_task_alloc();
  v6[25] = v10;
  *v10 = v6;
  v10[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);

  return prepareUrlAccess(_:)(v9, a4);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);
  }

  else
  {
    v2 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = Data.init(contentsOf:options:)();
  if (v1)
  {

LABEL_3:
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 144);
    *v7 = 0x6567616D494955;
    *(v7 + 8) = 0xE700000000000000;
    *(v7 + 16) = xmmword_238AD9630;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v9 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v7, v10);
    v8(v0 + 56, v9);

    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestionsError(v7, type metadata accessor for JournalingSuggestionsError);
    (*(v5 + 8))(v4, v6);
    goto LABEL_6;
  }

  v11 = v2;
  v12 = v3;
  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v11, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithData_];

  outlined consume of Data._Representation(v11, v12);
  if (!v15)
  {
    outlined consume of Data._Representation(v11, v12);
    goto LABEL_3;
  }

  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 176);
  v19 = *(v0 + 144);
  *(v0 + 120) = type metadata accessor for UIImage();
  *(v0 + 128) = &protocol witness table for UIImage;
  *(v0 + 96) = v15;
  v20 = v15;
  v19(v0 + 96, 0);

  outlined consume of Data._Representation(v11, v12);
  (*(v17 + 8))(v16, v18);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
LABEL_6:

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  (*(v3 + 16))(v4, *(v0 + 136), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v7);
  v5(v0 + 16, v6);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t (*static UIImage.getImageLoaderForLivePhoto(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  result = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return partial apply for closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:);
  }

  return result;
}

uint64_t closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a5;

  v10 = a5;
  a3(partial apply for closure #1 in closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)(uint64_t a1, void *a2, void (*a3)(__int128 *, void *), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for JournalingSuggestionsError(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMd, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v20 = a2;
    a3(&v47, a2);

    return outlined destroy of URL?(&v47, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  v43 = v19;
  v44 = v10;
  v45 = a4;
  v46 = a3;
  outlined init with copy of JournalingSuggestionAsset?(a1, &v47);
  if (!*(&v48 + 1))
  {
    outlined destroy of URL?(&v47, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v22 = swift_dynamicCast();
  (*(v17 + 56))(v15, v22 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_8:
    outlined destroy of URL?(v15, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMd, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMR);
    v27 = [a5 assetType];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *v12 = 0x6567616D494955;
    v12[1] = 0xE700000000000000;
    v12[2] = v28;
    v12[3] = v30;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v31 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v12, v32);
    v46(&v47, v31);

    outlined destroy of URL?(&v47, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v33 = type metadata accessor for JournalingSuggestionsError;
    v34 = v12;
    return outlined destroy of JournalingSuggestionsError(v34, v33);
  }

  outlined init with take of JournalingSuggestion.LivePhoto(v15, v43);
  v23 = Data.init(contentsOf:options:)();
  v24 = v46;
  v35 = v23;
  v37 = v36;
  v38 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v35, v37);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v40 = [v38 initWithData_];

  outlined consume of Data._Representation(v35, v37);
  if (v40)
  {
    *(&v48 + 1) = type metadata accessor for UIImage();
    v49 = &protocol witness table for UIImage;
    *&v47 = v40;
    v41 = v40;
    v24(&v47, 0);

    outlined consume of Data._Representation(v35, v37);
    outlined destroy of JournalingSuggestionsError(v43, type metadata accessor for JournalingSuggestion.LivePhoto);
    return outlined destroy of URL?(&v47, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  outlined consume of Data._Representation(v35, v37);
  *v12 = 0x6567616D494955;
  v12[1] = 0xE700000000000000;
  *(v12 + 1) = xmmword_238AD9640;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v25 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v12, v26);
  v24(&v47, v25);

  outlined destroy of URL?(&v47, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v12, type metadata accessor for JournalingSuggestionsError);
  v33 = type metadata accessor for JournalingSuggestion.LivePhoto;
  v34 = v43;
  return outlined destroy of JournalingSuggestionsError(v34, v33);
}

uint64_t (*static UIImage.getLoaderForImageUrlPair(_:)(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
}

uint64_t closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:), v10);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v6[25] = type metadata accessor for JournalingSuggestionsError(0);
  v6[26] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)()
{
  v1 = [*(v0 + 176) lightURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);

  return prepareUrlAccess(_:)(v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v2[34] = v0;

  v6 = *(v4 + 8);
  v2[35] = v6;
  v6(v3, v5);
  if (v0)
  {
    v7 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  else
  {
    v6(v2[32], v2[27]);
    v7 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);

  return prepareUrlAccess(_:)(v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 216);
  *(*v1 + 296) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  else
  {
    (*(v2 + 280))(*(v2 + 240), *(v2 + 216));
    v6 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = [*(v0 + 176) constructedImage];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 184);
    v4 = type metadata accessor for UIImage();
    *(v0 + 136) = v2;
    *(v0 + 160) = v4;
    *(v0 + 168) = &protocol witness table for UIImage;
    v5 = v2;
    v3(v0 + 136, 0);

    outlined destroy of URL?(v0 + 136, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 184);
    *v6 = 0x6567616D494955;
    *(v6 + 8) = 0xE700000000000000;
    *(v6 + 16) = xmmword_238AD9650;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    v8 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v6, v9);
    v7(v0 + 96, v8);

    outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestionsError(v6, type metadata accessor for JournalingSuggestionsError);
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = [*(v0 + 176) lightURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v7 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v8);
  v5(v0 + 16, v7);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);
  v9 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);

  return prepareUrlAccess(_:)(v11, v12);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v7 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v8);
  v5(v0 + 56, v7);

  outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in static UIImage.getAssetLoader(for:inside:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v7[3] = type metadata accessor for UIImage();
  v7[4] = &protocol witness table for UIImage;
  v7[0] = a3;
  v5 = a3;
  a1(v7, 0);
  return outlined destroy of URL?(v7, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t (*specialized static UIImage.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v53 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v56 = [a1 content];
  v19 = swift_dynamicCast();
  v20 = *(v6 + 56);
  if (v19)
  {
    v20(v4, 0, 1, v5);
    v21 = v6;
    v22 = *(v6 + 32);
    v22(v18, v4, v5);
    v54 = v21;
    (*(v21 + 16))(v16, v18, v5);
    v53 = a1;
    v23 = [a1 assetType];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        v47 = v54 + 8;
        (*(v54 + 8))(v18, v5);
        v48 = v55;
        v22(v55, v16, v5);
        v49 = (*(v47 + 72) + 16) & ~*(v47 + 72);
        v50 = swift_allocObject();
        v22((v50 + v49), v48, v5);
        return closure #1 in static UIImage.getLoaderForImageUrl(_:)partial apply;
      }
    }

    v32 = v53;
    v33 = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(v53);
    v35 = v34;
    v36 = *(v54 + 8);
    v36(v16, v5);
    v36(v18, v5);
    if (v33)
    {
      v37 = swift_allocObject();
      v37[2] = v33;
      v37[3] = v35;
      v37[4] = v32;
      v38 = v32;
      return closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)partial apply;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20(v4, 1, 1, v5);
    outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v28 = [a1 content];
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      *(swift_allocObject() + 16) = v29;
      return partial apply for closure #1 in static UIImage.getAssetLoader(for:inside:);
    }

    else
    {
      swift_unknownObjectRelease();
      v39 = [a1 content];
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40 && (v41 = [v40 imageURL]) != 0)
      {
        v42 = v41;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v43 = *(v6 + 32);
        v43(v11, &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        v44 = v55;
        v43(v55, v11, v5);
        v45 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v46 = swift_allocObject();
        v43((v46 + v45), v44, v5);
        return closure #1 in static UIImage.getLoaderForImageUrl(_:)partial apply;
      }

      else
      {
        swift_unknownObjectRelease();
        v51 = [a1 content];
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          *(swift_allocObject() + 16) = v52;
          return closure #1 in static UIImage.getLoaderForImageUrlPair(_:)partial apply;
        }

        else
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }
    }
  }
}

uint64_t sub_238A863E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in static UIImage.getLoaderForImageUrl(_:)(a1, a2, v6);
}

uint64_t sub_238A86528()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of JournalingSuggestionsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestionsError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestionAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion.LivePhoto(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestionsError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_238A86830()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t (*static Image.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  result = specialized static UIImage.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return partial apply for closure #1 in static Image.getAssetLoader(for:inside:);
  }

  return result;
}

uint64_t closure #1 in static Image.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a5;

  v10 = a5;
  a3(partial apply for closure #1 in closure #1 in static Image.getAssetLoader(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static Image.getAssetLoader(for:inside:)(uint64_t a1, void *a2, void (*a3)(__int128 *, void *), uint64_t a4, void *a5)
{
  v9 = type metadata accessor for JournalingSuggestionsError(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v12 = a2;
    a3(&v23, a2);

    return outlined destroy of JournalingSuggestionAsset?(&v23);
  }

  outlined init with copy of JournalingSuggestionAsset?(a1, &v23);
  if (*(&v24 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    type metadata accessor for UIImage();
    if (swift_dynamicCast())
    {
      v14 = v22[1];
      v15 = Image.init(uiImage:)();
      *(&v24 + 1) = MEMORY[0x277CE1088];
      v25 = &protocol witness table for Image;
      *&v23 = v15;
      a3(&v23, 0);

      return outlined destroy of JournalingSuggestionAsset?(&v23);
    }
  }

  else
  {
    outlined destroy of JournalingSuggestionAsset?(&v23);
  }

  v16 = [a5 assetType];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *v11 = 0x6567616D494955;
  v11[1] = 0xE700000000000000;
  v11[2] = v17;
  v11[3] = v19;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v20 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v11, v21);
  a3(&v23, v20);

  outlined destroy of JournalingSuggestionAsset?(&v23);
  return outlined destroy of JournalingSuggestionsError(v11);
}

uint64_t (*protocol witness for static InternalAssetProvider.getAssetLoader(for:inside:) in conformance Image(void *a1))(uint64_t a1, uint64_t a2)
{
  result = specialized static UIImage.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return closure #1 in static Image.getAssetLoader(for:inside:)partial apply;
  }

  return result;
}

uint64_t outlined destroy of JournalingSuggestionsError(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestionsError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for JournalingSuggestion.Video(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(v12, a3, v13);
  v14 = v10[5];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = &v12[v10[6]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = &v12[v10[7]];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = &v12[v10[8]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = &v12[v10[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a4, *MEMORY[0x277D29F88], v9);
  outlined assign with take of Date?(v9, &v12[v14]);
  v23[3] = v10;
  v23[4] = &protocol witness table for JournalingSuggestion.Video;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  outlined init with copy of JournalingSuggestion.Video(v12, boxed_opaque_existential_1);
  a1(v23, 0);
  outlined destroy of URL?(v23, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Video(v12);
}

uint64_t (*specialized static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = a1;
  v12 = [a1 assetType];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    v19 = v11;
    v20 = &off_278A60000;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v11;
    v20 = &off_278A60000;
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v41 = [v19 v20[135]];
  v21 = swift_dynamicCast();
  v22 = *(v6 + 56);
  if (v21)
  {
    v22(v4, 0, 1, v5);
    v23 = *(v6 + 32);
    v23(v10, v4, v5);
    v24 = v39;
    v23(v39, v10, v5);
    v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v26 = swift_allocObject();
    v23((v26 + v25), v24, v5);
    *(v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v27 = v19;
    return partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:);
  }

  v22(v4, 1, 1, v5);
  outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_11:
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.bridge);
  v30 = v19;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    v40 = [v30 v20[135]];
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v41);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_238A75000, v31, v32, "SuggestionVideo.getAssetLoader, Unexpected content: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x23EE71510](v34, -1, -1);
    MEMORY[0x23EE71510](v33, -1, -1);
  }

  return 0;
}

uint64_t sub_238A87514()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(a1, a2, v2 + v6, v7);
}

uint64_t outlined init with copy of JournalingSuggestion.Video(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Video(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Video(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Video(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  static JournalingSuggestionAsset.make(from:completionHandler:)(a1, partial apply for closure #1 in static JournalingSuggestionAsset.make(from:completionHandler:), v10, a4, a5);
}

uint64_t closure #1 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a1;
  v32 = a4;
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for Result();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (v30 - v10);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v30 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = v30 - v21;
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    v23 = a2;
  }

  else
  {
    v30[1] = AssociatedTypeWitness;
    v24 = v20;
    (*(v13 + 16))(v16, v31, v12);
    if ((*(v24 + 48))(v16, 1, a5) != 1)
    {
      (*(v24 + 32))(v22, v16, a5);
      (*(v24 + 16))(v19, v22, a5);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v34(v11);
      (*(v24 + 8))(v22, a5);
      return (*(v33 + 8))(v11, v9);
    }

    (*(v13 + 8))(v16, v12);
    type metadata accessor for JournalingSuggestionsError(0);
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    v25 = swift_allocError();
    v27 = v26;
    *v26 = _typeName(_:qualified:)();
    v27[1] = v28;
    v27[2] = 0;
    v27[3] = 0;
    swift_storeEnumTagMultiPayload();
    *v11 = v25;
    swift_storeEnumTagMultiPayload();
  }

  v34(v11);
  return (*(v33 + 8))(v11, v9);
}

uint64_t sub_238A87B8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void (*a2)(char *, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v34 = a2;
  v33 = type metadata accessor for Optional();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v31 - v9;
  v11 = type metadata accessor for JournalingSuggestionsError(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - v16);
  v18 = *(a1 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 24));
  *v17 = _typeName(_:qualified:)();
  v17[1] = v19;
  v17[2] = 0;
  v17[3] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = (v18 + 32);
  v21 = *(v18 + 16) + 1;
  while (--v21)
  {
    v22 = v20 + 4;
    v23 = *v20;
    v20 += 4;
    if (v23 == a4)
    {
      v24 = *(v22 - 2);
      outlined init with copy of JournalingSuggestionsError(v17, v15);
      v25 = (*(v12 + 80) + 48) & ~*(v12 + 80);
      v26 = swift_allocObject();
      v27 = v32;
      v26[2] = a4;
      v26[3] = v27;
      v26[4] = v34;
      v26[5] = a3;
      outlined init with take of JournalingSuggestionsError(v15, v26 + v25);
      swift_retain_n();

      v24(partial apply for closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:), v26);

      return outlined destroy of JournalingSuggestionsError(v17);
    }
  }

  (*(*(a4 - 8) + 56))(v10, 1, 1, a4);
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v28 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v17, v29);
  v34(v10, v28);

  (*(v8 + 8))(v10, v33);
  return outlined destroy of JournalingSuggestionsError(v17);
}

uint64_t closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a1;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - v16;
  v18 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v18 + 56))(v14, 1, 1, a6);
    v21 = a2;
    a3(v14, a2);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v29[1] = a4;
    v30 = v10;
    outlined init with copy of JournalingSuggestionAsset?(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v23 = swift_dynamicCast();
    v24 = *(v18 + 56);
    if (v23)
    {
      v24(v17, 0, 1, a6);
      (*(v18 + 32))(v20, v17, a6);
      (*(v18 + 16))(v14, v20, a6);
      v24(v14, 0, 1, a6);
      a3(v14, 0);
      (*(v11 + 8))(v14, v30);
      return (*(v18 + 8))(v20, a6);
    }

    else
    {
      v24(v17, 1, 1, a6);
      v25 = *(v11 + 8);
      v26 = v30;
      v25(v17, v30);
      v24(v14, 1, 1, a6);
      type metadata accessor for JournalingSuggestionsError(0);
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
      v27 = swift_allocError();
      outlined init with copy of JournalingSuggestionsError(v31, v28);
      a3(v14, v27);

      return (v25)(v14, v26);
    }
  }
}

uint64_t sub_238A88248()
{
  v1 = *(type metadata accessor for JournalingSuggestionsError(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of JournalingSuggestionsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestionsError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2)
{
  v5 = v2[2];
  v6 = *(type metadata accessor for JournalingSuggestionsError(0) - 8);
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(a1, a2, v7, v8, v9, v5);
}

uint64_t static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](static JournalingSuggestionAsset.content(forItem:), 0, 0);
}

uint64_t static JournalingSuggestionAsset.content(forItem:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for Optional();
  *v3 = v0;
  v3[1] = static JournalingSuggestionAsset.content(forItem:);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000011, 0x8000000238ADF490, partial apply for closure #1 in static JournalingSuggestionAsset.content(forItem:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static JournalingSuggestionAsset.content(forItem:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  static JournalingSuggestionAsset.make(from:completionHandler:)(a2, partial apply for closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:), v13, a3, a4);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for Optional();
  v33 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v36 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v18 = type metadata accessor for Result();
  MEMORY[0x28223BE20](v18);
  v20 = (&v33 - v19);
  (*(v21 + 16))(&v33 - v19, v37, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v20;
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v23 = v39;
    (*(v39 + 32))(v17, v20, AssociatedTypeWitness);
    (*(v23 + 16))(v15, v17, AssociatedTypeWitness);
    v24 = swift_dynamicCast();
    v25 = v36;
    v26 = *(v36 + 56);
    if (v24)
    {
      v26(v10, 0, 1, a3);
      v27 = v34;
      (*(v25 + 32))(v34, v10, a3);
      v28 = v35;
      (*(v25 + 16))(v35, v27, a3);
      v26(v28, 0, 1, a3);
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(returning:)();
      (*(v25 + 8))(v27, a3);
    }

    else
    {
      v26(v10, 1, 1, a3);
      (*(v33 + 8))(v10, v5);
      type metadata accessor for JournalingSuggestionsError(0);
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
      v29 = swift_allocError();
      v31 = v30;
      *v30 = _typeName(_:qualified:)();
      v31[1] = v32;
      v31[2] = 0;
      v31[3] = 0;
      swift_storeEnumTagMultiPayload();
      v40 = v29;
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(throwing:)();
    }

    return (*(v39 + 8))(v17, AssociatedTypeWitness);
  }
}

uint64_t InternalAssetContent.providers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t default associated conformance accessor for JournalingSuggestionAsset.JournalingSuggestionAsset.JournalingSuggestionContent: JournalingSuggestionAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x2821FE988](a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for JournalingSuggestionAsset, &associated conformance descriptor for JournalingSuggestionAsset.JournalingSuggestionAsset.JournalingSuggestionContent: JournalingSuggestionAsset);
}

uint64_t dispatch thunk of static InternalAssetProvider.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InternalAssetContent.AssetProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalAssetContent.AssetProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238A8915C()
{
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(a1, v6, v3, v4);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for SuggestionSheetUIManager(0)) init];
  static SuggestionSheetUIManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for SuggestionSheetManager(0)) init];
  static SuggestionSheetManager.shared = result;
  return result;
}

id SuggestionSheetUIManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *SuggestionSheetUIManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SuggestionSheetUIManager.shared;
}

id static SuggestionSheetUIManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetUIManager.shared;

  return v1;
}

uint64_t key path setter for SuggestionSheetUIManager.journalConfiguration : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

void *SuggestionSheetUIManager.sceneSession.getter()
{
  v1 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionSheetUIManager.sceneSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for SuggestionSheetUIManager.currentNotificationSuggestionID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x108))(v6);
}

uint64_t SuggestionSheetUIManager.journalConfiguration.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of URL?(v4 + v8, a4, a2, a3);
}

uint64_t SuggestionSheetUIManager.journalConfiguration.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path setter for SuggestionSheetUIManager.pastNotificationSuggestionID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x120))(v6);
}

void *key path getter for SuggestionSheetUIManager.notificationSchedule : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for SuggestionSheetUIManager.notificationSchedule : SuggestionSheetUIManager(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x138))(&v4);
}

void *sub_238A8A270@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_238A8A2E4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x138))(&v4);
}

uint64_t (*SuggestionSheetUIManager.notificationSchedule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$notificationSchedule : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x150))(v6);
}

uint64_t SuggestionSheetUIManager.$notificationSchedule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$notificationSchedule.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationSchedule;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

void *key path getter for SuggestionSheetUIManager.notificationAvailability : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for SuggestionSheetUIManager.notificationAvailability : SuggestionSheetUIManager(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x168))(&v4);
}

uint64_t SuggestionSheetUIManager.notificationSchedule.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void *sub_238A8A950@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_238A8A9C4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x168))(&v4);
}

uint64_t SuggestionSheetUIManager.notificationSchedule.setter(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*SuggestionSheetUIManager.notificationAvailability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$notificationAvailability : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x180))(v6);
}

uint64_t SuggestionSheetUIManager.$notificationAvailability.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$notificationAvailability.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationAvailability;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.connectionUUID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x198))(v6);
}

uint64_t SuggestionSheetUIManager.connectionUUID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t SuggestionSheetUIManager.connectionUUID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of URL?(a1, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = v1;
  static Published.subscript.setter();
  return outlined destroy of URL?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t (*SuggestionSheetUIManager.connectionUUID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.connectionUUID.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$connectionUUID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x1B0))(v6);
}

uint64_t SuggestionSheetUIManager.$connectionUUID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$connectionUUID.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__connectionUUID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$connectionUUID.modify;
}

uint64_t key path getter for SuggestionSheetUIManager.shouldRequestEmbeddedScene : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_238A8B7A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*SuggestionSheetUIManager.shouldRequestEmbeddedScene.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$shouldRequestEmbeddedScene : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x1E0))(v6);
}

uint64_t SuggestionSheetUIManager.$shouldRequestEmbeddedScene.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$shouldRequestEmbeddedScene.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldRequestEmbeddedScene;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

uint64_t key path getter for SuggestionSheetUIManager.shouldKeepSceneActive : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t SuggestionSheetUIManager.shouldRequestEmbeddedScene.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_238A8BE48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t SuggestionSheetUIManager.shouldRequestEmbeddedScene.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*SuggestionSheetUIManager.shouldKeepSceneActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

void SuggestionSheetUIManager.notificationSchedule.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for SuggestionSheetUIManager.$shouldKeepSceneActive : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x210))(v6);
}

uint64_t SuggestionSheetUIManager.$notificationSchedule.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SuggestionSheetUIManager.$shouldKeepSceneActive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$shouldKeepSceneActive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldKeepSceneActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

void SuggestionSheetUIManager.$notificationSchedule.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t SuggestionSheetUIManager.peekDetent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  (*((*MEMORY[0x277D85000] & *v0) + 0xD0))(v2);
  v5 = type metadata accessor for JournalConfiguration(0);
  (*(*(v5 - 8) + 48))(v4, 1, v5);
  return outlined destroy of URL?(v4, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

id SuggestionSheetUIManager.presentationOptions.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(type metadata accessor for SuggestionSheetPresenterOptions()) init];
  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v35 = (*MEMORY[0x277D85000] & *v0) + 208;
  v36 = v16;
  v16();
  v17 = type metadata accessor for JournalConfiguration(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v33 = v18 + 48;
  v34 = v19;
  if (v19(v13, 1, v17) || (v20 = *(v17 + 24), (*(v6 + 48))(&v13[v20], 1, v5)))
  {
    v21 = outlined destroy of URL?(v13, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    (*((*v15 & *v1) + 0x100))(v21);
    if ((*(v6 + 48))(v4, 1, v5))
    {
      v22 = outlined destroy of URL?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v23 = 0;
      goto LABEL_8;
    }

    (*(v6 + 16))(v8, v4, v5);
    v24 = &_s10Foundation4UUIDVSgMd;
    v25 = &_s10Foundation4UUIDVSgMR;
    v26 = v4;
  }

  else
  {
    (*(v6 + 16))(v8, &v13[v20], v5);
    v24 = &_s21JournalingSuggestions20JournalConfigurationVSgMd;
    v25 = &_s21JournalingSuggestions20JournalConfigurationVSgMR;
    v26 = v13;
  }

  outlined destroy of URL?(v26, v24, v25);
  UUID.uuidString.getter();
  v23 = v27;
  v22 = (*(v6 + 8))(v8, v5);
LABEL_8:
  (*((*MEMORY[0x277D85000] & *v1) + 0x238))(v22);
  v28 = dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.setter();
  if (!v23)
  {
    v29 = v32;
    (v36)(v28);
    v34(v29, 1, v17);
    outlined destroy of URL?(v29, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.setter();
  dispatch thunk of SuggestionSheetPresenterOptions.selectedSuggestionID.setter();
  specialized static SuggestionSheetUIManager.getClientPlatformVersion()();
  dispatch thunk of SuggestionSheetPresenterOptions.allowEvergreen.setter();
  return v14;
}

uint64_t SuggestionSheetUIManager.servicePickerViewState()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.servicePickerViewState();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_169;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v78 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
    if (!v6)
    {
LABEL_48:

      return;
    }

    v81 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection;
    v7 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v8 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock);
    v9 = v6;
    [v8 lock];
    v10 = &v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
    v11 = v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8];
    v12 = &v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState];
    if (v11)
    {
      if ((v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8] & 1) != 0 || (v13 = SuggestionSheetViewState.rawValue.getter(), v13 != SuggestionSheetViewState.rawValue.getter()))
    {
LABEL_9:
      [*&v5[v7] unlock];
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      v15 = __swift_project_value_buffer(v14, static Logger.bridge);
      v16 = v5;
      v82 = v15;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v79 = v3;
        v80 = v9;
        v19 = swift_slowAlloc();
        *v19 = 134218496;
        if (v11)
        {
          v20 = 0;
        }

        else
        {
          v20 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v19 + 4) = v20;
        *(v19 + 12) = 2048;
        if (v10[8])
        {
          v49 = 99;
        }

        else
        {
          v49 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v19 + 14) = v49;
        *(v19 + 22) = 2048;
        if (v12[8])
        {
          v50 = 99;
        }

        else
        {
          v50 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v19 + 24) = v50;

        _os_log_impl(&dword_238A75000, v17, v18, "servicePickerViewState, target, %ld, targetView, %ld, view, %ld", v19, 0x20u);
        MEMORY[0x23EE71510](v19, -1, -1);
        v3 = v79;
        v9 = v80;

        if (v11)
        {
LABEL_34:
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            v54 = "nil targetViewState, ignoring update";
LABEL_45:
            v74 = v52;
            v75 = v51;
            v76 = v53;
            v77 = 2;
            goto LABEL_46;
          }

          goto LABEL_47;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_34;
        }
      }

      v21 = *v10;
      v22 = v10[8];
      v23 = &v16[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState];
      *v23 = v21;
      v23[8] = v22;
      if (((v12[8] & 1) != 0 || (v24 = SuggestionSheetViewState.rawValue.getter(), v24 == SuggestionSheetViewState.rawValue.getter())) && ((v25 = SuggestionSheetViewState.rawValue.getter(), v25 == SuggestionSheetViewState.rawValue.getter()) || (v26 = SuggestionSheetViewState.rawValue.getter(), v26 == SuggestionSheetViewState.rawValue.getter())))
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = v9;
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_238A75000, v27, v28, "Requesting picker", v30, 2u);
          v31 = v30;
          v9 = v29;
          MEMORY[0x23EE71510](v31, -1, -1);
        }

        v32 = MEMORY[0x277D85000];
        v33 = (*((*MEMORY[0x277D85000] & *v16) + 0xE8))();
        if (!v33 || (v34 = v33, v35 = [v33 scene], v34, !v35))
        {
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            v54 = "nil target scene";
            goto LABEL_45;
          }

LABEL_47:

          v5 = v9;
          goto LABEL_48;
        }

        v36 = v9;
        v37 = [v35 _FBSScene];
        v38 = [v37 identityToken];

        v39 = *&v5[v81];
        if (v39)
        {
          v40 = *((*v32 & *v16) + 0x240);
          v41 = v39;
          v42 = v38;
          v43 = v40();
          [v41 requestPresentationFor:v42 with:v43];
        }

        v44 = type metadata accessor for TaskPriority();
        (*(*(v44 - 8) + 56))(v3, 1, 1, v44);
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v46 = static MainActor.shared.getter();
        v47 = swift_allocObject();
        v48 = MEMORY[0x277D85700];
        v47[2] = v46;
        v47[3] = v48;
        v47[4] = v45;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v47);

        v9 = v36;
      }

      else
      {
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v16;
          v58 = v9;
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_238A75000, v55, v56, "Posting picker state update: .dismissed", v59, 2u);
          v60 = v59;
          v9 = v58;
          v16 = v57;
          MEMORY[0x23EE71510](v60, -1, -1);
        }

        v61 = *&v5[v81];
        if (v61)
        {
          v62 = v16;
          v63 = *((*MEMORY[0x277D85000] & *v16) + 0x240);
          v64 = v61;
          v65 = v63();
          v16 = v62;
          v66 = v65;
          dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();

          isa = Bool._bridgeToObjectiveC()().super.super.isa;
          [v64 updatePickerWith:0 animated:isa];
        }

        v68 = type metadata accessor for TaskPriority();
        (*(*(v68 - 8) + 56))(v3, 1, 1, v68);
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v70 = static MainActor.shared.getter();
        v71 = swift_allocObject();
        v72 = MEMORY[0x277D85700];
        v71[2] = v70;
        v71[3] = v72;
        v71[4] = v69;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v71);

        *v23 = 0;
        v23[8] = 1;
      }

      v51 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v73))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = SuggestionSheetViewState.rawValue.getter();
        v54 = "Expecting transition to %ld";
        v74 = v73;
        v75 = v51;
        v76 = v53;
        v77 = 12;
LABEL_46:
        _os_log_impl(&dword_238A75000, v75, v74, v54, v76, v77);
        MEMORY[0x23EE71510](v53, -1, -1);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    *v10 = 0;
    v10[8] = 1;
    goto LABEL_9;
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v6, v5);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(1);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v6, v5);
}

uint64_t closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(0);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Bool __swiftcall SuggestionSheetUIManager.activate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection))
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.bridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238A75000, v11, v12, "presenterServerConnection is already established, sync container view state", v13, 2u);
      MEMORY[0x23EE71510](v13, -1, -1);
    }

    v14 = v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState;
    if (*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8))
    {
      return 0;
    }

    v18 = SuggestionSheetViewState.rawValue.getter();
    if (v18 == SuggestionSheetViewState.rawValue.getter())
    {
      return 1;
    }

    else
    {
      if (*(v14 + 8))
      {
        return 0;
      }

      v19 = SuggestionSheetViewState.rawValue.getter();
      return v19 == SuggestionSheetViewState.rawValue.getter();
    }
  }

  else
  {
    v20[1] = *(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
    v21 = v7;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.activate();
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_0;
    v20[0] = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v20[0];
    MEMORY[0x23EE709F0](0, v9, v5, v20[0]);
    _Block_release(v17);
    (*(v3 + 8))(v5, v2);
    (*(v21 + 8))(v9, v6);

    return 0;
  }
}

void closure #1 in SuggestionSheetUIManager.activate()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection;
    if (!*(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection))
    {
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.bridge);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_238A75000, v5, v6, "Activating JournalingSuggestionsPicker", v7, 2u);
        MEMORY[0x23EE71510](v7, -1, -1);
      }

      v8 = [objc_allocWithZone(type metadata accessor for PresenterServerConnection()) init];
      v9 = v2;
      dispatch thunk of PresenterServerConnection.presenterDelegate.setter();
      v10 = *&v2[v3];
      *&v2[v3] = v8;
      v2 = v8;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_238A75000, v11, v12, "Activated JournalingSuggestionsPicker", v13, 2u);
        MEMORY[0x23EE71510](v13, -1, -1);
      }
    }
  }
}

uint64_t SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34[0] = a1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v35 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = v34 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v6) + 0x2D8))(v18);
  v34[1] = *(v6 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v16 + 16))(v19, v34[0], v15);
  outlined init with copy of URL?(a2, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + *(v11 + 80) + v21) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v16 + 32))(v24 + v21, v19, v15);
  outlined init with take of UUID?(v14, v24 + v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = (v24 + v23);
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v29 = _Block_copy(aBlock);

  v30 = v35;
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v31 = v40;
  v32 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v30, v31, v29);
  _Block_release(v29);
  (*(v44 + 8))(v31, v32);
  (*(v41 + 8))(v30, v43);
}

void closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x2E8))(a2, a3, a4, a5, a6, a7);
  }
}

uint64_t SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v111 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v99 - v14;
  v112 = type metadata accessor for UUID();
  v114 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v107);
  v108 = v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v101 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v99 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v103 = v99 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v109 = v99 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v110 = v99 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v99 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v99 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a5;
  *(v35 + 24) = a6;
  v36 = *(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
  v113 = v35;
  if (v36)
  {
    v100 = v23;
    v37 = v35;
    v104 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v38 = *(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock);

    [v38 lock];
    v39 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v7 + v39);
    *(v7 + v39) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, partial apply for closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v37, a1, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMR);
    *(v7 + v39) = v115;
    swift_endAccess();
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.bridge);
    v43 = v111;
    outlined init with copy of URL?(v111, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v99[1] = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v114;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      v116[0] = v99[0];
      *v48 = 136315138;
      outlined init with copy of URL?(v34, v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v105 = *(v47 + 48);
      v106 = (v47 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v49 = v47;
      v50 = v112;
      if (v105(v32, 1, v112) == 1)
      {
        v51 = 1701736302;
        outlined destroy of URL?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v52 = 0xE400000000000000;
      }

      else
      {
        v51 = UUID.uuidString.getter();
        v52 = v64;
        (*(v49 + 8))(v32, v50);
      }

      outlined destroy of URL?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v116);

      *(v48 + 4) = v65;
      _os_log_impl(&dword_238A75000, v44, v45, "Notification suggestionID: %s", v48, 0xCu);
      v66 = v99[0];
      __swift_destroy_boxed_opaque_existential_1(v99[0]);
      MEMORY[0x23EE71510](v66, -1, -1);
      MEMORY[0x23EE71510](v48, -1, -1);

      v47 = v114;
      v43 = v111;
      v62 = v105;
      v63 = v106;
    }

    else
    {

      outlined destroy of URL?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = *(v47 + 48);
      v63 = (v47 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    }

    v67 = v112;
    v68 = v62(v43, 1, v112);
    v69 = v109;
    if (v68 == 1)
    {
      v70 = v110;
      (*(v47 + 56))(v110, 1, 1, v67);
      (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v70);
      v71 = v104;
      goto LABEL_32;
    }

    v72 = *((*MEMORY[0x277D85000] & *v7) + 0x118);
    v105 = v62;
    v72();
    v73 = *(v107 + 48);
    v106 = v63;
    v74 = v108;
    outlined init with copy of URL?(v43, v108, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v75 = v105;
    outlined init with copy of URL?(v69, v74 + v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v75(v74, 1, v67) == 1)
    {
      outlined destroy of URL?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v75(v74 + v73, 1, v67) == 1)
      {
        outlined destroy of URL?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_25:
        v83 = v43;
        v84 = v100;
        outlined init with copy of URL?(v83, v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v116[0] = v88;
          *v87 = 136315138;
          v89 = v84;
          v90 = v101;
          outlined init with copy of URL?(v89, v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v105(v90, 1, v67) == 1)
          {
            v91 = 1701736302;
            outlined destroy of URL?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v92 = 0xE400000000000000;
          }

          else
          {
            v91 = UUID.uuidString.getter();
            v92 = v93;
            (*(v114 + 8))(v90, v67);
          }

          v71 = v104;
          outlined destroy of URL?(v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v116);

          *(v87 + 4) = v94;
          _os_log_impl(&dword_238A75000, v85, v86, "Notification suggestionID: %s matches past ID, ignoring...", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x23EE71510](v88, -1, -1);
          MEMORY[0x23EE71510](v87, -1, -1);

          v47 = v114;
        }

        else
        {

          outlined destroy of URL?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v71 = v104;
        }

        v95 = v110;
        (*(v47 + 56))(v110, 1, 1, v67);
        (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v95);
        goto LABEL_32;
      }
    }

    else
    {
      v76 = v103;
      outlined init with copy of URL?(v74, v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v75(v74 + v73, 1, v67) != 1)
      {
        v79 = v74 + v73;
        v80 = v102;
        (*(v47 + 32))(v102, v79, v67);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v111) = dispatch thunk of static Equatable.== infix(_:_:)();
        v81 = v69;
        v82 = *(v47 + 8);
        v82(v80, v67);
        outlined destroy of URL?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v82(v76, v67);
        outlined destroy of URL?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v111)
        {
          goto LABEL_25;
        }

LABEL_23:
        v77 = v110;
        outlined init with copy of URL?(v43, v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v78 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v77);
        outlined init with copy of URL?(v43, v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*((*v78 & *v7) + 0x120))(v77);
        v71 = v104;
LABEL_32:
        [*(v7 + v71) unlock];
        [*(v7 + v71) lock];
        v96 = v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
        if ((*(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v97 = SuggestionSheetViewState.rawValue.getter(), v97 != SuggestionSheetViewState.rawValue.getter()))
        {
          *v96 = 2;
          v96[8] = 0;
        }

        [*(v7 + v71) unlock];
        SuggestionSheetUIManager.servicePickerViewState()();
      }

      outlined destroy of URL?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v47 + 8))(v76, v67);
    }

    outlined destroy of URL?(v74, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_23;
  }

  v53 = one-time initialization token for bridge;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.bridge);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_238A75000, v55, v56, "Can't show suggestions picker, not activated", v57, 2u);
    MEMORY[0x23EE71510](v57, -1, -1);
  }

  v58 = type metadata accessor for TaskPriority();
  (*(*(v58 - 8) + 56))(v15, 1, 1, v58);
  type metadata accessor for MainActor();

  v59 = static MainActor.shared.getter();
  v60 = swift_allocObject();
  v61 = MEMORY[0x277D85700];
  v60[2] = v59;
  v60[3] = v61;
  v60[4] = a5;
  v60[5] = a6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v60);
}

uint64_t closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)partial apply, v9);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v7, v6);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native, a6, a7);
    v17 = type metadata accessor for UUID();
    result = (*(*(v17 - 8) + 8))(a5, v17);
    *v7 = v30;
  }

  else
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v20)
    {
      v21 = v19;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v7;
      v31 = *v10;
      if (!v22)
      {
        specialized _NativeDictionary.copy()(a6, a7);
        v23 = v31;
      }

      v24 = *(v23 + 48);
      v25 = type metadata accessor for UUID();
      v26 = *(v25 - 8);
      v27 = *(v26 + 8);
      v27(v24 + *(v26 + 72) * v21, v25);

      specialized _NativeDictionary._delete(at:)(v21, v23);
      result = (v27)(a5, v25);
      *v10 = v23;
    }

    else
    {
      v28 = type metadata accessor for UUID();
      v29 = *(*(v28 - 8) + 8);

      return v29(a5, v28);
    }
  }

  return result;
}

Swift::Void __swiftcall SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.bridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_238A75000, v9, v10, "Beginning initialization of notification schedule config", v11, 2u);
    MEMORY[0x23EE71510](v11, -1, -1);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_48;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v7, v4, v13);
  _Block_release(v13);
  (*(v16 + 8))(v4, v2);
  (*(v14 + 8))(v7, v15);
}

void closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection), v7 = Strong, v8 = v6, v7, v6))
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v10);
  }

  else
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.bridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_238A75000, v12, v13, "PresenterServerConnection is nil, unable to retrieve notification schedule type", v14, 2u);
      MEMORY[0x23EE71510](v14, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySi_Sits5Error_pGMd, &_sSccySi_Sits5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned Int, @unowned NSError?) -> () with result type (Int, Int);
  v0[13] = &block_descriptor_160;
  v0[14] = v2;
  [v1 retrieveNotificationConfigurationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  }

  else
  {
    v2 = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v7);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned Int, @unowned NSError?) -> () with result type (Int, Int)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v8, v7);
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v28 = v0;

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.bridge);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_238A75000, v2, v3, "NotificationScheduleType: %ld", v5, 0xCu);
    MEMORY[0x23EE71510](v5, -1, -1);
  }

  v6 = v0[20];

  switch(v6)
  {
    case 2:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v8 = Strong;
      v25 = 2;
      (*((*MEMORY[0x277D85000] & *Strong) + 0x138))(&v25);
      goto LABEL_14;
    case 1:
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (!v9)
      {
        break;
      }

      v8 = v9;
      v26 = 1;
      (*((*MEMORY[0x277D85000] & *v9) + 0x138))(&v26);
      goto LABEL_14;
    case 0:
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v27 = 0;
        (*((*MEMORY[0x277D85000] & *v7) + 0x138))(&v27);
LABEL_14:
      }

      break;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[22];
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v13;
    _os_log_impl(&dword_238A75000, v11, v12, "NotificationAvailability: %ld", v14, 0xCu);
    MEMORY[0x23EE71510](v14, -1, -1);
  }

  v15 = v0[22];

  switch(v15)
  {
    case 2:
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {
        break;
      }

      v17 = v19;
      v22 = 2;
      (*((*MEMORY[0x277D85000] & *v19) + 0x168))(&v22);
      goto LABEL_26;
    case 1:
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        break;
      }

      v17 = v18;
      v23 = 1;
      (*((*MEMORY[0x277D85000] & *v18) + 0x168))(&v23);
      goto LABEL_26;
    case 0:
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16;
        v24 = 0;
        (*((*MEMORY[0x277D85000] & *v16) + 0x168))(&v24);
LABEL_26:
      }

      break;
  }

  v20 = v0[1];

  return v20();
}

Swift::Int SuggestionSheetUIManager.DismissReason.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionSheetUIManager.DismissReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionSheetUIManager.DismissReason(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](v2);
  return Hasher._finalize()();
}

void SuggestionSheetUIManager.dismiss(presentationToken:reason:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v33) = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1F0))(v7))
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.bridge);
    v33 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238A75000, v33, v11, "Ignoring dismiss during transfer", v12, 2u);
      MEMORY[0x23EE71510](v12, -1, -1);
    }

    v13 = v33;
  }

  else
  {
    v14 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v15 = &off_278A60000;
    [*(v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
    v16 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v19)
      {
        v20 = (*(v17 + 56) + 32 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[3];
        v31 = v20[2];
        v32 = v21;

        swift_retain_n();

        v24 = v22;
        v25 = v31;
        v26 = outlined consume of SuggestionSheetUIManager.TrackingHandlers?(v32, v24, v31, v23);
        v25(v26);
        v15 = &off_278A60000;
      }

      else
      {
      }
    }

    (*(v6 + 16))(v9, a1, v5);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 0, 0, 0, v9, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMR);
    swift_endAccess();
    v27 = *(*(v3 + v16) + 16);
    [*(v3 + v14) unlock];
    if (!v27 || (v33 & 1) == 0)
    {
      [*(v3 + v14) v15[146]];
      v28 = v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
      if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v29 = SuggestionSheetViewState.rawValue.getter(), v29 != SuggestionSheetViewState.rawValue.getter()))
      {
        *v28 = 0;
        v28[8] = 0;
      }

      [*(v3 + v14) unlock];
      SuggestionSheetUIManager.servicePickerViewState()();
    }
  }
}

Swift::Void __swiftcall SuggestionSheetUIManager.onApplicationMovedToForeground()()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState);
  if ((*(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = SuggestionSheetViewState.rawValue.getter();
    if (v3 == SuggestionSheetViewState.rawValue.getter() || (v4 = SuggestionSheetViewState.rawValue.getter(), v4 == SuggestionSheetViewState.rawValue.getter()))
    {
      v5 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
      [*(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
      *v1 = v2;
      *(v1 + 8) = 0;
      v6 = v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState;
      *v6 = 0;
      *(v6 + 8) = 1;
      v7 = v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState;
      *v7 = 0;
      *(v7 + 8) = 1;
      [*(v0 + v5) unlock];

      SuggestionSheetUIManager.servicePickerViewState()();
    }
  }
}

id SuggestionSheetUIManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v58);
  v57 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_journalConfiguration;
  v22 = type metadata accessor for JournalConfiguration(0);
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession] = 0;
  v23 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_currentNotificationSuggestionID;
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 56);
  v25(&v1[v23], 1, 1, v24);
  v25(&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pastNotificationSuggestionID], 1, 1, v24);
  v26 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationSchedule;
  LOBYTE(v63) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMR);
  Published.init(initialValue:)();
  (*(v18 + 32))(&v1[v26], v20, v17);
  v27 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationAvailability;
  LOBYTE(v63) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMR);
  Published.init(initialValue:)();
  (*(v45 + 32))(&v1[v27], v16, v46);
  v28 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__connectionUUID;
  v29 = v47;
  v25(v47, 1, 1, v24);
  v30 = v29;
  outlined init with copy of URL?(v29, v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = v50;
  Published.init(initialValue:)();
  outlined destroy of URL?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v51 + 32))(&v1[v28], v31, v52);
  v32 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldRequestEmbeddedScene;
  LOBYTE(v63) = 0;
  v33 = v53;
  Published.init(initialValue:)();
  v34 = v55;
  v35 = *(v54 + 32);
  v35(&v1[v32], v33, v55);
  v36 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldKeepSceneActive;
  LOBYTE(v63) = 0;
  Published.init(initialValue:)();
  v35(&v1[v36], v33, v34);
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection] = 0;
  v37 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v63 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v60 + 104))(v59, *MEMORY[0x277D85260], v61);
  *&v1[v37] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState];
  *v38 = 0;
  v38[8] = 1;
  v39 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState];
  *v39 = 0;
  v39[8] = 1;
  v40 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
  *&v1[v40] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v41 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
  *v41 = 0;
  v41[8] = 1;
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens] = MEMORY[0x277D84F98];
  v42 = type metadata accessor for SuggestionSheetUIManager(0);
  v62.receiver = v1;
  v62.super_class = v42;
  return objc_msgSendSuper2(&v62, sel_init);
}

id SuggestionSheetUIManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetUIManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SuggestionSheetUIManager@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SuggestionSheetUIManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void *static Suggestion.content(for:)()
{
  result = specialized static Suggestion.contentImpl(for:)();
  if (result)
  {
    if (!result[2])
    {

      return 0;
    }
  }

  return result;
}

uint64_t Suggestion.constructed()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = swift_getObjectType();
  v3 = type metadata accessor for SuggestionType();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](Suggestion.constructed(), 0, 0);
}

uint64_t Suggestion.constructed()()
{
  v1 = Suggestion.assets.getter();
  v0[27] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = Suggestion.title.getter();
    if (v3)
    {
      v4 = v3;
      v5 = dispatch thunk of TemplatedString.localizedString.getter();
      v7 = v6;

      v0[28] = v5;
      v0[29] = v7;
      if (v7)
      {
        v8 = Suggestion.dateRange.getter();
        if (v8)
        {
          v9 = v8;
          v11 = v0[25];
          v10 = v0[26];
          v12 = v0[19];
          v13 = v0[20];
          DateRange.startDate.getter();

          v14 = *(v13 + 32);
          v14(v10, v11, v12);
          v15 = Suggestion.dateRange.getter();
          if (v15)
          {
            v16 = v15;
            v18 = v0[23];
            v17 = v0[24];
            v19 = v0[19];
            v20 = v0[10];
            DateRange.endDate.getter();

            v14(v17, v18, v19);
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMd, &_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMR);
            v23 = swift_task_alloc();
            v0[30] = v23;
            *(v23 + 16) = v2;
            *(v23 + 24) = v20;
            v24 = swift_task_alloc();
            v0[31] = v24;
            *v24 = v0;
            v24[1] = Suggestion.constructed();

            return MEMORY[0x282200600](v0 + 5, v21, v22, 0, 0, &async function pointer to partial apply for closure #1 in Suggestion.constructed(), v23, v21);
          }

          (*(v0[20] + 8))(v0[26], v0[19]);
        }
      }
    }
  }

  (*(v0[17] + 56))(v0[8], 1, 1, v0[16]);

  v25 = v0[1];

  return v25();
}

{

  return MEMORY[0x2822009F8](Suggestion.constructed(), 0, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[27];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v66 = v0[27];
      }

      else
      {
        v66 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x23EE70C40](v66);
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 == v4)
    {
    }

    else
    {
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.bridge);
      swift_bridgeObjectRetain_n();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        v21 = v0[27];
        if (v3 >> 62)
        {
          if (v3 < 0)
          {
            v23 = v0[27];
          }

          else
          {
            v23 = v21 & 0xFFFFFFFFFFFFFF8;
          }

          v22 = MEMORY[0x23EE70C40](v23);
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 4) = v22;

        *(v20 + 12) = 2048;
        v24 = *(v1 + 16);

        *(v20 + 14) = v24;

        _os_log_impl(&dword_238A75000, v18, v19, "assets input count=%ld, output count=%ld", v20, 0x16u);
        MEMORY[0x23EE71510](v20, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
      }
    }

    v68 = v0[28];
    v69 = v0[29];
    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[19];
    v28 = v0[18];
    v29 = v0[16];
    v67 = v0[15];
    v30 = v29[6];
    v31 = *(v0[20] + 16);
    v31(v0[22], v0[26], v27);
    v31(v26, v25, v27);
    DateInterval.init(start:end:)();
    v32 = type metadata accessor for DateInterval();
    (*(*(v32 - 8) + 56))(&v28[v30], 0, 1, v32);
    v33 = v29[7];
    v34 = type metadata accessor for UUID();
    v35 = *(*(v34 - 8) + 56);
    v35(&v28[v33], 1, 1, v34);
    v36 = v29[8];
    v35(&v28[v36], 1, 1, v34);
    Suggestion.suggestionID.getter();
    v37 = NSObject.hashValue.getter();
    *v28 = v1;
    *(v28 + 1) = v68;
    *(v28 + 2) = v69;
    v70 = v29[9];
    *&v28[v70] = 0;
    v71 = v29[10];
    v28[v71] = 1;
    *&v28[v29[12]] = v37;
    Suggestion.suggestionID.getter();
    v35(v67, 0, 1, v34);
    outlined assign with take of URL?(v67, &v28[v33], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    Suggestion.transferID.getter();
    outlined assign with take of URL?(v67, &v28[v36], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v38 = Suggestion.prompt.getter();
    if (v38 && (v39 = v38, v40 = dispatch thunk of TemplatedString.localizedString.getter(), v42 = v41, v39, v42))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_238AD9800;
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      *&v28[v70] = v43;
    }

    else
    {
      v43 = 0;
    }

    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[11];
    v47 = v0[12];
    Suggestion.suggestionType.getter();
    (*(v47 + 104))(v45, *MEMORY[0x277D2A198], v46);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType, MEMORY[0x277D2A1A0], MEMORY[0x277D2A1A8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v48 = *(v47 + 8);
    v48(v45, v46);
    v48(v44, v46);
    if (v0[6] == v0[7])
    {
      v28[v71] = 0;
    }

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.bridge);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      if (v43)
      {
        v53 = *(v43 + 16);
      }

      else
      {
        v53 = 0;
      }

      *(v52 + 4) = v53;
      v54 = v52;
      _os_log_impl(&dword_238A75000, v50, v51, "prompts count=%ld", v52, 0xCu);
      MEMORY[0x23EE71510](v54, -1, -1);
    }

    v55 = v0[26];
    v56 = v0[24];
    v57 = v0[19];
    v58 = v0[20];
    v60 = v0[17];
    v59 = v0[18];
    v61 = v0[16];
    v62 = v0[8];

    v63 = *(v58 + 8);
    v63(v56, v57);
    v63(v55, v57);
    swift_beginAccess();
    outlined init with copy of JournalingSuggestion(v59, v62, type metadata accessor for JournalingSuggestion);
    (*(v60 + 56))(v62, 0, 1, v61);
    outlined destroy of JournalingSuggestion(v59, type metadata accessor for JournalingSuggestion);
  }

  else
  {

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.bridge);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_238A75000, v6, v7, "Error: No valid representation available for asset, dropping, asset type", v8, 2u);
      MEMORY[0x23EE71510](v8, -1, -1);
    }

    v9 = v0[26];
    v10 = v0[24];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[8];

    v16 = *(v12 + 8);
    v16(v10, v11);
    v16(v9, v11);
    (*(v14 + 56))(v15, 1, 1, v13);
  }

  v64 = v0[1];

  return v64();
}

uint64_t closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Suggestion.constructed(), 0, 0);
}

{
  v62 = v3;
  v4 = v3[11];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v50 = v3[11];
    }

    else
    {
      v50 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    a1 = MEMORY[0x23EE70C40](v50, a2, a3);
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_42:
    TaskGroup.makeAsyncIterator()();
    v3[26] = MEMORY[0x277D84F90];
    v51 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR, MEMORY[0x277D856C0]);
    v52 = swift_task_alloc();
    v3[27] = v52;
    *v52 = v3;
    v52[1] = closure #1 in Suggestion.constructed();
    a2 = v3[23];
    a1 = v3[18];
    a3 = v51;

    return MEMORY[0x282200308](a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v60 = v4 & 0xC000000000000001;
    v54 = v3 + 2;
    v55 = v3[11] + 32;
    v56 = v5;
    v59 = v3;
    while (1)
    {
      if (v60)
      {
        v7 = MEMORY[0x23EE70B80](v6, v3[11], a3);
      }

      else
      {
        v7 = *(v55 + 8 * v6);
      }

      v8 = v7;
      v9 = specialized static Suggestion.contentImpl(for:)();
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = v9;
      if (!v9[2])
      {
        break;
      }

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.bridge);
      v12 = v8;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v61 = v16;
        *v15 = 136315138;
        v17 = Asset.transferRepresentation.getter();
        if (v17)
        {
          v18 = v17;
          v57 = v16;
          v19 = [v17 description];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v16 = v57;
        }

        else
        {
          v22 = 0xE300000000000000;
          v20 = 7104878;
        }

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v61);

        *(v15 + 4) = v36;
        _os_log_impl(&dword_238A75000, v13, v14, "Got asset with internal asset type: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x23EE71510](v16, -1, -1);
        MEMORY[0x23EE71510](v15, -1, -1);
      }

      v37 = v3[12];
      v38 = v3[13];
      v39 = type metadata accessor for TaskPriority();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v38, 1, 1, v39);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v10;
      v41[5] = v12;
      outlined init with copy of URL?(v38, v37, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v37) = (*(v40 + 48))(v37, 1, v39);
      v58 = v12;
      v42 = v3[12];
      if (v37 == 1)
      {
        outlined destroy of URL?(v3[12], &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v40 + 8))(v42, v39);
      }

      v3 = v59;
      if (v41[2])
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

      v46 = *v59[10];
      v47 = swift_allocObject();
      *(v47 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in Suggestion.constructed();
      *(v47 + 24) = v41;

      if (v45 | v43)
      {
        v48 = v54;
        *v54 = 0;
        v54[1] = 0;
        v59[4] = v43;
        v59[5] = v45;
      }

      else
      {
        v48 = 0;
      }

      v5 = v56;
      v49 = v59[13];
      v59[6] = 1;
      v59[7] = v48;
      v59[8] = v46;
      swift_task_create();

      outlined destroy of URL?(v49, &_sScPSgMd, &_sScPSgMR);
LABEL_7:
      if (v5 == ++v6)
      {
        goto LABEL_42;
      }
    }

LABEL_19:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.bridge);
    v24 = v8;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61 = v28;
      *v27 = 136315138;
      v29 = Asset.transferRepresentation.getter();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 description];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v61);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_238A75000, v25, v26, "Error: Not implemented internal asset type: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE71510](v28, -1, -1);
      MEMORY[0x23EE71510](v27, -1, -1);

      v5 = v56;
    }

    else
    {
    }

    v3 = v59;
    goto LABEL_7;
  }

  __break(1u);
  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t closure #1 in Suggestion.constructed()()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 200);
    v6 = v2 + 184;
    v4 = *(v2 + 184);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v7 = closure #1 in Suggestion.constructed();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[26];
    v3 = v0[9];
    (*(v0[24] + 8))(v0[25], v0[23]);
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[14];
    v9 = v0[15];
    outlined init with take of UUID?(v1, v6, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    outlined init with copy of URL?(v6, v7, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v10 = v0[21];
      outlined destroy of URL?(v0[22], &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      outlined destroy of URL?(v10, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v11 = v0[26];
    }

    else
    {
      v13 = v0[16];
      v12 = v0[17];
      outlined init with take of JournalingSuggestion(v0[21], v12, type metadata accessor for JournalingSuggestion.ItemContent);
      outlined init with copy of JournalingSuggestion(v12, v13, type metadata accessor for JournalingSuggestion.ItemContent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v0[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v0[26]);
      }

      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11);
      }

      v17 = v0[22];
      v18 = v0[16];
      v19 = v0[15];
      outlined destroy of JournalingSuggestion(v0[17], type metadata accessor for JournalingSuggestion.ItemContent);
      outlined destroy of URL?(v17, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v11[2] = v16 + 1;
      outlined init with take of JournalingSuggestion(v18, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for JournalingSuggestion.ItemContent);
    }

    v0[26] = v11;
    v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR, MEMORY[0x277D856C0]);
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = closure #1 in Suggestion.constructed();
    v22 = v0[23];
    v23 = v0[18];

    return MEMORY[0x282200308](v23, v22, v20);
  }
}

uint64_t closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v6 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Suggestion.constructed(), 0, 0);
}