uint64_t partial apply for closure #1 in Pseudonym.init(service:pseudonym:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Pseudonym.init(service:pseudonym:configuration:)(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t partial apply for closure #1 in Pseudonym.refreshPseudonym()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in Pseudonym.refreshPseudonym()(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t partial apply for closure #1 in Pseudonym.deinit(uint64_t a1)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v4 = *(v1 + 40);
  v10 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Pseudonym.deinit(a1, v12, v11, v10, v4, v5, v6, v7);
}

void partial apply for closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)()
{
  partial apply for closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)();
}

{
  closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

unint64_t lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors()
{
  result = lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors;
  if (!lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors;
  if (!lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Pseudonym(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, a2, type metadata accessor for Pseudonym, &protocol conformance descriptor for Pseudonym);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Pseudonym.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Pseudonym.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in UserDefaultsPseudonymStorage.getPendingRevoke(serviceIdentifier:reuseIdentifier:)(uint64_t *a1)
{
  **(v1 + 16) = *a1;
}

uint64_t partial apply for closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t specialized $defer #1 () in closure #1 in Pseudonym.deinit(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = result;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.group);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, a2, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "Marking reusable pseudonym %s as revoked with reuse identifier %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v14 = static Pseudonym.provider;
    v15 = a5[3];
    v16 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v15);
    result = (*(v16 + 8))(v15, v16);
    if (v17)
    {
      (*(*v14 + 184))(a3, a4, result, v17, v9, a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t NearbyInvitationScanner.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyInvitationScanner.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return NearbyInvitationScanner.delegate.modify;
}

void NearbyInvitationScanner.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t NearbyInvitationScanner.browser.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t NearbyInvitationScanner.scannerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyInvitationScanner.connections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationScanner.connections.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationScanner.connections.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t NearbyInvitationScanner.$connections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationScanner.$connections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyInvitationScanner.$connections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

char *NearbyInvitationScanner.__allocating_init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v10 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(a1, a2, a3, v8, ObjectType, a4);
  swift_unknownObjectRelease();
  return v10;
}

char *NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(a1, a2, a3, v4, ObjectType, a4);
  swift_unknownObjectRelease();
  return v10;
}

Swift::Void __swiftcall NearbyInvitationScanner.scan()()
{
  v1 = type metadata accessor for NWBrowser.Descriptor();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v35 - v5);
  v7 = type metadata accessor for NWBrowser.Invitation.Scope();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  type metadata accessor for NWParameters();
  specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(1);
  v14 = NWParameters.__allocating_init(_:)();
  v36 = v0;
  v15 = NearbyInvitationParameters.browserType.getter();
  if (v15 >= 3)
  {
    LODWORD(v44) = v15;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    (*(v8 + 104))(v11, **(&off_1000EB320 + v15), v7);
    v37 = v8;
    v16 = *(v8 + 32);
    v41 = v7;
    v16(v13, v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7Network9NWBrowserC10InvitationV10invitationtMd, &_sSS4name_7Network9NWBrowserC10InvitationV10invitationtMR);
    *v6 = NearbyInvitationParameters.serviceName.getter();
    v6[1] = v17;
    v40 = v13;
    static NWBrowser.Invitation.wrangler(scope:)();
    (*(v2 + 104))(v6, enum case for NWBrowser.Descriptor.applicationServiceWithInvitation(_:), v1);
    v38 = v2;
    v18 = *(v2 + 16);
    v42 = v1;
    v18(v39, v6, v1);
    type metadata accessor for NWBrowser();
    swift_allocObject();

    v39 = v14;
    v19 = NWBrowser.init(for:using:)();
    v20 = *(*v36 + 160);

    v20(v21);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v19;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in NearbyInvitationScanner.scan(), v23);
    NWBrowser.stateUpdateHandler.setter();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v19;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #2 in NearbyInvitationScanner.scan(), v25);
    NWBrowser.browseResultsChangedHandler.setter();

    NWBrowser.start(queue:)();
    v26 = v6;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.client);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v19;
      v44 = v31;
      *v30 = 136315138;

      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "*** NearbyInvitationScanner new browser, %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    (*(v38 + 8))(v26, v42);
    (*(v37 + 8))(v40, v41);
  }
}

uint64_t closure #1 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v65 - v7;
  v8 = type metadata accessor for NWError();
  v74 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v65 - v12;
  v14 = type metadata accessor for NWBrowser.State();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v65 - v20;
  v22 = __chkstk_darwin(v19);
  v71 = &v65 - v23;
  __chkstk_darwin(v22);
  v25 = &v65 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v68 = v18;
    v72 = result;
    v27 = a1;
    v28 = a1;
    v29 = *(v15 + 16);
    v29(v25, v28, v14);
    v30 = (*(v15 + 88))(v25, v14);
    if (v30 == enum case for NWBrowser.State.failed(_:))
    {
      (*(v15 + 96))(v25, v14);
      v31 = v74;
      (v74[4].isa)(v13, v25, v8);
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.client);
      isa = v31[2].isa;
      isa(v11, v13, v8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        isa(v38, v11, v8);
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v74[1].isa;
        (v40)(v11, v8);
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&_mh_execute_header, v34, v35, "*** NearbyInvitationScanner failed with error = %@", v36, 0xCu);
        outlined destroy of Any?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      else
      {

        v40 = v31[1].isa;
        (v40)(v11, v8);
      }

      NWBrowser.cancel()();
      if ((*(*v72 + 128))())
      {
        v46 = v45;
        ObjectType = swift_getObjectType();
        (*(v46 + 24))(v13, ObjectType, v46);
        swift_unknownObjectRelease();
      }

      return (v40)(v13, v8);
    }

    else if (v30 == enum case for NWBrowser.State.ready(_:))
    {
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.client);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "*** NearbyInvitationScanner ready and posting results", v44, 2u);
      }
    }

    else
    {
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Log.client);
      v49 = v71;
      v50 = v29;
      v29(v71, v27, v14);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v70;
      if (v53)
      {
        LODWORD(v73) = v52;
        v74 = v51;
        v55 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v75 = v66;
        v67 = v55;
        *v55 = 136315138;
        v56 = v69;
        v50(v69, v49, v14);
        (*(v15 + 56))(v56, 0, 1, v14);
        outlined init with copy of (String, Any)(v56, v54, &_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
        if ((*(v15 + 48))(v54, 1, v14) == 1)
        {
          v57 = 0xE300000000000000;
          v58 = 7104878;
        }

        else
        {
          (*(v15 + 32))(v21, v54, v14);
          v50(v68, v21, v14);
          v58 = String.init<A>(reflecting:)();
          v57 = v60;
          (*(v15 + 8))(v21, v14);
        }

        outlined destroy of Any?(v56, &_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
        v61 = *(v15 + 8);
        v61(v71, v14);
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v75);

        v63 = v67;
        *(v67 + 1) = v62;
        v64 = v74;
        _os_log_impl(&_mh_execute_header, v74, v73, "*** NearbyInvitationScanner state update: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);

        return (v61)(v25, v14);
      }

      else
      {

        v59 = *(v15 + 8);
        v59(v49, v14);
        return (v59)(v25, v14);
      }
    }
  }

  return result;
}

uint64_t closure #2 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a4;
  v26 = a2;
  v4 = type metadata accessor for NWBrowser.Result.Change();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v25 = result;
  if (result)
  {
    if (one-time initialization token for client != -1)
    {
LABEL_17:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.client);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      type metadata accessor for NWBrowser.Result();
      _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWBrowser.Result and conformance NWBrowser.Result, &type metadata accessor for NWBrowser.Result, &protocol conformance descriptor for NWBrowser.Result);
      v14 = Set.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v27);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "*** NearbyInvitationScanner results: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    v17 = v26 + 56;
    v18 = 1 << *(v26 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v26 + 56);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      while (1)
      {
        v23 = v22;
LABEL_12:
        (*(v5 + 16))(v7, *(v26 + 48) + *(v5 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v4);
        closure #1 in closure #2 in NearbyInvitationScanner.scan()(v7, v25, v24);
        v20 &= v20 - 1;
        (*(v5 + 8))(v7, v4);
        v22 = v23;
        if (!v20)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, void *a3)
{
  v135 = a1;
  v137 = a2;
  v119 = *a3;
  v4 = type metadata accessor for NWEndpoint();
  v131 = *(v4 - 8);
  v132 = v4;
  v5 = __chkstk_darwin(v4);
  v130 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v129 = &v117 - v8;
  __chkstk_darwin(v7);
  v128 = &v117 - v9;
  v10 = type metadata accessor for UUID();
  v126 = *(v10 - 8);
  v127 = v10;
  v11 = __chkstk_darwin(v10);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v117 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  v15 = __chkstk_darwin(v14 - 8);
  v118 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v123 = &v117 - v18;
  v19 = __chkstk_darwin(v17);
  v122 = &v117 - v20;
  __chkstk_darwin(v19);
  v22 = &v117 - v21;
  v23 = type metadata accessor for NWBrowser.Result();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v124 = (&v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v133 = &v117 - v28;
  v29 = __chkstk_darwin(v27);
  v120 = &v117 - v30;
  v31 = __chkstk_darwin(v29);
  v121 = &v117 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v117 - v34;
  __chkstk_darwin(v33);
  v37 = &v117 - v36;
  v38 = type metadata accessor for NWBrowser.Result.Change();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v41, v135, v38);
  v42 = (*(v39 + 88))(v41, v38);
  v134 = v24;
  v135 = v23;
  if (v42 == enum case for NWBrowser.Result.Change.added(_:))
  {
    (*(v39 + 96))(v41, v38);
    v124 = *(v24 + 32);
    v124(v37, v41, v23);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.client);
    v44 = *(v24 + 16);
    v133 = v37;
    v44(v35, v37, v23);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v123) = v46;
      v47 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v139 = v118;
      v119 = v47;
      *v47 = 136315138;
      v44(v22, v35, v23);
      (*(v24 + 56))(v22, 0, 1, v23);
      v48 = v122;
      outlined init with copy of (String, Any)(v22, v122, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      if ((*(v24 + 48))(v48, 1, v23) == 1)
      {
        v49 = 7104878;
        v50 = 0xE300000000000000;
      }

      else
      {
        v73 = v48;
        v74 = v121;
        v124(v121, v73, v23);
        v44(v120, v74, v23);
        v49 = String.init<A>(reflecting:)();
        v50 = v75;
        (*(v24 + 8))(v74, v23);
      }

      outlined destroy of Any?(v22, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      v124 = *(v24 + 8);
      (v124)(v35, v23);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v139);

      v77 = v119;
      *(v119 + 1) = v76;
      _os_log_impl(&_mh_execute_header, v45, v123, "*** NearbyInvitationScanner added result, %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v118);
    }

    else
    {

      v124 = *(v24 + 8);
      (v124)(v35, v23);
    }

    v79 = v126;
    v78 = v127;
    (*(v126 + 16))(v136, v137 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID, v127);
    v80 = v128;
    v81 = v133;
    NWBrowser.Result.endpoint.getter();
    v82 = v125;
    NWEndpoint.endpointUUID()();
    v83 = v132;
    v84 = *(v131 + 8);
    v84(v80, v132);
    v131 = UUID.uuidString.getter();
    v123 = v85;
    (*(v79 + 8))(v82, v78);
    NWBrowser.Result.endpoint.getter();
    v86 = NWEndpoint.contactID.getter();
    v126 = v87;
    v127 = v86;
    v84(v80, v83);
    v88 = v129;
    NWBrowser.Result.endpoint.getter();
    v89 = NWEndpoint.deviceColor.getter();
    v84(v88, v83);
    v128 = v89;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceModel.getter();
    v84(v88, v83);
    v90 = v130;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceID.getter();
    v84(v90, v83);
    v91 = objc_allocWithZone(type metadata accessor for NearbyAdvertisement());
    v92 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    if ((*(*v137 + 128))())
    {
      v94 = v93;
      ObjectType = swift_getObjectType();
      (*(v94 + 8))(v92, v81, ObjectType, v94);
      swift_unknownObjectRelease();
    }

    v96 = v81;
    return (v124)(v96, v135);
  }

  if (v42 == enum case for NWBrowser.Result.Change.removed(_:))
  {
    (*(v39 + 96))(v41, v38);
    v51 = v133;
    v52 = v134;
    v53 = v135;
    v122 = *(v134 + 32);
    (v122)(v133, v41, v135);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Log.client);
    v55 = *(v52 + 16);
    v56 = v124;
    v55(v124, v51, v53);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      LODWORD(v119) = v58;
      v59 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v139 = v117;
      *v59 = 136315138;
      v60 = v123;
      v55(v123, v56, v53);
      (*(v52 + 56))(v60, 0, 1, v53);
      v61 = v118;
      outlined init with copy of (String, Any)(v60, v118, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      if ((*(v52 + 48))(v61, 1, v53) == 1)
      {
        v62 = 7104878;
        v63 = 0xE300000000000000;
      }

      else
      {
        v98 = v121;
        (v122)(v121, v61, v53);
        v55(v120, v98, v53);
        v62 = String.init<A>(reflecting:)();
        v63 = v99;
        (*(v52 + 8))(v98, v53);
      }

      v97 = v129;
      outlined destroy of Any?(v123, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      v100 = v124;
      v124 = *(v52 + 8);
      (v124)(v100, v53);
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v139);

      *(v59 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v57, v119, "*** NearbyInvitationScanner removed result, %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
    }

    else
    {

      v124 = *(v52 + 8);
      (v124)(v56, v53);
      v97 = v129;
    }

    v103 = v126;
    v102 = v127;
    (*(v126 + 16))(v136, v137 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID, v127);
    v104 = v128;
    NWBrowser.Result.endpoint.getter();
    v105 = v125;
    NWEndpoint.endpointUUID()();
    v106 = v132;
    v107 = *(v131 + 8);
    v107(v104, v132);
    v131 = UUID.uuidString.getter();
    v129 = v108;
    (*(v103 + 8))(v105, v102);
    NWBrowser.Result.endpoint.getter();
    v126 = NWEndpoint.contactID.getter();
    v127 = v109;
    v107(v104, v106);
    NWBrowser.Result.endpoint.getter();
    v110 = NWEndpoint.deviceColor.getter();
    v107(v97, v106);
    v128 = v110;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceModel.getter();
    v107(v97, v106);
    v111 = v130;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceID.getter();
    v107(v111, v106);
    v112 = objc_allocWithZone(type metadata accessor for NearbyAdvertisement());
    v113 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    if ((*(*v137 + 128))())
    {
      v115 = v114;
      v116 = swift_getObjectType();
      (*(v115 + 16))(v113, v116, v115);
      swift_unknownObjectRelease();
    }

    v96 = v133;
    return (v124)(v96, v135);
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Log.client);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v139 = v68;
    *v67 = 136315138;
    v138 = a3;

    v69 = String.init<A>(reflecting:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v139);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v65, v66, "*** NearbyInvitationScanner new browser, %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  return (*(v39 + 8))(v41, v38);
}

uint64_t NearbyInvitationScanner.connect(to:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = &v44 - v5;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = v12;
  v53 = &v44 - v11;
  __chkstk_darwin(v10);
  v51 = &v44 - v13;
  type metadata accessor for NWParameters();
  specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(0);
  v14 = NWParameters.__allocating_init(_:)();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v54 = a1;
  type metadata accessor for NWProtocolFramer.Options();
  swift_allocObject();

  v15 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();

  v16 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  if (*v17 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v15);
    v48 = v15;

    v16(v55, 0);

    v18 = *(v7 + 16);
    v19 = v51;
    v20 = v54;
    v18(v51, v54, v6);
    type metadata accessor for NWConnection();
    swift_allocObject();

    v49 = v14;
    v21 = NWConnection.init(to:using:)();
    v22 = swift_allocObject();
    swift_weakInit();
    v47 = v18;
    v18(v19, v20, v6);
    v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v24 = (v52 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    v52 = v7;
    v44 = *(v7 + 32);
    v44(v25 + v23, v19, v6);
    *(v25 + v24) = v21;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in NearbyInvitationScanner.connect(to:), v25);
    NWConnection.stateUpdateHandler.setter();

    NWConnection.start(queue:)();
    if (one-time initialization token for client == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.client);
  v27 = v53;
  v28 = v47;
  v47(v53, v54, v6);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55[0] = v54;
    *v31 = 136315138;
    v32 = v27;
    v33 = v50;
    v28(v50, v32, v6);
    v34 = v52;
    (*(v52 + 56))(v33, 0, 1, v6);
    v35 = v33;
    v36 = v46;
    outlined init with copy of (String, Any)(v35, v46, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    if ((*(v34 + 48))(v36, 1, v6) == 1)
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v40 = v51;
      v44(v51, v36, v6);
      v28(v45, v40, v6);
      v38 = String.init<A>(reflecting:)();
      v37 = v41;
      v42 = v40;
      v34 = v52;
      (*(v52 + 8))(v42, v6);
    }

    outlined destroy of Any?(v50, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    (*(v34 + 8))(v53, v6);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v55);

    *(v31 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v29, v30, "NearbyInvitationScanner Starting connection request to endpoint %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {

    return (*(v52 + 8))(v27, v6);
  }
}

uint64_t closure #1 in NearbyInvitationScanner.connect(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  v87 = type metadata accessor for NWError();
  v91 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v82 - v8;
  v9 = type metadata accessor for NWConnection.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWEndpoint();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v86 = v12;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = __swift_project_value_buffer(v19, static Log.client);
    (*(v14 + 16))(v16, a3, v13);
    v85 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v83 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v84 = v18;
      v26 = v25;
      v92[0] = v25;
      *v24 = 136315138;
      v27 = NWEndpoint.debugDescription.getter();
      v82 = v10;
      v28 = v9;
      v30 = v29;
      (*(v14 + 8))(v16, v13);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v92);
      v9 = v28;
      v10 = v82;

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "*** NearbyInvitationScanner making a connection update handler for device %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v18 = v84;

      a4 = v83;
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v32 = v86;
    (*(v10 + 16))(v86, v89, v9);
    v33 = (*(v10 + 88))(v32, v9);
    v34 = v90;
    v35 = v91;
    if (v33 == enum case for NWConnection.State.waiting(_:))
    {
      (*(v10 + 96))(v32, v9);
      v36 = v87;
      v37 = v88;
      (*(v35 + 32))();
      v38 = *(v35 + 16);
      v38(v34, v37, v36);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v84 = v18;
        v43 = v42;
        *v41 = 138412290;
        _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v44 = v36;
        v38(v45, v34, v36);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        v47 = *(v35 + 8);
        v47(v34, v44);
        *(v41 + 4) = v46;
        *v43 = v46;
        _os_log_impl(&_mh_execute_header, v39, v40, "NearbyInvitationScanner state - Waiting: %@", v41, 0xCu);
        outlined destroy of Any?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        return (v47)(v88, v44);
      }

      else
      {

        v58 = *(v35 + 8);
        v58(v34, v36);
        return (v58)(v37, v36);
      }
    }

    if (v33 == enum case for NWConnection.State.failed(_:))
    {
      v48 = v9;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "*** NearbyInvitationScanner state - failed: Removing connection", v51, 2u);
      }

      v52 = *(*v18 + 192);

      v53 = v52(v92);
      v55 = v54;
      v56 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v54, a4);

      if (*v55 >> 62)
      {
        v57 = _CocoaArrayWrapper.endIndex.getter();
        if (v57 >= v56)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v57 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57 >= v56)
        {
LABEL_15:
          specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
          v53(v92, 0);
          NWConnection.cancel()();

          return (*(v10 + 8))(v32, v48);
        }
      }

      __break(1u);
LABEL_43:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_31:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v53(v92, 0);
      (*(*v18 + 264))(a4);
    }

    if (v33 == enum case for NWConnection.State.setup(_:))
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        v62 = "NearbyInvitationScanner state - Setup";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v59, v60, v62, v61, 2u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v33 == enum case for NWConnection.State.preparing(_:))
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        v62 = "NearbyInvitationScanner state - Preparing";
        goto LABEL_23;
      }

LABEL_24:
    }

    if (v33 == enum case for NWConnection.State.ready(_:))
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "*** NearbyInvitationScanner connected and going to append connections", v65, 2u);
      }

      v53 = (*(*v18 + 192))(v92);
      v67 = v66;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    v68 = v9;
    v69 = enum case for NWConnection.State.cancelled(_:);
    v70 = v33;
    v71 = Logger.logObject.getter();
    if (v70 == v69)
    {
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "*** NearbyInvitationScanner state - Cancelled", v73, 2u);
      }

      v74 = *(*v18 + 192);

      v75 = v74(v92);
      v77 = v76;
      v78 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v76, a4);

      if (*v77 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v79 = result;
        if (result >= v78)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v79 = *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v79 >= v78)
        {
LABEL_37:
          specialized Array.replaceSubrange<A>(_:with:)(v78, v79);
          v75(v92, 0);
          NWConnection.cancel()();
        }
      }

      __break(1u);
      return result;
    }

    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v71, v80, "NearbyInvitationScanner - case not handled", v81, 2u);
    }

    return (*(v10 + 8))(v86, v68);
  }

  return result;
}

uint64_t NearbyInvitationScanner.sendRequestConnection(fromHandle:nearbyAdvertisement:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v22 = type metadata accessor for NWConnection.SendCompletion();
  v21[0] = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InvitationRequestData();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolFramer.Message();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v9 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v26 = &type metadata for ConnectionMessageType;
  v25[0] = 1;
  dispatch thunk of NWProtocolFramer.Message.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C8980;
  *(v10 + 32) = v9;
  type metadata accessor for NWConnection.ContentContext();
  swift_allocObject();

  NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
  NearbyAdvertisement.identifier.getter();

  InvitationRequestData.init(invitationData:id:pseudo:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData, &protocol conformance descriptor for InvitationRequestData);
  v24 = v6;
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  v14 = v21[0];
  v15 = v22;
  (*(v21[0] + 104))(v5, enum case for NWConnection.SendCompletion.idempotent(_:), v22);
  outlined copy of Data._Representation(v11, v13);
  NWConnection.send(content:contentContext:isComplete:completion:)();
  outlined consume of Data._Representation(v11, v13);
  (*(v14 + 8))(v5, v15);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.client);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "NearbyInvitationScanner sending data over for preLMI", v19, 2u);

    outlined consume of Data._Representation(v11, v13);
  }

  else
  {

    outlined consume of Data._Representation(v11, v13);
  }

  return (*(v23 + 8))(v8, v24);
}

uint64_t NearbyInvitationScanner.sendApprovalReceivedResponse(to:)(uint64_t a1)
{
  v2 = type metadata accessor for NWConnection.SendCompletion();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolFramer.Message();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v6 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v23[3] = &type metadata for ConnectionMessageType;
  LOBYTE(v23[0]) = 4;
  dispatch thunk of NWProtocolFramer.Message.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C8980;
  *(v7 + 32) = v6;
  type metadata accessor for NWConnection.ContentContext();
  swift_allocObject();

  NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v3;
    v14 = v13;
    v22 = a1;
    v23[0] = v13;
    *v12 = 136315138;
    type metadata accessor for NWConnection();

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "*** NearbyInvitationScanner send approval to connection %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v3 = v20;

    v2 = v21;
  }

  (*(v3 + 104))(v5, enum case for NWConnection.SendCompletion.idempotent(_:), v2);
  NWConnection.send(content:contentContext:isComplete:completion:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t NearbyInvitationScanner.receiveNextMessage(from:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "*** NearbyInvitationScanner received data", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;

  NWConnection.receiveMessage(completion:)();
}

uint64_t closure #1 in NearbyInvitationScanner.receiveNextMessage(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >> 60 != 15 && a3 != 0)
  {
    outlined copy of Data._Representation(a1, a2);
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    if (dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)())
    {
      v32 = a5;
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.client);
      outlined copy of Data._Representation(a1, a2);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      outlined consume of Data?(a1, a2);
      v33 = a7;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34 = v17;
        *v16 = 136315138;
        outlined copy of Data._Representation(a1, a2);
        v18 = String.init<A>(reflecting:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "*** NearbyInvitationScanner received data in bytes: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }

      if ((*(*a6 + 128))())
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        type metadata accessor for NWProtocolFramer.Message();
        v24 = swift_dynamicCastClassUnconditional();
        v25 = *(v22 + 32);
        outlined copy of Data?(a1, a2);

        v25(a1, a2, v24, ObjectType, v22);
        outlined consume of Data?(a1, a2);
        swift_unknownObjectRelease();

        outlined consume of Data?(a1, a2);
      }

      else
      {
        outlined consume of Data?(a1, a2);
      }

      a5 = v32;
      a7 = v33;
    }

    else
    {
      outlined consume of Data?(a1, a2);
    }
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.client);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "*** NearbyInvitationScanner going to send received message to HP", v29, 2u);
  }

  (*(*a6 + 256))(a7);
  v30 = type metadata accessor for NWError();
  result = (*(*(v30 - 8) + 48))(a5, 1, v30);
  if (result == 1)
  {
    return (*(*a6 + 264))(a7);
  }

  return result;
}

uint64_t NearbyInvitationScanner.deinit()
{
  outlined destroy of weak PeerConnectionDelegate?(v0 + 32);

  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t NearbyInvitationScanner.__deallocating_deinit()
{
  outlined destroy of weak PeerConnectionDelegate?(v0 + 32);

  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a3;
  v35 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v30 - v8;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v39[0] = _swiftEmptyArrayStorage;
  _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(a4 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 6) = 0;
  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v39[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v15 = v32;
  Published.init(initialValue:)();
  (*(v33 + 32))(&a4[v14], v15, v34);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.client);
  v17 = v35;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v20 = 136315138;
    v22 = [v17 debugDescription];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v39);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "NearbyInvitationScanner init with parameters %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  *(a4 + 3) = v17;
  swift_beginAccess();
  *(a4 + 5) = v36;
  swift_unknownObjectWeakAssign();
  v27 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 32))(&a4[v27], v38, v28);
  return a4;
}

uint64_t partial apply for closure #1 in NearbyInvitationScanner.connect(to:)(uint64_t a1)
{
  v3 = *(type metadata accessor for NWEndpoint() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in NearbyInvitationScanner.connect(to:)(a1, v5, v1 + v4, v6);
}

uint64_t type metadata accessor for NearbyInvitationScanner(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyInvitationScanner;
  if (!type metadata singleton initialization cache for NearbyInvitationScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationScanner(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[NWConnection]>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[NWConnection]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[NWConnection]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[NWConnection]>);
    }
  }
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NearbyRangingFilter.stableIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NearbyRangingFilter.rangingAssertion.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

__n128 NearbyRangingFilter.device.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v14 = *(v1 + 128);
  v15 = v3;
  v16 = *(v1 + 160);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v4;
  v5 = *(v1 + 112);
  v12 = *(v1 + 96);
  v13 = v5;
  outlined init with copy of BluetoothScanner.Device(&v10, &v9);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t NearbyRangingFilter.device.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v18[4] = *(v1 + 128);
  v18[5] = v3;
  v19 = *(v1 + 160);
  v4 = *(v1 + 80);
  v18[0] = *(v1 + 64);
  v18[1] = v4;
  v5 = *(v1 + 112);
  v18[2] = *(v1 + 96);
  v18[3] = v5;
  v6 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v6;
  v7 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v7;
  v8 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v8;
  *(v1 + 160) = *(a1 + 96);
  outlined init with copy of BluetoothScanner.Device(a1, v16);
  outlined destroy of BluetoothScanner.Device(v18);
  v9 = *(v1 + 32);
  v10 = *(v1 + 144);
  v16[4] = *(v1 + 128);
  v16[5] = v10;
  v17 = *(v1 + 160);
  v11 = *(v1 + 80);
  v16[0] = *(v1 + 64);
  v16[1] = v11;
  v12 = *(v1 + 112);
  v16[2] = *(v1 + 96);
  v16[3] = v12;
  v13 = *((swift_isaMask & *v9) + 0xD8);
  outlined init with copy of BluetoothScanner.Device(v16, &v15);
  v13(v16);
  outlined destroy of BluetoothScanner.Device(v16);
  return outlined destroy of BluetoothScanner.Device(a1);
}

void (*NearbyRangingFilter.device.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  *a1 = v3;
  *(v3 + 208) = v1;
  swift_beginAccess();
  return NearbyRangingFilter.device.modify;
}

void NearbyRangingFilter.device.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[26];
    v5 = *(v4 + 32);
    v7 = *(v4 + 80);
    v6 = *(v4 + 96);
    *v3 = *(v4 + 64);
    *(v3 + 1) = v7;
    *(v3 + 2) = v6;
    v9 = *(v4 + 128);
    v8 = *(v4 + 144);
    v10 = *(v4 + 112);
    v3[12] = *(v4 + 160);
    *(v3 + 4) = v9;
    *(v3 + 5) = v8;
    *(v3 + 3) = v10;
    v11 = *((swift_isaMask & *v5) + 0xD8);
    outlined init with copy of BluetoothScanner.Device(v3, (v3 + 13));
    v11(v3);
    outlined destroy of BluetoothScanner.Device(v3);
  }

  free(v3);
}

uint64_t NearbyRangingFilter.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t NearbyRangingFilter.handle(updatedScannerDevice:)(uint64_t a1)
{
  v3 = *(*v1 + 160);
  outlined init with copy of BluetoothScanner.Device(a1, v5);
  return v3(a1);
}

uint64_t NearbyRangingFilter.__allocating_init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a2 & 1, a3);
  outlined destroy of BluetoothScanner.Device(a1);
  return v6;
}

uint64_t NearbyRangingFilter.init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a2 & 1, a3);
  outlined destroy of BluetoothScanner.Device(a1);
  return v4;
}

uint64_t closure #1 in NearbyRangingFilter.init(scannerDevice:config:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v6, v7, "RangingSession isRunning: %{BOOL}d", v8, 8u);
    }

    v9 = *v4;
    if (v2)
    {
      if ((*(v9 + 128))())
      {
      }

      else
      {
        v10 = (*(*v4 + 152))(v12);
        (v12[11])(&v11, v10);
        outlined destroy of BluetoothScanner.Device(v12);
        (*(*v4 + 136))(v11);
      }
    }

    else
    {
      (*(v9 + 136))(0);
    }
  }

  return result;
}

uint64_t closure #2 in NearbyRangingFilter.init(scannerDevice:config:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = type metadata accessor for NearbyRangingFilter();
    lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter(v3, v4);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  return result;
}

uint64_t NearbyRangingFilter.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v4 = v2;
  v3();

  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 104);

  outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v5, v7);

  return v1;
}

uint64_t NearbyRangingFilter.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v4 = v2;
  v3();

  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 104);

  outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v5, v7);

  return swift_deallocClassInstance();
}

__n128 protocol witness for DeviceFilter.device.getter in conformance NearbyRangingFilter@<Q0>(uint64_t a1@<X8>)
{
  (*(*v1 + 152))(v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance NearbyRangingFilter@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NearbyRangingFilter();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t specialized NearbyRangingFilter.init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 56) = 0;
  *(v4 + 168) = &_swiftEmptySetSingleton;
  v7 = *a1;
  v8 = *(a1 + 8);
  *(v4 + 40) = *a1;
  *(v4 + 48) = v8;
  v9 = a2 & 1;
  *(v4 + 16) = a2 & 1;
  *(v4 + 24) = a3;
  objc_allocWithZone(type metadata accessor for NearbySession(0));
  swift_bridgeObjectRetain_n();
  v10 = NearbySession.init(stableIdentifier:rangingConfig:)(v7, v8, v9, a3);
  *(v4 + 32) = v10;
  v11 = *(a1 + 80);
  *(v4 + 128) = *(a1 + 64);
  *(v4 + 144) = v11;
  *(v4 + 160) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v4 + 64) = *a1;
  *(v4 + 80) = v12;
  v13 = *(a1 + 48);
  *(v4 + 96) = *(a1 + 32);
  *(v4 + 112) = v13;
  v14 = *((swift_isaMask & *v10) + 0x90);
  v15 = outlined init with copy of BluetoothScanner.Device(a1, v21);
  v21[0] = v14(v15);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21[0] = (*((swift_isaMask & **(v4 + 32)) + 0xB0))(v16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<NearbySession.RangedDevice?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v17 = *(v4 + 32);
  v18 = *((swift_isaMask & *v17) + 0xD8);
  v19 = v17;
  v18(a1);

  return v4;
}

uint64_t outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode()
{
  result = lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode;
  if (!lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for NearbyRangingFilter(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter;
  if (!lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter)
  {
    type metadata accessor for NearbyRangingFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyRangingFilter.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyRangingFilter.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall, 0, 0);
}

uint64_t protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall()
{
  v1 = v0[19];
  type metadata accessor for IDSFirewallEntry();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[3] = protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v1 donateEntries:isa withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

unint64_t type metadata accessor for IDSFirewallEntry()
{
  result = lazy cache variable for type metadata for IDSFirewallEntry;
  if (!lazy cache variable for type metadata for IDSFirewallEntry)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IDSFirewallEntry);
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, &type metadata for Never, &type metadata for String, v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t Log.client.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NearbyGroupMember(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t NearbyGroupHost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for NearbyGroupHost.members : NearbyGroupHost@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyGroupHost.members : NearbyGroupHost(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xC8);

  return v2(v3);
}

uint64_t NearbyGroupHost.members.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*NearbyGroupHost.members.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return NearbyInvitationAdvertiser.dataReceived.modify;
}

uint64_t key path setter for NearbyGroupHost.$members : NearbyGroupHost(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((swift_isaMask & **a2) + 0xE0))(v6);
}

uint64_t NearbyGroupHost.$members.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyGroupHost.$members.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost__members;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$dataReceived.modify;
}

uint64_t NearbyGroupHost.localMember.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMember;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of PseudonymProtocol(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t NearbyGroupHost.localMemberToken.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NearbyGroupHost.localMemberToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for NearbyGroupHost.state : NearbyGroupHost@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t NearbyGroupHost.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyGroupHost.state.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*NearbyGroupHost.state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path setter for NearbyGroupHost.$state : NearbyGroupHost(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((swift_isaMask & **a2) + 0x160))(v6);
}

uint64_t NearbyGroupHost.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMd, &_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyGroupHost.$state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost__state;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMd, &_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t NearbyGroupHost.connection.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.group);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31[0] = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
    swift_beginAccess();
    v17 = *&v10[v16];
    if (v17)
    {
      v30[1] = *&v10[v16];
      type metadata accessor for NearbyGroupHostConnection(0);
      v18 = v10;
      v19 = v17;
      v20 = String.init<A>(reflecting:)();
      v22 = v21;
    }

    else
    {
      v23 = v10;
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v31);

    *(v13 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ changed XPC connection to %s", v13, 0x16u);
    outlined destroy of Any?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  if (a1)
  {
    dispatch thunk of XPCHostConnection.destroyConnection()();
  }

  v25 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  v26 = swift_beginAccess();
  v27 = *&v10[v25];
  v28 = (*((swift_isaMask & *v10) + 0x128))(v26);
  os_unfair_lock_lock((v28 + 24));
  if (v27)
  {
    if (!*(v28 + 16))
    {
      *(v28 + 16) = os_transaction_create();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    *(v28 + 16) = 0;
  }

  os_unfair_lock_unlock((v28 + 24));
}

void NearbyGroupHost.connection.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  NearbyGroupHost.connection.didset(v4);
}

void (*NearbyGroupHost.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return NearbyGroupHost.connection.modify;
}

void NearbyGroupHost.connection.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    NearbyGroupHost.connection.didset(v8);

    v8 = *v5;
  }

  else
  {
    NearbyGroupHost.connection.didset(v8);
  }

  free(v3);
}

uint64_t NearbyGroupHost.transaction.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t NearbyGroupHost.incomingMessageListenerTask.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t NearbyGroupHost.__allocating_init(remoteInitialization:idsService:localMemberToken:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v71 = a3;
  v70 = type metadata accessor for UUID();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = _swiftEmptyArrayStorage;
  v8 = *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20);
  v75 = a1;
  v77 = *(a1 + v8);
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVG_SSs5NeverOTg508_s44com_e1_fg1_hi10Service0E9kl37C20remoteInitialization03idsG016localp14TokenAcA0ehI10m3C12nO87O06RemotehK0V_AHS2ScSgtKcfcSSAJ0N0Vcfu_32fa9956de96d0eac289a8d33e15b59ca7AOSSTf3nnnpk_nTf1cn_n(v77);
  v10 = v4;
  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v9);

  v73 = a2;
  v12 = &a2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
  v13 = v11 + 56;
  while (1)
  {
    v14 = *(v12 + 3);
    v15 = *(v12 + 4);
    v16 = __swift_project_boxed_opaque_existential_1(v12, v14);
    v79 = v14;
    v80 = *(v15 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
    specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(v78, 1, v83);
    if (v10)
    {
      break;
    }

    v19 = v83[2];
    v18 = v83[3];
    v21 = v83[0];
    v20 = v83[1];
    v85 = v84;
    outlined destroy of Any?(&v85, &_sSSSgMd, &_sSSSgMR);
    *&v86 = v21;
    *(&v86 + 1) = v20;
    v87 = v19;
    v88 = v18;
    v89 = 0xD000000000000016;
    v90 = 0x80000001000CEB90;
    v10 = 0;
    v22 = specialized static Pseudonym.existing(for:configuration:)(v78, &v86);

    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    if (v91)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    swift_beginAccess();
    v23 = [(objc_class *)v22[2].isa URI];
    v24 = [v23 prefixedURI];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (*(v11 + 16))
    {
      v76 = 0;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      if ((*(v13 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(v11 + 48) + 16 * v30);
          v33 = *v32 == v25 && v32[1] == v27;
          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v13 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v34 = one-time initialization token for host;

        if (v34 == -1)
        {
          goto LABEL_19;
        }

LABEL_45:
        swift_once();
LABEL_19:
        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Log.host);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v78[0] = v39;
          *v38 = 136446210;
          v40 = Pseudonym.description.getter();
          v42 = v41;

          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v78);

          *(v38 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v36, v37, "Found existing pseudonym matching members: %{public}s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
        }

        else
        {
        }

        Pseudonym.markUsed()();
        (*(v69 + 16))(v74, v75, v70);
        v44 = _swiftEmptyArrayStorage;
        v78[0] = _swiftEmptyArrayStorage;
        v45 = v77 + 56;
        v46 = 1 << *(v77 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(v77 + 56);
        v49 = (v46 + 63) >> 6;

        v50 = 0;
        if (v48)
        {
          goto LABEL_29;
        }

        while (1)
        {
          do
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              __break(1u);
              goto LABEL_45;
            }

            if (v51 >= v49)
            {

              v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(v44);

              v79 = type metadata accessor for Pseudonym();
              v80 = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, type metadata accessor for Pseudonym, &protocol conformance descriptor for Pseudonym);
              v78[0] = v22;
              v53 = (*(v68 + 464))(v74, v52, v78, v73, v71, v72);

              outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v75, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
              return v53;
            }

            v48 = *(v45 + 8 * v51);
            ++v50;
          }

          while (!v48);
          v50 = v51;
          do
          {
LABEL_29:
            objc_allocWithZone(type metadata accessor for NearbyGroupMember());

            NearbyGroupMember.init(handle:tokenID:)();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v48 &= v48 - 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v44 = v78[0];
          }

          while (v48);
        }
      }

LABEL_17:

      v10 = v76;
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Log.host);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v57 = 136446466;
    swift_beginAccess();
    if (v91)
    {
      v81 = v91;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService9PseudonymCGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService9PseudonymCGMR);
      v58 = String.init<A>(reflecting:)();
      v60 = v59;
    }

    else
    {
      v60 = 0xE300000000000000;
      v58 = 7104878;
    }

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v82);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2082;
    v62 = Set.description.getter();
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v82);

    *(v57 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v55, v56, "Exhausted existing pseudonyms: %{public}s and couldn't find one matching members: %{public}s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
  v53 = swift_allocError();
  *v66 = 1;
  swift_willThrow();
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v71, v72);

  outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v75, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);

  return v53;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVG_SSs5NeverOTg508_s44com_e1_fg1_hi10Service0E9kl37C20remoteInitialization03idsG016localp14TokenAcA0ehI10m3C12nO87O06RemotehK0V_AHS2ScSgtKcfcSSAJ0N0Vcfu_32fa9956de96d0eac289a8d33e15b59ca7AOSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 32 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for UUID();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:), 0, 0);
}

uint64_t NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:);
  }

  else
  {

    *(v4 + 304) = a1;
    v5 = NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:);
  }

  return _swift_task_switch(v5, 0, 0);
}

char *NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = specialized NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(a1, a2, a3, a4, a5, a6);
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a5, a6);

  return v9;
}

void NearbyGroupHost.handle(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v98 = &v89 - v9;
  v10 = __chkstk_darwin(v8);
  v91 = &v89 - v11;
  __chkstk_darwin(v10);
  v92 = &v89 - v12;
  v13 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v96 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v93 = &v89 - v18;
  v19 = __chkstk_darwin(v17);
  v94 = &v89 - v20;
  v21 = __chkstk_darwin(v19);
  v97 = (&v89 - v22);
  __chkstk_darwin(v21);
  v95 = &v89 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v27 = v28;
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v100 = v13;
  v30 = String._bridgeToObjectiveC()();
  v31 = IDSCopyAddressDestinationForDestination();

  v32 = IDSCopyRawAddressForDestination();
  if (!v32)
  {
    if (one-time initialization token for host == -1)
    {
LABEL_8:
      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.host);
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(a1, v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      v47 = v2;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v101 = v99;
        *v50 = 138412546;
        *(v50 + 4) = v47;
        v97 = v51;
        *v51 = v47;
        *(v50 + 12) = 2080;
        v52 = v98;
        outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v16, v98, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
        v53 = v96;
        v54 = v100;
        (*(v96 + 56))(v52, 0, 1, v100);
        outlined init with copy of (String, Any)(v52, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMR);
        if ((*(v53 + 48))(v7, 1, v54) == 1)
        {
          v55 = 7104878;
          v56 = v47;
          v57 = 0xE300000000000000;
        }

        else
        {
          v78 = v7;
          v79 = v94;
          outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v78, v94, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
          outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v79, v93, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
          v80 = v47;
          v55 = String.init<A>(reflecting:)();
          v57 = v81;
          outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v79, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
        }

        outlined destroy of Any?(v98, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMR);
        outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v101);

        *(v50 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v48, v49, "%@ Failed to convert ID into Raw IDS Destination: %s", v50, 0x16u);
        outlined destroy of Any?(v97, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v99);
      }

      else
      {

        outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      }

      lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
      swift_allocError();
      *v83 = 3;
      swift_willThrow();
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = type metadata accessor for NearbyGroupMember();
  v34 = objc_allocWithZone(v33);

  v35 = NearbyGroupMember.init(handle:tokenID:)();
  v36 = objc_allocWithZone(v33);

  v37 = NearbyGroupMember.init(handle:tokenID:)();
  v38 = *((swift_isaMask & *v2) + 0xC0);
  v39 = v38();
  v40 = specialized Set.contains(_:)(v35, v39);

  if (v40 & 1) != 0 || (v42 = (v38)(v41), v43 = specialized Set.contains(_:)(v37, v42), , (v43))
  {
    v44 = a1 + *(v100 + 24);
    v45 = *v44;
    if (*(v44 + 32))
    {
      NearbyGroupHost.handle(removedMember:)(v45);
    }

    else
    {
      NearbyGroupHost.handle(addedMember:)(v45);
    }
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Log.group);
    v59 = v95;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(a1, v95, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
    v60 = v97;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(a1, v97, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
    v61 = v2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v98) = v63;
      v99 = v37;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v101 = v90;
      *v64 = 138412802;
      *(v64 + 4) = v61;
      v89 = v65;
      *v65 = v2;
      *(v64 + 12) = 2080;
      v66 = v59;
      v67 = v100;
      v68 = (v66 + *(v100 + 20));
      v69 = *v68;
      v70 = v68[1];
      v71 = v61;

      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v66, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v101);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      v73 = v92;
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v97, v92, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      v74 = v96;
      (*(v96 + 56))(v73, 0, 1, v67);
      v75 = v91;
      outlined init with copy of (String, Any)(v73, v91, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMR);
      if ((*(v74 + 48))(v75, 1, v67) == 1)
      {
        v76 = 7104878;
        v77 = 0xE300000000000000;
      }

      else
      {
        v84 = v75;
        v85 = v94;
        outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v84, v94, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
        outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v85, v93, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
        v76 = String.init<A>(reflecting:)();
        v77 = v86;
        outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v85, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      }

      outlined destroy of Any?(v73, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO18MembershipMutationVSgMR);
      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v97, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v101);

      *(v64 + 24) = v87;
      _os_log_impl(&_mh_execute_header, v62, v98, "%@ couldn't find member %s in membership list. Failing membership mutation: %s", v64, 0x20u);
      outlined destroy of Any?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();

      v37 = v99;
    }

    else
    {

      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v60, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v59, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
    }

    lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
    swift_allocError();
    *v88 = 0;
    swift_willThrow();
  }
}

uint64_t closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t NearbyGroupHost.join(withNearbyGroupMembers:)(void (*a1)(uint64_t, uint64_t, uint64_t, void))
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received join message from client. We're now synced", v13, 2u);
  }

  v14 = (*((swift_isaMask & *v2) + 0x148))(1);
  v15 = (*((swift_isaMask & *v2) + 0x108))(v14);
  v17 = v16;
  v18 = (*((swift_isaMask & *v2) + 0xC0))();
  a1(v15, v17, v18, 0);
}

uint64_t NearbyGroupHost.addMember(nearbyGroupMember:completion:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v43 = a3;
  v44 = a2;
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.group);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v19 = 136315138;
    v21 = [v16 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received request to add member: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  (*((swift_isaMask & *v4) + 0xF0))(v46);
  v26 = v47;
  v27 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v27 + 56))(v26, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v28 = (*((swift_isaMask & *v4) + 0xD0))(v46);
  v29 = v16;
  v30 = specialized Set._Variant.insert(_:)(&v45, v29);

  v28(v46, 0);
  if (v30)
  {
    NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(v4, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8980;
    *(inited + 32) = v29;
    v40 = v29;
    v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(v4, v41);
  }

  else
  {
    v31 = v4;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46[0] = v35;
      *v34 = 136315138;
      v45 = (*((swift_isaMask & *v31) + 0xC0))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
      v36 = String.init<A>(reflecting:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v46);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring addMember since member is already part of NearbyGroup: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }
  }

  return v44(0);
}

void NearbyGroupHost.kickMember(nearbyGroupMember:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.group);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received request to kick member: %@", v18, 0xCu);
    outlined destroy of Any?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v21 = (*((swift_isaMask & *v4) + 0xD0))(v41);
  v22 = specialized Set._Variant.remove(_:)(v15);
  v21(v41, 0);
  if (v22)
  {
    NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(v4, v15);
    (a2)(0);
  }

  else
  {
    v39 = a3;
    v23 = v15;
    v24 = v4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = a2;
      v29 = v28;
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v27 = 138412802;
      *(v27 + 4) = v24;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v23;
      *v29 = v4;
      v29[1] = v23;
      *(v27 + 22) = 2080;
      v31 = *((swift_isaMask & *v24) + 0xC0);
      v32 = v23;
      v33 = v24;
      v31();
      type metadata accessor for NearbyGroupMember();
      lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember, &protocol conformance descriptor for NSObject);
      v34 = Set.description.getter();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v41);

      *(v27 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@ Not able to kick member since member isn't found in membership list, member: %@, list: %s", v27, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      a2 = v40;

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
    swift_allocError();
    *v38 = 2;
    a2();
  }
}

uint64_t NearbyGroupHost.leave(completion:)(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.group);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ Received request to leave", v13, 0xCu);
    outlined destroy of Any?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  NearbyGroupHostIDSService.distributeLeave(for:)(v10);
  (*((swift_isaMask & *v10) + 0x1F8))();
  return a1(0);
}

Swift::Void __swiftcall NearbyGroupHost.invalidate()()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@ invalidating", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*((swift_isaMask & *v2) + 0x148))(2);
  (*((swift_isaMask & *v2) + 0x178))(0);
}

id NearbyGroupHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyGroupHost(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyGroupHost.handle(addedMember:)(com_apple_SharePlay_NearbyInvitationsService::NearbyGroupHostIDSService::MessageEvent::Member addedMember)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    objc_allocWithZone(type metadata accessor for NearbyGroupMember());

    v8 = NearbyGroupMember.init(handle:tokenID:)();
    v9 = *((swift_isaMask & *v1) + 0xD0);
    v10 = v8;
    v11 = v9(v13);
    specialized Set._Variant.insert(_:)(&v14, v10);

    v11(v13, 0);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyGroupHost.handle(removedMember:)(com_apple_SharePlay_NearbyInvitationsService::NearbyGroupHostIDSService::MessageEvent::Member removedMember)
{
  v2 = v1;
  object = removedMember.token.value._object;
  v4 = removedMember.handle._object;
  countAndFlagsBits = removedMember.handle._countAndFlagsBits;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v7 + 8);
  v12 = (v7 + 8);
  v13(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = type metadata accessor for NearbyGroupMember();
  objc_allocWithZone(v14);

  countAndFlagsBits = NearbyGroupMember.init(handle:tokenID:)();
  v12 = &swift_isaMask;
  v15 = *((swift_isaMask & *v1) + 0x108);
  v15();
  v16 = objc_allocWithZone(v14);
  object = NearbyGroupMember.init(handle:tokenID:)();
  v17 = (v15)();
  (*((swift_isaMask & *v1) + 0x110))(v17);
  v18 = objc_allocWithZone(v14);
  v4 = NearbyGroupMember.init(handle:tokenID:)();
  if (static NSObject.== infix(_:_:)() & 1) != 0 || (static NSObject.== infix(_:_:)())
  {
    if (one-time initialization token for group == -1)
    {
LABEL_5:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.group);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Removed member is localMember, invalidating session.", v22, 2u);
      }

      (*((*v12 & *v2) + 0x1F8))();
      goto LABEL_8;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v23 = (*((swift_isaMask & *v1) + 0xD0))(v41);
  v24 = specialized Set._Variant.remove(_:)(countAndFlagsBits);
  v23(v41, 0);
  if (v24)
  {

    v4 = v24;
LABEL_8:

    return;
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.group);
  v26 = v2;
  v27 = countAndFlagsBits;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v40 = v27;
    v31 = v30;
    v32 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41[0] = v39;
    *v31 = 138412546;
    *(v31 + 4) = v26;
    *v32 = v2;
    *(v31 + 12) = 2080;
    v41[5] = v40;
    v33 = v26;
    v34 = v40;
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v41);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "%@ Couldn't find member %s to remove", v31, 0x16u);
    outlined destroy of Any?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v39);

    v27 = v40;
  }

  lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
  swift_allocError();
  *v38 = 2;
  swift_willThrow();
}

void NearbyGroupHost.handleHostConnectionInvalidated(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "handleHostConnectionInvalidated, checking if connection is current", v13, 2u);
  }

  v14 = (*((swift_isaMask & *v2) + 0x170))();
  if (v14)
  {
    v15 = v14;

    if (v15 == a1)
    {
      (*((swift_isaMask & *v2) + 0x178))(0);
    }
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for NearbyGroupMember();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for NearbyGroupMember();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      specialized Set._Variant.insert(_:)(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC44com_apple_SharePlay_NearbyInvitationsService0F19GroupHostIDSServiceC12MessageEventO6MemberV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      specialized Set._Variant.insert(_:)(&v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHost.State and conformance NearbyGroupHost.State()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State);
  }

  return result;
}

void type metadata completion function for NearbyGroupHost(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<NearbyGroupMember>>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<NearbyGroupHost.State>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<Set<NearbyGroupMember>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyGroupMember>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<NearbyGroupMember>>);
    }
  }
}

void type metadata accessor for Published<NearbyGroupHost.State>()
{
  if (!lazy cache variable for type metadata for Published<NearbyGroupHost.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NearbyGroupHost.State>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member);
  }

  return result;
}

uint64_t partial apply for closure #2 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((swift_isaMask & *v1) + 0x178);
  v4 = v2;
  return v3(v2);
}

uint64_t outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id NIBluetoothSample.init(with:)(void *a1)
{
  v2 = [a1 stableIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 model];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v7 = [v6 initWithRSSI:v3 identifier:v5 model:objc_msgSend(a1 channel:"bleChannel") machContinuousTimeSeconds:{objc_msgSend(a1, "bleRSSI"), mach_continuous_time()}];

      return v7;
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.host);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
      v15 = v10;
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);

      *(v13 + 4) = v23;
      v19 = "Can't create NIBTSample for device: %s. No model.";
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_13;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v24 = v14;
  *v13 = 136315138;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v15 = v10;
  v16 = String.init<A>(reflecting:)();
  v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

  *(v13 + 4) = v18;
  v19 = "Can't create NIBTSample for device: %s. No stableIdentifier.";
LABEL_12:
  _os_log_impl(&_mh_execute_header, v11, v12, v19, v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);

  return 0;
}

void *BluetoothScannerDiscoveryEngineDevice.sample.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.contact.getter()
{
  v1 = *(v0 + 32);
  outlined copy of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v1, *(v0 + 40));
  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.accountID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.init(stableIdentifier:hasInvitation:sample:contact:activityType:invitationCounter:accountID:routeType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  return result;
}

uint64_t NearbyAdvertisement.init(scannerID:device:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 2);
  if (!*(&v23 + 1))
  {
    v20 = v2;
    type metadata accessor for NearbyAdvertisement();
    v19 = static NearbyAdvertisement.meContactID.getter();
LABEL_6:
    (*(v6 + 16))(v8, a1, v5);
    v10 = a2[1];
    v17 = *a2;
    v21[0] = v17;
    v21[1] = v10;
    outlined init with copy of (String, Any)(&v23, &v22, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSgMR);

    v18 = v5;
    v11._countAndFlagsBits = 45;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v22 = a2[7];
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v14[3] = *(a2 + 12);
    v15 = a2[8];
    v16 = a1;
    LOBYTE(v21[0]) = *(a2 + 80);

    _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v21, v21 + 1);

    v9 = dispatch thunk of NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    outlined destroy of BluetoothScannerDiscoveryEngineDevice(a2);
    (*(v6 + 8))(v16, v18);
    return v9;
  }

  if (*(&v23 + 1) != 1)
  {
    v19 = v23;
    v20 = v2;
    goto LABEL_6;
  }

  outlined destroy of BluetoothScannerDiscoveryEngineDevice(a2);
  (*(v6 + 8))(a1, v5);
  return 0;
}

double BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(a2, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

__n128 BluetoothScanner.Device.cbDevice.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10[3] = *(v1 + 48);
  v10[4] = v4;
  v11 = *(v1 + 80);
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v10[2] = v3;
  outlined init with copy of (String, Any)(v10, v9, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = *(v1 + 80);
  result = *v1;
  v8 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v8;
  return result;
}

__n128 property wrapper backing initializer of BluetoothScanner.Device.cbDevice@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

__n128 BluetoothScanner.Device.cbDevice.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t IgnoreHashable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for IgnoreEquatable(0, v6, a3, a4);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v4);
  return (*(*(v6 - 8) + 32))(a2, v9, v6);
}

uint64_t (*BluetoothScanner.Device.cbDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Pseudonym.Configuration.featureID.modify();
  return BluetoothScanner.Device.cbDevice.modify;
}

void BluetoothScanner.Device.cbDevice.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*property wrapper backing initializer of BluetoothScanner.Device.acquireScanRateAssertionClosure(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?);
}

uint64_t (*BluetoothScanner.Device.acquireScanRateAssertionClosure.getter())()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return partial apply for thunk for @escaping @callee_guaranteed () -> (@out AssertionManager.Assertion?);
}

__n128 BluetoothScanner.Device.init(device:acquireScanRateAssertionClosure:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  LOBYTE(v14) = *(a1 + 80);
  v9 = *a1;
  v10 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  result = v9;
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 80) = v14;
  *(a4 + 88) = thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)partial apply;
  *(a4 + 96) = v7;
  return result;
}

uint64_t BluetoothScanner.devices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

uint64_t BluetoothScanner.devices.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v3);
  v8[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t (*BluetoothScanner.devices.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return BluetoothScanner.devices.modify;
}

void BluetoothScanner.devices.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t BluetoothScanner.$devices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  (*(v2 + 16))(&v7 - v3, v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v1);
  v5 = CurrentSubject.projectedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t BluetoothScanner.maxScanAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t BluetoothScanner.__allocating_init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v6 = specialized BluetoothScanner.init(discoveryEngine:)(a1, v4, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = specialized BluetoothScanner.init(discoveryEngine:)(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t closure #1 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.host);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v7, v8, "ScanRate assertions changed: %ld", v9, 0xCu);
    }

    ObjectType = swift_getObjectType();
    v11 = *(v5 + 32);
    v12 = v11(ObjectType, v5);
    v13 = *(v5 + 40);
    if (a1)
    {
      v13(v12 | 0x8000000000000000, ObjectType, v5);
      v14 = v11(ObjectType, v5) | 0x10000000000;
      v15 = 60;
    }

    else
    {
      v13(v12 & 0x7FFFFFFFFFFFFFFFLL, ObjectType, v5);
      v14 = v11(ObjectType, v5) & 0xFFFFFEFFFFFFFFFFLL;
      v15 = 20;
    }

    v13(v14, ObjectType, v5);
    (*(v5 + 16))(v15, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #2 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    outlined init with copy of BluetoothScannerDiscoveryEngineDevice(a1, v17);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined destroy of BluetoothScannerDiscoveryEngineDevice(a1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = *(a1 + 48);
      v17[2] = *(a1 + 32);
      v17[3] = v10;
      v17[4] = *(a1 + 64);
      v18 = *(a1 + 80);
      v11 = *(a1 + 16);
      v17[0] = *a1;
      v17[1] = v11;
      outlined init with copy of BluetoothScannerDiscoveryEngineDevice(a1, &v15);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Learned about updated BT device: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    (*(*v4 + 168))();
  }

  return result;
}

uint64_t closure #3 in BluetoothScanner.init(discoveryEngine:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v28 = a1[2];
  v29 = v3;
  v30 = a1[4];
  v31 = *(a1 + 80);
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.host);
    outlined init with copy of (String, Any)(a1, v24, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    outlined destroy of Any?(a1, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      if (*(a1 + 1))
      {
        v20 = v29;
        v21 = v30;
        v22 = v31;
        v17 = v26;
        v18 = v27;
        v19 = v28;
        v24[2] = v28;
        v24[3] = v29;
        v24[4] = v30;
        v25 = v31;
        v24[0] = v26;
        v24[1] = v27;
        outlined init with copy of BluetoothScannerDiscoveryEngineDevice(v24, v16);
        v12 = String.init<A>(reflecting:)();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Learned about BT device lost: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    (*(*v6 + 168))();
  }

  return result;
}

uint64_t closure #4 in BluetoothScanner.init(discoveryEngine:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating scanner.", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v10 = (*(v6 + 112) + **(v6 + 112));
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = closure #4 in BluetoothScanner.init(discoveryEngine:);

  return v10(ObjectType, v6);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = closure #4 in BluetoothScanner.init(discoveryEngine:);
  }

  else
  {
    v2 = closure #4 in BluetoothScanner.init(discoveryEngine:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to activate the scanner. Reason: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t closure #4 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activated scanner.", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

Swift::Void __swiftcall BluetoothScanner.handleDiscoveryEngineDevicesChanged()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = v4 + 32;
    while (v7 < *(v5 + 16))
    {
      v10 = *(v9 + 16);
      v24 = *v9;
      v25 = v10;
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v29 = *(v9 + 80);
      v27 = v12;
      v28 = v13;
      v26 = v11;
      v14 = swift_allocObject();
      swift_weakInit();
      v32 = v26;
      v33 = v27;
      v34 = v28;
      LOBYTE(v35) = v29;
      v30 = v24;
      v31 = v25;
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for closure #1 in closure #1 in BluetoothScanner.handleDiscoveryEngineDevicesChanged();
      *(v15 + 24) = v14;
      outlined init with copy of BluetoothScannerDiscoveryEngineDevice(&v24, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
      }

      ++v7;
      *(v8 + 2) = v17 + 1;
      v18 = &v8[104 * v17];
      v19 = v31;
      *(v18 + 2) = v30;
      *(v18 + 3) = v19;
      v20 = v32;
      v21 = v34;
      v22 = v35;
      *(v18 + 5) = v33;
      *(v18 + 6) = v21;
      *(v18 + 4) = v20;
      *(v18 + 14) = v22;
      *(v18 + 15) = thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)partial apply;
      *(v18 + 16) = v15;
      v9 += 88;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_11:

    (*(*v1 + 112))(v8);
  }
}

uint64_t closure #1 in closure #1 in BluetoothScanner.handleDiscoveryEngineDevicesChanged()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = (*(*Strong + 136))();
  v3 = (*(*v2 + 160))(v2);

  return v3;
}

uint64_t BluetoothScanner.__allocating_init()()
{
  v1 = [objc_allocWithZone(CBDiscovery) init];
  [v1 setUseCase:131092];
  [v1 addDiscoveryType:21];
  v2 = *(v0 + 160);

  return v2(v1, &protocol witness table for CBDiscovery);
}

uint64_t BluetoothScanner.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 120);
  swift_unknownObjectRetain();
  v4(ObjectType, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  return v1;
}

uint64_t BluetoothScanner.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 120);
  swift_unknownObjectRetain();
  v4(ObjectType, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t key path setter for IgnoreHashable.wrappedValue : <A>IgnoreHashable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  __chkstk_darwin(a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for IgnoreHashable(0, v4, v8, v9);
  return IgnoreHashable.wrappedValue.setter(v6, v10);
}

char *CBDiscovery.devices.getter()
{
  v1 = [v0 discoveredDevices];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_31:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_32:
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = 0;
  v36 = _swiftEmptyArrayStorage;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v8 = [v6 stableIdentifier];
      if (v8)
      {
        break;
      }

LABEL_6:

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_33;
      }
    }

    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [v7 accountID];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v16;

    v33 = ([v7 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v7, "nearbyInfoV2InvitationCounter") != 0;
    v17 = [v7 nearbyInfoV2InvitationCounter];
    v31 = [v7 nearbyInfoV2DecryptedFlags];
    v35 = v15;
    v32 = v17;
    if (([v7 deviceFlags] & 0x80) != 0)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v18 = [v7 contactID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v21;
        v30 = v20;
      }

      else
      {
        v29 = 1;
        v30 = 0;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
    v22 = v7;
    v23 = NIBluetoothSample.init(with:)(v22);
    v28 = [v22 nearbyInfoV2InvitationRouteType];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    }

    v25 = *(v36 + 2);
    v24 = *(v36 + 3);
    if (v25 >= v24 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v36);
    }

    *(v36 + 2) = v25 + 1;
    v26 = &v36[88 * v25];
    *(v26 + 4) = v10;
    *(v26 + 5) = v12;
    v26[48] = v33;
    *(v26 + 49) = *v37;
    *(v26 + 13) = *&v37[3];
    *(v26 + 7) = v23;
    *(v26 + 8) = v30;
    *(v26 + 9) = v29;
    *(v26 + 20) = v31 & 1;
    *(v26 + 11) = v32;
    *(v26 + 12) = v35;
    *(v26 + 13) = v34;
    v26[112] = v28;
  }

  while (v4 != v3);
LABEL_33:

  return v36;
}

id key path setter for CBDiscovery.deviceLost : CBDiscovery(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v1, v2);
  return CBDiscovery.deviceLost.setter(v4, v3);
}

id CBDiscovery.deviceLost.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = partial apply for closure #1 in CBDiscovery.deviceLost.setter;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v9[3] = &block_descriptor_3;
    v7 = _Block_copy(v9);

    [v3 setDeviceLostHandler:v7];
    _Block_release(v7);
    return _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a1, a2);
  }

  else
  {

    return [v2 setDeviceFoundHandler:0];
  }
}

uint64_t closure #1 in CBDiscovery.deviceLost.setter(void *a1, void (*a2)(void *))
{
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(a1, v4);
  a2(v4);
  return outlined destroy of Any?(v4, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
}

void (*CBDiscovery.deviceLost.modify(void *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v1;
  return CBDiscovery.deviceLost.modify;
}

void CBDiscovery.deviceLost.modify(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[8];
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = closure #1 in CBDiscovery.deviceLost.setterpartial apply;
      v2[5] = v6;
      *v2 = _NSConcreteStackBlock;
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
      v2[3] = &block_descriptor_24;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setDeviceLostHandler:v7];
      _Block_release(v7);
      _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v3, v5);
    }

    else
    {
      [(*a1)[8] setDeviceFoundHandler:0];
    }

    v11 = v2[6];
    v12 = v2[7];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = closure #1 in CBDiscovery.deviceLost.setterpartial apply;
    v2[5] = v9;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v2[3] = &block_descriptor_31;
    v10 = _Block_copy(v2);

    [v4 setDeviceLostHandler:v10];
    _Block_release(v10);
    v11 = v3;
    v12 = v8;
LABEL_8:
    _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v11, v12);
    goto LABEL_9;
  }

  [(*a1)[8] setDeviceFoundHandler:0];
LABEL_9:

  free(v2);
}

id key path setter for CBDiscovery.deviceFound : CBDiscovery(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v1, v2);
  return CBDiscovery.deviceFound.setter(v4, v3);
}

id CBDiscovery.deviceFound.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v10[4] = partial apply for closure #1 in CBDiscovery.deviceFound.setter;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v10[3] = &block_descriptor_40;
    v8 = _Block_copy(v10);

    [v3 setDeviceFoundHandler:v8];
    _Block_release(v8);
    return _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a1, a2);
  }

  else
  {

    return [v2 setDeviceFoundHandler:0];
  }
}

void closure #1 in CBDiscovery.deviceFound.setter(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v4 = a1;
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(v4, &v15);
  if (v16)
  {
    v22[0] = v15;
    v22[1] = v16;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v24 = v18;
    v23 = v17;
    a3(v22);
    outlined destroy of Any?(&v15, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    v6 = v4;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
      v10 = v6;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Couldn't generate device for CBDevice: %s, notifying as lost.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {
    }
  }
}

void (*CBDiscovery.deviceFound.modify(void *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v1;
  return CBDiscovery.deviceFound.modify;
}

void CBDiscovery.deviceFound.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  if (a2)
  {
    v4 = v2[7];
    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?((*a1)[6], v4);
    CBDiscovery.deviceFound.setter(v3, v4);
    v5 = v2[6];
    v6 = v2[7];
LABEL_5:
    _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v5, v6);
    goto LABEL_6;
  }

  v7 = v2[8];
  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v3;
    v10[4] = v8;
    v2[4] = closure #1 in CBDiscovery.deviceFound.setterpartial apply;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v2[3] = &block_descriptor_48;
    v11 = _Block_copy(v2);

    [v7 setDeviceFoundHandler:v11];
    _Block_release(v11);
    v5 = v3;
    v6 = v8;
    goto LABEL_5;
  }

  [v2[8] setDeviceFoundHandler:0];
LABEL_6:

  free(v2);
}

id (*CBDiscovery.scanRate.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 bleScanRate];
  return CBDiscovery.scanRate.modify;
}

id (*protocol witness for BluetoothScannerDiscoveryEngine.discoveryFlags.modify in conformance CBDiscovery(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 discoveryFlags];
  return protocol witness for BluetoothScannerDiscoveryEngine.discoveryFlags.modify in conformance CBDiscovery;
}

uint64_t (*protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CBDiscovery.deviceLost.modify(v2);
  return protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery;
}

uint64_t (*protocol witness for BluetoothScannerDiscoveryEngine.deviceFound.modify in conformance CBDiscovery(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CBDiscovery.deviceFound.modify(v2);
  return protocol witness for BluetoothScannerDiscoveryEngine.deviceFound.modify in conformance CBDiscovery;
}

void protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery()
{
  *(v1 + 144) = v0;
  return _swift_task_switch(protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery, 0, 0);
}

{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_94;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t outlined copy of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 stableIdentifier];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 accountID];
  if (!v9)
  {

LABEL_6:

    v14 = 0;
    v8 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v30 = v6;
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v12;
  v29 = v11;

  v13 = ([a1 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(a1, "nearbyInfoV2InvitationCounter") != 0;
  v23 = [a1 nearbyInfoV2InvitationCounter];
  v22 = [a1 nearbyInfoV2DecryptedFlags] & 1;
  if (([a1 deviceFlags] & 0x80) != 0)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v24 = [a1 contactID];
    if (v24)
    {
      v25 = v24;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v26;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
  v27 = a1;
  v15 = NIBluetoothSample.init(with:)(v27);
  v18 = v23;
  v21 = [v27 nearbyInfoV2InvitationRouteType];

  v19 = v29;
  v14 = v30;
  v20 = v28;
LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v22;
  *(a2 + 56) = v18;
  *(a2 + 64) = v19;
  *(a2 + 72) = v20;
  *(a2 + 80) = v21;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t specialized BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v30[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v12 + 32))(a2 + v15, v14, v11);
  *(a2 + 16) = a1;
  *(a2 + 24) = a4;
  v16 = *(a4 + 16);
  swift_unknownObjectRetain();
  v16(20, a3, a4);
  v17 = swift_allocObject();
  *(v17 + 24) = a4;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssertionManager();
  v18 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();

  v18[4] = Lock.init()();
  v18[5] = 0;
  v18[2] = partial apply for closure #1 in BluetoothScanner.init(discoveryEngine:);
  v18[3] = v17;

  *(a2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion) = v18;
  v19 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v19 + 96);
  swift_unknownObjectRetain();

  v22(partial apply for closure #2 in BluetoothScanner.init(discoveryEngine:), v21, ObjectType, v19);
  swift_unknownObjectRelease();

  v23 = *(a2 + 24);
  v24 = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v26 = *(v23 + 72);

  v26(partial apply for closure #3 in BluetoothScanner.init(discoveryEngine:), v25, v24, v23);
  swift_unknownObjectRelease();

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:), v28);

  return a2;
}

uint64_t get_enum_tag_for_layout_string_44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for BluetoothScannerDiscoveryEngineDevice.ContactInfo(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for BluetoothScanner(uint64_t a1)
{
  result = type metadata singleton initialization cache for BluetoothScanner;
  if (!type metadata singleton initialization cache for BluetoothScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BluetoothScanner(uint64_t a1)
{
  type metadata accessor for CurrentSubject<[BluetoothScanner.Device]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CurrentSubject<[BluetoothScanner.Device]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CurrentSubject<[BluetoothScanner.Device]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
    v1 = type metadata accessor for CurrentSubject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CurrentSubject<[BluetoothScanner.Device]>);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScanner.Device(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for BluetoothScanner.Device(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for IgnoreEquatable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for IgnoreHashable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IgnoreEquatable(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IgnoreEquatable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for IgnoreEquatable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t objectdestroy_36Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #4 in BluetoothScanner.init(discoveryEngine:)(a1, v4, v5, v6);
}

void key path setter for NearbyGroupHostManager.idsService : NearbyGroupHostManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = v2;
}

id NearbyGroupHostManager.idsService.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void NearbyGroupHostManager.idsService.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t key path getter for NearbyGroupHostManager.groups : NearbyGroupHostManager@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for NearbyGroupHostManager.groups : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NearbyGroupHostManager.groups.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyGroupHostManager.groups.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyGroupHostManager.groups.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path getter for NearbyGroupHostManager.$groups : NearbyGroupHostManager(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NearbyGroupHostManager.$groups : NearbyGroupHostManager(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t NearbyGroupHostManager.$groups.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyGroupHostManager.$groups.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyGroupHostManager.$groups.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t key path setter for NearbyGroupHostManager.groupStateListeners : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t NearbyGroupHostManager.groupStateListeners.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for NearbyGroupHostManager.idsMessageListenerTask : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t NearbyGroupHostManager.idsMessageListenerTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NearbyGroupHostManager.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NearbyGroupHostManager.init(serviceName:)(a1, a2);
  return v4;
}

void NearbyGroupHostManager.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - v9;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v21[1] = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostCGMd, &_sSDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostCGMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners) = &_swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask) = 0;
  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_abcReporter;
  type metadata accessor for ABCReporter();
  swift_allocObject();
  *(v3 + v12) = ABCReporter.init(domain:type:)();
  v13 = objc_allocWithZone(IDSService);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithService:v14];

  if (v15)
  {

    v16 = objc_allocWithZone(type metadata accessor for NearbyGroupHostIDSService());
    *(v3 + 112) = specialized NearbyGroupHostIDSService.init(idsService:)(v15, v16);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;

    v19 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.init(serviceName:), v18);
    v20 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
    swift_beginAccess();
    *(v3 + v20) = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in NearbyGroupHostManager.init(serviceName:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return NearbyGroupHostManager.listenForEvents()();
}

uint64_t NearbyGroupHostManager.listenForEvents()()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), v0, 0);
}

{
  v1 = v0[15];
  swift_beginAccess();
  v0[10] = *(*(v1 + 112) + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  v0[11] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  v0[9] = v2;
  lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type NearbyGroupHostManager and conformance NearbyGroupHostManager, type metadata accessor for NearbyGroupHostManager, &protocol conformance descriptor for NearbyGroupHostManager);

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

{
  v1 = v0[9];
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v0 + 9;

  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = NearbyGroupHostManager.listenForEvents();
  v5 = v0[28];
  v4 = v0[29];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v2, _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV4next6OutputQzSgyYaFyyYbXEfU_7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG_Tg5TA_0, v1, 0, 0, v5);
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 120);

    return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), v4, 0);
  }
}

{
  v25 = v0;
  v1 = v0[29];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.host);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[15];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      v0[12] = v6;
      type metadata accessor for NearbyGroupHostManager(0);

      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s stopped listening for incoming messages. This shouldn't ever happen until dealloc.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[27];
    v15 = *(v1 + *(v2 + 48));
    v0[33] = v15;
    outlined init with take of NearbyGroupHostIDSService.MessageEvent(v1, v14, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    v16 = voucher_copy();
    v0[34] = v16;
    if (v15)
    {
      v17 = v15;
    }

    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v0[27], v0[26], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = v0[26];
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v19, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      v20 = v0[27];
      if (v16)
      {
        v21 = v16;

        outlined destroy of NearbyGroupHostIDSService.MessageEvent(v20, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      }

      else
      {
        outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      }

      return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
    }

    else
    {
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v19, v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      v22 = swift_task_alloc();
      v0[35] = v22;
      *v22 = v0;
      v22[1] = NearbyGroupHostManager.listenForEvents();
      v23 = v0[20];

      return NearbyGroupHostManager.handle(_:)(v23);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = NearbyGroupHostManager.listenForEvents();
  }

  else
  {
    v4 = NearbyGroupHostManager.listenForEvents();
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v1 = *(v0 + 272);
  outlined destroy of NearbyGroupHostIDSService.MessageEvent(*(v0 + 160), type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 216);
    v4 = *(v0 + 272);

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v3, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  else
  {
    v5 = *(v0 + 264);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(*(v0 + 216), type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

{
  v1 = v0[36];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[15];
  outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v1;
  outlined init with copy of (String, Any)(v2, v3, &_sScPSgMd, &_sScPSgMR);
  LODWORD(v3) = (*(v6 + 48))(v3, 1, v5);

  swift_errorRetain();

  v8 = v0[18];
  if (v3 == 1)
  {
    outlined destroy of Any?(v0[18], &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v6 + 8))(v8, v5);
  }

  v9 = v7[2];
  swift_unknownObjectRetain();

  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.listenForEvents();
  *(v13 + 24) = v7;
  if (v12 | v10)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v10;
    v0[5] = v12;
  }

  v14 = v0[19];
  swift_task_create();
  outlined destroy of Any?(v14, &_sScPSgMd, &_sScPSgMR);

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = v0[27];
  v16 = v0[25];
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v15, v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[25];
    v21 = v0[21];
    v22 = v0[22];
    v24 = v0[16];
    v23 = v0[17];
    v25 = swift_slowAlloc();
    v0[13] = swift_slowAlloc();
    *v25 = 136315394;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v20, v23, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    (*(v22 + 56))(v23, 0, 1, v21);
    outlined init with copy of (String, Any)(v23, v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
    if ((*(v22 + 48))(v24, 1, v21) == 1)
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      v30 = v0[23];
      v29 = v0[24];
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v0[16], v29, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v29, v30, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      v27 = String.init<A>(reflecting:)();
      v26 = v31;
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v29, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    }

    v32 = v0[36];
    v33 = v0[25];
    outlined destroy of Any?(v0[17], &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v33, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v0 + 13);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2080;
    v0[14] = v32;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v0 + 13);

    *(v25 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to handle event %s, reason: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v0[25];

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v28, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  v39 = v0[33];
  v38 = v0[34];
  v40 = v0[27];
  if (v38)
  {
    v41 = v38;

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v40, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  else
  {
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.listenForEvents()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in NearbyGroupHostManager.listenForEvents(), 0, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.listenForEvents()()
{
  v1 = v0[4];
  _StringGuts.grow(_:)(77);
  v2._countAndFlagsBits = 0xD00000000000004BLL;
  v2._object = 0x80000001000CEE30;
  String.append(_:)(v2);
  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v3);

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = dispatch thunk of ABCReporter.signature(subType:context:process:)();
  v0[5] = v6;

  if (v6)
  {
    v15 = (&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + async function pointer to dispatch thunk of ABCReporter.report(with:duration:));
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = closure #1 in NearbyGroupHostManager.listenForEvents();
    v8.n128_u64[0] = 0;

    return v15(v6, v8);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.abcReporter);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to generate signature for create new NearbyGroupHost failure", v13, 2u);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t closure #1 in NearbyGroupHostManager.listenForEvents()(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, Any)(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
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

uint64_t NearbyGroupHostManager.handle(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.handle(_:), v1, 0);
}

uint64_t NearbyGroupHostManager.handle(_:)()
{
  v26 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v2, v1, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v7, v10, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    (*(v9 + 56))(v10, 0, 1, v8);
    outlined init with copy of (String, Any)(v10, v11, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[8];
      v17 = v0[9];
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v0[4], v17, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v17, v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      v15 = String.init<A>(reflecting:)();
      v14 = v18;
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v17, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    }

    v19 = v0[10];
    outlined destroy of Any?(v0[5], &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v19, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received request to create group for initialization: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v7, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  }

  v21 = swift_task_alloc();
  v0[11] = v21;
  *(v21 + 16) = *(v0 + 1);
  v22 = swift_task_alloc();
  v0[12] = v22;
  *v22 = v0;
  v22[1] = NearbyGroupHostManager.handle(_:);
  v23 = v0[2];

  return NearbyGroupHostManager.createGroup(id:generator:)(v23, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.handle(_:), v21);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyGroupHostManager.handle(_:)(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(NearbyGroupHostManager.handle(_:), v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6();
  }
}

uint64_t closure #1 in NearbyGroupHostManager.handle(_:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupHostManager.handle(_:), a2, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.handle(_:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  type metadata accessor for NearbyGroupHost(0);
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v3, v1, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  swift_beginAccess();
  v4 = NearbyGroupHost.__allocating_init(remoteInitialization:idsService:localMemberToken:)(v1, *(v2 + 112), 0, 0);

  v5 = v0[1];

  return v5(v4);
}

uint64_t NearbyGroupHostManager.removeGroup(groupID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = *(v5 + 16);
  v31 = a1;
  v32 = v11;
  v11(v9, a1, v4);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v14 = 136315394;
    v33 = v1;
    type metadata accessor for NearbyGroupHostManager(0);

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v34);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v5 + 8))(v9, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v34);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s removing NearbyGroup id: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v23 = v30;
  v22 = v31;
  v32(v30, v31, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = static Published.subscript.modify();
  specialized Dictionary.subscript.setter(0, v23);
  v24(v34, 0);

  v25 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  if (*(*(v2 + v25) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if (v26)
    {

      Task.cancel()();
    }

    else
    {
    }
  }

  v32(v23, v22, v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v23);
  return swift_endAccess();
}

uint64_t NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for UUID();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v4[23] = *(v8 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.createGroup(id:generator:), v3, 0);
}

uint64_t NearbyGroupHostManager.createGroup(id:generator:)()
{
  v47 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0[9] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[11]);
    v2 = v1;

    if (v2)
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v3 = v0[18];
      v4 = v0[15];
      v5 = v0[16];
      v6 = v0[11];
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.host);
      (*(v5 + 16))(v3, v6, v4);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = v0[18];
      v12 = v0[15];
      v13 = v0[16];
      if (v10)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v46[0] = v15;
        *v14 = 136315138;
        lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        (*(v13 + 8))(v11, v12);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v46);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "Trying to create a NearbyGroup with %s when one already exists.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
      }

      else
      {

        (*(v13 + 8))(v11, v12);
      }

      v42 = 0;
LABEL_20:
      lazy protocol witness table accessor for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors();
      swift_allocError();
      *v43 = v42;
      swift_willThrow();

      v44 = v0[1];

      return v44();
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = *(v0[10] + 16);

  v21 = specialized NearbyGroupServerBag.numericConfig(for:)(3u);
  v22 = [v21 integerValue];

  if (v20 >= v22)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v25 = v0[19];
    v26 = v0[15];
    v27 = v0[16];
    v28 = v0[11];
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.host);
    (*(v27 + 16))(v25, v28, v26);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[19];
    v34 = v0[15];
    v35 = v0[16];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136315138;
      lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v35 + 8))(v33, v34);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v46);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to create new NearbyGroupHost with %s due to group count limit", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    v42 = 1;
    goto LABEL_20;
  }

  v45 = (v0[12] + *v0[12]);
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = NearbyGroupHostManager.createGroup(id:generator:);

  return v45();
}

{
  v1 = v0[28];
  v33 = v0[26];
  v31 = v0[25];
  v27 = v0[24];
  v30 = v0[23];
  v24 = v0[22];
  v32 = v0[21];
  v26 = v0[16];
  v28 = v0[15];
  v29 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  v23 = v2;
  v5 = static Published.subscript.modify();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v7;
  *v7 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, isUniquelyReferenced_nonNull_native);
  *v7 = v34;
  v5(v0 + 2, 0);

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v33, 1, 1, v9);
  v22 = swift_allocObject();
  v10 = swift_weakInit();
  (*((swift_isaMask & *v4) + 0x158))(v10);
  v11 = v24 + 32;
  v25 = *(v24 + 32);
  v25(v27, v31, v32);
  (*(v26 + 16))(v29, v3, v28);
  v12 = (*(v11 + 48) + 32) & ~*(v11 + 48);
  v13 = (v30 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v26 + 80) + v13 + 8) & ~*(v26 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v25(v15 + v12, v27, v32);
  *(v15 + v13) = v22;
  (*(v26 + 32))(v15 + v14, v29, v28);
  v16 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.createGroup(id:generator:), v15);
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v23 + v17);
  *(v23 + v17) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v3, v18);
  *(v23 + v17) = v35;
  swift_endAccess();

  v19 = v0[1];
  v20 = v0[28];

  return v19(v20);
}

uint64_t NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 112);
    *(v4 + 224) = a1;

    return _swift_task_switch(NearbyGroupHostManager.createGroup(id:generator:), v8, 0);
  }
}

uint64_t NearbyGroupHostManager.createGroup(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.createGroup(with:), v1, 0);
}

{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = v4[3];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v9 = NearbyGroupHostManager.createGroup(with:);
  }

  else
  {
    v4[9] = a1;
    (*(v6 + 8))(v5, v7);
    v9 = NearbyGroupHostManager.createGroup(with:);
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t NearbyGroupHostManager.createGroup(with:)()
{
  v1 = v0[2];
  NearbyGroupCreationRequest.id.getter();
  v2 = v1;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = NearbyGroupHostManager.createGroup(with:);
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  return specialized NearbyGroupHostManager.createGroup(id:generator:)(v4, v5, v6, v5);
}

{
  v1 = *(v0 + 72);
  v2 = (*((swift_isaMask & *v1) + 0x208))();

  v3 = *(v0 + 8);

  return v3(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyGroupHostManager.deinit()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NearbyGroupHostManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t specialized _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = *(v0 + 16);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v0 + 24);
  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v0 + 32, &v47, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  if (v48 >= 2)
  {
    outlined init with take of PseudonymProtocol(&v47, v45);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.default);
    outlined init with copy of PseudonymProtocol(v45, &v43);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v35 = v5;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 136315138;
      outlined init with copy of PseudonymProtocol(&v43, v41);
      outlined init with copy of (String, Any)(v41, &v39, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      if (v40)
      {
        outlined init with take of PseudonymProtocol(&v39, v37);
        outlined init with copy of PseudonymProtocol(v37, &v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v19 = String.init<A>(reflecting:)();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
      }

      else
      {
        v19 = 7104878;
        v21 = 0xE300000000000000;
      }

      outlined destroy of Any?(v41, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v43);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

      *(v17 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "Handling cancellation by terminating upstream subscription: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);

      v5 = v35;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    }

    v43 = 0uLL;
    *v44 = 0;
    *&v44[8] = xmmword_1000CA6B0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(&v43, v1 + 32);
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    __swift_project_boxed_opaque_existential_1(v45, v46);
    dispatch thunk of Cancellable.cancel()();
    v30 = *(v6 + 16);
    if (v30)
    {
      v31 = (v6 + 32);
      do
      {
        v32 = *v31++;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
        outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(v4, *(*(v32 + 64) + 40));
        swift_continuation_resume();
        --v30;
      }

      while (v30);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v35 = v5;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37[0] = v11;
      *v10 = 136315138;
      outlined init with copy of (String, Any)(v1 + 32, v45, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
      outlined init with copy of (String, Any)(v45, &v43, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMR);
      if (*&v44[8] == 2)
      {
        v12 = 7104878;
        v13 = 0xE300000000000000;
      }

      else
      {
        v41[0] = v43;
        v41[1] = *v44;
        v42 = *&v44[16];
        outlined init with copy of (String, Any)(v41, &v39, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
        v12 = String.init<A>(reflecting:)();
        v13 = v22;
        outlined destroy of Any?(v41, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
      }

      outlined destroy of Any?(v45, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMR);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v37);

      *(v10 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v9, "Terminating sequence from state: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);

      v5 = v35;
    }

    else
    {
    }

    memset(v45, 0, sizeof(v45));
    v46 = xmmword_1000CA6B0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(v45, v1 + 32);
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    v24 = *(v6 + 16);
    if (v24)
    {
      v25 = (v6 + 32);
      do
      {
        v26 = *v25++;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
        outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(v4, *(*(v26 + 64) + 40));
        swift_continuation_resume();
        --v24;
      }

      while (v24);
    }

    return outlined destroy of Any?(&v47, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *specialized NearbyGroupHostIDSService.init(idsService:)(void *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = &v34 - v5;
  v49 = type metadata accessor for Publishers.PrefetchStrategy();
  v41 = *(v49 - 8);
  __chkstk_darwin(v49);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v34 - v7;
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v35);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v53[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
  v53[4] = &protocol witness table for IDSService;
  v53[0] = a1;
  v10 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  v47 = a2;
  v34 = v10;
  *&a2[v10] = v11;
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v51 = 0xD00000000000001ALL;
  v52 = 0x80000001000CEEC0;
  v48 = a1;
  v12 = [a1 serviceIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE700000000000000;
    v14 = 0x4E574F4E4B4E55;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v47;
  *&v47[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue] = v18;
  outlined init with copy of PseudonymProtocol(v53, &v19[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service]);
  v51 = *&v19[v34];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v38 = Publisher.eraseToAnyPublisher()();
  v51 = v38;
  v20 = v41;
  v21 = v39;
  (*(v41 + 104))(v39, enum case for Publishers.PrefetchStrategy.byRequest(_:), v49);
  v23 = v45;
  v22 = v46;
  v24 = v43;
  (*(v45 + 104))(v43, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  v25 = v40;
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v23 + 8))(v24, v22);
  (*(v20 + 8))(v21, v49);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR, &protocol conformance descriptor for Publishers.Buffer<A>);
  v26 = v44;
  v27 = Publisher.eraseToAnyPublisher()();

  (*(v42 + 8))(v25, v26);
  *&v19[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages] = v27;
  v28 = type metadata accessor for NearbyGroupHostIDSService();
  v50.receiver = v19;
  v50.super_class = v28;
  v29 = objc_msgSendSuper2(&v50, "init");
  v30 = objc_allocWithZone(IDSServiceDelegateProperties);
  v31 = v29;
  v32 = [v30 init];
  [v32 setWantsCrossAccountMessaging:1];
  [v48 addDelegate:v31 withDelegateProperties:v32 queue:*&v31[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue]];

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return v31;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.init(serviceName:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.init(serviceName:)();
}

uint64_t type metadata accessor for NearbyGroupHostManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyGroupHostManager;
  if (!type metadata singleton initialization cache for NearbyGroupHostManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.listenForEvents()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.listenForEvents()(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.handle(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupHostManager.handle(_:);

  return closure #1 in NearbyGroupHostManager.handle(_:)(v2, v3);
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.handle(_:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t specialized NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v6 = type metadata accessor for UUID();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v4[20] = *(v7 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(specialized NearbyGroupHostManager.createGroup(id:generator:), a2, 0);
}

void type metadata completion function for NearbyGroupHostManager(uint64_t a1)
{
  type metadata accessor for Published<[UUID : NearbyGroupHost]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NearbyInvitationsBlastDoorConnectionHelper.init(service:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(IDSServiceProperties);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithServiceIdentifier:v3];

  return v4;
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v17)
  {
    v18 = v17;
    HIDWORD(v33) = a4;
    type metadata accessor for NSNumber();
    v19 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v21 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v19 command:isa];

    if (v21)
    {
      [v21 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v24 = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = BYTE4(v33) & 1;
      *(v25 + 32) = a5;
      *(v25 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_74;
      v26 = _Block_copy(aBlock);

      [v18 diffuseClientMessage:v24 context:v21 withCompletionBlock:v26];
      _Block_release(v26);

      return;
    }

    v30 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v31 = swift_allocError();
    *v32 = 2;
    a5(v16, v31);
  }

  else
  {
    v27 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v28 = swift_allocError();
    *v29 = 0;
    a5(v16, v28);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v17)
  {
    v18 = v17;
    HIDWORD(v33) = a4;
    type metadata accessor for NSNumber();
    v19 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v21 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v19 command:isa];

    if (v21)
    {
      [v21 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v24 = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = BYTE4(v33) & 1;
      *(v25 + 32) = a5;
      *(v25 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_67;
      v26 = _Block_copy(aBlock);

      [v18 diffuseClientMessage:v24 context:v21 withCompletionBlock:v26];
      _Block_release(v26);

      return;
    }

    v30 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v31 = swift_allocError();
    *v32 = 2;
    a5(v16, v31);
  }

  else
  {
    v27 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v28 = swift_allocError();
    *v29 = 0;
    a5(v16, v28);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v17)
  {
    v18 = v17;
    HIDWORD(v33) = a4;
    type metadata accessor for NSNumber();
    v19 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v21 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v19 command:isa];

    if (v21)
    {
      [v21 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v24 = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = BYTE4(v33) & 1;
      *(v25 + 32) = a5;
      *(v25 + 40) = a6;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_60;
      v26 = _Block_copy(aBlock);

      [v18 diffuseClientMessage:v24 context:v21 withCompletionBlock:v26];
      _Block_release(v26);

      return;
    }

    v30 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v31 = swift_allocError();
    *v32 = 2;
    a5(v16, v31);
  }

  else
  {
    v27 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v28 = swift_allocError();
    *v29 = 0;
    a5(v16, v28);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v17)
  {
    v18 = v17;
    HIDWORD(v33) = a4;
    type metadata accessor for NSNumber();
    v19 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v21 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v19 command:isa];

    if (v21)
    {
      [v21 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v24 = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = BYTE4(v33) & 1;
      *(v25 + 32) = a5;
      *(v25 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_54;
      v26 = _Block_copy(aBlock);

      [v18 diffuseClientMessage:v24 context:v21 withCompletionBlock:v26];
      _Block_release(v26);

      return;
    }

    v30 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v31 = swift_allocError();
    *v32 = 2;
    a5(v16, v31);
  }

  else
  {
    v27 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v28 = swift_allocError();
    *v29 = 0;
    a5(v16, v28);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v17)
  {
    v18 = v17;
    HIDWORD(v33) = a4;
    type metadata accessor for NSNumber();
    v19 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v21 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v19 command:isa];

    if (v21)
    {
      [v21 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v24 = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = BYTE4(v33) & 1;
      *(v25 + 32) = a5;
      *(v25 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_47;
      v26 = _Block_copy(aBlock);

      [v18 diffuseClientMessage:v24 context:v21 withCompletionBlock:v26];
      _Block_release(v26);

      return;
    }

    v30 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v31 = swift_allocError();
    *v32 = 2;
    a5(v16, v31);
  }

  else
  {
    v27 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v28 = swift_allocError();
    *v29 = 0;
    a5(v16, v28);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}