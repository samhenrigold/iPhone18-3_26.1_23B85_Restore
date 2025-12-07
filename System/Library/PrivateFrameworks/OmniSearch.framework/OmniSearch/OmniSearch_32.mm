void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
}

{
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
}

{
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MessageAccumulationContext.Message(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_17();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v6 + (v7 - v6) / v9 * v9;
  if (v5 < v6 || v5 >= v11)
  {
    OUTLINED_FUNCTION_107();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_107();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

unint64_t lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MessageAccumulationContext.Message(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of MessageAccumulationContext.Message(uint64_t a1)
{
  v2 = type metadata accessor for MessageAccumulationContext.Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MessageAccumulationViewModel.Summary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MessageAccumulationViewModel.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t outlined init with take of MessageAccumulationContext.Message(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t @nonobjc CNContactStore.unifiedContacts(matching:keysToFetch:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9[0] = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:a1 keysToFetch:isa error:v9];

  v5 = v9[0];
  if (v4)
  {
    type metadata accessor for CNContact();
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

void *ContactsClient.__allocating_init(contactStore:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void *ContactsClient.init(contactStore:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

Swift::OpaquePointer_optional __swiftcall ContactsClient.meCardRelationships()()
{
  isUniquelyReferenced_nonNull_native = v0;
  v2 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_19_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v112 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_19_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v16 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v16, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v19 = swift_slowAlloc();
      object = isUniquelyReferenced_nonNull_native;
      v20 = v4;
      v21 = v2;
      v22 = v19;
      *v19 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v17, v18, v23, "ContactClients.meCardRelationships", "Fetching contact information for me", v22, 2u);
      v24 = v22;
      v2 = v21;
      v4 = v20;
      isUniquelyReferenced_nonNull_native = object;
      MEMORY[0x25F8A1050](v24, -1, -1);
    }

    (*(v9 + 16))(v12, v15, v7);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v105 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v9 + 8))(v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25DBE7100;
    v26 = *MEMORY[0x277CBD000];
    v27 = *MEMORY[0x277CBD058];
    *(v25 + 32) = *MEMORY[0x277CBD000];
    *(v25 + 40) = v27;
    v28 = *MEMORY[0x277CBCFF8];
    v29 = *MEMORY[0x277CBD120];
    *(v25 + 48) = *MEMORY[0x277CBCFF8];
    *(v25 + 56) = v29;
    v30 = objc_opt_self();
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = [v30 predicateForMeContact];
    v36 = isUniquelyReferenced_nonNull_native[5];
    v37 = isUniquelyReferenced_nonNull_native[6];
    __swift_project_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native + 2, v36);
    v38 = (*(v37 + 8))(v35, v25, v36, v37);

    if (!specialized Array.count.getter())
    {

      v112 = 0;
LABEL_36:
      $defer #1 () in ContactsClient.meCardRelationships()(v105);

      v103 = v112;
      goto LABEL_43;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x25F89FFD0](0, v38);
    }

    else
    {
      v39 = *(v38 + 32);
    }

    v40 = v39;
    v41 = v112;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_25DBC8400;
    v43 = [v40 givenName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    v47 = [v40 middleName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v42 + 48) = v48;
    *(v42 + 56) = v50;
    v104 = v40;
    v51 = [v40 familyName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v42 + 64) = v52;
    *(v42 + 72) = v54;
    v117 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v55 = BidirectionalCollection<>.joined(separator:)();
    v57 = v56;

    v117 = v55;
    v118 = v57;
    v115 = 2847580;
    v116 = 0xE300000000000000;
    v113 = 32;
    v114 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v60 = v59;

    v117 = v58;
    v118 = v60;
    static CharacterSet.whitespaces.getter();
    v61 = StringProtocol.trimmingCharacters(in:)();
    v63 = v62;
    (*(v4 + 8))(v41, v2);

    v112 = Dictionary.init(dictionaryLiteral:)();
    v64 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v64 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      v65 = v112;
      swift_isUniquelyReferenced_nonNull_native();
      v117 = v65;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

      v112 = v117;
    }

    else
    {
    }

    v66 = [v104 contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = v67;
    v68 = specialized Array.count.getter();
    if (!v68)
    {
LABEL_35:

      goto LABEL_36;
    }

    v69 = v68;
    if (v68 < 1)
    {
      break;
    }

    v12 = 0;
    v107 = v35;
    v108 = v109 & 0xC000000000000001;
    v106 = v68;
    while (1)
    {
      if (v108)
      {
        v70 = MEMORY[0x25F89FFD0](v12, v109);
      }

      else
      {
        v70 = *(v109 + 8 * v12 + 32);
      }

      v71 = v70;
      v72 = [v70 label];
      if (v72)
      {
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v75;
      }

      else
      {
        v74 = 0;
        v9 = 0;
      }

      v76 = [v71 value];
      v77 = [v76 name];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v4 = ContactsClient.normalizeRelation(relation:)(v74, v9);
      v82 = v81;

      if (!v82)
      {

        goto LABEL_34;
      }

      v110 = v76;
      v7 = v71;
      v83 = String.lowercased()();
      object = v83._object;

      v84 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v84;
      v85 = v80;
      v15 = v78;
      v86 = v85;
      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v85);
      v89 = *(v84 + 2);
      v90 = (v88 & 1) == 0;
      v2 = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        break;
      }

      v9 = v87;
      v4 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
      {
        isUniquelyReferenced_nonNull_native = v78;
        v91 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v86);
        if ((v4 & 1) != (v92 & 1))
        {
          goto LABEL_42;
        }

        v9 = v91;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v78;
      }

      v112 = v117;
      if (v4)
      {
        v93 = object;
        v94 = (*(v112 + 7) + 16 * v9);
        *v94 = v83._countAndFlagsBits;
        v94[1] = v93;
      }

      else
      {
        v95 = v112;
        *&v112[8 * (v9 >> 6) + 64] |= 1 << v9;
        v96 = (v95[6] + 16 * v9);
        *v96 = isUniquelyReferenced_nonNull_native;
        v96[1] = v86;
        v97 = (v95[7] + 16 * v9);
        v98 = object;
        *v97 = v83._countAndFlagsBits;
        v97[1] = v98;
        v99 = v95[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_38;
        }

        *(v112 + 2) = v101;
      }

      v69 = v106;
      v35 = v107;
LABEL_34:
      if (v69 == ++v12)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  __break(1u);
LABEL_42:
  v103 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_43:
  result.value._rawValue = v103;
  result.is_nil = v102;
  return result;
}

uint64_t $defer #1 () in ContactsClient.meCardRelationships()(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "meCardRelationships.meCardRelationships", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ContactsClient.normalizeRelation(relation:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v5 = @nonobjc NSRegularExpression.init(pattern:options:)(0x3E7C3C21245C5F28, 0xED0000295F245C21, 0);
    v7 = v5;
    if (v5)
    {
      v15 = a2;
      v14 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySS5IndexVGMd, &_ss16PartialRangeFromVySS5IndexVGMR);
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<String.Index> and conformance PartialRangeFrom<A>, &_ss16PartialRangeFromVySS5IndexVGMd, &_ss16PartialRangeFromVySS5IndexVGMR, MEMORY[0x277D84338]);
      lazy protocol witness table accessor for type String and conformance String();
      v8 = _NSRange.init<A, B>(_:in:)();
      v10 = v9;
      v11 = MEMORY[0x25F89F4C0](a1, a2);
      v12 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
      v13 = [v7 stringByReplacingMatchesInString:v11 options:0 range:v8 withTemplate:{v10, v12, v14, v15, 15}];

      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t ContactsClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t FlightDesignator.code.getter(uint64_t a1)
{
  v1 = FlightDesignator.airline.getter();
  FlightDesignator.number.getter();

  OUTLINED_FUNCTION_9_48();

  return v1;
}

uint64_t DataDetectorResults.description.getter()
{
  _StringGuts.grow(_:)(83);
  MEMORY[0x25F89F6C0](0x756E20656E6F6850, 0xEF203A737265626DLL);
  DataDetectorResults.phoneNumbers.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_9_48();

  MEMORY[0x25F89F6C0](0x736572646461202CLL, 0xED0000203A736573);
  DataDetectorResults.addresses.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_9_48();

  MEMORY[0x25F89F6C0](0x7265706F7270202CLL, 0xEF203A73656D614ELL);
  DataDetectorResults.properNames.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_10_46();

  MEMORY[0x25F89F6C0](0x3A736B6E696C202CLL, 0xE900000000000020);
  v0 = DataDetectorResults.links.getter();
  v1 = type metadata accessor for URL();
  MEMORY[0x25F89F8A0](v0, v1);

  OUTLINED_FUNCTION_10_46();

  MEMORY[0x25F89F6C0](0xD000000000000015, 0x800000025DBF95D0);
  v2 = DataDetectorResults.flightDesignators.getter();
  v3 = type metadata accessor for FlightDesignator();
  MEMORY[0x25F89F8A0](v2, v3);

  OUTLINED_FUNCTION_10_46();

  return 0;
}

uint64_t DataDetectorsController.__allocating_init()()
{
  v0 = swift_allocObject();
  DataDetectorsController.init()();
  return v0;
}

BOOL DataDetectorResults.isEmpty.getter(uint64_t a1)
{
  v1 = *(DataDetectorResults.phoneNumbers.getter() + 16);

  if (v1)
  {
    return 0;
  }

  v2 = *(DataDetectorResults.addresses.getter() + 16);

  if (v2)
  {
    return 0;
  }

  v3 = *(DataDetectorResults.links.getter() + 16);

  if (v3)
  {
    return 0;
  }

  v4 = *(DataDetectorResults.properNames.getter() + 16);

  if (v4)
  {
    return 0;
  }

  v6 = *(DataDetectorResults.flightDesignators.getter() + 16);

  return v6 == 0;
}

uint64_t DataDetectorsController.scan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a3;
  v153[1] = *MEMORY[0x277D85DE8];
  v132 = type metadata accessor for FlightDesignator();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  v141 = &v118[-v12];
  v13 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  v135 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  v142 = v20;
  MEMORY[0x28223BE20](v21);
  v143 = &v118[-v22];
  v23 = String.count.getter();
  v24 = objc_opt_self();
  v25 = MEMORY[0x25F89F4C0](a1, a2);
  v26 = [v24 scanString:v25 range:0 configuration:{v23, *(v3 + 16)}];

  type metadata accessor for DDScannerResult();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v149 = MEMORY[0x277D84FA0];
  v150 = MEMORY[0x277D84FA0];
  v147 = MEMORY[0x277D84FA0];
  v148 = MEMORY[0x277D84FA0];
  v146 = MEMORY[0x277D84FA0];
  v28 = specialized Array.count.getter();
  if (v28)
  {
    v30 = v28;
    if (v28 < 1)
    {
      __break(1u);
    }

    v31 = 0;
    v145 = v27 & 0xC000000000000001;
    v127 = (v7 + 16);
    v124 = v7 + 8;
    v138 = (v15 + 16);
    v133 = (v15 + 8);
    *&v29 = 136315395;
    v131 = v29;
    *&v29 = 136315138;
    v129 = v29;
    *&v29 = 136642819;
    v137 = v29;
    v32 = v141;
    v33 = v142;
    v139 = v13;
    v140 = v27;
    v34 = v143;
    v144 = v28;
    while (2)
    {
      if (v145)
      {
        v35 = MEMORY[0x25F89FFD0](v31, v27);
      }

      else
      {
        v35 = *(v27 + 8 * v31 + 32);
      }

      v36 = v35;
      switch([v35 category])
      {
        case 1u:
          v37 = [v36 url];
          if (!v37)
          {
            goto LABEL_38;
          }

          v38 = v37;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logging.search);
          v136 = *v138;
          v136(v33, v34, v13);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();
          v42 = os_log_type_enabled(v40, v41);
          v43 = v133;
          if (v42)
          {
            OUTLINED_FUNCTION_51_0();
            v44 = OUTLINED_FUNCTION_94_10();
            v151 = v44;
            *v32 = v129;
            lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            dispatch thunk of CustomStringConvertible.description.getter();
            v45 = v33;
            v46 = *v43;
            (*v43)(v45, v139);
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v32 + 4) = v47;
            _os_log_impl(&dword_25D85C000, v40, v41, "Found link: %s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            v13 = v139;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

          else
          {

            v103 = v33;
            v46 = *v43;
            (*v43)(v103, v13);
          }

          v104 = v135;
          v105 = v143;
          v136(v135, v143, v13);
          v106 = v134;
          specialized Set._Variant.insert(_:)(v134, v104);

          v107 = v106;
          v34 = v105;
          v46(v107, v13);
          v46(v105, v13);
          v33 = v142;
          goto LABEL_48;
        case 2u:
          v151 = 0;
          [v36 getPhoneValue:&v151 label:0];
          v65 = v151;
          if (!v151)
          {
            goto LABEL_38;
          }

          v151 = 0;
          v152 = 0;
          v66 = v65;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();

          v67 = v152;
          if (!v152)
          {

            goto LABEL_51;
          }

          v68 = v151;
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          __swift_project_value_buffer(v69, static Logging.search);

          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = OUTLINED_FUNCTION_51_0();
            v73 = swift_slowAlloc();
            v151 = v73;
            *v72 = v137;

            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v72 + 4) = v74;
            v27 = v140;
            _os_log_impl(&dword_25D85C000, v70, v71, "Found phone number: %{sensitive}s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            v33 = v142;
            OUTLINED_FUNCTION_42_0();
            v13 = v139;
            OUTLINED_FUNCTION_42_0();
          }

          v32 = v141;
          specialized Set._Variant.insert(_:)(&v151, v68, v67);

          goto LABEL_29;
        case 3u:
          v56 = [v36 value];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          __swift_project_value_buffer(v60, static Logging.search);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v61, v62))
          {
            OUTLINED_FUNCTION_51_0();
            v63 = OUTLINED_FUNCTION_94_10();
            OUTLINED_FUNCTION_8_49(v63);
            v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v32 + 4) = v64;
            v33 = v142;
            _os_log_impl(&dword_25D85C000, v61, v62, "Found address: %{sensitive}s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v27);
            v27 = v140;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

          goto LABEL_43;
        case 5u:
          v151 = 0;
          v153[0] = 0;
          [v36 getFlightNumber:&v151 airline:v153];
          if (v153[0])
          {
            v75 = v151;
            v151 = 0;
            v152 = 0;
            v76 = v153[0];
            v77 = v75;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();

            if (v152)
            {
              if (v77)
              {
                v151 = 0;
                v152 = 0;
                static String._conditionallyBridgeFromObjectiveC(_:result:)();
                if (v152)
                {
                  FlightDesignator.init(number:airline:)();
                  if (one-time initialization token for search != -1)
                  {
                    OUTLINED_FUNCTION_1_31();
                    swift_once();
                  }

                  v78 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v78, static Logging.search);
                  v79 = *v127;
                  v80 = v128;
                  (*v127)(v128, v32, v132);
                  v81 = Logger.logObject.getter();
                  v82 = static os_log_type_t.debug.getter();
                  v83 = os_log_type_enabled(v81, v82);
                  v84 = v124;
                  v136 = (v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  if (v83)
                  {
                    v85 = OUTLINED_FUNCTION_51_0();
                    v120 = v85;
                    v122 = swift_slowAlloc();
                    v153[0] = v122;
                    *v85 = v129;
                    v121 = v81;
                    v86 = FlightDesignator.airline.getter();
                    v123 = v79;
                    v88 = v87;
                    v89 = FlightDesignator.number.getter();
                    v119 = v82;
                    v90 = v89;
                    v92 = v91;
                    v151 = v86;
                    v152 = v88;

                    MEMORY[0x25F89F6C0](v90, v92);
                    v79 = v123;

                    v93 = *v84;
                    (*v84)(v128, v132);
                    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                    v95 = v120;
                    *(v120 + 1) = v94;
                    v96 = v121;
                    _os_log_impl(&dword_25D85C000, v121, v119, "Found flight: %s", v95, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v122);
                    OUTLINED_FUNCTION_42_0();
                    OUTLINED_FUNCTION_42_0();
                  }

                  else
                  {

                    v108 = v80;
                    v93 = *v84;
                    (*v84)(v108, v132);
                  }

                  v109 = v126;
                  v32 = v141;
                  v110 = v132;
                  v79(v126, v141, v132);
                  v111 = v125;
                  specialized Set._Variant.insert(_:)(v125, v109);

                  v93(v111, v110);
                  v93(v32, v110);

                  v13 = v139;
                  v33 = v142;
                  v34 = v143;
LABEL_48:
                  v27 = v140;
                }

                else
                {

LABEL_29:

                  v34 = v143;
                }
              }

              else
              {

LABEL_44:
              }
            }

            else
            {

LABEL_51:
            }

            v30 = v144;
          }

          else
          {
LABEL_38:
          }

LABEL_53:
          if (v30 != ++v31)
          {
            continue;
          }

          v113 = v149;
          v112 = v150;
          v114 = v147;
          v115 = v148;
          v116 = v146;
          break;
        case 7u:
          v97 = [v36 value];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v98;

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v99 = type metadata accessor for Logger();
          __swift_project_value_buffer(v99, static Logging.search);

          v61 = Logger.logObject.getter();
          v100 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v61, v100))
          {
            OUTLINED_FUNCTION_51_0();
            v101 = OUTLINED_FUNCTION_94_10();
            OUTLINED_FUNCTION_8_49(v101);
            v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v32 + 4) = v102;
            v33 = v142;
            _os_log_impl(&dword_25D85C000, v61, v100, "Found proper name: %{sensitive}s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v27);
            v27 = v140;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

LABEL_43:

          v34 = v143;
          specialized Set._Variant.insert(_:)(&v151, v57, v59);

          goto LABEL_44;
        default:
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          __swift_project_value_buffer(v48, static Logging.search);
          v49 = v36;
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            *v52 = v131;
            LODWORD(v153[0]) = [v49 category];
            type metadata accessor for DDResultCategory(0);
            String.init<A>(describing:)();
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v52 + 4) = v53;
            *(v52 + 12) = 2085;
            v54 = [v49 value];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = v140;
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            v33 = v142;

            *(v52 + 14) = v55;
            v32 = v141;
            _os_log_impl(&dword_25D85C000, v50, v51, "Found Data Detector result of unhandled category: %s, value: %{sensitive}s", v52, 0x16u);
            swift_arrayDestroy();
            v30 = v144;
            OUTLINED_FUNCTION_42_0();
            v34 = v143;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }

          goto LABEL_53;
      }

      break;
    }
  }

  else
  {

    v116 = MEMORY[0x277D84FA0];
    v114 = MEMORY[0x277D84FA0];
    v115 = MEMORY[0x277D84FA0];
    v113 = MEMORY[0x277D84FA0];
    v112 = MEMORY[0x277D84FA0];
  }

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v112);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v113);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation3URLV_ShyAFGTt0g5(v115);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v114);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15OmniSearchTypes16FlightDesignatorV_ShyAFGTt0g5(v116);
  return DataDetectorResults.init(phoneNumbers:addresses:links:properNames:flightDesignators:)();
}

uint64_t DataDetectorsController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v5 = *v2;
  v6 = a2 & 1;
  v20 = v6;
  specialized RawRepresentable<>._rawHashValue(seed:)(*(*v2 + 40), v6);
  OUTLINED_FUNCTION_6_46();
  if ((*(v5 + 56 + v8) >> v3))
  {
    v9 = ~v7;
    if (a2)
    {
      v10 = 0x6E776F6E6B6E75;
    }

    else
    {
      v10 = 0x7373654D6C69616DLL;
    }

    if (a2)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xEB00000000656761;
    }

    while (1)
    {
      v12 = *(*(v5 + 48) + v3) ? 0x6E776F6E6B6E75 : 0x7373654D6C69616DLL;
      v13 = *(*(v5 + 48) + v3) ? 0xE700000000000000 : 0xEB00000000656761;
      if (v12 == v10 && v13 == v11)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_22;
      }

      v3 = (v3 + 1) & v9;
      if (((*(v5 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v17 = *(*(v5 + 48) + v3);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v17 = v20;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v20, v3, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    result = 1;
  }

  *a1 = v17;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for FlightDesignator();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37240]);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37248]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

{
  v22 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v7 = *v2;
  specialized RawRepresentable<>._rawHashValue(seed:)(*(*v2 + 40), a2);
  OUTLINED_FUNCTION_6_46();
  if ((*(v7 + 56 + v9) >> v3))
  {
    v10 = ~v8;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v55 = v11;
    v56 = v12;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v53 = v13;
    v54 = v14;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v51 = v15;
    v52 = v16;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v49 = v17;
    v50 = v18;
    OUTLINED_FUNCTION_44_6();
    v48 = v19;
    while (1)
    {
      v20 = 0xE500000000000000;
      v21 = 0x6C69616D65;
      switch(*(*(v7 + 48) + v3))
      {
        case 1:
          v21 = 0x4D53656C69626F6DLL;
          v20 = 0xE900000000000053;
          break;
        case 2:
          v20 = 0xE800000000000000;
          v21 = 0x7261646E656C6163;
          break;
        case 3:
          v21 = 0x6F746F6870;
          break;
        case 4:
          v20 = 0xE600000000000000;
          v21 = 0x726577736E61;
          break;
        case 5:
          v20 = 0xE400000000000000;
          v21 = 1702129518;
          break;
        case 6:
          v20 = 0xE800000000000000;
          v21 = 0x7265646E696D6572;
          break;
        case 7:
          v21 = 0x736948656E6F6870;
          v22 = 2037542772;
          goto LABEL_30;
        case 8:
          OUTLINED_FUNCTION_8_30();
          v21 = v29 + 2;
          v20 = v48;
          break;
        case 9:
          v21 = 0x456C616E72756F6ALL;
          v20 = 0xEC0000007972746ELL;
          break;
        case 0xA:
          OUTLINED_FUNCTION_16_40();
          v20 = v28 + 28;
          break;
        case 0xB:
          v20 = 0xE600000000000000;
          v21 = 0x697261666173;
          break;
        case 0xC:
          v20 = 0xE400000000000000;
          v21 = 1701603686;
          break;
        case 0xD:
          v21 = 0xD000000000000011;
          v20 = v49;
          break;
        case 0xE:
          v21 = 0x615074656C6C6177;
          v20 = 0xEA00000000007373;
          break;
        case 0xF:
          v20 = 0xE700000000000000;
          v21 = 0x746361746E6F63;
          break;
        case 0x10:
          v21 = 0xD000000000000011;
          v20 = v50;
          break;
        case 0x11:
          OUTLINED_FUNCTION_8_30();
          v21 = v24 - 1;
          v20 = v51;
          break;
        case 0x12:
          OUTLINED_FUNCTION_8_30();
          v21 = v27 + 4;
          v20 = v52;
          break;
        case 0x13:
          v21 = 0x65526C61626F6C67;
          v22 = 1953265011;
          goto LABEL_30;
        case 0x14:
          OUTLINED_FUNCTION_8_30();
          v21 = v25 + 5;
          v20 = v53;
          break;
        case 0x15:
          OUTLINED_FUNCTION_16_40();
          v20 = v26 + 38;
          break;
        case 0x16:
          OUTLINED_FUNCTION_8_30();
          v21 = v31 + 3;
          v20 = v54;
          break;
        case 0x17:
          v21 = 0x676E697070696873;
          v20 = 0xED0000726564724FLL;
          break;
        case 0x18:
          OUTLINED_FUNCTION_8_30();
          v21 = v23 + 5;
          v20 = v55;
          break;
        case 0x19:
          v21 = 0x646574656B636974;
          v22 = 2003789907;
LABEL_30:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1A:
          v21 = 0x6D746E696F707061;
          v20 = 0xEB00000000746E65;
          break;
        case 0x1B:
          v21 = 0x7974726170;
          break;
        case 0x1C:
          v20 = 0xE400000000000000;
          v21 = 1885958772;
          break;
        case 0x1D:
          v20 = 0xE800000000000000;
          v21 = 0x6E65657263536E6FLL;
          break;
        case 0x1E:
          OUTLINED_FUNCTION_8_30();
          v21 = v30 + 3;
          v20 = v56;
          break;
        default:
          break;
      }

      v32 = 0xE500000000000000;
      v33 = 0x6C69616D65;
      switch(v5)
      {
        case 1:
          v33 = 0x4D53656C69626F6DLL;
          v32 = 0xE900000000000053;
          break;
        case 2:
          v32 = 0xE800000000000000;
          v33 = 0x7261646E656C6163;
          break;
        case 3:
          v33 = 0x6F746F6870;
          break;
        case 4:
          v32 = 0xE600000000000000;
          v33 = 0x726577736E61;
          break;
        case 5:
          v32 = 0xE400000000000000;
          v33 = 1702129518;
          break;
        case 6:
          v32 = 0xE800000000000000;
          v33 = 0x7265646E696D6572;
          break;
        case 7:
          v33 = 0x736948656E6F6870;
          v34 = 2037542772;
          goto LABEL_62;
        case 8:
          OUTLINED_FUNCTION_8_30();
          v33 = v41 + 2;
          v32 = v48;
          break;
        case 9:
          v33 = 0x456C616E72756F6ALL;
          v32 = 0xEC0000007972746ELL;
          break;
        case 10:
          OUTLINED_FUNCTION_16_40();
          v32 = v40 + 28;
          break;
        case 11:
          v32 = 0xE600000000000000;
          v33 = 0x697261666173;
          break;
        case 12:
          v32 = 0xE400000000000000;
          v33 = 1701603686;
          break;
        case 13:
          v33 = 0xD000000000000011;
          v32 = v49;
          break;
        case 14:
          v33 = 0x615074656C6C6177;
          v32 = 0xEA00000000007373;
          break;
        case 15:
          v32 = 0xE700000000000000;
          v33 = 0x746361746E6F63;
          break;
        case 16:
          v33 = 0xD000000000000011;
          v32 = v50;
          break;
        case 17:
          OUTLINED_FUNCTION_8_30();
          v33 = v36 - 1;
          v32 = v51;
          break;
        case 18:
          OUTLINED_FUNCTION_8_30();
          v33 = v39 + 4;
          v32 = v52;
          break;
        case 19:
          v33 = 0x65526C61626F6C67;
          v34 = 1953265011;
          goto LABEL_62;
        case 20:
          OUTLINED_FUNCTION_8_30();
          v33 = v37 + 5;
          v32 = v53;
          break;
        case 21:
          OUTLINED_FUNCTION_16_40();
          v32 = v38 + 38;
          break;
        case 22:
          OUTLINED_FUNCTION_8_30();
          v33 = v43 + 3;
          v32 = v54;
          break;
        case 23:
          v33 = 0x676E697070696873;
          v32 = 0xED0000726564724FLL;
          break;
        case 24:
          OUTLINED_FUNCTION_8_30();
          v33 = v35 + 5;
          v32 = v55;
          break;
        case 25:
          v33 = 0x646574656B636974;
          v34 = 2003789907;
LABEL_62:
          v32 = v34 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 26:
          v33 = 0x6D746E696F707061;
          v32 = 0xEB00000000746E65;
          break;
        case 27:
          v33 = 0x7974726170;
          break;
        case 28:
          v32 = 0xE400000000000000;
          v33 = 1885958772;
          break;
        case 29:
          v32 = 0xE800000000000000;
          v33 = 0x6E65657263536E6FLL;
          break;
        case 30:
          OUTLINED_FUNCTION_8_30();
          v33 = v42 + 3;
          v32 = v56;
          break;
        default:
          break;
      }

      if (v21 == v33 && v20 == v32)
      {
        break;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        goto LABEL_75;
      }

      v3 = (v3 + 1) & v10;
      if (((*(v7 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

LABEL_75:
    result = 0;
    LOBYTE(v5) = *(*(v7 + 48) + v3);
  }

  else
  {
LABEL_73:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v5, v3, isUniquelyReferenced_nonNull_native);
    *v4 = v57;
    result = 1;
  }

  *a1 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for FlightDesignator();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37240]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for URL();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    SearchResultKey.rawValue.getter();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_27;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  result = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v3 + 40), v5 & 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 0x6E776F6E6B6E75;
    }

    else
    {
      v11 = 0x7373654D6C69616DLL;
    }

    if (v5)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xEB00000000656761;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x6E776F6E6B6E75 : 0x7373654D6C69616DLL;
      v14 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xEB00000000656761;
      if (v13 == v11 && v14 == v12)
      {
        goto LABEL_30;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for FlightDesignator();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37240]);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37248]);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()(MEMORY[0x277D37238], &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

{
  v23 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()(MEMORY[0x277CC9260], &_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_80;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  result = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v3 + 40), v5);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xE500000000000000;
      v12 = 0x6C69616D65;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0x4D53656C69626F6DLL;
          v11 = 0xE900000000000053;
          break;
        case 2:
          v11 = 0xE800000000000000;
          v12 = 0x7261646E656C6163;
          break;
        case 3:
          v12 = 0x6F746F6870;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v12 = 0x726577736E61;
          break;
        case 5:
          v11 = 0xE400000000000000;
          v12 = 1702129518;
          break;
        case 6:
          v11 = 0xE800000000000000;
          v12 = 0x7265646E696D6572;
          break;
        case 7:
          v12 = 0x736948656E6F6870;
          v13 = 2037542772;
          goto LABEL_37;
        case 8:
          v12 = 0xD000000000000013;
          v11 = 0x800000025DBEEC90;
          break;
        case 9:
          v11 = 0xEC0000007972746ELL;
          v12 = 0x456C616E72756F6ALL;
          break;
        case 0xA:
          v11 = 0xE90000000000006FLL;
          v12 = 0x6D654D6563696F76;
          break;
        case 0xB:
          v11 = 0xE600000000000000;
          v12 = 0x697261666173;
          break;
        case 0xC:
          v11 = 0xE400000000000000;
          v12 = 1701603686;
          break;
        case 0xD:
          v12 = 0xD000000000000011;
          v11 = 0x800000025DBEECC0;
          break;
        case 0xE:
          v12 = 0x615074656C6C6177;
          v11 = 0xEA00000000007373;
          break;
        case 0xF:
          v11 = 0xE700000000000000;
          v12 = 0x746361746E6F63;
          break;
        case 0x10:
          v12 = 0xD000000000000011;
          v11 = 0x800000025DBEDF90;
          break;
        case 0x11:
          v12 = 0xD000000000000010;
          v11 = 0x800000025DBEDFD0;
          break;
        case 0x12:
          v12 = 0xD000000000000015;
          v11 = 0x800000025DBEDFB0;
          break;
        case 0x13:
          v12 = 0x65526C61626F6C67;
          v13 = 1953265011;
          goto LABEL_37;
        case 0x14:
          v12 = 0xD000000000000016;
          v11 = 0x800000025DBEECF0;
          break;
        case 0x15:
          v11 = 0xE900000000000079;
          v12 = 0x7469746E45707061;
          break;
        case 0x16:
          v12 = 0xD000000000000014;
          v11 = 0x800000025DBEED10;
          break;
        case 0x17:
          v12 = 0x676E697070696873;
          v11 = 0xED0000726564724FLL;
          break;
        case 0x18:
          v12 = 0xD000000000000016;
          v11 = 0x800000025DBEE020;
          break;
        case 0x19:
          v12 = 0x646574656B636974;
          v13 = 2003789907;
LABEL_37:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1A:
          v12 = 0x6D746E696F707061;
          v11 = 0xEB00000000746E65;
          break;
        case 0x1B:
          v12 = 0x7974726170;
          break;
        case 0x1C:
          v11 = 0xE400000000000000;
          v12 = 1885958772;
          break;
        case 0x1D:
          v11 = 0xE800000000000000;
          v12 = 0x6E65657263536E6FLL;
          break;
        case 0x1E:
          v12 = 0xD000000000000014;
          v11 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      v14 = 0xE500000000000000;
      v15 = 0x6C69616D65;
      switch(v5)
      {
        case 1:
          v15 = 0x4D53656C69626F6DLL;
          v14 = 0xE900000000000053;
          break;
        case 2:
          v14 = 0xE800000000000000;
          v15 = 0x7261646E656C6163;
          break;
        case 3:
          v15 = 0x6F746F6870;
          break;
        case 4:
          v14 = 0xE600000000000000;
          v15 = 0x726577736E61;
          break;
        case 5:
          v14 = 0xE400000000000000;
          v15 = 1702129518;
          break;
        case 6:
          v14 = 0xE800000000000000;
          v15 = 0x7265646E696D6572;
          break;
        case 7:
          v15 = 0x736948656E6F6870;
          v16 = 2037542772;
          goto LABEL_69;
        case 8:
          v15 = 0xD000000000000013;
          v14 = 0x800000025DBEEC90;
          break;
        case 9:
          v14 = 0xEC0000007972746ELL;
          v15 = 0x456C616E72756F6ALL;
          break;
        case 10:
          v14 = 0xE90000000000006FLL;
          v15 = 0x6D654D6563696F76;
          break;
        case 11:
          v14 = 0xE600000000000000;
          v15 = 0x697261666173;
          break;
        case 12:
          v14 = 0xE400000000000000;
          v15 = 1701603686;
          break;
        case 13:
          v15 = 0xD000000000000011;
          v14 = 0x800000025DBEECC0;
          break;
        case 14:
          v15 = 0x615074656C6C6177;
          v14 = 0xEA00000000007373;
          break;
        case 15:
          v14 = 0xE700000000000000;
          v15 = 0x746361746E6F63;
          break;
        case 16:
          v15 = 0xD000000000000011;
          v14 = 0x800000025DBEDF90;
          break;
        case 17:
          v15 = 0xD000000000000010;
          v14 = 0x800000025DBEDFD0;
          break;
        case 18:
          v15 = 0xD000000000000015;
          v14 = 0x800000025DBEDFB0;
          break;
        case 19:
          v15 = 0x65526C61626F6C67;
          v16 = 1953265011;
          goto LABEL_69;
        case 20:
          v15 = 0xD000000000000016;
          v14 = 0x800000025DBEECF0;
          break;
        case 21:
          v14 = 0xE900000000000079;
          v15 = 0x7469746E45707061;
          break;
        case 22:
          v15 = 0xD000000000000014;
          v14 = 0x800000025DBEED10;
          break;
        case 23:
          v15 = 0x676E697070696873;
          v14 = 0xED0000726564724FLL;
          break;
        case 24:
          v15 = 0xD000000000000016;
          v14 = 0x800000025DBEE020;
          break;
        case 25:
          v15 = 0x646574656B636974;
          v16 = 2003789907;
LABEL_69:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 26:
          v15 = 0x6D746E696F707061;
          v14 = 0xEB00000000746E65;
          break;
        case 27:
          v15 = 0x7974726170;
          break;
        case 28:
          v14 = 0xE400000000000000;
          v15 = 1885958772;
          break;
        case 29:
          v14 = 0xE800000000000000;
          v15 = 0x6E65657263536E6FLL;
          break;
        case 30:
          v15 = 0xD000000000000014;
          v14 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      if (v12 == v15 && v11 == v14)
      {
        goto LABEL_83;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_84;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_80:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_83:

LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v3;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v6;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    for (i = v9 + 16; v22; result = (*(v9 + 32))(*(v15 + 48) + v27, v12, v7))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v15;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        SearchResultKey.rawValue.getter();
        String.hash(into:)();

        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for FlightDesignator();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238], MEMORY[0x277D37240]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for URL();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void OUTLINED_FUNCTION_4_58()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_8_49(uint64_t a1)
{
  *(v2 - 120) = a1;
  *v1 = *(v2 - 240);
}

void OUTLINED_FUNCTION_9_48()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_10_46()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t DialogExperience.__allocating_init(_:card:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DialogExperience.init(_:card:)(a1, a2);
  return v4;
}

uint64_t IntentFile.init(experiences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v22 = a1;
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!MEMORY[0x25F8A01B0](v22))
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = specialized Array.count.getter();
  if (v6)
  {
    v7 = v6;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25F89FFD0](v8, a1);
        }

        else
        {
          v9 = *(a1 + 8 * v8 + 32);
        }

        ++v8;
        swift_beginAccess();
        v10 = *(v9 + 16);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v7 != v8);
      goto LABEL_10;
    }

    __break(1u);
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.search);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v15, v16, "Failed to archive experience!");
      MEMORY[0x25F8A1050](v14, -1, -1);
    }

LABEL_19:
    type metadata accessor for IntentFile();
    OUTLINED_FUNCTION_92();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

LABEL_10:

  IntentFile.init(experiences:fileName:)();
  v17 = type metadata accessor for IntentFile();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v17);
  (*(*(v17 - 8) + 32))(a2, v2, v17);
  v18 = a2;
  v19 = 0;
  v20 = 1;
  v21 = v17;
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

OmniSearch::DialogExperience::CodingKeys_optional __swiftcall DialogExperience.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x6E65697265707865 && stringValue._object == 0xEA00000000006563;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (countAndFlagsBits == 0x647261436673 && object == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int DialogExperience.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DialogExperience.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x647261436673;
  }

  else
  {
    return 0x6E65697265707865;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DialogExperience.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  DialogExperience.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

OmniSearch::DialogExperience::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance DialogExperience.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::DialogExperience::CodingKeys_optional *a2@<X8>)
{
  result.value = DialogExperience.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DialogExperience.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DialogExperience.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path setter for DialogExperience.renderedDialog : DialogExperience(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalDialog();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 112))(v7);
}

uint64_t DialogExperience.renderedDialog.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  swift_beginAccess();
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t DialogExperience.renderedDialog.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t (*DialogExperience.renderedDialog.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path setter for DialogExperience.sfCard : DialogExperience(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

void *DialogExperience.sfCard.getter()
{
  v1 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DialogExperience.sfCard.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DialogExperience.sfCard.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t DialogExperience.print.getter(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_133();
  v8 = (*(v7 + 104))();
  v9 = a1(v8);
  (*(v5 + 8))(v1, v3);
  return v9;
}

uint64_t DialogExperience.init(_:card:)(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_12_44();
  GlobalDialog.init(print:speak:)();
  *(v2 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard) = 0;
  *(v2 + 16) = a1;
  type metadata accessor for GenericExperience();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    static GlobalSearchResponseProcessor.processRenderedDialog(experience:)(v11);

    v13 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
    OUTLINED_FUNCTION_83_4();
    swift_beginAccess();
    (*(v8 + 40))(v2 + v13, v3, v6);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = a2;

  return v2;
}

uint64_t DialogExperience.encode(to:)(void *a1)
{
  v4 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v8 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = objc_opt_self();
  v11 = v4[2];
  v38 = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v38];
  v13 = v38;
  if (v12)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v38 = v14;
    v39 = v16;
    lazy protocol witness table accessor for type Data and conformance Data();
    v17 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      v18 = OUTLINED_FUNCTION_1_28();
      v19(v18);
      v20 = v14;
      v21 = v16;
      return outlined consume of Data._Representation(v20, v21);
    }

    v26 = (*(*v4 + 128))(v17);
    if (!v26)
    {
      (*(v8 + 8))(v3, v6);
      v20 = v14;
      v21 = v16;
      return outlined consume of Data._Representation(v20, v21);
    }

    v27 = v26;
    v38 = 0;
    v28 = [v10 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v38];
    v29 = v38;
    if (v28)
    {
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v38 = v30;
      v39 = v32;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = OUTLINED_FUNCTION_1_28();
      v34(v33);

      outlined consume of Data._Representation(v14, v16);
      v20 = v30;
      v21 = v32;
      return outlined consume of Data._Representation(v20, v21);
    }

    v35 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v14, v16);

    v36 = OUTLINED_FUNCTION_1_28();
    return v37(v36);
  }

  else
  {
    v23 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24 = OUTLINED_FUNCTION_1_28();
    return v25(v24);
  }
}

uint64_t DialogExperience.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DialogExperience.init(from:)(a1);
  return v2;
}

uint64_t DialogExperience.init(from:)(void *a1)
{
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_14();
  v31 = v6;
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  OUTLINED_FUNCTION_12_44();
  GlobalDialog.init(print:speak:)();
  v33 = a1;
  v34 = v1;
  *(v1 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v11 = v1;
  }

  else
  {
    v30 = v8;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_4_59(MEMORY[0x277CC9318]);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for Experience();
    v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v11 = v1;
    v29 = v35;
    v28 = v10;
    if (v10)
    {
      *(v1 + 16) = v10;
      v12 = v10;
      type metadata accessor for GenericExperience();
      v13 = swift_dynamicCastClass();
      v14 = v12;
      if (v13)
      {
        static GlobalSearchResponseProcessor.processRenderedDialog(experience:)(v13);
        OUTLINED_FUNCTION_83_4();
        swift_beginAccess();
        v11 = v34;
        (*(v31 + 40))(v34 + v30, v3, v32);
        swift_endAccess();
      }

      LOBYTE(v35) = 1;
      if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_1_81();
        v19(v18);
        outlined consume of Data._Representation(v29, v36);

        v20 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
        OUTLINED_FUNCTION_6_47();
        swift_beginAccess();
        v21 = *(v11 + v20);
        *(v11 + v20) = 0;
LABEL_15:

        goto LABEL_5;
      }

      OUTLINED_FUNCTION_4_59(MEMORY[0x277CC9318]);
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v22 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v23 = v22;
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_1_81();
        v25(v24);
        outlined consume of Data._Representation(v29, v36);

        outlined consume of Data._Representation(v35, v36);
        v26 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
        OUTLINED_FUNCTION_6_47();
        swift_beginAccess();
        v21 = *(v11 + v26);
        *(v11 + v26) = v23;
        goto LABEL_15;
      }

      lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
      swift_allocError();
      OUTLINED_FUNCTION_15_41(v27, 0xD00000000000001CLL);
      outlined consume of Data._Representation(v29, v36);
      outlined consume of Data._Representation(v35, v36);
    }

    else
    {
      lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
      swift_allocError();
      OUTLINED_FUNCTION_15_41(v15, 0xD000000000000020);
      outlined consume of Data._Representation(v35, v36);
    }

    v16 = OUTLINED_FUNCTION_1_81();
    v17(v16);
    if (v28)
    {

      goto LABEL_5;
    }
  }

  (*(v31 + 8))(v11 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog, v32);

  type metadata accessor for DialogExperience(0);
  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v11;
}

uint64_t static DialogExperience.== infix(_:_:)(void *a1, void *a2)
{
  v3 = (*(*a1 + 128))();
  v4 = (*(*a2 + 128))();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      return static NSObject.== infix(_:_:)() & 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t DialogExperience.deinit()
{
  v1 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t DialogExperience.__deallocating_deinit()
{
  DialogExperience.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance DialogExperience@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IntentFile.init(experiences:fileName:)()
{
  v11[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v0);
  v1 = objc_opt_self();
  type metadata accessor for Experience();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11[0] = 0;
  v3 = [v1 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v11];

  v4 = v11[0];
  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UTType();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    return IntentFile.init(data:filename:type:)();
  }

  else
  {
    v10 = v4;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t IntentFile.init(audioResults:fileName:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_4();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:

LABEL_15:
    v13 = 1;
    goto LABEL_16;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v22 = a1;
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!MEMORY[0x25F8A01B0](v22))
  {
    goto LABEL_14;
  }

LABEL_3:
  v5 = objc_opt_self();
  type metadata accessor for AudioResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25[0] = 0;
  v7 = [v5 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v25];

  v8 = v25[0];
  if (!v7)
  {
    v14 = v8;

    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.search);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v20, v21, "Failed to archive audio results");
      MEMORY[0x25F8A1050](v19, -1, -1);
    }

    goto LABEL_15;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for UTType();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  IntentFile.init(data:filename:type:)();
  v13 = 0;
LABEL_16:
  v23 = type metadata accessor for IntentFile();
  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v23);
}

unint64_t lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DialogExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for DialogExperience;
  if (!type metadata singleton initialization cache for DialogExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DialogExperience(uint64_t a1)
{
  result = type metadata accessor for GlobalDialog();
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

_BYTE *storeEnumTagSinglePayload for DialogExperience.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_59(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_41@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t ECRClientPersonResult.visualIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ECRClientPersonResult.contactIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ECRClientPersonResult.names.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ECRClientPersonResult.phoneNumbers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ECRClientPersonResult.emails.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ECRClientPersonResult.init()(OmniSearch::ECRClientPersonResult *__return_ptr retstr)
{
  v1 = MEMORY[0x277D84F90];
  retstr->visualIDs._rawValue = MEMORY[0x277D84F90];
  retstr->contactIDs._rawValue = v1;
  retstr->names._rawValue = v1;
  retstr->phoneNumbers._rawValue = v1;
  retstr->emails._rawValue = v1;
}

void __swiftcall ECRClientPersonResult.init(visualIDs:contactIDs:names:phoneNumbers:emails:)(OmniSearch::ECRClientPersonResult *__return_ptr retstr, Swift::OpaquePointer visualIDs, Swift::OpaquePointer contactIDs, Swift::OpaquePointer names, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer emails)
{
  retstr->visualIDs = visualIDs;
  retstr->contactIDs = contactIDs;
  retstr->names = names;
  retstr->phoneNumbers = phoneNumbers;
  retstr->emails = emails;
}

uint64_t ECRClient.init()()
{
  v1 = v0;
  type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter();
  v3 = ViewService.visualIdentifierView()();

  *(v1 + 16) = v3;
  return v1;
}

uint64_t ECRClient.person(named:phoneNumber:email:)()
{
  OUTLINED_FUNCTION_48();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v8 = type metadata accessor for OSSignpostID();
  v1[14] = v8;
  v1[15] = *(v8 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  v56 = v0;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "OmniSearchService.personECRSearch", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[8];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[18] = OUTLINED_FUNCTION_38_6();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  if (v10)
  {
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(18);

    strcpy(v55, "searchByName('");
    HIBYTE(v55[1]) = -18;
    v13 = OUTLINED_FUNCTION_119();
    MEMORY[0x25F89F6C0](v13);
    OUTLINED_FUNCTION_26_28();
    v14 = v55[0];
    v15 = v55[1];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
    v17 = v16;
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      v44 = OUTLINED_FUNCTION_22_5(v18);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44);
      v17 = v45;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 16 * v19;
    *(v20 + 32) = v14;
    *(v20 + 40) = v15;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v0[10])
  {
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(25);

    v55[0] = 0xD000000000000015;
    v55[1] = 0x800000025DBF96D0;
    v21 = OUTLINED_FUNCTION_116_1();
    MEMORY[0x25F89F6C0](v21);
    OUTLINED_FUNCTION_26_28();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46);
      v17 = v47;
    }

    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      v48 = OUTLINED_FUNCTION_22_5(v22);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48);
      v17 = v49;
    }

    *(v17 + 16) = v23 + 1;
    v24 = v17 + 16 * v23;
    *(v24 + 32) = 0xD000000000000015;
    *(v24 + 40) = 0x800000025DBF96D0;
  }

  if (v0[12])
  {
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(19);

    v55[0] = 0x7942686372616573;
    v55[1] = 0xEF27286C69616D45;
    v25 = OUTLINED_FUNCTION_116_1();
    MEMORY[0x25F89F6C0](v25);
    OUTLINED_FUNCTION_26_28();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50);
      v17 = v51;
    }

    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v52 = OUTLINED_FUNCTION_22_5(v26);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52);
      v17 = v53;
    }

    *(v17 + 16) = v28;
    v29 = v17 + 16 * v27;
    *(v29 + 32) = 0x7942686372616573;
    *(v29 + 40) = 0xEF27286C69616D45;
  }

  else
  {
    v28 = *(v17 + 16);
  }

  v0[19] = v17;
  if (v28 <= 1)
  {
    if (v28)
    {
    }
  }

  else
  {
    v55[0] = 677670497;
    v55[1] = 0xE400000000000000;
    v0[6] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    BidirectionalCollection<>.joined(separator:)();

    v30 = OUTLINED_FUNCTION_54_0();
    MEMORY[0x25F89F6C0](v30);

    MEMORY[0x25F89F6C0](41, 0xE100000000000000);
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_93(&one-time initialization token for utilities);
  }

  v31 = type metadata accessor for Logger();
  v0[20] = OUTLINED_FUNCTION_200(v31, static Logging.utilities);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_51_0();
    v35 = swift_slowAlloc();
    v55[0] = v35;
    *v34 = 136315138;

    OUTLINED_FUNCTION_54_0();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v34 + 4) = v36;
    _os_log_impl(&dword_25D85C000, v32, v33, "Starting request with kgq: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v37 = objc_allocWithZone(MEMORY[0x277D1F418]);
  v38 = OUTLINED_FUNCTION_54_0();
  v40 = @nonobjc GDEntityResolutionRequest.init(kgq:text:mode:includeFeatures:includeInferredNames:)(v38, v39, 0, 0xE000000000000000, 4, 1, 0);
  v0[21] = v40;
  v41 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  v0[22] = EntityResolutionTextClient.init(for:viaXPC:warmup:)();
  v54 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
  v42 = swift_task_alloc();
  v0[23] = v42;
  *v42 = v0;
  OUTLINED_FUNCTION_84(v42);

  return v54(v40);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  v1 = *(v0 + 168);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(*(v0 + 144), "OmniSearchService.personECRSearch");

  OUTLINED_FUNCTION_127();

  return v2();
}

void ECRClient.person(named:phoneNumber:email:)()
{
  v107 = v0;
  v1 = v0 + 16;
  v2 = *(v0 + 192);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v100 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    OUTLINED_FUNCTION_51_0();
    v6 = OUTLINED_FUNCTION_10_23();
    v106 = v6;
    *v2 = 136642819;
    v7 = v5;
    v8 = [v7 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v2 + 1) = v9;
    OUTLINED_FUNCTION_19_39(&dword_25D85C000, v10, v4, "Fetched ECR result: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v11 = [*(v0 + 192) rankedResults];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerResult, 0x277D1F470);
  OUTLINED_FUNCTION_41_3();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Array.count.getter();
  v14 = 0;
  v97 = v12 & 0xFFFFFFFFFFFFFF8;
  v98 = v12 & 0xC000000000000001;
  v92 = v12;
  v96 = v12 + 32;
  v15 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v93 = v13;
  while (v14 != v13)
  {
    if (v98)
    {
      v16 = MEMORY[0x25F89FFD0](v14, v92);
    }

    else
    {
      if (v14 >= *(v97 + 16))
      {
        goto LABEL_82;
      }

      v16 = *(v96 + 8 * v14);
    }

    v17 = __OFADD__(v14, 1);
    v18 = v14 + 1;
    if (v17)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return;
    }

    v19 = v16;
    v20 = [v19 rankedItems];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerItem, 0x277D1F468);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v46 = v21;
      }

      else
      {
        v46 = v21 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = MEMORY[0x25F8A01B0](v46);
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v15 >> 62;
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v47 = v15;
      }

      else
      {
        v47 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v24 = MEMORY[0x25F8A01B0](v47);
    }

    else
    {
      v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v24 + v22;
    if (__OFADD__(v24, v22))
    {
      goto LABEL_83;
    }

    v103 = v18;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v23)
      {
LABEL_19:
        if (v15 < 0)
        {
          v28 = v15;
        }

        else
        {
          v28 = v15 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v28);
      }

LABEL_23:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v26 = v15 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_33_30();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_19;
    }

    v26 = v15 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_33_30();
    if (v27 < v25)
    {
      goto LABEL_23;
    }

LABEL_24:
    v101 = v22;
    v29 = *(v26 + 16);
    v30 = v27 - v29;
    v31 = v26 + 8 * v29;
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v33 = v21;
      }

      else
      {
        v33 = v21 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = MEMORY[0x25F8A01B0](v33);
      if (!v34)
      {
        goto LABEL_41;
      }

      v35 = v34;
      v36 = MEMORY[0x25F8A01B0](v33);
      if (v30 < v36)
      {
        goto LABEL_90;
      }

      if (v35 < 1)
      {
        goto LABEL_91;
      }

      v32 = v36;
      v94 = v26;
      v95 = v15;
      v37 = v31 + 32;
      OUTLINED_FUNCTION_0_90();
      lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [GDRankerItem] and conformance [A], &_sSaySo12GDRankerItemCGMd, &_sSaySo12GDRankerItemCGMR);
      for (i = 0; i != v35; ++i)
      {
        v39 = OUTLINED_FUNCTION_116_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
        v41 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v21);
        v43 = *v42;
        v41(v1, 0);
        *(v37 + 8 * i) = v43;
      }

      v15 = v95;
      v13 = v93;
LABEL_37:

      v0 = v100;
      v14 = v103;
      if (v32 < v101)
      {
        goto LABEL_84;
      }

      if (v32 > 0)
      {
        v44 = *(v26 + 16);
        v17 = __OFADD__(v44, v32);
        v45 = v44 + v32;
        if (v17)
        {
          goto LABEL_88;
        }

        *(v26 + 16) = v45;
      }
    }

    else
    {
      v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        if (v30 < v32)
        {
          goto LABEL_89;
        }

        swift_arrayInitWithCopy();
        goto LABEL_37;
      }

LABEL_41:

      v0 = v100;
      v14 = v103;
      if (v101 > 0)
      {
        goto LABEL_84;
      }
    }
  }

  v102 = *(v0 + 104);

  v106 = MEMORY[0x277D84F90];
  v48 = specialized Array.count.getter();
  v49 = 0;
  v104 = v15 & 0xC000000000000001;
  v50 = v15 & 0xFFFFFFFFFFFFFF8;
  while (v48 != v49)
  {
    if (v104)
    {
      v51 = MEMORY[0x25F89FFD0](v49, v15);
    }

    else
    {
      if (v49 >= *(v50 + 16))
      {
        goto LABEL_86;
      }

      v51 = *(v15 + 8 * v49 + 32);
    }

    v52 = v51;
    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_85;
    }

    v54 = v15;
    v55 = *(v102 + 16);
    v56 = [v51 entityID];
    v57 = outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(v56);
    if (!v58)
    {
      goto LABEL_92;
    }

    v59 = v57;
    v60 = v58;

    v61 = MEMORY[0x25F89F4C0](v59, v60);

    v62 = [v55 personForIdentifier_];

    ++v49;
    v15 = v54;
    if (v62)
    {
      MEMORY[0x25F89F850]();
      OUTLINED_FUNCTION_37_21();
      if (v63)
      {
        OUTLINED_FUNCTION_25_29();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = v106;
      v49 = v53;
    }
  }

  v64 = v99;
  v65 = specialized Array.count.getter();
  v66 = 0;
  v67 = v99 & 0xC000000000000001;
  v105 = MEMORY[0x277D84F90];
  while (v65 != v66)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v67)
    {
      v68 = MEMORY[0x25F89FFD0](v66, v64);
    }

    else
    {
      v68 = *(v64 + 8 * v66 + 32);
    }

    if (__OFADD__(v66, 1))
    {
      goto LABEL_87;
    }

    ECRClientPersonResult.init(viewPerson:)(v68, &v106);
    if (v106)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v105 = v78;
      }

      OUTLINED_FUNCTION_30_27();
      if (v63)
      {
        OUTLINED_FUNCTION_22_5(v77);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_8_50(v79, v80, v81, v82, v83, v84, v85, v86, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v102, v79);
      }

      else
      {
        OUTLINED_FUNCTION_8_50(v69, v70, v71, v72, v73, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v102, v105);
      }

      v64 = v99;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      ++v66;
      v64 = v99;
    }
  }

  v87 = *(v100 + 192);
  v88 = *(v100 + 176);
  v89 = *(v100 + 144);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(v89, "OmniSearchService.personECRSearch");

  OUTLINED_FUNCTION_62();

  v90(v105);
}

void ECRClientPersonResult.init(viewPerson:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 contactIdentifiers];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = a1;
  v4 = [a1 visualIdentifierObjects];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDVisualIdentifier, 0x277D1F4A8);
  OUTLINED_FUNCTION_41_3();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();
  v7 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F89FFD0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v10 = [v8 visualIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.components<A>(separatedBy:)();

    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {

        goto LABEL_13;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18);
        v33 = v19;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1);
        v33 = v20;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      ++v7;
    }

    else
    {

LABEL_13:
      ++v7;
    }
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v33);
  v22 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v21);
  v23 = [v30 names];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [v30 phoneNumbers];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [v30 emails];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = *(v24 + 16);

  if (v29 || *(v31 + 16) || *(v22 + 16))
  {
    *a2 = v22;
    a2[1] = v31;
    a2[2] = v24;
    a2[3] = v26;
    a2[4] = v28;
  }

  else
  {

    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

uint64_t ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 177) = v3;
  *(v1 + 176) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for OSSignpostID();
  *(v1 + 88) = v6;
  *(v1 + 96) = *(v6 - 8);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  v106 = v0;
  if (one-time initialization token for utilities != -1)
  {
LABEL_93:
    OUTLINED_FUNCTION_0_93(&one-time initialization token for utilities);
  }

  v1 = v0 + 16;
  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v3, static Logging.utilities);
  v4 = v0;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v4 + 160);
    OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_10_23();
    v105 = v9;
    *v5 = 136642819;
    v10 = v8;
    v11 = [v10 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v5 + 1) = v12;
    OUTLINED_FUNCTION_19_39(&dword_25D85C000, v13, v7, "Fetched ECR result: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v92 = v4;
  v14 = [*(v4 + 160) rankedResults];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerResult, 0x277D1F470);
  OUTLINED_FUNCTION_41_3();
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Array.count.getter();
  v16 = 0;
  v97 = v0 & 0xFFFFFFFFFFFFFF8;
  v98 = v0 & 0xC000000000000001;
  v91 = v0;
  v96 = v0 + 32;
  v17 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v93 = v15;
  while (v16 != v15)
  {
    if (v98)
    {
      v18 = MEMORY[0x25F89FFD0](v16, v91);
    }

    else
    {
      if (v16 >= *(v97 + 16))
      {
        goto LABEL_83;
      }

      v18 = *(v96 + 8 * v16);
    }

    v19 = __OFADD__(v16, 1);
    v20 = v16 + 1;
    if (v19)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v21 = v18;
    v22 = [v21 rankedItems];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerItem, 0x277D1F468);
    v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v0 >> 62)
    {
      if (v0 < 0)
      {
        v47 = v0;
      }

      else
      {
        v47 = v0 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = MEMORY[0x25F8A01B0](v47);
    }

    else
    {
      v23 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v17 >> 62;
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v48 = v17;
      }

      else
      {
        v48 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = MEMORY[0x25F8A01B0](v48);
    }

    else
    {
      v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      goto LABEL_84;
    }

    v102 = v20;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v24)
      {
LABEL_20:
        if (v17 < 0)
        {
          v29 = v17;
        }

        else
        {
          v29 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v29);
      }

LABEL_24:
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v17 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_33_30();
      goto LABEL_25;
    }

    if (v24)
    {
      goto LABEL_20;
    }

    v27 = v17 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_33_30();
    if (v28 < v26)
    {
      goto LABEL_24;
    }

LABEL_25:
    v100 = v23;
    v30 = *(v27 + 16);
    v31 = v28 - v30;
    v32 = v27 + 8 * v30;
    if (v0 >> 62)
    {
      if (v0 < 0)
      {
        v34 = v0;
      }

      else
      {
        v34 = v0 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = MEMORY[0x25F8A01B0](v34);
      if (!v35)
      {
        goto LABEL_42;
      }

      v36 = v35;
      v37 = MEMORY[0x25F8A01B0](v34);
      if (v31 < v37)
      {
        goto LABEL_91;
      }

      if (v36 < 1)
      {
        goto LABEL_92;
      }

      v33 = v37;
      v94 = v27;
      v95 = v17;
      v38 = v32 + 32;
      OUTLINED_FUNCTION_0_90();
      lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [GDRankerItem] and conformance [A], &_sSaySo12GDRankerItemCGMd, &_sSaySo12GDRankerItemCGMR);
      for (i = 0; i != v36; ++i)
      {
        v40 = OUTLINED_FUNCTION_116_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
        v42 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v0);
        v44 = *v43;
        v42(v1, 0);
        *(v38 + 8 * i) = v44;
      }

      v17 = v95;
      v15 = v93;
LABEL_38:

      v16 = v102;
      if (v33 < v100)
      {
        goto LABEL_85;
      }

      if (v33 > 0)
      {
        v45 = *(v27 + 16);
        v19 = __OFADD__(v45, v33);
        v46 = v45 + v33;
        if (v19)
        {
          goto LABEL_89;
        }

        *(v27 + 16) = v46;
      }
    }

    else
    {
      v33 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        if (v31 < v33)
        {
          goto LABEL_90;
        }

        swift_arrayInitWithCopy();
        goto LABEL_38;
      }

LABEL_42:

      v16 = v102;
      if (v100 > 0)
      {
        goto LABEL_85;
      }
    }
  }

  v101 = *(v92 + 80);

  v105 = MEMORY[0x277D84F90];
  v0 = specialized Array.count.getter();
  v49 = 0;
  v103 = v17 & 0xC000000000000001;
  v50 = v17 & 0xFFFFFFFFFFFFFF8;
  while (v0 != v49)
  {
    if (v103)
    {
      v51 = MEMORY[0x25F89FFD0](v49, v17);
    }

    else
    {
      if (v49 >= *(v50 + 16))
      {
        goto LABEL_87;
      }

      v51 = *(v17 + 8 * v49 + 32);
    }

    v52 = v51;
    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_86;
    }

    v54 = v17;
    v55 = *(v101 + 16);
    v56 = [v51 entityID];
    result = outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(v56);
    if (!v58)
    {
      __break(1u);
      return result;
    }

    v59 = result;
    v60 = v58;

    v61 = MEMORY[0x25F89F4C0](v59, v60);

    v62 = [v55 personForIdentifier_];

    ++v49;
    v17 = v54;
    if (v62)
    {
      MEMORY[0x25F89F850]();
      OUTLINED_FUNCTION_37_21();
      if (v63)
      {
        OUTLINED_FUNCTION_25_29();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = v105;
      v49 = v53;
    }
  }

  v64 = v99;
  v0 = specialized Array.count.getter();
  v65 = 0;
  v66 = v99 & 0xC000000000000001;
  v104 = MEMORY[0x277D84F90];
  while (v0 != v65)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v66)
    {
      v67 = MEMORY[0x25F89FFD0](v65, v64);
    }

    else
    {
      v67 = *(v64 + 8 * v65 + 32);
    }

    if (__OFADD__(v65, 1))
    {
      goto LABEL_88;
    }

    ECRClientPersonResult.init(viewPerson:)(v67, &v105);
    if (v105)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v104 = v77;
      }

      OUTLINED_FUNCTION_30_27();
      if (v63)
      {
        OUTLINED_FUNCTION_22_5(v76);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_8_50(v78, v79, v80, v81, v82, v83, v84, v85, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v101, v78);
      }

      else
      {
        OUTLINED_FUNCTION_8_50(v68, v69, v70, v71, v72, v73, v74, v75, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v101, v104);
      }

      v64 = v99;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      ++v65;
      v64 = v99;
    }
  }

  v86 = *(v92 + 160);
  v87 = *(v92 + 144);
  v88 = *(v92 + 120);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(v88, "OmniSearchService.personNameAndIDsWithText");

  OUTLINED_FUNCTION_62();

  return v89(v104);
}

{
  v1 = *(v0 + 136);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(*(v0 + 120), "OmniSearchService.personNameAndIDsWithText");

  OUTLINED_FUNCTION_127();

  return v2();
}

void ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "OmniSearchService.personNameAndIDsWithText", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v21 = *(v0 + 176);
  v11 = (v0 + 72);
  v10 = *(v0 + 72);
  v12 = (v0 + 64);
  v13 = *(v0 + 64);

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 120) = OUTLINED_FUNCTION_38_6();
  (*(v9 + 8))(v7, v8);
  *(v0 + 56) = v10;
  *(v0 + 48) = v13;

  if ((v21 & 1) == 0)
  {
    v12 = (v0 + 48);
    MEMORY[0x25F89F6C0](32, 0xE100000000000000);
    v11 = (v0 + 56);
  }

  v14 = *v12;
  v15 = *v11;
  *(v0 + 128) = *v11;
  if (*(v0 + 177))
  {
    v16 = 0;
  }

  else
  {
    v16 = 3;
  }

  objc_allocWithZone(MEMORY[0x277D1F418]);

  *(v0 + 136) = @nonobjc GDEntityResolutionRequest.init(text:entityClassFilter:spans:mode:constraint:includeInferredNames:)(v14, v15, &outlined read-only object #0 of ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:), 0, v16, 0, 1);
  v17 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  *(v0 + 144) = EntityResolutionTextClient.init(for:viaXPC:warmup:)();
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_84(v18);
  OUTLINED_FUNCTION_83_0();

  __asm { BR              X1 }
}

uint64_t $defer #1 () in ECRClient.person(named:phoneNumber:email:)(uint64_t a1, const char *a2)
{
  v22 = a2;
  v2 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v14 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v14, static Logging.searchSignposter);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v2);
      v17 = "";
    }

    v18 = OUTLINED_FUNCTION_172();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v15, v16, v19, v22, v17, v18, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t ECRClient.fetchRelationshipsMap(people:locale:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  OUTLINED_FUNCTION_69();
  return MEMORY[0x2822009F8](v4);
}

void ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
      type metadata accessor for ContactsClient();
      inited = swift_initStackObject();
      *(inited + 40) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
      *(inited + 48) = &protocol witness table for CNContactStore;
      *(inited + 16) = v3;
      v5 = inited + 16;
      v6 = ContactsClient.meCardRelationships()();
      v0[20] = v6;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      if (v6)
      {
        v7 = Dictionary.init(dictionaryLiteral:)();
        v0[23] = v7;
        v0[24] = v7;
        v0[21] = v7;
        v0[22] = 0;
        if (v0[19])
        {
          v8 = v0[16];
          v10 = *(v8 + 32);
          v9 = *(v8 + 40);

          static SeparatorsFactory.make(with:)(v0 + 9);
          if (one-time initialization token for oneself != -1)
          {
            OUTLINED_FUNCTION_7_48(&one-time initialization token for oneself);
          }

          v11 = static Person.oneself;
          EntityProperty.wrappedValue.getter();
          v12 = v0[14];
          if (v12)
          {
            if (v12[2])
            {
              v5 = v12[4];
              v11 = v12[5];
            }

            else
            {
              OUTLINED_FUNCTION_35_28();
            }
          }

          else
          {
            OUTLINED_FUNCTION_35_28();
          }

          if (v10 == v5 && v9 == v11)
          {
          }

          else
          {
            OUTLINED_FUNCTION_119();
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v24 & 1) == 0)
            {
LABEL_34:
              OUTLINED_FUNCTION_36_24();
              v27 = swift_task_alloc();
              v0[26] = v27;
              *v27 = v0;
              OUTLINED_FUNCTION_3_65(v27);
              OUTLINED_FUNCTION_198();

              __asm { BRAA            X4, X16 }
            }
          }

          __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
          v25 = OUTLINED_FUNCTION_54_0();
          v26(v25);

          goto LABEL_34;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
        }

        v19 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v19, static Logging.search);
        v14 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v20))
        {
          OUTLINED_FUNCTION_51_0();
          v30 = OUTLINED_FUNCTION_10_23();
          *inited = 136642819;

          Dictionary.description.getter();

          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(inited + 4) = v21;
          OUTLINED_FUNCTION_19_39(&dword_25D85C000, v22, v20, "ECR relationships output is: %{sensitive}s)");
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_2_8();
        }
      }

      else
      {
        if (one-time initialization token for utilities != -1)
        {
          OUTLINED_FUNCTION_0_93(&one-time initialization token for utilities);
        }

        v13 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v13, static Logging.utilities);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = OUTLINED_FUNCTION_172();
          *v16 = 0;
          _os_log_impl(&dword_25D85C000, v14, v15, "Me card is not present, unable to fetch relationships", v16, 2u);
          OUTLINED_FUNCTION_2_8();
        }
      }
    }
  }

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X2, X16 }
}

uint64_t ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_47();
  *v5 = v4;
  *(v2 + 216) = v6;
  *(v2 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v2 = v1[27];
  v57 = *(v2 + 16);
  if (!v57)
  {

    v4 = v1[23];
    v33 = v1[24];
    v5 = v1[21];
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 9);
    v36 = v1[22] + 1;
    v1[23] = v4;
    v1[24] = v33;
    v1[21] = v5;
    v1[22] = v36;
    if (v36 == v1[19])
    {

      if (one-time initialization token for search == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

    v44 = v1[16] + 16 * v36;
    v46 = *(v44 + 32);
    v45 = *(v44 + 40);

    static SeparatorsFactory.make(with:)(v1 + 9);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_7_48(&one-time initialization token for oneself);
    }

    v47 = static Person.oneself;
    EntityProperty.wrappedValue.getter();
    v48 = v1[14];
    if (v48)
    {
      if (v48[2])
      {
        v33 = v48[4];
        v47 = v48[5];
      }

      else
      {
        OUTLINED_FUNCTION_35_28();
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_28();
    }

    if (v46 == v33 && v45 == v47)
    {
    }

    else
    {
      OUTLINED_FUNCTION_119();
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {
LABEL_50:
        OUTLINED_FUNCTION_36_24();
        v53 = swift_task_alloc();
        v1[26] = v53;
        *v53 = v1;
        OUTLINED_FUNCTION_3_65(v53);
        OUTLINED_FUNCTION_191();

        __asm { BRAA            X4, X16 }
      }
    }

    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    v51 = OUTLINED_FUNCTION_116_1();
    v52(v51);

    goto LABEL_50;
  }

  v3 = 0;
  v58 = v2 + 32;
  v4 = v1[23];
  v63 = v1[24];
  v5 = v1[21];
  v56 = v1[27];
LABEL_3:
  if (v3 >= *(v2 + 16))
  {
    goto LABEL_56;
  }

  v6 = *(v58 + 40 * v3 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v4;
  v59 = v3;

  v0 = 0;
  v9 = (v6 + 40);
  v61 = v6;
  v62 = v7;
  while (1)
  {
    if (v0 >= *(v6 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
LABEL_29:
      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v37, static Logging.search);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_51_0();
        v65 = OUTLINED_FUNCTION_10_23();
        *v0 = 136642819;

        Dictionary.description.getter();

        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v0 + 4) = v40;
        OUTLINED_FUNCTION_19_39(&dword_25D85C000, v41, v39, "ECR relationships output is: %{sensitive}s)");
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_191();

      __asm { BRAA            X2, X16 }
    }

    if (!*(v1[20] + 16))
    {
      goto LABEL_19;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v64 = v10;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    if ((v13 & 1) == 0)
    {

      goto LABEL_19;
    }

    v14 = (*(v1[20] + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[15] = v5;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v20 = v5[2];
    v21 = (v19 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_54;
    }

    v23 = v18;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22))
    {
      break;
    }

    v7 = v62;
    if ((v24 & 1) == 0)
    {
LABEL_13:
      v1 = v60;
      v5 = v60[15];
      v5[(v23 >> 6) + 8] |= 1 << v23;
      v27 = (v5[6] + 16 * v23);
      *v27 = v16;
      v27[1] = v15;
      v28 = (v5[7] + 16 * v23);
      *v28 = v64;
      v28[1] = v11;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_55;
      }

      v5[2] = v31;
      goto LABEL_18;
    }

LABEL_17:

    v1 = v60;
    v5 = v60[15];
    v32 = (v5[7] + 16 * v23);
    *v32 = v64;
    v32[1] = v11;

LABEL_18:
    v8 = v5;
    v63 = v5;
    v6 = v61;
LABEL_19:
    ++v0;
    v9 += 2;
    if (v7 == v0)
    {

      v2 = v56;
      v3 = v59;
      v4 = v8;
LABEL_21:
      if (++v3 == v57)
      {

        v33 = v63;
        goto LABEL_27;
      }

      goto LABEL_3;
    }
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
  v7 = v62;
  if ((v24 & 1) == (v26 & 1))
  {
    v23 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_191();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t ECRClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ECRClientProtocol.personNameAndIDsWithText(_:allowPrefixSearch:perToken:) in conformance ECRClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 104) + **(**v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 96) + **(**v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient;

  return v8(a1, a2);
}

uint64_t protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v4 = *v1;
  OUTLINED_FUNCTION_47();
  *v5 = v4;

  OUTLINED_FUNCTION_62();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id @nonobjc GDEntityResolutionRequest.init(kgq:text:mode:includeFeatures:includeInferredNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (!a2)
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = MEMORY[0x25F89F4C0](a1);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v15 = [v7 initWithKgq:v13 text:v14 mode:a5 includeFeatures:a6 & 1 includeInferredNames:a7 & 1];

  return v15;
}

id @nonobjc GDEntityResolutionRequest.init(text:entityClassFilter:spans:mode:constraint:includeInferredNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = MEMORY[0x25F89F4C0](a1);

  if (!a3)
  {
    v15.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16.super.isa = 0;
    goto LABEL_6;
  }

  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSValue, 0x277CCAE60);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v17 = [v8 initWithText:v14 entityClassFilter:v15.super.isa spans:v16.super.isa mode:a5 constraint:a6 includeInferredNames:a7 & 1];

  return v17;
}

uint64_t outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of ECRClientPersonResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ECRClientPersonResult(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ECRClientPersonResult(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void dispatch thunk of ECRClientProtocol.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)()
{
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_84(v1);
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

void dispatch thunk of ECRClientProtocol.person(named:phoneNumber:email:)()
{
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_84(v1);
  OUTLINED_FUNCTION_83_0();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of ECRClientProtocol.fetchRelationshipsMap(people:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_59();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_63(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_84(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ECRClientProtocol.fetchRelationshipsMap(people:locale:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v3 = *v0;
  OUTLINED_FUNCTION_47();
  *v4 = v3;

  OUTLINED_FUNCTION_62();

  return v5(v2);
}

void dispatch thunk of ECRClient.person(named:phoneNumber:email:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_84(v1);
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

uint64_t dispatch thunk of ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 104) + **(*v4 + 104));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_63(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_84(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v6 = (*(*v0 + 112) + **(*v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_84(v2);
  v4 = OUTLINED_FUNCTION_119();

  return v6(v4);
}

uint64_t OUTLINED_FUNCTION_0_93(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_48(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 + 16) = v21;
  v27 = (a20 + 40 * v22);
  v27[4] = v20;
  v27[5] = v26;
  v27[6] = v25;
  v27[7] = v24;
  v27[8] = v23;
}

void OUTLINED_FUNCTION_19_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_29()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_26_28()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_29_22()
{

  return outlined consume of ECRClientPersonResult?(0);
}

uint64_t static InAppSearchStringGeneratorUtils.convertToMe(person:separators:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for oneself != -1)
  {
    swift_once();
  }

  EntityProperty.wrappedValue.getter();
  if (v14)
  {
    if (v14[2])
    {
      v7 = v14[4];
      v6 = v14[5];
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  if (v7 == a1 && v6 == a2)
  {

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_119();
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_16:
    v10 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v11 = OUTLINED_FUNCTION_112_2();
    v12(v11, v10);
    return OUTLINED_FUNCTION_119();
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorFactory.createInAppSearchStringGenerator(bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_98_2();
  v7 = a1 == 0xD000000000000014 && v6 == a2;
  if (v7 || (OUTLINED_FUNCTION_34_30() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), a1 == 0xD000000000000015) ? (v9 = v8 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_34_30() & 1) != 0))
  {
    v10 = type metadata accessor for MailAndNotesInAppSearchStringGenerator();
    v11 = &protocol witness table for MailAndNotesInAppSearchStringGenerator;
  }

  else
  {
    OUTLINED_FUNCTION_98_2();
    v14 = a1 == 0xD000000000000013 && v13 == a2;
    if (v14 || (OUTLINED_FUNCTION_34_30() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), a1 == 0xD000000000000019) ? (v16 = v15 == a2) : (v16 = 0), !v16 && (OUTLINED_FUNCTION_34_30() & 1) == 0))
    {
      v10 = type metadata accessor for DefaultInAppSearchStringGenerator();
      v11 = &protocol witness table for DefaultInAppSearchStringGenerator;
    }

    else
    {
      v10 = type metadata accessor for PhotosInAppSearchStringGenerator();
      v11 = &protocol witness table for PhotosInAppSearchStringGenerator;
    }
  }

  result = swift_allocObject();
  a3[3] = v10;
  a3[4] = v11;
  *a3 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall People.getSendersAndReceivers()()
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (v0)
  {
    v4 = v0;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v4);
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  specialized Array.append<A>(contentsOf:)(v5);
  v7 = v8;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

uint64_t People.getAllPeople()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v6);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  specialized Array.append<A>(contentsOf:)(v7);
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v5;
  }

  specialized Array.append<A>(contentsOf:)(v8);
  return v10;
}

uint64_t static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_42_25();
    MEMORY[0x28223BE20](v1);
    v8[2] = v2;
    v9 = v3 & 1;
    v10 = v4 & 1;
    v11 = v5;
    v12 = v6 & 1;
    return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:), v8, v7);
  }

  return result;
}

uint64_t closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  result = static InAppSearchStringGeneratorUtils.convertToMe(person:separators:)(*a1, a1[1], a2);
  v13 = result;
  v15 = v14;
  if (a3)
  {
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    if (v13 == (*(v17 + 56))(v16, v17) && v15 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *a7 = 0;
    a7[1] = 0;
    return result;
  }

LABEL_7:
  if (a4)
  {
    goto LABEL_8;
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  if (v13 == (*(v25 + 56))(v24, v25) && v15 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a5)
      {
        result = specialized Dictionary.subscript.getter(v13, v15, a5);
        if (v21)
        {
          v22 = result;
          v23 = v21;

          *a7 = v22;
          a7[1] = v23;
          return result;
        }
      }

      if (a6)
      {
        v29 = a2[3];
        v30 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v29);
        if (v13 == (*(v30 + 56))(v29, v30) && v15 == v31)
        {

          v13 = 0;
          v15 = 0;
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {

            v13 = 0;
            v15 = 0;
          }
        }
      }
    }
  }

  *a7 = v13;
  a7[1] = v15;
  return result;
}

uint64_t static InAppSearchStringGeneratorUtils.add(fields:leadingSep:delimSep:searchString:forceAddLeadingSep:separators:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  v9 = a6;
  if (a1)
  {
    v10 = a8;
    v11 = a3;
    v12 = a2;
    v14 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {
      v16 = a9[3];
      v15 = a9[4];
      OUTLINED_FUNCTION_218(a9, v16);
      v28 = *(v15 + 8);

      v17 = v15;
      v10 = a8;
      v12 = v28(v16, v17);
      v11 = v18;
    }

    OUTLINED_FUNCTION_26_29();
    if (v19)
    {
    }

    else
    {
      v20 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v21 = OUTLINED_FUNCTION_4_60();
      v22(v21, v20);
    }

    if (*(a1 + 16))
    {
      if ((v10 & 1) != 0 || (OUTLINED_FUNCTION_33_31(), v23))
      {
        MEMORY[0x25F89F6C0](v12, v11);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_53_3();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      MEMORY[0x25F89F6C0](v24, v26);

      return a6;
    }

    else
    {
    }
  }

  else
  {
  }

  return v9;
}

uint64_t static InAppSearchStringGeneratorUtils.parse(people:)(uint64_t a1)
{
  type metadata accessor for PersonQueryEntity(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_43_17();
  if (!a1)
  {
    return 0;
  }

  v12 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7 = *(v4 + 72);
  do
  {
    outlined init with copy of PersonQueryEntity(v6, v1, type metadata accessor for PersonQueryEntity);
    EntityProperty.wrappedValue.getter();
    if (v10)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v9)
      {
        specialized Array.append<A>(contentsOf:)(v9);
      }
    }

    else
    {
      outlined consume of Person?(0, v11);
    }

    EntityProperty.wrappedValue.getter();
    if (v10)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v9)
      {
        specialized Array.append<A>(contentsOf:)(v9);
      }
    }

    else
    {
      outlined consume of Person?(0, v11);
    }

    EntityProperty.wrappedValue.getter();
    if (v10)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v9)
      {
        specialized Array.append<A>(contentsOf:)(v9);
      }
    }

    else
    {
      outlined consume of Person?(0, v11);
    }

    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v1, type metadata accessor for PersonQueryEntity);
    v6 += v7;
    --v5;
  }

  while (v5);
  return v12;
}

void static InAppSearchStringGeneratorUtils.parse(locations:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_43_17();
  if (v2)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v31 = *(v4 + 72);
      v7 = MEMORY[0x277D84F90];
      v8 = MEMORY[0x277D84F90];
      v9 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of PersonQueryEntity(v6, v0, type metadata accessor for LocationQueryEntity);
        EntityProperty.wrappedValue.getter();
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19);
            v7 = v20;
          }

          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            v21 = OUTLINED_FUNCTION_22_5(v10);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21);
            v7 = v22;
          }

          *(v7 + 16) = v11 + 1;
          v12 = v7 + 16 * v11;
          *(v12 + 32) = v32;
          *(v12 + 40) = v33;
        }

        EntityProperty.wrappedValue.getter();
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23);
            v8 = v24;
          }

          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            v25 = OUTLINED_FUNCTION_22_5(v13);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25);
            v8 = v26;
          }

          *(v8 + 16) = v14 + 1;
          v15 = v8 + 16 * v14;
          *(v15 + 32) = v32;
          *(v15 + 40) = v33;
        }

        EntityProperty.wrappedValue.getter();
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27);
            v9 = v28;
          }

          v17 = *(v9 + 16);
          v16 = *(v9 + 24);
          if (v17 >= v16 >> 1)
          {
            v29 = OUTLINED_FUNCTION_22_5(v16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29);
            v9 = v30;
          }

          *(v9 + 16) = v17 + 1;
          v18 = v9 + 16 * v17;
          *(v18 + 32) = v32;
          *(v18 + 40) = v33;
        }

        _s10OmniSearch17PersonQueryEntityVWOhTm_0(v0, type metadata accessor for LocationQueryEntity);
        v6 += v31;
        --v5;
      }

      while (v5);
    }
  }

  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_148();
}

uint64_t static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a5;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v19 = a2;
      v21 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_65_21();
      v10 = v21;
      v11 = a1 + 32;
      do
      {
        ++v11;
        v12 = PreferredType.rawValue.getter();
        v14 = v13;
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        }

        *(v21 + 16) = v16 + 1;
        v17 = v21 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        --v9;
      }

      while (v9);
      a2 = v19;
      v7 = a5;
    }

    static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(v10, a2, a3, a4, 0, v7);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  if (!a2)
  {
LABEL_20:

    return a3;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    goto LABEL_20;
  }

  v9 = a2;

  v11 = 0;
  v12 = v7 + 40;
  v37 = v7;
  v38 = v8;
  v36 = v9;
  while (v11 < *(v7 + 16))
  {
    if (*(v9 + 16))
    {

      v13 = OUTLINED_FUNCTION_72_2();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      v17 = v16;

      if (v17)
      {
        v18 = (*(v9 + 56) + 16 * v15);
        v20 = *v18;
        v19 = v18[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v21 = swift_allocObject();
        v22 = a3;
        v23 = v21;
        *(v21 + 16) = xmmword_25DBC8180;
        *(v21 + 32) = v20;
        *(v21 + 40) = v19;
        v42 = v22;
        v24 = a6[4];
        OUTLINED_FUNCTION_218(a6, a6[3]);
        v41 = *(v24 + 8);

        v25 = OUTLINED_FUNCTION_121_0();
        v26 = v41(v25);
        v28 = v27;
        v29 = a6[4];
        __swift_project_boxed_opaque_existential_1(a6, a6[3]);
        v30 = OUTLINED_FUNCTION_4_60();
        v31(v30, v29);
        if (*(v23 + 16))
        {
          OUTLINED_FUNCTION_35_29();
          if (v32)
          {
            MEMORY[0x25F89F6C0](v26, v28);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          OUTLINED_FUNCTION_53_3();
          v33 = BidirectionalCollection<>.joined(separator:)();
          v35 = v34;

          MEMORY[0x25F89F6C0](v33, v35);
        }

        else
        {
        }

        v8 = v38;

        a3 = v42;
        v7 = v37;
        if ((a5 & 1) == 0)
        {
LABEL_18:

          return a3;
        }

        v9 = v36;
      }
    }

    ++v11;
    v12 += 16;
    if (v8 == v11)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static InAppSearchStringGeneratorUtils.add(filterTypes:supportedFilterTypes:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a5;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v24 = a2;
      v26 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_65_21();
      OUTLINED_FUNCTION_44_26();
      v13 = (a1 + 32);
      do
      {
        v14 = *v13++;
        v15 = 0xE500000000000000;
        v16 = 0x6D72616C61;
        switch(v14)
        {
          case 1:
            v15 = 0xE400000000000000;
            v16 = 1802465122;
            break;
          case 2:
            v15 = 0xE800000000000000;
            goto LABEL_21;
          case 3:
            v15 = 0xE700000000000000;
            v16 = 0x746361746E6F63;
            break;
          case 4:
            v15 = 0xEC0000006E6F6974;
            v16 = 0x61737265766E6F63;
            break;
          case 5:
            v15 = 0xED0000656C694673;
            goto LABEL_34;
          case 6:
            v15 = 0xEF7265646C6F4673;
LABEL_34:
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
            v18 = 0x746F6E79656BLL;
            goto LABEL_45;
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
            v18 = 0x67617373656DLL;
            goto LABEL_45;
          case 13:
            v15 = 0xE400000000000000;
            v16 = 1702129518;
            break;
          case 14:
            v15 = v11 + 1264;
            v16 = 0x646C6F4665746F6ELL;
            break;
          case 15:
            v15 = 0xEB00000000656C69;
            v16 = 0x46737265626D756ELL;
            break;
          case 16:
            v16 = 0x6C69467365676170;
            v15 = 0xE900000000000065;
            break;
          case 17:
            v17 = 1852794992;
            goto LABEL_27;
          case 18:
            v19 = 1953458288;
            goto LABEL_40;
          case 19:
            v16 = 0x626C416F746F6870;
            v15 = 0xEA00000000006D75;
            break;
          case 20:
            v15 = 0xE800000000000000;
            goto LABEL_31;
          case 21:
            v15 = 0xEC0000007473694CLL;
LABEL_31:
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
            v19 = 1701079414;
            goto LABEL_40;
          case 25:
            v15 = v12 + 7;
            v16 = 0x69616D6563696F76;
            break;
          case 26:
            v15 = v12 + 10;
            goto LABEL_49;
          case 27:
            v15 = 0xE600000000000000;
            v16 = 0x74656C6C6177;
            break;
          case 28:
            v15 = 0xE700000000000000;
            v18 = 0x746973626577;
LABEL_45:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 29:
            v15 = 0xE800000000000000;
            v16 = 0x616D61726F6E6170;
            break;
          case 30:
            v15 = v11 + 1786;
            v16 = 0x68736E6565726373;
            break;
          case 31:
            v15 = 0xE600000000000000;
            v16 = 0x6569666C6573;
            break;
          case 32:
            v19 = 1836018803;
LABEL_40:
            v16 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
            break;
          case 33:
            v15 = 0xEC0000006F656469;
            v16 = 0x566C616974617073;
            break;
          case 34:
            v15 = 0xED0000746E657645;
LABEL_21:
            v16 = 0x7261646E656C6163;
            break;
          case 35:
            v15 = 0xE400000000000000;
            v16 = 1802398060;
            break;
          case 36:
            v17 = 1769369453;
LABEL_27:
            v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            break;
          case 37:
            v15 = 0xE600000000000000;
            v16 = 0x697261666173;
            break;
          case 38:
            v15 = v11 + 1530;
LABEL_49:
            v16 = 0x6D654D6563696F76;
            break;
          default:
            break;
        }

        v26 = v10;
        v21 = v10[2];
        v20 = v10[3];
        if (v21 >= v20 >> 1)
        {
          v10 = &v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          OUTLINED_FUNCTION_44_26();
        }

        v10[2] = v21 + 1;
        v22 = &v10[2 * v21];
        v22[4] = v16;
        v22[5] = v15;
        --v9;
      }

      while (v9);
      a2 = v24;
      v7 = a5;
    }

    static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(v10, a2, a3, a4, 0, v7);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a4;
    v13 = a3;
  }

  else
  {
    v14 = a9[3];
    v15 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, v14);
    OUTLINED_FUNCTION_11_50();
    v13 = v16(v14, v15);
    v12 = v17;
  }

  OUTLINED_FUNCTION_21_34();
  if (v18)
  {

    if (a2)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (!a1)
    {

LABEL_33:

      return OUTLINED_FUNCTION_121_0();
    }

    OUTLINED_FUNCTION_33_31();
    if (v23)
    {

      v24 = v12;
    }

    else
    {
      v34 = a9[3];
      v35 = a9[4];
      OUTLINED_FUNCTION_218(a9, v34);
      v36 = *(v35 + 8);

      v13 = v36(v34, v35);
      v24 = v37;
    }

    OUTLINED_FUNCTION_21_34();
    if (v38)
    {
    }

    else
    {
      v39 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v40 = OUTLINED_FUNCTION_2_70();
      v41(v40, v39);
    }

    if (*(a1 + 16))
    {
      OUTLINED_FUNCTION_22_29();
      if (v42)
      {
        MEMORY[0x25F89F6C0](v13, v24);
      }

      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_33;
  }

  v20 = a9[4];
  __swift_project_boxed_opaque_existential_1(a9, a9[3]);
  v21 = OUTLINED_FUNCTION_4_60();
  v22(v21, v20);
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_33_31();
  if (v19)
  {
  }

  else
  {
    v25 = a9[4];
    OUTLINED_FUNCTION_218(a9, a9[3]);
    v26 = *(v25 + 8);

    v27 = OUTLINED_FUNCTION_32_3();
    v26(v27);
  }

  OUTLINED_FUNCTION_21_34();
  if (v28)
  {
  }

  else
  {
    v30 = a9[3];
    v29 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, v30);
    OUTLINED_FUNCTION_11_50();
    v31(v30, v29);
  }

  if (!*(a2 + 16))
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_22_29();
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_32_3();
    MEMORY[0x25F89F6C0](v33);
  }

LABEL_31:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v43 = OUTLINED_FUNCTION_121_0();
  MEMORY[0x25F89F6C0](v43);

  return OUTLINED_FUNCTION_121_0();
}

uint64_t static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  if (result)
  {
    v11 = a4;
    v12 = a2;
    v13 = result;
    v14 = HIBYTE(a4) & 0xF;
    v67 = a3;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v14 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {
      v16 = a9[3];
      v17 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, v16);
      OUTLINED_FUNCTION_11_50();
      v18 = v17;
      v12 = a2;
      v67 = v19(v16, v18);
      v11 = v20;
    }

    OUTLINED_FUNCTION_20_29();
    if (v21)
    {
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v22 = OUTLINED_FUNCTION_1_82();
      result = v23(v22);
    }

    v65 = a8;
    v66 = v11;
    if (v12)
    {
      v64 = a7;
      v24 = 0;
      v25 = *(v13 + 16);
      v68 = v12 + 40;
      v69 = v13 + 32;
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        v27 = v24;
LABEL_14:
        if (v27 == v25)
        {
          break;
        }

        if (v27 >= v25)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          return result;
        }

        v24 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_55;
        }

        v28 = (v69 + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        v31 = v12;
        v32 = *(v12 + 16);

        v33 = v32 + 1;
        v34 = v68;
        while (--v33)
        {
          v35 = v34 + 16;
          lazy protocol witness table accessor for type String and conformance String();
          v36 = StringProtocol.contains<A>(_:)();
          v34 = v35;
          if (v36)
          {

            v27 = v24;
            v12 = v31;
            goto LABEL_14;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        }

        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        if (v38 >= v37 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        }

        *(v26 + 16) = v38 + 1;
        v39 = v26 + 16 * v38;
        *(v39 + 32) = v30;
        *(v39 + 40) = v29;
        v12 = v31;
      }

      v40 = v66;
      v70 = v64;
      v41 = v67;
      OUTLINED_FUNCTION_35_29();
      if (v42)
      {
      }

      else
      {
        v44 = a9[3];
        v45 = a9[4];
        OUTLINED_FUNCTION_218(a9, v44);
        v46 = *(v45 + 8);

        v41 = v46(v44, v45);
        v40 = v47;
      }

      OUTLINED_FUNCTION_26_29();
      if (v48)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a9, a9[3]);
        v49 = OUTLINED_FUNCTION_0_94();
        v50(v49);
      }

      if (*(v26 + 16))
      {
        v51 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v51 = v64 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          MEMORY[0x25F89F6C0](v41, v40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v52 = BidirectionalCollection<>.joined(separator:)();
        v54 = v53;

        MEMORY[0x25F89F6C0](v52, v54);
      }

      else
      {
      }

      return v70;
    }

    v70 = a7;
    OUTLINED_FUNCTION_33_31();
    if (v43)
    {
    }

    else
    {
      v55 = a9[3];
      v56 = a9[4];
      OUTLINED_FUNCTION_218(a9, v55);
      v57 = *(v56 + 8);

      v67 = v57(v55, v56);
      v11 = v58;
    }

    OUTLINED_FUNCTION_20_29();
    if (v59)
    {
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v60 = OUTLINED_FUNCTION_0_94();
      v61(v60);
      OUTLINED_FUNCTION_53_19();
    }

    if (*(v13 + 16))
    {
      v62 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v62 = a7 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        MEMORY[0x25F89F6C0](v67, v11);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      v63 = OUTLINED_FUNCTION_121_0();
      MEMORY[0x25F89F6C0](v63);

      return v70;
    }

    return a7;
  }

  return result;
}

uint64_t one-time initialization function for supportedFilterTypes()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static PhotosInAppSearchStringGenerator.supportedFilterTypes = result;
  return result;
}

uint64_t *PhotosInAppSearchStringGenerator.supportedFilterTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedFilterTypes != -1)
  {
    OUTLINED_FUNCTION_9_49(&one-time initialization token for supportedFilterTypes);
  }

  return &static PhotosInAppSearchStringGenerator.supportedFilterTypes;
}

uint64_t (*static PhotosInAppSearchStringGenerator.supportedFilterTypes.modify())(uint64_t a1)
{
  if (one-time initialization token for supportedFilterTypes != -1)
  {
    OUTLINED_FUNCTION_9_49(&one-time initialization token for supportedFilterTypes);
  }

  OUTLINED_FUNCTION_48_1();
  return static FlightSnippet.Status.allCases.modify;
}

void PhotosInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v10);
    v11 = static SeparatorsFactory.make(with:)(v79);
    OUTLINED_FUNCTION_49_23(v11);
    v12 = static InAppSearchStringGeneratorUtils.parse(people:)(v78);

    if (v12)
    {
      MEMORY[0x28223BE20](v13);
      OUTLINED_FUNCTION_10_47();
      *(v14 - 32) = v79;
      *(v14 - 24) = 256;
      *(v14 - 16) = v2;
      *(v14 - 8) = 0;
      v16 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v15, v12);
    }

    else
    {

      v16 = 0;
    }

    OUTLINED_FUNCTION_34_8();
    v17 = OUTLINED_FUNCTION_1_82();
    v18(v17);
    v19 = v81;
    OUTLINED_FUNCTION_34_8();
    v20 = OUTLINED_FUNCTION_112_2();
    v22 = v21(v20, v19);
    if (v16)
    {
      v23 = v22;
      v78 = 0;
      OUTLINED_FUNCTION_22_29();
      if (v24)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v79, v80);
        v26 = OUTLINED_FUNCTION_0_94();
        v27(v26);
      }

      OUTLINED_FUNCTION_35_29();
      if (v28)
      {
      }

      else
      {
        OUTLINED_FUNCTION_34_8();
        v29 = OUTLINED_FUNCTION_1_82();
        v23 = v30(v29);
      }

      if (*(v16 + 16))
      {

        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_72_2();
        BidirectionalCollection<>.joined(separator:)();
        OUTLINED_FUNCTION_53_19();

        MEMORY[0x25F89F6C0](v23, v31);
      }

      else
      {
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_49_23(v25);
    v32 = v81;
    OUTLINED_FUNCTION_218(v79, v80);
    v33 = *(v32 + 8);

    v34 = OUTLINED_FUNCTION_72_2();
    v35 = v33(v34);
    v37 = v36;
    v38 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v39 = OUTLINED_FUNCTION_2_70();
    v41 = v40(v39, v38);
    if (*(v78 + 16))
    {
      v42 = v41;
      OUTLINED_FUNCTION_33_31();
      if (v43)
      {
        MEMORY[0x25F89F6C0](v35, v37);
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v45 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v48 = OUTLINED_FUNCTION_69_17(v42, v46, v47, v45);
      OUTLINED_FUNCTION_70_14();
      MEMORY[0x25F89F6C0](v48, v44);
    }

    else
    {
    }

    OUTLINED_FUNCTION_49_23(v49);
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v51 = v50;

    v52 = v81;
    OUTLINED_FUNCTION_34_8();
    v53 = OUTLINED_FUNCTION_112_2();
    v54(v53, v52);
    OUTLINED_FUNCTION_53_19();
    v55 = v80;
    v56 = v81;
    OUTLINED_FUNCTION_68_19();
    OUTLINED_FUNCTION_24_29();
    v57(v55, v56);
    if (v51)
    {
      OUTLINED_FUNCTION_36_25();
      if (v58)
      {
      }

      else
      {
        v60 = v80;
        v61 = v81;
        OUTLINED_FUNCTION_218(v79, v80);
        v62 = *(v61 + 8);

        v62(v60, v61);
        OUTLINED_FUNCTION_52_22();
      }

      OUTLINED_FUNCTION_56_16();
      if (v63)
      {
      }

      else
      {
        v64 = v80;
        v65 = v81;
        OUTLINED_FUNCTION_68_19();
        OUTLINED_FUNCTION_11_50();
        v66(v64, v65);
      }

      if (*(v51 + 16))
      {
        OUTLINED_FUNCTION_63_20();
        if (v67)
        {
          OUTLINED_FUNCTION_32_32();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v68 = lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_46_24(v68);
        OUTLINED_FUNCTION_52_22();

        OUTLINED_FUNCTION_32_32();
      }

      else
      {
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_49_23(v59);
    v69 = v81;
    OUTLINED_FUNCTION_34_8();
    v70 = OUTLINED_FUNCTION_112_2();
    v71(v70, v69);
    OUTLINED_FUNCTION_53_19();
    v72 = v80;
    v73 = v81;
    OUTLINED_FUNCTION_68_19();
    OUTLINED_FUNCTION_24_29();
    v74(v72, v73);

    OUTLINED_FUNCTION_49_23(v75);
    if (one-time initialization token for supportedFilterTypes != -1)
    {
      OUTLINED_FUNCTION_9_49(&one-time initialization token for supportedFilterTypes);
    }

    OUTLINED_FUNCTION_30_28();
    v76 = static PhotosInAppSearchStringGenerator.supportedFilterTypes;

    static InAppSearchStringGeneratorUtils.add(filterTypes:supportedFilterTypes:searchString:separators:)(0, v76, 0, 0xE000000000000000, v79);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v10, v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t one-time initialization function for supportedPreferredTypes()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes = result;
  return result;
}

{
  result = Dictionary.init(dictionaryLiteral:)();
  static DefaultInAppSearchStringGenerator.supportedPreferredTypes = result;
  return result;
}

uint64_t *MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_8_51(&one-time initialization token for supportedPreferredTypes);
  }

  return &static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes;
}

uint64_t (*static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes.modify())(uint64_t a1)
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_8_51(&one-time initialization token for supportedPreferredTypes);
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

void MailAndNotesInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v10);
    static SeparatorsFactory.make(with:)(v132);
    EntityProperty.wrappedValue.getter();
    if (one-time initialization token for supportedPreferredTypes != -1)
    {
      OUTLINED_FUNCTION_8_51(&one-time initialization token for supportedPreferredTypes);
    }

    OUTLINED_FUNCTION_30_28();

    v11 = OUTLINED_FUNCTION_12_45();
    v16 = static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(v11, v12, v13, v14, v15);
    v129 = v17;

    EntityProperty.wrappedValue.getter();
    v18 = OUTLINED_FUNCTION_57_18();
    v19 = static InAppSearchStringGeneratorUtils.parse(people:)(v18);
    v128 = v20;
    v126 = v21;

    v130 = v10;
    if (v19)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v22);
      OUTLINED_FUNCTION_10_47();
      *(v23 - 32) = v132;
      OUTLINED_FUNCTION_39_25(v23);
      v25 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v24, v19);
    }

    else
    {
      v25 = 0;
    }

    OUTLINED_FUNCTION_17_39();
    v26 = OUTLINED_FUNCTION_1_82();
    v28 = v27(v26);
    v30 = v29;
    v31 = v133;
    v32 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    OUTLINED_FUNCTION_24_29();
    v33(v31, v32);
    v127 = v2;
    if (v25)
    {
      v34 = v25;
      OUTLINED_FUNCTION_26_29();
      v125 = v25;
      if (v35)
      {

        v36 = v30;
      }

      else
      {
        v39 = v133;
        v40 = v134;
        OUTLINED_FUNCTION_218(v132, v133);
        v41 = *(v40 + 8);

        v34 = v125;
        v28 = v41(v39, v40);
        v36 = v42;
      }

      OUTLINED_FUNCTION_59_17();
      if (v43)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v132, v133);
        OUTLINED_FUNCTION_11_50();
        v44 = OUTLINED_FUNCTION_32_3();
        v45(v44);
        v34 = v125;
      }

      if (*(v34 + 16))
      {
        OUTLINED_FUNCTION_35_29();
        if (v46)
        {
          MEMORY[0x25F89F6C0](v28, v36);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_32_3();
        v47 = BidirectionalCollection<>.joined(separator:)();
        v49 = v48;

        MEMORY[0x25F89F6C0](v47, v49);
      }

      else
      {
      }

      v38 = v129;
      v37 = v127;
    }

    else
    {

      v37 = v2;
      v38 = v129;
    }

    EntityProperty.wrappedValue.getter();

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(v50);
    v51 = OUTLINED_FUNCTION_12_45();
    v55 = static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(v51, v52, v53, v54, 0, 0xE000000000000000, v16, v38, v132);
    v57 = v56;

    if (v128)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v58);
      OUTLINED_FUNCTION_10_47();
      *(v59 - 32) = v132;
      *(v59 - 24) = 256;
      *(v59 - 16) = v37;
      *(v59 - 8) = 1;
      v62 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v60, v61);
    }

    else
    {
      v62 = 0;
    }

    OUTLINED_FUNCTION_6_48();
    v63 = OUTLINED_FUNCTION_5_52();
    v64(v63);
    v66 = v65;
    OUTLINED_FUNCTION_6_48();
    v67 = OUTLINED_FUNCTION_5_52();
    v68(v67);
    if (v62)
    {
      v131 = v57;
      OUTLINED_FUNCTION_35_29();
      if (v69)
      {

        v70 = v66;
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v71 = OUTLINED_FUNCTION_0_94();
        v72(v71);
        v70 = v73;
      }

      OUTLINED_FUNCTION_20_29();
      if (v74)
      {
      }

      else
      {
        v75 = v134;
        __swift_project_boxed_opaque_existential_1(v132, v133);
        v76 = OUTLINED_FUNCTION_4_60();
        v77(v76, v75);
      }

      if (*(v62 + 16))
      {
        v78 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v78, v70);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();

        v79 = OUTLINED_FUNCTION_72_2();
        MEMORY[0x25F89F6C0](v79);
      }

      else
      {
      }

      v57 = v131;
    }

    else
    {
    }

    if (v126)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v80);
      OUTLINED_FUNCTION_10_47();
      *(v81 - 32) = v132;
      *(v81 - 24) = 256;
      *(v81 - 16) = v82;
      *(v81 - 8) = 1;
      v84 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v83, v126);
    }

    else
    {

      v84 = 0;
    }

    OUTLINED_FUNCTION_6_48();
    v85 = OUTLINED_FUNCTION_5_52();
    v86(v85);
    v88 = v87;
    OUTLINED_FUNCTION_6_48();
    v89 = OUTLINED_FUNCTION_5_52();
    v90(v89);
    v92 = v91;
    if (v84)
    {
      OUTLINED_FUNCTION_59_17();
      if (v93)
      {

        v94 = v88;
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v96 = OUTLINED_FUNCTION_0_94();
        v97(v96);
        v94 = v98;
      }

      OUTLINED_FUNCTION_35_29();
      if (v99)
      {
      }

      else
      {
        v100 = v134;
        __swift_project_boxed_opaque_existential_1(v132, v133);
        v101 = OUTLINED_FUNCTION_4_60();
        v102(v101, v100);
      }

      if (*(v84 + 16))
      {
        v103 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v103, v94);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();

        v104 = OUTLINED_FUNCTION_72_2();
        MEMORY[0x25F89F6C0](v104);
      }

      else
      {
      }

      v95 = v130;
    }

    else
    {

      v95 = v130;
    }

    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_57_18();
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v106 = v105;

    v107 = People.getAllPeople()();

    if (v107)
    {
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_66_17();
      v108 = OUTLINED_FUNCTION_72_2();
      v92(v108);
      OUTLINED_FUNCTION_28_28();
      v109 = OUTLINED_FUNCTION_2_70();
      v111 = v110(v109, v106);
      if (*(v107 + 16))
      {
        v112 = v111;
        v113 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v113 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (v113)
        {
          OUTLINED_FUNCTION_45_20();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17(v112, v114, v115, v116);
        OUTLINED_FUNCTION_70_14();
        v117 = OUTLINED_FUNCTION_53_3();
        MEMORY[0x25F89F6C0](v117);
      }

      else
      {
      }
    }

    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_13_36();
    static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(v118, v119, v120, v121, v122, v123, v55, v57, v132);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v95, v124);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t *DefaultInAppSearchStringGenerator.supportedPreferredTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_7_49(&one-time initialization token for supportedPreferredTypes);
  }

  return &static DefaultInAppSearchStringGenerator.supportedPreferredTypes;
}

uint64_t static PhotosInAppSearchStringGenerator.supportedFilterTypes.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
}

uint64_t static PhotosInAppSearchStringGenerator.supportedFilterTypes.setter(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static DefaultInAppSearchStringGenerator.supportedPreferredTypes.modify())(uint64_t a1)
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_7_49(&one-time initialization token for supportedPreferredTypes);
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t key path getter for static PhotosInAppSearchStringGenerator.supportedFilterTypes : PhotosInAppSearchStringGenerator.Type@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static PhotosInAppSearchStringGenerator.supportedFilterTypes : PhotosInAppSearchStringGenerator.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void *a6)
{
  v8 = *a1;

  a5(v9);
  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  *a6 = v8;
}

void DefaultInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v10);
    static SeparatorsFactory.make(with:)(v105);
    EntityProperty.wrappedValue.getter();
    if (one-time initialization token for supportedPreferredTypes != -1)
    {
      OUTLINED_FUNCTION_7_49(&one-time initialization token for supportedPreferredTypes);
    }

    OUTLINED_FUNCTION_30_28();

    v11 = OUTLINED_FUNCTION_12_45();
    v16 = static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(v11, v12, v13, v14, v15);
    v18 = v17;

    OUTLINED_FUNCTION_50_18(v19);
    v20 = OUTLINED_FUNCTION_57_18();
    v21 = static InAppSearchStringGeneratorUtils.parse(people:)(v20);

    v103 = v16;
    if (v21)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v22);
      OUTLINED_FUNCTION_10_47();
      *(v23 - 32) = v105;
      OUTLINED_FUNCTION_39_25(v23);
      v25 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v24, v21);
    }

    else
    {
      v25 = 0;
    }

    OUTLINED_FUNCTION_17_39();
    v26 = OUTLINED_FUNCTION_1_82();
    v27(v26);
    OUTLINED_FUNCTION_28_28();
    OUTLINED_FUNCTION_24_29();
    v28 = OUTLINED_FUNCTION_121_0();
    v30 = v29(v28);
    v32 = v31;
    if (v25)
    {
      v33 = v30;
      v102 = v10;
      OUTLINED_FUNCTION_26_29();
      if (v34)
      {

        v35 = v104;
      }

      else
      {
        v37 = v106;
        v38 = v107;
        OUTLINED_FUNCTION_218(v105, v106);
        v101 = v25;
        v39 = v2;
        v40 = *(v38 + 8);

        v40(v37, v38);
        v2 = v39;
        v25 = v101;
        v35 = v41;
      }

      v42 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v42 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
      }

      else
      {
        v43 = v107;
        __swift_project_boxed_opaque_existential_1(v105, v106);
        v44 = OUTLINED_FUNCTION_2_70();
        v45(v44, v43);
      }

      if (*(v25 + 16))
      {
        v46 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v46 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v47 = OUTLINED_FUNCTION_54_25();
          MEMORY[0x25F89F6C0](v47, v35);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();
        v49 = v48;

        v50 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v50, v49);
      }

      else
      {

        v32 = v18;
      }

      v36 = v103;
      v10 = v102;
    }

    else
    {

      v36 = v103;
    }

    v51 = People.getSendersAndReceivers()();

    if (v51)
    {
      MEMORY[0x28223BE20](v52);
      OUTLINED_FUNCTION_10_47();
      *(v53 - 32) = v105;
      OUTLINED_FUNCTION_39_25(v53);
      v55 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v54, v51);

      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_66_17();
      v56 = OUTLINED_FUNCTION_72_2();
      v2(v56);
      OUTLINED_FUNCTION_28_28();
      v57 = OUTLINED_FUNCTION_2_70();
      v59 = v58(v57, v32);
      if (*(v55 + 16))
      {
        v60 = v59;
        v61 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v61 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          OUTLINED_FUNCTION_45_20();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17(v60, v62, v63, v64);
        OUTLINED_FUNCTION_70_14();
        v65 = OUTLINED_FUNCTION_53_3();
        MEMORY[0x25F89F6C0](v65);
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_50_18(v52);

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(v66);
    v67 = OUTLINED_FUNCTION_12_45();
    v71 = static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(v67, v68, v69, v70, 0, 0xE000000000000000, v36, v18, v105);
    v73 = v72;

    OUTLINED_FUNCTION_50_18(v74);
    OUTLINED_FUNCTION_57_18();
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v76 = v75;

    v77 = People.getAllPeople()();

    if (v77)
    {
      v79 = v10;
      OUTLINED_FUNCTION_17_39();
      v80 = *(v76 + 8);

      v81 = OUTLINED_FUNCTION_72_2();
      v82 = v80(v81);
      v84 = v83;
      OUTLINED_FUNCTION_37_22();
      v85 = OUTLINED_FUNCTION_0_94();
      v87 = v86(v85);
      if (*(v77 + 16))
      {
        v88 = v87;
        OUTLINED_FUNCTION_33_31();
        if (v89)
        {
          MEMORY[0x25F89F6C0](v82, v84);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17(v88, v90, v91, v92);
        OUTLINED_FUNCTION_70_14();
        OUTLINED_FUNCTION_45_20();
      }

      else
      {
      }

      v10 = v79;
    }

    v93 = OUTLINED_FUNCTION_50_18(v78);
    OUTLINED_FUNCTION_50_18(v93);
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_13_36();
    static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(v94, v95, v96, v97, v98, v99, v71, v73, v105);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v10, v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(a1, a2);
}

{
  return closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 25), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t outlined init with copy of PersonQueryEntity(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch17PersonQueryEntityVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for People(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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