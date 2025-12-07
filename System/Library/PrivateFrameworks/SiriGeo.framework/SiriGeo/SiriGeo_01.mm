id INStopShareETAIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INStopShareETAIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized INStopShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a1;
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ();
    v10[5] = v6;
    aBlock[4] = closure #1 in INStopShareETAIntentHandler.resolveRecipients(for:with:)partial apply;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_59;
    v11 = _Block_copy(aBlock);
    v12 = a2;
    v13 = a1;

    [v9 performBlockAfterInitialSync_];
    _Block_release(v11);
  }

  else
  {
    v14 = *&a2[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266E03000, v14, v15, "could not get msp shared instance to check if the there is a match with receivers", v16, 2u);
      MEMORY[0x26D5F3640](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_266E21F00;
    *(v17 + 32) = [objc_opt_self() unsupportedForReason_];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETARecipientResolutionResult, 0x277CD4200);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, isa);
  }
}

void specialized INStopShareETAIntentHandler.confirm(intent:completion:)(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
  _Block_copy(a2);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E03000, v5, v6, "stop sharing ETA - confirm", v7, 2u);
    MEMORY[0x26D5F3640](v7, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:1 userActivity:0];
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v16;
    v10[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned INShareETAIntentResponse) -> ()partial apply;
    v10[5] = v4;
    aBlock[4] = closure #1 in INStopShareETAIntentHandler.confirm(intent:completion:)partial apply;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_49_0;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = v16;

    [v9 performBlockAfterInitialSync_];
    _Block_release(v11);
  }

  else
  {
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266E03000, v5, v14, "failed to retrieve shared instance", v15, 2u);
      MEMORY[0x26D5F3640](v15, -1, -1);
    }

    (a2)[2](a2, v16);
  }
}

unint64_t specialized INStopShareETAIntentHandler.convertSharedTripToRecipients(_:)(unint64_t result)
{
  v1 = result;
  v14 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x26D5F3000](result);
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D5F2F90](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 displayName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if ([v5 isPhoneNumber])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v11 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      v12 = MEMORY[0x26D5F2D60](v7, v9);

      v13 = [v11 initWithValue:v12 type:v10];

      [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v13 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
      MEMORY[0x26D5F2E10]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v2 != v3);
    return v14;
  }

  return result;
}

void specialized INStopShareETAIntentHandler.handle(intent:completion:)(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> ();
  v7[4] = v6;
  v8 = objc_opt_self();
  _Block_copy(a3);

  v9 = a2;
  v10 = [v8 sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = closure #1 in INStopShareETAIntentHandler.handle(intent:completion:)partial apply;
    v12[4] = v7;
    v12[5] = a1;
    v19[4] = closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:)partial apply;
    v19[5] = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    v19[3] = &block_descriptor_38;
    v13 = _Block_copy(v19);
    v14 = v9;

    v15 = a1;

    [v11 performBlockAfterInitialSync_];

    _Block_release(v13);
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v16, &dword_266E03000, *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject], "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v17 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:4 userActivity:0];
    v18 = *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact];
    *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact] = 0;

    (a3)[2](a3, v17);
  }
}

uint64_t sub_266E18958()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in INStopShareETAIntentHandler.handle(intent:completion:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact);
  *(v3 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact) = 0;

  return v4(a1);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(unint64_t a1, void *a2, char *a3, void (*a4)(id), uint64_t a5)
{
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    v15 = static os_log_type_t.error.getter();
    v16 = *&a3[OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject];
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v72 = a2;
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(describing:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_266E03000, v16, v15, "error fetching vehicle events: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5F3640](v18, -1, -1);
      MEMORY[0x26D5F3640](v17, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    (a4)();

    return;
  }

  static os_signpost_type_t.end.getter();
  v24 = *&a3[OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v25 = *(v11 + 8);
  v25(v13, v10);
  if (!a1)
  {
    v52 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_266E03000, v24, v53, "uh oh, no cars", v54, 2u);
      MEMORY[0x26D5F3640](v54, -1, -1);
    }

    [v52 setParkingLocation_];
    v55 = v52;
    goto LABEL_24;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_22:

LABEL_23:
    v57 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_266E21E90;
    v59 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RTVehicleEvent, 0x277D01420);
    v60 = MEMORY[0x26D5F2E60](a1, v59);
    v62 = v61;

    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 32) = v60;
    *(v58 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &dword_266E03000, v24, "Cars have no location information: %@", 37, 2, v58);

    v55 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    v52 = v55;
LABEL_24:
    a4(v55);

    return;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v56 = a1;
  }

  if (!MEMORY[0x26D5F3000](v56))
  {
    goto LABEL_22;
  }

LABEL_8:
  v70 = v25;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x26D5F2F90](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = *(a1 + 32);

    v27 = v26;
  }

  v28 = v27;
  v29 = [v27 location];

  v71 = v29;
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = v71;
  [v71 latitude];
  v32 = v31;
  [v30 longitude];
  v69 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v32 longitude:v33];
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v34))
  {
    v35 = swift_slowAlloc();
    v65 = v35;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v35 = 136315138;
    v36 = v69;
    v66 = v34;
    v37 = v36;
    v38 = [v36 description];
    v68 = a5;
    v39 = v38;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    a5 = v68;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v41, aBlock);

    v43 = v65;
    *(v65 + 1) = v42;
    v44 = v43;
    _os_log_impl(&dword_266E03000, v24, v66, "with vehicle location: %s", v43, 0xCu);
    v45 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x26D5F3640](v45, -1, -1);
    MEMORY[0x26D5F3640](v44, -1, -1);
  }

  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v70(v13, v10);
  v46 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v47 = swift_allocObject();
  v48 = v69;
  v47[2] = a3;
  v47[3] = v48;
  v47[4] = a1;
  v47[5] = a4;
  v47[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CLPlacemark]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_11;
  v49 = _Block_copy(aBlock);
  v50 = v48;
  v51 = a3;

  [v46 reverseGeocodeLocation:v50 completionHandler:v49];
  _Block_release(v49);
}

void closure #1 in closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v25[1] = a7;
  v26 = a6;
  v27 = a3;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:3 userActivity:0];
  if (a1)
  {
    if (a1 >> 62)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        v16 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v16 = a1;
      }

      if (MEMORY[0x26D5F3000](v16))
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        i = *(a1 + 32);
        goto LABEL_12;
      }

      __break(1u);
      return;
    }
  }

  a1 = static os_log_type_t.info.getter();
  v17 = *(v27 + OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_266E21E90;
  *(v18 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  *(v18 + 64) = lazy protocol witness table accessor for type CLLocation and conformance NSObject();
  *(v18 + 32) = a4;
  v19 = a4;
  os_log(_:dso:log:_:_:)(a1, &dword_266E03000, v17, "Couldn't find address for: %@", 29, 2, v18);

  for (i = [objc_opt_self() placemarkWithLocation:v19 name:0 postalAddress:0]; ; i = MEMORY[0x26D5F2F90](0, a1))
  {
LABEL_12:
    v20 = i;
    [v14 setParkingLocation_];

    if (a5 >> 62)
    {
      if ((a5 & 0x8000000000000000) != 0)
      {
        v24 = a5;
      }

      else
      {
        v24 = a5 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x26D5F3000](v24))
      {
        goto LABEL_18;
      }
    }

    else if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((a5 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(a5 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_27:
    ;
  }

  v21 = MEMORY[0x26D5F2F90](0, a5);
LABEL_17:
  v22 = v21;
  v23 = [v21 notes];

  if (v23)
  {
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:
  [v14 setParkingNote_];

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v11 + 8))(v13, v10);
  v26(v14);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CLPlacemark]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id INRetrieveParkingLocationIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INRetrieveParkingLocationIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for INRetrieveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id INRetrieveParkingLocationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INRetrieveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v6 + 8))(v8, v5);
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v9 = static ParkingLocationService.routineManager;
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = a2;
  aBlock[4] = partial apply for closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  [v9 fetchLastVehicleEventsWithHandler_];
  _Block_release(v11);
}

uint64_t sub_266E19B3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266E19B74()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266E19BD8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type CLLocation and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CLLocation and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CLLocation and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocation and conformance NSObject);
  }

  return result;
}

unint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D38D38])
  {
    v7 = 0xD000000000000016;
  }

  else if (v6 == *MEMORY[0x277D38D18])
  {
    v7 = 0x5070614D776F6853;
  }

  else if (v6 == *MEMORY[0x277D38D28])
  {
    v7 = 0xD000000000000010;
  }

  else if (v6 == *MEMORY[0x277D38D30])
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x6568744F656D6F73;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D39A98])
  {
    v7 = 0x6E536F6E69736163;
  }

  else if (v6 == *MEMORY[0x277D39A90])
  {
    v7 = 0x696E736863746177;
  }

  else if (v6 == *MEMORY[0x277D39AA8])
  {
    v7 = 0x736D65746970616DLL;
  }

  else if (v6 == *MEMORY[0x277D39AA0])
  {
    v7 = 0x6E5379636167656CLL;
  }

  else
  {
    v7 = 0x206E776F6E6B6E75;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(v2 + 88))(v4, a1);
  if (v5 == *MEMORY[0x277D39A98])
  {
    v6 = 0x6E536F6E69736163;
  }

  else if (v5 == *MEMORY[0x277D39A90])
  {
    v6 = 0x696E736863746177;
  }

  else if (v5 == *MEMORY[0x277D39AA8])
  {
    v6 = 0x736D65746970616DLL;
  }

  else if (v5 == *MEMORY[0x277D39AA0])
  {
    v6 = 0x6E5379636167656CLL;
  }

  else
  {
    v6 = 0x206E776F6E6B6E75;
  }

  (*(v2 + 8))(v4, a1);
  return v6;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL static SiriGeoCommandConverter.isCommandTypeSupported(commandType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v37 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = *(v3 + 16);
  v15(v13, a1, v2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v45 = v15;
  if (!v18)
  {

    v24 = *(v3 + 8);
    v24(v13, v2);
    v25 = *MEMORY[0x277D38D38];
    goto LABEL_11;
  }

  v41 = v17;
  v19 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v46 = v38;
  v40 = v19;
  *v19 = 136315138;
  v15(v11, v13, v2);
  v20 = v44;
  v15(v44, v11, v2);
  v21 = (*(v3 + 88))(v20, v2);
  v39 = *MEMORY[0x277D38D38];
  v42 = v6;
  v43 = a1;
  if (v21 == v39)
  {
    v22 = 0x8000000266E232E0;
    v23 = 0xD000000000000016;
  }

  else
  {
    if (v21 != *MEMORY[0x277D38D18])
    {
      if (v21 == *MEMORY[0x277D38D28])
      {
        v37 = 0xD000000000000010;
        v22 = 0x8000000266E23320;
      }

      else
      {
        v35 = v21 == *MEMORY[0x277D38D30];
        if (v21 == *MEMORY[0x277D38D30])
        {
          v36 = 0xD000000000000010;
        }

        else
        {
          v36 = 0x6568744F656D6F73;
        }

        v37 = v36;
        if (v35)
        {
          v22 = 0x8000000266E23300;
        }

        else
        {
          v22 = 0xE900000000000072;
        }
      }

      goto LABEL_10;
    }

    v22 = 0xED000073746E696FLL;
    v23 = 0x5070614D776F6853;
  }

  v37 = v23;
LABEL_10:
  v24 = *(v3 + 8);
  v24(v11, v2);
  v24(v13, v2);
  v24(v44, v2);
  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v22, &v46);

  v27 = v40;
  *(v40 + 1) = v26;
  _os_log_impl(&dword_266E03000, v16, v41, "commandtype %s", v27, 0xCu);
  v28 = v38;
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x26D5F3640](v28, -1, -1);
  MEMORY[0x26D5F3640](v27, -1, -1);

  v6 = v42;
  a1 = v43;
  v25 = v39;
LABEL_11:
  v45(v6, a1, v2);
  v29 = (*(v3 + 88))(v6, v2);
  v33 = v29 == v25 || v29 == *MEMORY[0x277D38D18] || v29 == *MEMORY[0x277D38D28] || v29 == *MEMORY[0x277D38D30];
  v24(v6, v2);
  return v33;
}

BOOL static SiriGeoCommandConverter.isSnippetTypeSupported(snippetType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = *(v3 + 16);
  v15(v13, a1, v2);
  v16 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v16, v38);
  v39 = v15;
  if (v17)
  {
    v34 = v16;
    v18 = 0xED00007465707069;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    v36 = v19;
    *v19 = 136315138;
    v15(v11, v13, v2);
    v15(v8, v11, v2);
    v20 = (*(v3 + 88))(v8, v2);
    v21 = *MEMORY[0x277D39A98];
    v37 = a1;
    if (v20 == v21)
    {
      v33 = 0x6E536F6E69736163;
    }

    else if (v20 == *MEMORY[0x277D39A90])
    {
      v18 = 0xEC00000074657070;
      v33 = 0x696E736863746177;
    }

    else if (v20 == *MEMORY[0x277D39AA8])
    {
      v18 = 0xEE0074657070696ELL;
      v33 = 0x736D65746970616DLL;
    }

    else
    {
      v23 = v20 == *MEMORY[0x277D39AA0];
      v24 = 0x206E776F6E6B6E75;
      if (v20 == *MEMORY[0x277D39AA0])
      {
        v24 = 0x6E5379636167656CLL;
      }

      v33 = v24;
      if (!v23)
      {
        v18 = 0xEC00000065707974;
      }
    }

    v22 = *(v3 + 8);
    v22(v11, v2);
    v22(v13, v2);
    v22(v8, v2);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v18, &v41);

    v26 = v36;
    *(v36 + 1) = v25;
    v27 = v34;
    _os_log_impl(&dword_266E03000, v34, v38, "snippettype %s", v26, 0xCu);
    v28 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D5F3640](v28, -1, -1);
    MEMORY[0x26D5F3640](v26, -1, -1);

    a1 = v37;
  }

  else
  {

    v22 = *(v3 + 8);
    v22(v13, v2);
  }

  v29 = v40;
  v39(v40, a1, v2);
  v30 = (*(v3 + 88))(v29, v2) == *MEMORY[0x277D39AA8];
  v22(v29, v2);
  return v30;
}

uint64_t static SiriGeoCommandConverter.convertToSiriCommand(command:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(v14, v12);
  v18 = (*(v16 + 88))(v12, v15);
  if (v18 == *MEMORY[0x277D38D38])
  {
    (*(v16 + 96))(v12, v15);
    (*(v1 + 32))(v3, v12, v0);
    v19 = specialized static SiriGeoCommandConverter.convertRecordLocationActivity(_:)();
    v17 = v20;
    (*(v1 + 8))(v3, v0, v19);
  }

  else if (v18 == *MEMORY[0x277D38D18])
  {
    (*(v16 + 96))(v12, v15);
    v21 = v53;
    (*(v53 + 32))(v8, v12, v6);
    v22 = specialized static SiriGeoCommandConverter.convertShowMapPoints(_:)();
    v17 = v23;
    (*(v21 + 8))(v8, v6, v22);
  }

  else if (v18 == *MEMORY[0x277D38D28])
  {
    (*(v16 + 8))(v12, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_266E21F00;
    *(v17 + 32) = [objc_allocWithZone(MEMORY[0x277D47A70]) init];
  }

  else
  {
    if (v18 != *MEMORY[0x277D38D30])
    {
      (*(v16 + 8))(v12, v15);
LABEL_2:
      v17 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    (*(v16 + 96))(v12, v15);
    v24 = v50;
    v25 = v51;
    v26 = v52;
    (*(v51 + 32))(v50, v12, v52);
    v27 = [objc_allocWithZone(MEMORY[0x277D474E8]) init];
    [v27 setItemIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_266E21F00;
    *(v17 + 32) = v27;
    (*(v25 + 8))(v24, v26);
  }

LABEL_11:
  outlined destroy of ContactHandle.HandleType?(v14, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v28 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v30 = v29;

  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_27;
  }

  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v39 = v17;
    }

    else
    {
      v39 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5F3000](v39);
    v33 = result;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_27;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    return result;
  }

  v34 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x26D5F2F90](v34, v17);
    }

    else
    {
      v35 = *(v17 + 8 * v34 + 32);
    }

    v36 = v35;
    ++v34;
    v37 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v38 = MEMORY[0x26D5F2D60](v37);

    [v36 setAceId_];
  }

  while (v33 != v34);
LABEL_27:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, logger);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54 = v44;
    *v43 = 136315138;
    v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, 0x277D471A8);
    v46 = MEMORY[0x26D5F2E40](v17, v45);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v54);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_266E03000, v41, v42, "Converted Commands %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x26D5F3640](v44, -1, -1);
    MEMORY[0x26D5F3640](v43, -1, -1);
  }

  return v17;
}

id static SiriGeoCommandConverter.convertToSiriSnippet(snippet:)(uint64_t a1)
{
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D39AA8])
  {
    v57 = v4;
    (*(v8 + 96))(v10, v7);
    (*(v12 + 32))(v14, v10, v11);
    v15 = [objc_allocWithZone(MEMORY[0x277D474C8]) init];
    v16 = Apple_Parsec_Siri_V2alpha_MapItemSnippet.objects.getter();
    v17 = *(v16 + 16);
    if (v17)
    {
      v49 = v15;
      v50 = v14;
      v51 = v12;
      v52 = v11;
      v59 = MEMORY[0x277D84F90];
      v18 = v16;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = v6;
      v21 = v56 + 16;
      v20 = *(v56 + 16);
      v22 = *(v56 + 80);
      v48 = v18;
      v23 = v18 + ((v22 + 32) & ~v22);
      v55 = (v53 + 8);
      v56 = v20;
      v54 = *(v21 + 56);
      v24 = v58;
      do
      {
        (v56)(v3, v23, v24);
        v25 = objc_allocWithZone(MEMORY[0x277D474B8]);
        v26 = [v25 init];
        v27 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.label.getter();
        v28 = MEMORY[0x26D5F2D60](v27);

        [v26 setLabel_];

        v29 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.spokenName.getter();
        v30 = MEMORY[0x26D5F2D60](v29);

        [v26 setSpokenName_];

        Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
        v31 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
        (*v55)(v19, v57);
        [v26 setLocation_];

        v32 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
        v34 = v33;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v36 = v34;
        v24 = v58;
        outlined consume of Data._Representation(v32, v36);
        [v26 setPlaceData2_];

        (*(v21 - 8))(v3, v24);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 += v54;
        --v17;
      }

      while (v17);

      v12 = v51;
      v11 = v52;
      v15 = v49;
      v14 = v50;
      v6 = v19;
    }

    else
    {
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SALocalSearchMapItem, 0x277D474B8);
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v15 setItems_];

    Apple_Parsec_Siri_V2alpha_MapItemSnippet.searchRegionCenter.getter();
    v39 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
    (*(v53 + 8))(v6, v57);
    [v15 setSearchRegionCenter_];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v40 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    [v15 setUserCurrentLocation_];

    [v15 setSearchAlongRoute_];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v37 = v15;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v37;
      *v45 = v37;
      v46 = v37;
      _os_log_impl(&dword_266E03000, v42, v43, "Converted Snippet %@", v44, 0xCu);
      outlined destroy of ContactHandle.HandleType?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5F3640](v45, -1, -1);
      MEMORY[0x26D5F3640](v44, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return v37;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SiriGeoCommandConverter.makeMapItemType(detailType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6 == *MEMORY[0x277D399A0] || v6 == *MEMORY[0x277D399B8];
  if (v7 || v6 == *MEMORY[0x277D399A8] || v6 == *MEMORY[0x277D39998] || v6 == *MEMORY[0x277D39988] || v6 == *MEMORY[0x277D39990] || v6 == *MEMORY[0x277D39980] || v6 == *MEMORY[0x277D399B0])
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v3 + 8))(v5, v2);
  return v9;
}

id specialized static SiriGeoCommandConverter.makeLocation(_:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47508]) init];
  v1 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v2 = MEMORY[0x26D5F2D60](v1);

  [v0 setLabel_];

  v3 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.street.getter();
  v4 = MEMORY[0x26D5F2D60](v3);

  [v0 setStreet_];

  v5 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.thoroughfare.getter();
  v6 = MEMORY[0x26D5F2D60](v5);

  [v0 setThoroughfare_];

  v7 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.subThoroughfare.getter();
  v8 = MEMORY[0x26D5F2D60](v7);

  [v0 setSubThoroughfare_];

  v9 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.city.getter();
  v10 = MEMORY[0x26D5F2D60](v9);

  [v0 setCity_];

  v11 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.stateCode.getter();
  v12 = MEMORY[0x26D5F2D60](v11);

  [v0 setStateCode_];

  v13 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.countryCode.getter();
  v14 = MEMORY[0x26D5F2D60](v13);

  [v0 setCountryCode_];

  v15 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.postalCode.getter();
  v16 = MEMORY[0x26D5F2D60](v15);

  [v0 setPostalCode_];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.latitude.getter();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v20) = v18;
  v21 = [v19 initWithFloat_];
  [v0 setLatitude_];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.longitude.getter();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v25) = v23;
  v26 = [v24 initWithFloat_];
  [v0 setLongitude_];

  [v0 setRegionType_];
  v27 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.timezoneID.getter();
  v28 = MEMORY[0x26D5F2D60](v27);

  [v0 setTimezoneId_];

  return v0;
}

uint64_t specialized static SiriGeoCommandConverter.makeDirectionRole(role:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6 == *MEMORY[0x277D399C0] || v6 == *MEMORY[0x277D399D8];
  if (v7 || v6 == *MEMORY[0x277D399D0])
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *MEMORY[0x277D399C8];
  v10 = v6;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10 != v9)
  {
    v11 = result;
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  return result;
}

id specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D47478]) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  v11 = specialized static SiriGeoCommandConverter.makeMapItemType(detailType:)(v9);
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = MEMORY[0x26D5F2D60](v11, v13);

  [v10 setDetailType_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v15 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  [v10 setLocation_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v17 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v19 = v18;
  v16(v5, v2);
  v20 = MEMORY[0x26D5F2D60](v17, v19);

  [v10 setLabel_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v21 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v23 = v22;
  v16(v5, v2);
  v24 = MEMORY[0x26D5F2D60](v21, v23);

  [v10 setSpokenName_];

  v25 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v27 = v26;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v25, v27);
  [v10 setPlaceData2_];

  v29 = v36;
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  v30 = specialized static SiriGeoCommandConverter.makeDirectionRole(role:)(v29);
  v32 = v31;
  (*(v37 + 8))(v29, v38);
  v33 = MEMORY[0x26D5F2D60](v30, v32);

  [v10 setDirectionRole_];

  return v10;
}

double specialized static SiriGeoCommandConverter.convertShowMapPoints(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D474E0]) init];
  v5 = Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.language.getter();
  v6 = MEMORY[0x26D5F2D60](v5);

  [v4 setLanguage_];

  [v4 setShowDirections_];
  [v4 setShowTraffic_];
  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemDestination.getter())
  {
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v7 = specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    [v4 setItemSource_];

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemDestination.getter();
    v9 = specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)();
    v8(v3, v0);
    [v4 setItemDestination_];

    v10 = [objc_allocWithZone(MEMORY[0x277D47490]) init];
    [v10 setAvoidTolls_];
    [v10 setAvoidHighways_];
    [v4 setCarRouteOptions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_266E21F00;
  *(v11 + 32) = v4;
  return result;
}

double specialized static SiriGeoCommandConverter.convertRecordLocationActivity(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D476B8]) init];
  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.location.getter();
  v12 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
  (*(v8 + 8))(v10, v7);
  [v11 setLocation_];

  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.sourceType.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277D39D68], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v6, v0);
  if (v18[1] == v18[0])
  {
    v14 = 0x746C7561666544;
  }

  else
  {
    v14 = 0x646F50656D6F48;
  }

  v15 = MEMORY[0x26D5F2D60](v14, 0xE700000000000000);

  [v11 setSourceType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *&result = 1;
  *(v16 + 16) = xmmword_266E21F00;
  *(v16 + 32) = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType);
  }

  return result;
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

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RTVehicleEvent, 0x277D01420);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t key path getter for INSaveParkingLocationIntentHandler.completion : INSaveParkingLocationIntentHandler@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INPlacemarkResolutionResult) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for INSaveParkingLocationIntentHandler.completion : INSaveParkingLocationIntentHandler(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [EnhancedMSPSharedTripContact]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(v3, v4);
  return v7(v6, v5);
}

uint64_t INSaveParkingLocationIntentHandler.completion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  swift_beginAccess();
  v2 = *v1;
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(*v1, v1[1]);
  return v2;
}

uint64_t INSaveParkingLocationIntentHandler.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ())?(v6, v7);
}

uint64_t INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](INSaveParkingLocationIntentHandler.resolveParkingLocation(for:), 0, 0);
}

{
  v29 = v1;
  v2 = *(*(v1 + 328) + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
  *(v1 + 336) = v2;
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266E03000, v2, v3, "IntentHandler resolve parking location", v4, 2u);
    MEMORY[0x26D5F3640](v4, -1, -1);
  }

  v5 = [*(v1 + 320) parkingLocation];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 location];
    if (v7)
    {

      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v8))
      {
        v9 = *(v1 + 320);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136315138;
        v12 = v9;
        v13 = [v12 description];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_266E03000, v2, v8, "Intent with parking location from server: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x26D5F3640](v11, -1, -1);
        MEMORY[0x26D5F3640](v10, -1, -1);
      }

      v18 = [objc_opt_self() successWithResolvedPlacemark_];

      v19 = *(v1 + 8);

      return v19(v18);
    }
  }

  v21 = v1 + 296;
  v22 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  *(v1 + 344) = v22;
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v23 = *(v1 + 344);
    v24 = *MEMORY[0x277CE4228];
    *(v1 + 80) = v1;
    *(v1 + 120) = v21;
    *(v1 + 88) = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v25 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v1 + 208) = MEMORY[0x277D85DD0];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v1 + 232) = &block_descriptor_3;
    *(v1 + 240) = v25;
    [v23 currentLocationWithAccuracy:v1 + 208 timeout:v24 completion:5.0];
    v26 = v1 + 80;
  }

  else
  {
    *(v1 + 16) = v1;
    *(v1 + 56) = v21;
    *(v1 + 24) = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v27 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    *(v1 + 208) = MEMORY[0x277D85DD0];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    *(v1 + 232) = &block_descriptor_3;
    *(v1 + 240) = v27;
    [v22 currentAuthorizationStyle_];
    v26 = v1 + 16;
  }

  return MEMORY[0x282200938](v26);
}

{
  if ((v1[37] - 3) >= 2)
  {
    v2 = v1[43];
    goto LABEL_5;
  }

  if (v1[38])
  {
    v3 = v1[42];
    v2 = v1[43];
    v4 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v4, &dword_266E03000, v3, "precise location is required for flow", 37, 2, MEMORY[0x277D84F90]);
LABEL_5:
    v5 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

    v6 = v1[1];

    return v6(v5);
  }

  v8 = v1[43];
  v9 = *MEMORY[0x277CE4228];
  v1[10] = v1;
  v1[15] = v1 + 37;
  v1[11] = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  v10 = swift_continuation_init();
  v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
  v1[26] = MEMORY[0x277D85DD0];
  v1[27] = 1107296256;
  v1[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
  v1[29] = &block_descriptor_3;
  v1[30] = v10;
  [v8 currentLocationWithAccuracy:v1 + 26 timeout:v9 completion:5.0];

  return MEMORY[0x282200938](v1 + 10);
}

uint64_t INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[37];
  v0[46] = v1;
  [v1 horizontalAccuracy];
  if (v2 >= *MEMORY[0x277CE4258])
  {
    v11 = v0[42];
    v12 = v0[43];
    v13 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_266E03000, v11, "precise location is required for flow", 37, 2, MEMORY[0x277D84F90]);
    v14 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

    v15 = v0[1];

    return v15(v14);
  }

  else
  {
    v3 = v0[42];
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[42];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v1;
      *v7 = v1;
      v8 = v1;
      _os_log_impl(&dword_266E03000, v5, v4, "resolved location %@", v6, 0xCu);
      outlined destroy of ContactHandle.HandleType?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5F3640](v7, -1, -1);
      MEMORY[0x26D5F3640](v6, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[47] = v9;
    v0[18] = v0;
    v0[23] = v0 + 37;
    v0[19] = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo11CLPlacemarkCGs5Error_pGMd, &_sSccySaySo11CLPlacemarkCGs5Error_pGMR);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark];
    v0[29] = &block_descriptor_6_1;
    v0[30] = v10;
    [v9 reverseGeocodeLocation:v1 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 18);
  }
}

{
  v1 = *(*v0 + 176);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v2 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[37];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[37];
    }

    else
    {
      v9 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5F3000](v9);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    v5 = v0[46];
    v6 = v0[47];
    v7 = v0[43];
    v10 = objc_opt_self();
    v4 = [objc_opt_self() placemarkWithLocation:v5 name:0 postalAddress:0];
    v8 = [v10 successWithResolvedPlacemark_];
    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D5F2F90](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[43];

  v8 = [objc_opt_self() successWithResolvedPlacemark_];
LABEL_12:
  v11 = v8;

  v12 = v0[1];

  return v12(v11);
}

{
  v1 = v0[45];
  v2 = v0[42];
  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[42];
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266E03000, v4, v3, "failed to resolve location", v5, 2u);
    MEMORY[0x26D5F3640](v5, -1, -1);
  }

  v6 = v0[43];
  v7 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

  v8 = v0[1];

  return v8(v7);
}

{
  v20 = v0;
  v1 = *(v0 + 352);
  swift_willThrow();
  *(v0 + 208) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 336);

    v5 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v5, &dword_266E03000, v4, "Siri does not have location permissions", 39, 2, MEMORY[0x277D84F90]);
    v6 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    v7 = *(v0 + 336);

    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 336);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_266E03000, v9, v8, "Unexpected error %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D5F3640](v11, -1, -1);
      MEMORY[0x26D5F3640](v10, -1, -1);
    }

    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v6 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  v17 = *(v0 + 8);

  return v17(v6);
}

{
  v1 = v0[48];
  swift_willThrow();

  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[43];
  v5 = objc_opt_self();
  v6 = [objc_opt_self() placemarkWithLocation:v2 name:0 postalAddress:0];
  v7 = [v5 successWithResolvedPlacemark_];

  v8 = v0[1];

  return v8(v7);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
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

    return MEMORY[0x282200950](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);

  return INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(v6);
}

uint64_t @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

void INSaveParkingLocationIntentHandler.handle(intent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v8 + 8))(v10, v7);
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v11 = static ParkingLocationService.routineManager;
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a1;
  aBlock[4] = partial apply for closure #1 in INSaveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);
  v14 = v3;

  v15 = a1;

  [v11 fetchLastVehicleEventsWithHandler_];
  _Block_release(v13);
}

void closure #1 in INSaveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    v16 = static os_log_type_t.error.getter();
    v17 = *(a3 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v65 = a2;
      v66 = v19;
      *v18 = 136315138;
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v66);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_266E03000, v17, v16, "error fetching vehicle event before saving new location: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D5F3640](v19, -1, -1);
      MEMORY[0x26D5F3640](v18, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:4 userActivity:0];
    a4();
  }

  else
  {
    v64 = a5;
    static os_signpost_type_t.end.getter();
    v25 = *(a3 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v26 = *(v12 + 8);
    v26(v14, v11);
    v27 = [a6 parkingLocation];
    if (v27 && (v28 = v27, v29 = [v27 location], v28, v29))
    {
      v62 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:3 userActivity:0];
      if (one-time initialization token for routineManager != -1)
      {
        swift_once();
      }

      v63 = a4;
      v30 = static ParkingLocationService.routineManager;
      [static ParkingLocationService.routineManager clearAllVehicleEvents];
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_266E03000, v25, v31, "Deleted all saved parking locations", v32, 2u);
        MEMORY[0x26D5F3640](v32, -1, -1);
      }

      static os_signpost_type_t.begin.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v26(v14, v11);
      v33 = v29;
      v34 = [a6 parkingNote];
      [v30 vehicleEventAtLocation:v33 notes:v34];

      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v26(v14, v11);
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v66 = v37;
        *v36 = 136315138;
        v38 = v33;
        v39 = [v38 description];
        v40 = v33;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v66);

        *(v36 + 4) = v44;
        v33 = v40;
        _os_log_impl(&dword_266E03000, v25, v35, "Setting parking location to: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x26D5F3640](v37, -1, -1);
        MEMORY[0x26D5F3640](v36, -1, -1);
      }

      v45 = [a6 parkingLocation];
      v46 = v62;
      [v62 setParkingLocation_];

      v47 = [a6 parkingNote];
      [v46 setParkingNote_];

      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v66 = v50;
        *v49 = 136315138;
        v51 = v46;
        v52 = v33;
        v53 = [v51 description];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v33 = v52;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v66);

        *(v49 + 4) = v57;
        _os_log_impl(&dword_266E03000, v25, v48, "Sending response : %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x26D5F3640](v50, -1, -1);
        MEMORY[0x26D5F3640](v49, -1, -1);
      }

      (v63)(v46);
    }

    else
    {
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_266E03000, v25, v58, "No location resolved", v59, 2u);
        MEMORY[0x26D5F3640](v59, -1, -1);
      }

      v60 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:4 userActivity:0];
      a4();
    }
  }
}

id INSaveParkingLocationIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSaveParkingLocationIntentHandler.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v2] = OS_os_log.init(subsystem:category:)();
  v3 = &v0[OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion];
  v4 = type metadata accessor for INSaveParkingLocationIntentHandler();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id INSaveParkingLocationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSaveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of ContactHandle.HandleType?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of ContactHandle.HandleType?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266E1FC04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266E1FC9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266E1FCD4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E20010()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}