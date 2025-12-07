id one-time initialization function for deleteParkingLocationHandler(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = [objc_allocWithZone(a2(0)) init];
  *a3 = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t IntentHandler.handler(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC22SiriGeoIntentExtension13IntentHandler_logObject);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = a1;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "IntentHandler intent : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (one-time initialization token for saveParkingLocationHandler != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for INSaveParkingLocationIntentHandler();
    v16 = &static IntentHandler.saveParkingLocationHandler;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for deleteParkingLocationHandler != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for INDeleteParkingLocationIntentHandler();
      v16 = &static IntentHandler.deleteParkingLocationHandler;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (one-time initialization token for retrieveParkingLocationHandler != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for INRetrieveParkingLocationIntentHandler();
        v16 = &static IntentHandler.retrieveParkingLocationHandler;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          if (one-time initialization token for shareETAHandler != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for INShareETAIntentHandler();
          v16 = &static IntentHandler.shareETAHandler;
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return _objc_retain_x1();
          }

          if (one-time initialization token for stopShareETAHandler != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for INStopShareETAIntentHandler();
          v16 = &static IntentHandler.stopShareETAHandler;
        }
      }
    }
  }

  v17 = *v16;
  a2[3] = v15;
  *a2 = v17;

  return _objc_retain_x1();
}

id IntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC22SiriGeoIntentExtension13IntentHandler_logObject;
  type metadata accessor for OS_os_log();
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v3, "init");
}

id IntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
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
    return &_swiftEmptyArrayStorage;
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
    v10 = &_swiftEmptyArrayStorage;
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t static UsoRequest.makeSDAForPromptForContactValue()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
  swift_allocObject();
  v7 = UsoTaskBuilder_noVerb_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  static Siri_Nlu_External_SystemPrompted.from(_:)(v7, v6);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v1 + 16))(v4, v6, v0);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();

  return (*(v1 + 8))(v6, v0);
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoRequest.makeSDAForYesNoCancel()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v1 = *(v25 - 8);
  v2 = __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - v6;
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UserCancelled();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Siri_Nlu_External_UserAccepted();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v24 = v12;
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  Siri_Nlu_External_UserDialogAct.init()();
  Siri_Nlu_External_UserAccepted.init()();
  Siri_Nlu_External_UserDialogAct.accepted.setter();
  Siri_Nlu_External_UserCancelled.init()();
  Siri_Nlu_External_UserDialogAct.cancelled.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v13 + 16))(v16, v18, v12);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v19 = *(v1 + 16);
  v20 = v25;
  v19(v7, v9, v25);
  Siri_Nlu_External_SystemDialogAct.init()();
  v19(v4, v7, v20);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v21 = *(v1 + 8);
  v21(v7, v20);
  v21(v9, v20);
  return (*(v13 + 8))(v18, v24);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)(uint64_t a1)
{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.userStatedTask.setter);
}

{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.wantedToProceed.setter);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  a3(v9);
  (*(v8 + 16))(v11, a1, v7);
  a4(v11);
  return (*(v8 + 8))(a1, v7);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  static Siri_Nlu_External_UserStatedTask.from(_:)(a1, &v10 - v7);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v3 + 16))(v6, v8, v2);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v25 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v17 - 8);
  v19 = &v24 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100005670;
  *(v20 + 32) = a1;
  v21 = type metadata accessor for UsoBuilderOptions();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v19, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v4 + 56))(v16, 0, 1, v3);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v16, v14);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v14, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    outlined destroy of UsoBuilderOptions?(v14, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of UsoBuilderOptions?(v11, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v22 = v25;
    (*(v4 + 32))(v25, v11, v3);
    (*(v4 + 16))(v24, v22, v3);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of UsoBuilderOptions?(v14, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v4 + 8))(v22, v3);
  }

  return outlined destroy of UsoBuilderOptions?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)@<X0>(uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v29 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - v12;
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v29 - v21;
  __chkstk_darwin(v20);
  v24 = &v29 - v23;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v3 + 56))(v24, 0, 1, v2);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v22);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v22, v19);
  if ((*(v3 + 48))(v19, 1, v2) == 1)
  {
    outlined destroy of UsoBuilderOptions?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of UsoBuilderOptions?(v19, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v25 = v31;
    (*(v3 + 32))(v31, v19, v2);
    (*(v3 + 16))(v30, v25, v2);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of UsoBuilderOptions?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v3 + 8))(v25, v2);
  }

  v26 = *(v8 + 16);
  v26(v13, v15, v7);
  Siri_Nlu_External_UserDialogAct.init()();
  v26(v32, v13, v7);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v27 = *(v8 + 8);
  v27(v13, v7);
  v27(v15, v7);
  return outlined destroy of UsoBuilderOptions?(v24, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UsoBuilderOptions?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return outlined destroy of UsoBuilderOptions?(v4, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of UsoBuilderOptions?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return (*(v6 + 8))(v11, v5);
  }
}

unint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    result = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v31 = type metadata accessor for Google_Protobuf_StringValue();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v1 = &v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  __chkstk_darwin(v13 - 8);
  v30 = &v29 - v14;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v10 + 8))(v12, v9);
  v15 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v6 + 8))(v8, v5);
  v32 = *(v15 + 16);
  if (v32)
  {
    v17 = 0;
    v33 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = (v29 + 8);
    v19 = v34;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v2 + 16))(v4, v33 + *(v2 + 72) * v17, v19);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v21 == 0xE800000000000000)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v23 = Google_Protobuf_StringValue.value.getter();
      v25 = v24;
      (*v18)(v1, v31);
      if (v23 == 0x64695F6D657469 && v25 == 0xE700000000000000)
      {

LABEL_16:

        v27 = v30;
        v19 = v34;
        (*(v2 + 32))(v30, v4, v34);
        v26 = 0;
        goto LABEL_17;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_16;
      }

LABEL_4:
      ++v17;
      v19 = v34;
      result = (*(v2 + 8))(v4, v34);
      if (v32 == v17)
      {

        v26 = 1;
        goto LABEL_15;
      }
    }
  }

  v26 = 1;
  v19 = v34;
LABEL_15:
  v27 = v30;
LABEL_17:
  (*(v2 + 56))(v27, v26, 1, v19);
  if ((*(v2 + 48))(v27, 1, v19) == 1)
  {
    outlined destroy of UsoBuilderOptions?(v27, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v28 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v2 + 8))(v27, v19);
    return v28;
  }
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64695F6D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6369746E616D6573;
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v32 = a4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v28 - v19;
  __chkstk_darwin(v18);
  v22 = &v28 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100005670;
  *(v23 + 32) = a1;
  v24 = type metadata accessor for UsoBuilderOptions();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v13, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  (*(v6 + 56))(v22, 0, 1, v5);
  v25 = outlined init with copy of Siri_Nlu_External_UsoGraph?(v22, v20);
  v31(v25);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v20, v17);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    outlined destroy of UsoBuilderOptions?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of UsoBuilderOptions?(v17, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v10, v17, v5);
    v26 = v29;
    (*(v6 + 16))(v29, v10, v5);
    v30(v26);
    outlined destroy of UsoBuilderOptions?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v6 + 8))(v10, v5);
  }

  return outlined destroy of UsoBuilderOptions?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v16 = *(v3 + 16);
  v16(v8, v18[0], v2);
  Siri_Nlu_External_UserDialogAct.init()();
  v16(v6, v8, v2);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v3 + 8))(v8, v2);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v10 + 16))(v13, v15, v9);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  return (*(v10 + 8))(v15, v9);
}

SiriGeoIntentExtension::UsoIdentifierAppBundle_optional __swiftcall UsoIdentifierAppBundle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriGeoIntentExtension_UsoIdentifierAppBundle_siriNL;
  }

  else
  {
    v4.value = SiriGeoIntentExtension_UsoIdentifierAppBundle_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierAppBundle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x73746361746E6F43;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x8000000100005850;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x73746361746E6F43;
  }

  if (*a2)
  {
    v6 = 0x8000000100005850;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierAppBundle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundle(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100005850;
  v3 = 0x73746361746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x8000000100005870;
  if (v2 == 1)
  {
    v5 = 0x8000000100005870;
  }

  else
  {
    v3 = 0x6369746E616D6573;
    v5 = 0xEE0065756C61765FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64695F6D657469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoIdentifierNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000100005870;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64695F6D657469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized UsoIdentifierNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifierAppBundle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoIdentifierAppBundle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoIdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}