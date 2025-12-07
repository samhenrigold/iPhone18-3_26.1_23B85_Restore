uint64_t StandardSuggestionSignals.isNotSharingETA.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = StandardSuggestionSignals.isNotSharingETA.getter;

  return specialized StandardSuggestionSignals.isNotSharingETA.getter();
}

uint64_t StandardSuggestionSignals.isNotSharingETA.getter(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void closure #1 in StandardSuggestionSignals.isNotSharingETA.getter(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isNotSharingETA.getter;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 performBlockAfterInitialSync:v10];
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in StandardSuggestionSignals.isNotSharingETA.getter(void *a1)
{
  v1 = [a1 receivers];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for MSPSharedTripContact, MSPSharedTripContact_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t protocol witness for SuggestionsSignals.isNotSharingETA.getter in conformance StandardSuggestionSignals()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SuggestionsSignals.isNotSharingETA.getter in conformance StandardSuggestionSignals;

  return specialized StandardSuggestionSignals.isNotSharingETA.getter();
}

uint64_t specialized StandardSuggestionSignals.isNotSharingETA.getter()
{
  return _swift_task_switch(specialized StandardSuggestionSignals.isNotSharingETA.getter, 0, 0);
}

{
  v1 = [objc_opt_self() sharedInstance];
  v0[2] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[3] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = specialized StandardSuggestionSignals.isNotSharingETA.getter;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x616853746F4E7369, 0xEF415445676E6972, partial apply for closure #1 in StandardSuggestionSignals.isNotSharingETA.getter, v3, &type metadata for Bool);
  }

  else
  {
    if (one-time initialization token for SuggestionsLog != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, SuggestionsLog);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "failed to get shared trip service", v8, 2u);
    }

    v9 = v0[1];

    return v9(0);
  }
}

{

  return _swift_task_switch(specialized StandardSuggestionSignals.isNotSharingETA.getter, 0, 0);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized StandardSuggestionSignals.getContactName(fullName:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v84 = a2;

  v83 = String.init<A>(_:)();
  v84 = v8;
  static CharacterSet.whitespaces.getter();
  v74 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  v12 = *(v5 + 8);
  v75 = v7;
  v76 = v5 + 8;
  v77 = v4;
  v73 = v12;
  v12(v7, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v80 = xmmword_D830;
  *(v13 + 16) = xmmword_D830;
  v14 = objc_opt_self();
  v15 = &CNKeyDescriptor__prots;
  *(v13 + 32) = [v14 descriptorForRequiredKeysForStyle:0];
  v16 = objc_allocWithZone(CNContactFetchRequest);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithKeysToFetch:v18.super.isa];

  v20 = objc_opt_self();
  v81 = v9;
  v21 = String._bridgeToObjectiveC()();
  v71 = v20;
  v22 = [v20 predicateForContactsMatchingName:v21];

  v23 = [objc_allocWithZone(CNContactStore) init];
  v24 = swift_allocObject();
  *(v24 + 16) = v80;
  *&v80 = v14;
  *(v24 + 32) = [v14 descriptorForRequiredKeysForStyle:0];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v83 = 0;
  v26 = [v23 unifiedContactsMatchingPredicate:v22 keysToFetch:isa error:&v83];

  v27 = v83;
  if (!v26)
  {
    v42 = v83;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_38;
  }

  v78 = v11;
  v69 = v22;
  v68[1] = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, CNContact_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v27;

  v82 = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
LABEL_48:
    v79 = v28 & 0xFFFFFFFFFFFFFF8;
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v79 = v28 & 0xFFFFFFFFFFFFFF8;
    v30 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
  }

  v68[2] = v17;
  v70 = v19;
  if (!v30)
  {
    v72 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v17 = 0;
  v15 = (v28 & 0xC000000000000001);
  v72 = _swiftEmptyArrayStorage;
  v31 = v75;
  do
  {
    v19 = v17;
    while (1)
    {
      if (v15)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v79 + 16))
        {
          goto LABEL_47;
        }

        v33 = *(v28 + 8 * v19 + 32);
      }

      v34 = v33;
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v35 = [v80 stringFromContact:v33 style:0];
      if (v35)
      {
        break;
      }

LABEL_8:

      ++v19;
      if (v17 == v30)
      {
        goto LABEL_24;
      }
    }

    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v83 = v37;
    v84 = v39;
    static CharacterSet.whitespaces.getter();
    v18.super.isa = StringProtocol.trimmingCharacters(in:)();
    v41 = v40;
    v73(v31, v77);

    if (v18.super.isa != v81 || v41 != v78)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

LABEL_18:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v82 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v72 = v82;
  }

  while (v17 != v30);
LABEL_24:

  v43 = v72;
  if (v72 >> 62)
  {
    if (v72 < 0)
    {
      v15 = v72;
    }

    else
    {
      v15 = (v72 & 0xFFFFFFFFFFFFFF8);
    }

    v67 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v70;
    v22 = v69;
    if (v67 != 1 || !_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_54;
    }

LABEL_26:
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_58;
      }

      v44 = *(v43 + 32);
    }

    v15 = v44;

    v18.super.isa = &CNKeyDescriptor__prots;
    v45 = [(__objc2_prot_list *)v15 givenName];
    if (!v45)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = String._bridgeToObjectiveC()();
    }

    v43 = [v71 predicateForContactsMatchingName:v45];

    v46 = [objc_allocWithZone(CNContactStore) init];
    v47 = Array._bridgeToObjectiveC()().super.isa;
    v83 = 0;
    v48 = [v46 unifiedContactsMatchingPredicate:v43 keysToFetch:v47 error:&v83];

    v49 = v83;
    if (v48)
    {
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v49;

      if (!(v50 >> 62))
      {
        v52 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
LABEL_34:

        if (v52 < 2)
        {
          v65 = [v15 *(v18.super.isa + 212)];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v53 = [v80 stringFromContact:v15 style:0];
          if (!v53)
          {

            return 0;
          }

          v54 = v53;
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        return v55;
      }

LABEL_58:
      v52 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_34;
    }

    v56 = v83;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_38:
    if (one-time initialization token for SuggestionsLog != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, SuggestionsLog);
    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v83 = v61;
      *v60 = 136315138;
      swift_getErrorValue();
      v62 = Error.localizedDescription.getter();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v83);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_0, v58, v59, "error retrieving contact: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
    }

    else
    {
    }

    return 0;
  }

  v19 = v70;
  v22 = v69;
  if (*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
    goto LABEL_26;
  }

LABEL_54:

  return 0;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_2E74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isNotSharingETA.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);

  return closure #1 in closure #1 in StandardSuggestionSignals.isNotSharingETA.getter(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CNContact(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t SiriGeoSuggestionsGenerator.__allocating_init(signals:)(__int128 *a1)
{
  v2 = swift_allocObject();
  _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0(a1, v2 + 16);
  return v2;
}

uint64_t _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of SuggestionsSignals(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = type metadata accessor for Objective();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit6ActionVSgMd, &_s18SiriSuggestionsKit6ActionVSgMR);
  v4[49] = swift_task_alloc();
  v6 = type metadata accessor for Action();
  v4[50] = v6;
  v4[51] = *(v6 - 8);
  v4[52] = swift_task_alloc();

  return _swift_task_switch(SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

uint64_t SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  if (one-time initialization token for SuggestionsLog != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, SuggestionsLog);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Running SiriGeoSuggestionsGenerator", v4, 2u);
  }

  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 336);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  Interaction.getRelatedAction()(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    outlined destroy of Action?(*(v0 + 392), &_s18SiriSuggestionsKit6ActionVSgMd, &_s18SiriSuggestionsKit6ActionVSgMR);
    v9 = _swiftEmptyArrayStorage;
LABEL_22:

    v23 = *(v0 + 8);

    return v23(v9);
  }

  (*(*(v0 + 408) + 32))(*(v0 + 416), *(v0 + 392), *(v0 + 400));
  v10 = static SiriGeoSuggestion.AllSuggestions.getter();
  *(v0 + 424) = v10;
  v11 = *(v10 + 16);
  *(v0 + 432) = v11;
  if (!v11)
  {

    v9 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    if (v18)
    {
      v19 = &_swiftEmptyArrayStorage[4];
      do
      {
        outlined init with copy of CandidateSuggestion?(v19, v0 + 168);
        *(v0 + 280) = *(v0 + 200);
        v20 = *(v0 + 184);
        *(v0 + 248) = *(v0 + 168);
        *(v0 + 264) = v20;
        if (*(v0 + 272))
        {
          _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0((v0 + 248), v0 + 208);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
          }

          v22 = v9[2];
          v21 = v9[3];
          if (v22 >= v21 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v9);
          }

          v9[2] = v22 + 1;
          _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0((v0 + 208), &v9[5 * v22 + 4]);
        }

        else
        {
          outlined destroy of Action?(v0 + 248, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMR);
        }

        v19 += 5;
        --v18;
      }

      while (v18);
    }

    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

    goto LABEL_22;
  }

  v12 = *(v0 + 360);
  *(v0 + 464) = enum case for Objective.discoverability(_:);
  *(v0 + 440) = 0;
  *(v0 + 448) = _swiftEmptyArrayStorage;
  v13 = *(v0 + 336);
  outlined init with copy of SiriGeoSuggestion(v10 + 32, v0 + 16);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  *(v0 + 328) = dispatch thunk of Interaction.executionParameters.getter();
  v24 = (*(v0 + 72) + **(v0 + 72));
  v14 = swift_task_alloc();
  *(v0 + 456) = v14;
  *v14 = v0;
  v14[1] = SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:);
  v15 = *(v0 + 416);
  v16 = *(v0 + 344);

  return v24(v15, v16, v0 + 328, v12 + 16);
}

{
  if (*(v0 + 468))
  {
    v30 = *(v0 + 464);
    v1 = *(v0 + 416);
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v29 = *(v0 + 368);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v6 = *(v0 + 152);
    v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(*(v0 + 328));

    v6(v1, v5, v7);

    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    (*(v3 + 104))(v2, v30, v29);
    CandidateSuggestionFactory.create(suggestionId:params:objective:)();

    (*(v3 + 8))(v2, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, *(v0 + 448));
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[5 * v11];
    v13 = *(v0 + 288);
    v14 = *(v0 + 304);
    v12[8] = *(v0 + 320);
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    outlined destroy of SiriGeoSuggestion(v0 + 16);
  }

  else
  {

    outlined destroy of SiriGeoSuggestion(v0 + 16);
    v9 = *(v0 + 448);
  }

  v15 = *(v0 + 440) + 1;
  if (v15 == *(v0 + 432))
  {

    v16 = v9[2];
    if (v16)
    {
      v17 = _swiftEmptyArrayStorage;
      v18 = (v9 + 4);
      do
      {
        outlined init with copy of CandidateSuggestion?(v18, v0 + 168);
        *(v0 + 280) = *(v0 + 200);
        v19 = *(v0 + 184);
        *(v0 + 248) = *(v0 + 168);
        *(v0 + 264) = v19;
        if (*(v0 + 272))
        {
          _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0((v0 + 248), v0 + 208);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
          }

          v21 = v17[2];
          v20 = v17[3];
          if (v21 >= v20 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
          }

          v17[2] = v21 + 1;
          _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0((v0 + 208), &v17[5 * v21 + 4]);
        }

        else
        {
          outlined destroy of Action?(v0 + 248, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMR);
        }

        v18 += 40;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

    v28 = *(v0 + 8);

    return v28(v17);
  }

  else
  {
    *(v0 + 440) = v15;
    *(v0 + 448) = v9;
    v22 = *(v0 + 360);
    v23 = *(v0 + 336);
    outlined init with copy of SiriGeoSuggestion(*(v0 + 424) + 152 * v15 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    *(v0 + 328) = dispatch thunk of Interaction.executionParameters.getter();
    v31 = (*(v0 + 72) + **(v0 + 72));
    v24 = swift_task_alloc();
    *(v0 + 456) = v24;
    *v24 = v0;
    v24[1] = SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v25 = *(v0 + 416);
    v26 = *(v0 + 344);

    return v31(v25, v26, v0 + 328, v22 + 16);
  }
}

uint64_t SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)(char a1)
{
  *(*v1 + 468) = a1;

  return _swift_task_switch(SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

uint64_t Interaction.getRelatedAction()@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit18InteractionIntentsOSgMd, &_s18SiriSuggestionsKit18InteractionIntentsOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SiriSuggestions.Intent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  dispatch thunk of Interaction.relatedIntents.getter();
  v14 = type metadata accessor for InteractionIntents();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    outlined destroy of Action?(v6, &_s18SiriSuggestionsKit18InteractionIntentsOSgMd, &_s18SiriSuggestionsKit18InteractionIntentsOSgMR);
  }

  else if ((*(v15 + 88))(v6, v14) == enum case for InteractionIntents.siriInteractionIntents(_:))
  {
    (*(v15 + 96))(v6, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O6IntentO09executionD0_SayAC0D5QueryVGSg16intentsToSuggesttMd, &_s18SiriSuggestionsKit0aB0O6IntentO09executionD0_SayAC0D5QueryVGSg16intentsToSuggesttMR);

    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    v16(v11, v13, v7);
    if ((*(v8 + 88))(v11, v7) == enum case for SiriSuggestions.Intent.action(_:))
    {
      (*(v8 + 96))(v11, v7);
      v17 = type metadata accessor for Action();
      v18 = *(v17 - 8);
      (*(v18 + 32))(a3, v11, v17);
      return (*(v18 + 56))(a3, 0, 1, v17);
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v15 + 8))(v6, v14);
  }

  v20 = type metadata accessor for Action();
  return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        outlined init with copy of Decodable & Encodable & Sendable(*(a1 + 56) + 48 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v27[2] = v29[2];
        v17 = v28;
        outlined init with take of Decodable & Encodable & Sendable(v27, v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
        swift_dynamicCast();
        outlined init with take of Any(&v23, v25);
        outlined init with take of Any(v25, v26);
        outlined init with take of Any(v26, &v24);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = outlined init with take of Any(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = outlined init with take of Any(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t SiriGeoSuggestionsGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance SiriGeoSuggestionsGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = StandardSuggestionSignals.isNotSharingETA.getter;

  return SiriGeoSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)(a1, a2, a3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of CandidateSuggestion?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pSgMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pSgGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pSgMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined destroy of Action?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SiriGeoSuggestionsGenerator and conformance SiriGeoSuggestionsGenerator(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriGeoSuggestionsGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Decodable & Encodable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Decodable & Encodable & Sendable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static SiriGeoSuggestion.AllSuggestions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriGeoSuggestions0dE10SuggestionVGMd, &_ss23_ContiguousArrayStorageCy18SiriGeoSuggestions0dE10SuggestionVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_D9B0;
  if (one-time initialization token for t41Locales != -1)
  {
    swift_once();
  }

  v1 = one-time initialization token for kCarPlayDevice;
  v12 = static SiriGeoSuggestionsConstants.t41Locales;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = static SiriGeoSuggestionsConstants.kCarPlayDevice;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  type metadata accessor for VersionedInvocation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D9C0;
  v13 = v2;

  static VersionedInvocations.HintsDawnC.getter();
  if (one-time initialization token for shareETAIntent != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SiriSuggestions.IntentType();
  v5 = __swift_project_value_buffer(v4, static SiriGeoSuggestion.shareETAIntent);
  swift_beginAccess();
  *(v0 + 136) = v4;
  *(v0 + 144) = &protocol witness table for SiriSuggestions.IntentType;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  v7 = *(*(v4 - 8) + 16);
  v7(boxed_opaque_existential_1, v5, v4);
  *(v0 + 32) = 0x4154456572616853;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = 0xD00000000000001BLL;
  *(v0 + 56) = 0x800000000000E080;
  *(v0 + 64) = v12;
  *(v0 + 72) = v13;
  *(v0 + 80) = v3;
  *(v0 + 88) = &async function pointer to implicit closure #1 in static SiriGeoSuggestion.ShareETA.getter;
  *(v0 + 96) = 0;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = partial apply for implicit closure #2 in static SiriGeoSuggestion.ShareETA.getter;
  *(v0 + 176) = 0;
  static SiriGeoSuggestion.PlayMusic.getter(v0 + 184);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_D9C0;

  static VersionedInvocations.HintsDawnC.getter();
  if (one-time initialization token for playMusicIntent != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static SiriGeoSuggestion.playMusicIntent);
  swift_beginAccess();
  *(v0 + 440) = v4;
  *(v0 + 448) = &protocol witness table for SiriSuggestions.IntentType;
  v10 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  v7(v10, v9, v4);
  *(v0 + 336) = 0x7377654E79616C50;
  *(v0 + 344) = 0xE800000000000000;
  *(v0 + 352) = 0xD00000000000001BLL;
  *(v0 + 360) = 0x800000000000E0A0;
  *(v0 + 368) = v12;
  *(v0 + 376) = v13;
  *(v0 + 384) = v8;
  *(v0 + 392) = &async function pointer to implicit closure #1 in static SiriGeoSuggestion.PlayNews.getter;
  *(v0 + 400) = 0;
  *(v0 + 408) = _swiftEmptyArrayStorage;
  *(v0 + 456) = 0x4E65685479616C70;
  *(v0 + 464) = 0xEB00000000737765;
  *(v0 + 472) = closure #1 in static SiriGeoSuggestion.PlayMusic.getter;
  *(v0 + 480) = 0;
  return v0;
}

uint64_t SiriGeoSuggestion.Parameter.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriGeoSuggestion.catIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriGeoSuggestion.isEligible.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SiriGeoSuggestion.loggingIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t SiriGeoSuggestion.getParams.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

__n128 SiriGeoSuggestion.Parameter.init(name:resolver:resolveParam:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 56) = a4;
  return result;
}

__n128 SiriGeoSuggestion.init(identifier:catIdentifier:enabledLocales:enabledDevices:validInvocations:isEligible:parameters:intentIdentifier:loggingIdentifier:getParams:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14, uint64_t a15)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v16 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v16;
  *(a9 + 112) = *(a12 + 32);
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 144) = a15;
  return result;
}

uint64_t one-time initialization function for shareETAIntent()
{
  v0 = type metadata accessor for SiriSuggestions.IntentType();
  __swift_allocate_value_buffer(v0, static SiriGeoSuggestion.shareETAIntent);
  v1 = __swift_project_value_buffer(v0, static SiriGeoSuggestion.shareETAIntent);
  *v1 = 0xD000000000000021;
  v1[1] = 0x800000000000E0C0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t (*static SiriGeoSuggestion.shareETAIntent.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shareETAIntent != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SiriSuggestions.IntentType();
  __swift_project_value_buffer(v1, static SiriGeoSuggestion.shareETAIntent);
  swift_beginAccess();
  return static SiriGeoSuggestion.playMusicIntent.modify;
}

uint64_t one-time initialization function for playMusicIntent()
{
  v0 = type metadata accessor for SiriSuggestions.IntentType();
  __swift_allocate_value_buffer(v0, static SiriGeoSuggestion.playMusicIntent);
  __swift_project_value_buffer(v0, static SiriGeoSuggestion.playMusicIntent);
  type metadata accessor for INPlayMediaIntent();
  return static SiriSuggestions.IntentType.inIntent(intentType:)();
}

uint64_t SiriGeoSuggestion.shareETAIntent.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SiriSuggestions.IntentType();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static SiriGeoSuggestion.shareETAIntent.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SiriSuggestions.IntentType();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t static SiriGeoSuggestion.shareETAIntent.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SiriSuggestions.IntentType();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static SiriGeoSuggestion.playMusicIntent.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for playMusicIntent != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SiriSuggestions.IntentType();
  __swift_project_value_buffer(v1, static SiriGeoSuggestion.playMusicIntent);
  swift_beginAccess();
  return static SiriGeoSuggestion.playMusicIntent.modify;
}

uint64_t static SiriGeoSuggestion.navigateVerb.getter()
{
  swift_beginAccess();
  v0 = *static SiriGeoSuggestion.navigateVerb;

  return v0;
}

uint64_t static SiriGeoSuggestion.navigateVerb.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static SiriGeoSuggestion.navigateVerb = a1;
  *&static SiriGeoSuggestion.navigateVerb[8] = a2;
}

uint64_t Action.isNavigating.getter()
{
  v0 = Action.params.getter();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(1651664246, 0xE400000000000000), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    v5 = *v3;
    v4 = v3[1];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_beginAccess();
  if (v4)
  {
    if (v5 == *static SiriGeoSuggestion.navigateVerb && v4 == *&static SiriGeoSuggestion.navigateVerb[8])
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of SiriSuggestions.IntentMatchable?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriGeoSuggestion(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriGeoSuggestion(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriGeoSuggestion.Parameter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriGeoSuggestion.Parameter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

unint64_t type metadata accessor for INPlayMediaIntent()
{
  result = lazy cache variable for type metadata for INPlayMediaIntent;
  if (!lazy cache variable for type metadata for INPlayMediaIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPlayMediaIntent);
  }

  return result;
}

double static SiriGeoSuggestion.PlayMusic.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for t41Locales != -1)
  {
    swift_once();
  }

  v2 = static SiriGeoSuggestionsConstants.t41Locales;
  v3 = one-time initialization token for kCarPlayDevice;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static SiriGeoSuggestionsConstants.kCarPlayDevice;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  type metadata accessor for VersionedInvocation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_D9C0;

  static VersionedInvocations.HintsDawnC.getter();
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = 0x6973754D79616C50;
  *(a1 + 8) = 0xE900000000000063;
  *(a1 + 16) = 0xD00000000000001CLL;
  *(a1 + 24) = 0x800000000000E0F0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = &async function pointer to implicit closure #1 in static SiriGeoSuggestion.PlayMusic.getter;
  *(a1 + 64) = 0;
  *(a1 + 72) = _swiftEmptyArrayStorage;
  result = 9.3089372e199;
  *(a1 + 120) = xmmword_DB60;
  *(a1 + 136) = closure #1 in static SiriGeoSuggestion.PlayMusic.getter;
  *(a1 + 144) = 0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static SiriGeoSuggestion.PlayNews.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for t41Locales != -1)
  {
    swift_once();
  }

  v2 = static SiriGeoSuggestionsConstants.t41Locales;
  v3 = one-time initialization token for kCarPlayDevice;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static SiriGeoSuggestionsConstants.kCarPlayDevice;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  type metadata accessor for VersionedInvocation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_D9C0;

  static VersionedInvocations.HintsDawnC.getter();
  if (one-time initialization token for playMusicIntent != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SiriSuggestions.IntentType();
  v7 = __swift_project_value_buffer(v6, static SiriGeoSuggestion.playMusicIntent);
  swift_beginAccess();
  *(a1 + 104) = v6;
  *(a1 + 112) = &protocol witness table for SiriSuggestions.IntentType;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 80));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  *a1 = 0x7377654E79616C50;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 16) = 0xD00000000000001BLL;
  *(a1 + 24) = 0x800000000000E0A0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = &async function pointer to implicit closure #1 in static SiriGeoSuggestion.PlayNews.getter;
  *(a1 + 64) = 0;
  *(a1 + 72) = _swiftEmptyArrayStorage;
  result = 4.61716887e69;
  *(a1 + 120) = xmmword_DB90;
  *(a1 + 136) = closure #1 in static SiriGeoSuggestion.PlayMusic.getter;
  *(a1 + 144) = 0;
  return result;
}

uint64_t static SiriGeoSuggestion.ShareETA.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for t41Locales != -1)
  {
    swift_once();
  }

  v2 = static SiriGeoSuggestionsConstants.t41Locales;
  v3 = one-time initialization token for kCarPlayDevice;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static SiriGeoSuggestionsConstants.kCarPlayDevice;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  type metadata accessor for VersionedInvocation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_D9C0;

  static VersionedInvocations.HintsDawnC.getter();
  if (one-time initialization token for shareETAIntent != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SiriSuggestions.IntentType();
  v7 = __swift_project_value_buffer(v6, static SiriGeoSuggestion.shareETAIntent);
  swift_beginAccess();
  a1[13] = v6;
  a1[14] = &protocol witness table for SiriSuggestions.IntentType;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1 + 10);
  result = (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  *a1 = 0x4154456572616853;
  a1[1] = 0xE800000000000000;
  a1[2] = 0xD00000000000001BLL;
  a1[3] = 0x800000000000E080;
  a1[4] = v2;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = &async function pointer to implicit closure #1 in static SiriGeoSuggestion.ShareETA.getter;
  a1[8] = 0;
  a1[9] = _swiftEmptyArrayStorage;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = implicit closure #2 in static SiriGeoSuggestion.ShareETA.getter;
  a1[18] = 0;
  return result;
}

uint64_t implicit closure #1 in static SiriGeoSuggestion.ShareETA.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = StandardSuggestionSignals.isNotSharingETA.getter;

  return specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:)(a1, a2, a3, a4);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Decodable & Encodable & Sendable(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of Action?(a1, &_sSe_SEs8SendablepSgMd, &_sSe_SEs8SendablepSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of Action?(v9, &_sSe_SEs8SendablepSgMd, &_sSe_SEs8SendablepSgMR);
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

    outlined init with take of Decodable & Encodable & Sendable((*(v10 + 56) + 48 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        outlined init with take of Decodable & Encodable & Sendable(v24, v34);
      }

      else
      {
        outlined init with copy of Decodable & Encodable & Sendable(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Decodable & Encodable & Sendable(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Decodable & Encodable & Sendable(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Decodable & Encodable & Sendable(a4, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        outlined init with copy of Decodable & Encodable & Sendable(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Decodable & Encodable & Sendable(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[57] = a3;
  v4[58] = a4;
  v4[56] = a1;
  return _swift_task_switch(specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:), 0, 0);
}

uint64_t specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:)()
{
  v55 = v0;
  if ((Action.isNavigating.getter() & 1) == 0)
  {
    goto LABEL_19;
  }

  v1 = **(v0 + 456);
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000000000DF40), (v3 & 1) == 0) || (outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v2, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v4)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (v5 == v6 && v4 == v7)
  {

LABEL_10:
    if (*(v1 + 16))
    {
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000000DF60);
      if (v10)
      {
        outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v9, v0 + 64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
        if (swift_dynamicCast())
        {
          v12 = *(v0 + 384);
          v11 = *(v0 + 392);
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v11)
          {
            if (v12 == v13 && v11 == v14)
            {
            }

            else
            {
              v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v17 & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            if (!*(v1 + 16))
            {
              goto LABEL_19;
            }

            v18 = specialized __RawDictionaryStorage.find<A>(_:)(0x4C746E6572727563, 0xEA00000000007461);
            if ((v19 & 1) == 0)
            {
              goto LABEL_19;
            }

            outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v18, v0 + 112);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_19;
            }

            if (!*(v1 + 16))
            {
              goto LABEL_19;
            }

            v20 = *(v0 + 416);
            v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x4C746E6572727563, 0xEB00000000676E6FLL);
            if ((v22 & 1) == 0)
            {
              goto LABEL_19;
            }

            outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v21, v0 + 160);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_19;
            }

            if (!*(v1 + 16))
            {
              goto LABEL_19;
            }

            v23 = *(v0 + 424);
            v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x74616E6974736564, 0xEE0074614C6E6F69);
            if ((v25 & 1) == 0)
            {
              goto LABEL_19;
            }

            outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v24, v0 + 208);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_19;
            }

            if (!*(v1 + 16))
            {
              goto LABEL_19;
            }

            v26 = *(v0 + 432);
            v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x74616E6974736564, 0xEF676E6F4C6E6F69);
            if ((v28 & 1) == 0)
            {
              goto LABEL_19;
            }

            outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v27, v0 + 256);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_19;
            }

            v29 = *(v0 + 440);
            v30 = [objc_allocWithZone(CLLocation) initWithLatitude:v20 longitude:v23];
            *(v0 + 472) = v30;
            v31 = [objc_allocWithZone(CLLocation) initWithLatitude:v26 longitude:v29];
            *(v0 + 480) = v31;
            [v30 distanceFromLocation:v31];
            if (v32 <= 6440.0)
            {
              goto LABEL_45;
            }

            v33 = *(v0 + 464);
            v34 = v33[3];
            v35 = v33[4];
            __swift_project_boxed_opaque_existential_1(v33, v34);
            if (((*(v35 + 40))(v34, v35) & 1) == 0)
            {
              goto LABEL_45;
            }

            if (!*(v1 + 16))
            {
              goto LABEL_45;
            }

            v36 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000000DF20);
            if ((v37 & 1) == 0)
            {
              goto LABEL_45;
            }

            outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v36, v0 + 304);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_45;
            }

            v38 = *(v0 + 360);
            *(v0 + 368) = *(v0 + 352);
            *(v0 + 376) = v38;
            lazy protocol witness table accessor for type String and conformance String();
            v39 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

            if (*(v39 + 16))
            {
              v52 = *(v0 + 464);

              v40 = static String._fromSubstring(_:)();
              v42 = v41;

              v43 = v33[3];
              v44 = v33[4];
              __swift_project_boxed_opaque_existential_1(v52, v43);
              v45 = (*(v44 + 64))(v40, v42, v43, v44);
              v47 = v46;

              if (v47)
              {
                v48 = *(v0 + 464);
                v54[3] = &type metadata for String;
                v54[4] = &protocol witness table for String;
                v54[5] = &protocol witness table for String;
                v54[0] = v45;
                v54[1] = v47;
                specialized Dictionary.subscript.setter(v54, 0xD000000000000012, 0x800000000000DF90);
                v49 = v33[3];
                v50 = v33[4];
                __swift_project_boxed_opaque_existential_1(v48, v49);
                v53 = (*(v50 + 56) + **(v50 + 56));
                v51 = swift_task_alloc();
                *(v0 + 488) = v51;
                *v51 = v0;
                v51[1] = specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:);

                return v53(v49, v50);
              }

LABEL_45:

              goto LABEL_19;
            }
          }

          goto LABEL_18;
        }
      }
    }

    goto LABEL_17;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_19:
  v15 = *(v0 + 8);

  return v15(0);
}

{
  v1 = *(v0 + 472);

  v2 = *(v0 + 496);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:)(char a1)
{
  *(*v1 + 496) = a1;

  return _swift_task_switch(specialized static SiriGeoSuggestion.validateShareETA(_:environment:_:signals:), 0, 0);
}

unint64_t specialized static SiriGeoSuggestion.getShareETAParams(_:environment:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_D9C0;
  *(inited + 32) = 0x4E746361746E6F63;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = swift_allocObject();
  *(inited + 48) = v5;
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000000000DF90), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v6, v5 + 16);
  }

  else
  {
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Action?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v8;
}

uint64_t sub_76FC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  return _swift_task_switch(static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:), 0, 0);
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = static SiriGeoSuggestionsConstants.kOwner;
  v0[24] = type metadata accessor for DomainOwner();
  v0[25] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[21] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:);

  return v5(v0 + 21);
}

{
  v1 = static SiriGeoSuggestion.AllSuggestions.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of SiriGeoSuggestion(v3, v0 + 16);
      *(swift_task_alloc() + 16) = v0 + 16;
      dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:catId:builder:)();

      outlined destroy of SiriGeoSuggestion(v0 + 16);
      v3 += 152;
      --v2;
    }

    while (v2);
  }

  outlined init with copy of SuggestionsSignals(*(v0 + 304), v0 + 208);
  v4 = type metadata accessor for SiriGeoSuggestionsGenerator();
  v5 = swift_allocObject();
  _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0((v0 + 208), v5 + 16);
  *(v0 + 272) = v4;
  *(v0 + 280) = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type SiriGeoSuggestionsGenerator and conformance SiriGeoSuggestionsGenerator, type metadata accessor for SiriGeoSuggestionsGenerator, &protocol conformance descriptor for SiriGeoSuggestionsGenerator);
  *(v0 + 248) = v5;

  dispatch thunk of SuggestionOwnerDefinitionBuilder.withConversationalGenerator(_:)();

  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, _ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_D9C0;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 320) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 168));

  return _swift_task_switch(static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:), 0, 0);
}

uint64_t closure #1 in closure #1 in static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v32 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v35[0] = v4;
  *&v35[1] = v32;
  __swift_allocate_boxed_opaque_existential_1(&v33);
  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:)();
  v5 = v35[2];
  v32 = *v35;
  __swift_project_boxed_opaque_existential_1(&v33, v35[0]);
  v40 = v32;
  v41 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v39);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();
  v6 = v41;
  v32 = v40;
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  v37 = v32;
  v38 = v6;
  __swift_allocate_boxed_opaque_existential_1(v36);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();
  v7 = v37;
  v8 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v9 = *(v7 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SuggestionDetailsBuilder.templateRoot(_:)();
  (*(v9 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(&v39);
  __swift_destroy_boxed_opaque_existential_0(&v33);
  outlined init with copy of SiriSuggestions.IntentMatchable?((a2 + 10), &v39, &_s18SiriSuggestionsKit0aB0O15IntentMatchable_pSgMd, &_s18SiriSuggestionsKit0aB0O15IntentMatchable_pSgMR);
  if (v40)
  {
    _s18SiriSuggestionsKit19CandidateSuggestion_pWOb_0(&v39, &v33);
    v12 = *(a1 + 24);
    v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = *(v12 - 8);
    __chkstk_darwin(v13);
    v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
    (*(v14 + 8))(v16, v12);
    result = __swift_destroy_boxed_opaque_existential_0(&v33);
    if (!a2[16])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = outlined destroy of Action?(&v39, &_s18SiriSuggestionsKit0aB0O15IntentMatchable_pSgMd, &_s18SiriSuggestionsKit0aB0O15IntentMatchable_pSgMR);
  if (a2[16])
  {
LABEL_3:
    v18 = *(a1 + 24);
    v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = *(v18 - 8);
    __chkstk_darwin(v19);
    v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    dispatch thunk of SuggestionDetailsBuilder.loggingIdentifier(_:)();
    result = (*(v20 + 8))(v22, v18);
  }

LABEL_4:
  v23 = a2[9];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + 32;
    do
    {
      outlined init with copy of SiriGeoSuggestion.Parameter(v25, &v33);
      v26 = *(a1 + 24);
      v31[1] = *(a1 + 40);
      v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
      *&v32 = v31;
      v28 = *(v26 - 8);
      __chkstk_darwin(v27);
      v30 = v31 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of SiriSuggestions.IntentMatchable?(&v34, &v39, &_s18SiriSuggestionsKit8Resolver_pSgMd, "\\\b");

      outlined destroy of SiriGeoSuggestion.Parameter(&v33);
      SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

      outlined destroy of Action?(&v39, &_s18SiriSuggestionsKit8Resolver_pSgMd, "\\\b");
      result = (*(v28 + 8))(v30, v26);
      v25 += 64;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Dictionary<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SiriGeoSuggestion.ExecutionParameter.rawValue.getter(a1);
  Dictionary.subscript.getter();
}

uint64_t SiriGeoSuggestion.ExecutionParameter.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x4C746E6572727563;
    v5 = 0xD000000000000019;
    if (a1 != 8)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0x4C746E6572727563;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x74616E6974736564;
    v2 = 0xD000000000000010;
    if (a1 == 2)
    {
      v1 = 0xD000000000000010;
    }

    if (a1)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriGeoSuggestion.ExecutionParameter(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SiriGeoSuggestion.ExecutionParameter.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SiriGeoSuggestion.ExecutionParameter.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriGeoSuggestion.ExecutionParameter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SiriGeoSuggestion.ExecutionParameter.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriGeoSuggestion.ExecutionParameter(uint64_t a1)
{
  SiriGeoSuggestion.ExecutionParameter.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriGeoSuggestion.ExecutionParameter(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SiriGeoSuggestion.ExecutionParameter.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriGeoSuggestion.ExecutionParameter@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriGeoSuggestion.ExecutionParameter.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriGeoSuggestion.ExecutionParameter@<X0>(uint64_t *a1@<X8>)
{
  result = SiriGeoSuggestion.ExecutionParameter.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized SiriGeoSuggestion.ExecutionParameter.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriGeoSuggestion.ExecutionParameter.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SiriGeoSuggestion.ExecutionParameter and conformance SiriGeoSuggestion.ExecutionParameter()
{
  result = lazy protocol witness table cache variable for type SiriGeoSuggestion.ExecutionParameter and conformance SiriGeoSuggestion.ExecutionParameter;
  if (!lazy protocol witness table cache variable for type SiriGeoSuggestion.ExecutionParameter and conformance SiriGeoSuggestion.ExecutionParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriGeoSuggestion.ExecutionParameter and conformance SiriGeoSuggestion.ExecutionParameter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriGeoSuggestion.ExecutionParameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriGeoSuggestion.ExecutionParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(static SiriGeoSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v0[5] = &type metadata for StandardSuggestionSignals;
  v0[6] = &protocol witness table for StandardSuggestionSignals;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = static SiriGeoSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v2 = v0[8];
  v3 = v0[7];

  return static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)(v3, v2, (v0 + 2));
}

uint64_t static SiriGeoSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;

  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance SiriGeoSuggestionsPluginOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance SiriGeoSuggestionsPluginOwnerDefinitionFactory, 0, 0);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance SiriGeoSuggestionsPluginOwnerDefinitionFactory()
{
  v0[5] = &type metadata for StandardSuggestionSignals;
  v0[6] = &protocol witness table for StandardSuggestionSignals;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance SiriGeoSuggestionsPluginOwnerDefinitionFactory;
  v2 = v0[8];
  v3 = v0[7];

  return static SiriGeoSuggestionsPluginOwnerDefinitionFactoryBase.createOwnerDefinitionsImpl(builderFactory:signals:)(v3, v2, (v0 + 2));
}

uint64_t *SiriGeoSuggestionsConstants.t41Locales.unsafeMutableAddressor()
{
  if (one-time initialization token for t41Locales != -1)
  {
    swift_once();
  }

  return &static SiriGeoSuggestionsConstants.t41Locales;
}

uint64_t *SiriGeoSuggestionsConstants.kCarPlayDevice.unsafeMutableAddressor()
{
  if (one-time initialization token for kCarPlayDevice != -1)
  {
    swift_once();
  }

  return &static SiriGeoSuggestionsConstants.kCarPlayDevice;
}

uint64_t *SiriGeoSuggestionsConstants.kOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }

  return &static SiriGeoSuggestionsConstants.kOwner;
}

uint64_t one-time initialization function for t41Locales()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
  type metadata accessor for Locale();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_DE40;
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
  static SiriGeoSuggestionsConstants.t41Locales = v0;
  return result;
}

uint64_t one-time initialization function for kAllDevices()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, "h\a");
  v0 = type metadata accessor for DeviceType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_DE50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeviceType.iPhone(_:), v0);
  v6(v5 + v2, enum case for DeviceType.iPad(_:), v0);
  v6(v5 + 2 * v2, enum case for DeviceType.watch(_:), v0);
  v6(v5 + 3 * v2, enum case for DeviceType.pod(_:), v0);
  v6(v5 + 4 * v2, enum case for DeviceType.mac(_:), v0);
  v6(v5 + 5 * v2, enum case for DeviceType.homepod(_:), v0);
  v6(v5 + 6 * v2, enum case for DeviceType.appleTV(_:), v0);
  result = (v6)(v5 + 7 * v2, enum case for DeviceType.carPlay(_:), v0);
  static SiriGeoSuggestionsConstants.kAllDevices = v4;
  return result;
}

uint64_t *SiriGeoSuggestionsConstants.kAllDevices.unsafeMutableAddressor()
{
  if (one-time initialization token for kAllDevices != -1)
  {
    swift_once();
  }

  return &static SiriGeoSuggestionsConstants.kAllDevices;
}

uint64_t one-time initialization function for kCarPlayDevice()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, "h\a");
  v0 = type metadata accessor for DeviceType();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D9C0;
  result = (*(v1 + 104))(v3 + v2, enum case for DeviceType.carPlay(_:), v0);
  static SiriGeoSuggestionsConstants.kCarPlayDevice = v3;
  return result;
}

uint64_t static SiriGeoSuggestionsConstants.t41Locales.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t one-time initialization function for kOwner()
{
  type metadata accessor for DomainOwner();
  swift_allocObject();
  result = DomainOwner.init(_:)();
  static SiriGeoSuggestionsConstants.kOwner = result;
  return result;
}

uint64_t static SiriGeoSuggestionsConstants.kOwner.getter()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }
}

uint64_t static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a1;
  return _swift_task_switch(static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:), 0, 0);
}

uint64_t static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:)()
{
  if ((Action.isNavigating.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  v1 = **(v0 + 152);
  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000000DF20);
  if ((v3 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v2, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(v0 + 120);
  *(v0 + 168) = *(v0 + 112);
  *(v0 + 176) = v4;
  if (*(v1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000000DF60), (v6 & 1) != 0) && (outlined init with copy of Decodable & Encodable & Sendable(*(v1 + 56) + 48 * v5, v0 + 64), (swift_dynamicCast() & 1) != 0))
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v7)
    {
      if (v8 == v9 && v7 == v10)
      {

LABEL_19:
        v14 = *(v0 + 160);
        v15 = v14[3];
        v16 = v14[4];
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v18 = (*(v16 + 8) + **(v16 + 8));
        v17 = swift_task_alloc();
        *(v0 + 184) = v17;
        *v17 = v0;
        v17[1] = static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:);

        return v18(v15, v16);
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_14:

LABEL_15:
  v11 = *(v0 + 8);

  return v11(0);
}

{
  if (*(v0 + 216) == 1)
  {
    v1 = *(v0 + 160);
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v7 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:);

    return v7(v2, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0);
  }
}

{
  if (*(v0 + 217) == 1)
  {
    v1 = *(v0 + 160);
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v7 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:);

    return v7(v2, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0);
  }
}

{
  if (*(v0 + 218) == 1)
  {
    v1 = *(v0 + 160);
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v7 = (*(v3 + 48) + **(v3 + 48));
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:);

    return v7(v2, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0);
  }
}

{
  v1 = *(v0 + 176);
  if (*(v0 + 219) == 1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = v2[3];
    v5 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v4);
    v6 = (*(v5 + 72))(v3, v1, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v6 & 1);
}

uint64_t static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:)(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:), 0, 0);
}

{
  *(*v1 + 217) = a1;

  return _swift_task_switch(static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:), 0, 0);
}

{
  *(*v1 + 218) = a1;

  return _swift_task_switch(static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:), 0, 0);
}

{
  *(*v1 + 219) = a1;

  return _swift_task_switch(static SiriGeoSuggestion.validatePlayAudio(_:environment:_:signals:), 0, 0);
}

uint64_t SuggestionsLog.unsafeMutableAddressor()
{
  if (one-time initialization token for SuggestionsLog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, SuggestionsLog);
}

uint64_t one-time initialization function for SuggestionsLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, SuggestionsLog);
  __swift_project_value_buffer(v0, SuggestionsLog);
  return Logger.init(subsystem:category:)();
}

uint64_t protocol witness for SuggestionsSignals.isNotRegularSiriMusicUser.getter in conformance StandardSuggestionSignals()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SuggestionsSignals.isNotRegularSiriMusicUser.getter in conformance StandardSuggestionSignals;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000019, 0x800000000000DFC0, closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter, 0, &type metadata for Bool);
}

{

  return _swift_task_switch(protocol witness for SuggestionsSignals.isNotRegularSiriMusicUser.getter in conformance StandardSuggestionSignals, 0, 0);
}

uint64_t StandardSuggestionSignals.isNotRegularSiriMusicUser.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = StandardSuggestionSignals.isNotRegularSiriMusicUser.getter;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000019, 0x800000000000DFC0, closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter, 0, &type metadata for Bool);
}

{

  return _swift_task_switch(StandardSuggestionSignals.isNotRegularSiriMusicUser.getter, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

uint64_t StandardSuggestionSignals.isRegularMusicListener.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SuggestionsSignals.isNotRegularSiriMusicUser.getter in conformance StandardSuggestionSignals;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000016, 0x800000000000E200, closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter, 0, &type metadata for Bool);
}

uint64_t protocol witness for SuggestionsSignals.isAppleMusicSubscriber.getter in conformance StandardSuggestionSignals()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SuggestionsSignals.isNotSharingETA.getter in conformance StandardSuggestionSignals;

  return specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter();
}

uint64_t StandardSuggestionSignals.isAppleMusicSubscriber.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = StandardSuggestionSignals.isNotSharingETA.getter;

  return specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter();
}

uint64_t StandardSuggestionSignals.isNotListeningToMusic.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SuggestionsSignals.isNotRegularSiriMusicUser.getter in conformance StandardSuggestionSignals;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000015, 0x800000000000E220, closure #1 in StandardSuggestionSignals.isNotListeningToMusic.getter, 0, &type metadata for Bool);
}

void closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() intent];
  static Date.distantPast.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = [v11 publisherFromStartTime:v13];

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v2);
  *(v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v25 = partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter;
  v26 = v17;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
  v24 = &block_descriptor_30;
  v18 = _Block_copy(&aBlock);

  v25 = partial apply for closure #2 in closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter;
  v26 = v15;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BMStoreEvent<BMIntentEvent>) -> (@unowned Bool);
  v24 = &block_descriptor_33;
  v19 = _Block_copy(&aBlock);

  v20 = [v14 sinkWithCompletion:v18 shouldContinue:v19];
  _Block_release(v19);
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in StandardSuggestionSignals.isNotRegularSiriMusicUser.getter(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    if (([v3 donatedBySiri] & 1) != 0 && (v5 = objc_msgSend(v4, "intentClass")) != 0)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == 0xD000000000000011 && 0x800000000000E380 == v9)
      {

LABEL_14:
        swift_beginAccess();
        result = 0;
        *(a2 + 16) = 1;
        return result;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatus?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatus(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() appLaunch];
  static Date.distantPast.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = [v11 publisherFromStartTime:v13];

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v2);
  *(v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v25 = partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter;
  v26 = v17;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
  v24 = &block_descriptor_20;
  v18 = _Block_copy(&aBlock);

  v25 = partial apply for closure #2 in closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter;
  v26 = v15;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BMStoreEvent<BMIntentEvent>) -> (@unowned Bool);
  v24 = &block_descriptor_23;
  v19 = _Block_copy(&aBlock);

  v20 = [v14 sinkWithCompletion:v18 shouldContinue:v19];
  _Block_release(v19);
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    if ([v3 launchType] != &dword_0 + 1)
    {

      return 1;
    }

    v5 = [v4 bundleID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v6 == 0x6C7070612E6D6F63 && v8 == 0xEF636973754D2E65)
    {
      goto LABEL_16;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
LABEL_8:

LABEL_17:
      swift_beginAccess();
      result = 0;
      *(a2 + 16) = 1;
      return result;
    }

    v12 = [v4 bundleID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == 0xD000000000000012 && 0x800000000000E2F0 == v15)
    {
      goto LABEL_16;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_8;
    }

    v17 = [v4 bundleID];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == 0x646E61702E6D6F63 && v20 == 0xEB0000000061726FLL)
    {
      goto LABEL_16;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_8;
    }

    v22 = [v4 bundleID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == 0xD000000000000020 && 0x800000000000E310 == v25)
    {
      goto LABEL_16;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_8;
    }

    v27 = [v4 bundleID];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == 0xD000000000000010 && 0x800000000000E340 == v30)
    {
LABEL_16:

      goto LABEL_17;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_8;
    }

    v32 = [v4 bundleID];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v33 == 0xD00000000000001BLL && 0x800000000000E360 == v35)
    {

      goto LABEL_8;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_17;
    }
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BMStoreEvent<BMIntentEvent>) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void closure #1 in StandardSuggestionSignals.isNotListeningToMusic.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultObserver];
  if (v6)
  {
    v7 = v6;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v5, v2);
    aBlock[4] = partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isNotListeningToMusic.getter;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned AFMediaPlaybackState) -> ();
    aBlock[3] = &block_descriptor_0;
    v10 = _Block_copy(aBlock);

    [v7 getPlaybackStateWithCompletion:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned AFMediaPlaybackState) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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
    return _swiftEmptyArrayStorage;
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
          return _swiftEmptyArrayStorage;
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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
    v10 = _swiftEmptyArrayStorage;
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t specialized StandardSuggestionSignals.isNotUsingVoiceGuidance.getter()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 integerForKey:v4];

  return v5 != &dword_0 + 2;
}

uint64_t specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter()
{
  return _swift_task_switch(specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter, 0, 0);
}

{
  v1 = [objc_opt_self() sharedStatusController];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo25ICMusicSubscriptionStatusCs5Error_pGMd, &_sSccySo25ICMusicSubscriptionStatusCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatus?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatus;
  v0[13] = &block_descriptor_11;
  v0[14] = v2;
  [v1 getSubscriptionStatusWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter;
  }

  else
  {
    v2 = specialized StandardSuggestionSignals.isAppleMusicSubscriber.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[23];
  v2 = v0[21];
  v3 = [v2 statusType];

  v4 = v0[1];

  return v4(v3 == &dword_0 + 1);
}

{
  v13 = v0;
  v1 = *(v0 + 184);
  swift_willThrow();

  if (one-time initialization token for SuggestionsLog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, SuggestionsLog);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to retreive Apple Music Subscription with error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t specialized StandardSuggestionSignals.isMeAddress(label:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D830;
  *(v3 + 32) = CNContactPostalAddressesKey;
  v4 = CNContactPostalAddressesKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32[0] = 0;
  v6 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:v32];

  if (v6)
  {
    v7 = v32[0];
    v8 = [v6 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 label];
        if (v15)
        {
          v16 = v15;
          v17 = [objc_opt_self() localizedStringForLabel:v15];

          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v32[0] = v18;
          v32[1] = v20;
          lazy protocol witness table accessor for type String and conformance String();
          v21 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (!v21)
          {

            return 1;
          }
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  else
  {
    v22 = v32[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for SuggestionsLog != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, SuggestionsLog);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v32);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "error retrieving me contact: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_CAD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isNotListeningToMusic.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);

  return closure #1 in closure #1 in StandardSuggestionSignals.isNotListeningToMusic.getter(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in StandardSuggestionSignals.isRegularMusicListener.getter(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}