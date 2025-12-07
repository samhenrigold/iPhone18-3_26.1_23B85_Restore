uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #1 in DeviceLockObserver.registerForLockStateNotifications()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DeviceLockObserver.updateLockedState()();
  }

  return result;
}

void DeviceLockObserver.updateLockedState()()
{
  v1 = v0;
  v14 = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 24), &v14))
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Could not fetch lock state", v5, 2u);
    }
  }

  else
  {
    *(v0 + 40) = v14 != 0;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.sync);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      if (*(v1 + 40))
      {
        v11 = 0x64656B636F6CLL;
      }

      else
      {
        v11 = 0x64656B636F6C6E75;
      }

      if (*(v1 + 40))
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "UI lock state is %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    LOBYTE(v15) = *(v1 + 40);
    CurrentValueSubject.send(_:)();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void closure #1 in CategorizationSyncManager.listenForDeviceLock()(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Device is unlocked, retrying if any...", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      CategorizationSyncManager.retryAnyPendingPushes()();
    }
  }
}

unint64_t CategorizationSyncManager.retryAnyPendingPushes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    static TaskPriority.background.getter();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v0;
    *(v9 + 40) = 1;
    v10 = v0;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in CategorizationSyncManager.startFullSync(fromPush:)partial apply, v9);
  }

  else
  {
    v11 = [v4 standardUserDefaults];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 BOOLForKey:v12];

    if (v13)
    {
      CategorizationSyncManager.fetchRules()();
    }
  }

  result = specialized CategorizationSyncManager.unprocessedNewOldCategories()();
  if (result)
  {
    CategorizationSyncManager.handleNewOldPush(state:)(result);
  }

  return result;
}

unint64_t specialized CategorizationSyncManager.unprocessedNewOldCategories()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);

  return v4;
}

uint64_t sub_100002E28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002E60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002F3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002F74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002FBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003038()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003080()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000030C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003110()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003148()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003188()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s15icloudmailagent15APIRequestModelC10AuthMethodO0D28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOs0J3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000033B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000033EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "icloudmailagent is starting up...", buf, 2u);
  }

  v5 = +[_TtC15icloudmailagent25MCCAgentConnectionManager sharedInstance];
  [v5 start];

  if (_os_feature_enabled_impl())
  {
    v6 = +[_TtC15icloudmailagent25CategorizationSyncManager sharedInstance];
    [v6 start];
  }

  objc_autoreleasePoolPop(v3);
  v7 = +[NSRunLoop mainRunLoop];
  [v7 run];

  v8 = _MCCLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "icloudmailagent is shutting down...", v10, 2u);
  }

  return 0;
}

id PDSRegistrarService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15icloudmailagent19PDSRegistrarService_pdsRegistrar;
  *&v0[OBJC_IVAR____TtC15icloudmailagent19PDSRegistrarService_pdsRegistrar] = 0;
  v3 = objc_allocWithZone(PDSRegistrar);
  v4 = @nonobjc PDSRegistrar.init(clientID:)(0xD000000000000018, 0x80000001000386F0);
  v5 = *&v0[v2];
  *&v0[v2] = v4;

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

Swift::Void __swiftcall PDSRegistrarService.deregister(dsid:)(Swift::String dsid)
{
  v2 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() userWithDSID:v2];

  if (v27)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15icloudmailagent19PDSRegistrarService_pdsRegistrar);
    if (v3)
    {
      v28 = 0;
      v4 = v3;
      if ([v4 removeAllRegistrationsFromUser:v27 error:&v28])
      {
        v5 = one-time initialization token for sync;
        v6 = v28;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.sync);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "Removing PDS registration was successful", v10, 2u);
        }
      }

      else
      {
        v18 = v28;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for sync != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.sync);
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v28 = v23;
          *v22 = 136315138;
          swift_getErrorValue();
          v24 = Error.localizedDescription.getter();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

          *(v22 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v20, v21, "Could not deregister from PDS %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
        }

        else
        {
        }
      }

      return;
    }

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.sync);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "PDSRegistrar is nil", v17, 2u);
    }
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.sync);
    v27 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v27, v12, "PDSUser is nil in removing registration", v13, 2u);
    }
  }
}

id PDSRegistrarService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id @nonobjc PDSRegistrar.init(clientID:)(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithClientID:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MCCRulesListenerNotificationType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MCCRulesListenerNotificationType(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MCCRulesListenerNotificationType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MCCRulesListenerNotificationType@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MCCRulesListenerNotificationType@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

id specialized PDSRegistrarService.getPDSUser(dsid:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() userWithDSID:v2];
  }

  else
  {
    v4 = [objc_allocWithZone(ACAccountStore) init];
    v5 = [v4 aida_accountForPrimaryiCloudAccount];

    if (v5 && (v6 = [v5 aida_dsid]) != 0)
    {
      v7 = v6;
      v3 = [objc_opt_self() userWithDSID:v6];
    }

    else
    {
      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.sync);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Account is nil, unable to get dsid", v11, 2u);
      }

      return 0;
    }
  }

  return v3;
}

void specialized PDSRegistrarService.register(dsid:environment:topic:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(PDSRegistration);
  v8 = String._bridgeToObjectiveC()();
  v39 = [v7 initWithTopic:v8 pushEnvironment:a3];

  v38 = specialized PDSRegistrarService.getPDSUser(dsid:)(a1, a2);
  if (!v38)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.sync);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "PDSUser is nil", v24, 2u);
    }

    v25 = v39;
    goto LABEL_19;
  }

  v9 = *(v3 + OBJC_IVAR____TtC15icloudmailagent19PDSRegistrarService_pdsRegistrar);
  if (!v9)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.sync);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PDSRegistrar is nil", v29, 2u);
    }

    v25 = v38;
LABEL_19:

    return;
  }

  v40 = 0;
  v10 = v9;
  if ([v10 ensureRegistrationPresent:v39 forUser:v38 error:&v40])
  {
    v11 = one-time initialization token for sync;
    v12 = v40;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.sync);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v16 = 136315138;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "PDS Registration was successful. environment is: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    goto LABEL_26;
  }

  v30 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.sync);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136315138;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v40);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v10, v32, "could not register to PDS error: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);

LABEL_26:

    return;
  }
}

void type metadata accessor for MCCRulesListenerNotificationType()
{
  if (!lazy cache variable for type metadata for MCCRulesListenerNotificationType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for MCCRulesListenerNotificationType);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MCCRulesListenerNotificationType and conformance MCCRulesListenerNotificationType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MCCRulesListenerNotificationType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for APNSManager()) init];
  static APNSManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for MCCSecretAgentService()) init];
  static MCCSecretAgentService.shared = result;
  return result;
}

id APNSManager.().init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC15icloudmailagent11APNSManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection] = 0;
  v12 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_connectionQueue;
  v7 = type metadata accessor for OS_dispatch_queue();
  v11[0] = "figuration8@NSError16";
  v11[1] = v7;
  static DispatchQoS.background.getter();
  v16 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_pdsRegistrarService;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for PDSRegistrarService()) init];
  *&v1[OBJC_IVAR____TtC15icloudmailagent11APNSManager_topics] = &outlined read-only object #0 of APNSManager.().init();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, "init");
  APNSManager.observeAccountChanges()();

  return v9;
}

void APNSManager.observeAccountChanges()()
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.sync);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Registering for account changes...", v3, 2u);
  }

  v4 = [objc_opt_self() sharedSubscriber];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = partial apply for closure #1 in APNSManager.observeAccountChanges();
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed ACAccount?, @unowned ACXPCAccountChangeType) -> ();
  v7[3] = &block_descriptor_9;
  v6 = _Block_copy(v7);

  [v4 registerAccountChangeEventHandler:v6];
  _Block_release(v6);
}

Swift::Void __swiftcall APNSManager.start()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15icloudmailagent11APNSManager_connectionQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in APNSManager.start();
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

void closure #1 in APNSManager.start()(uint64_t a1)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sync);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting APNS Manager...", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection))
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "APS Connection exists", v9, 2u);
      }

      v6 = v7;
    }

    else
    {
      APNSManager.setupConnection()();
    }
  }
}

void APNSManager.setupConnection()()
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.sync);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Getting APS environment...", v3, 2u);
  }

  v4 = [objc_opt_self() sharedServer];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = partial apply for closure #1 in APNSManager.setupConnection();
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AAURLConfiguration?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_5;
  v6 = _Block_copy(v7);

  [v4 configurationWithCompletion:v6];
  _Block_release(v6);
}

void closure #1 in APNSManager.setupConnection()(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sync);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting up APS connection...", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      v10 = [a1 apsEnvironment];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
        v15 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          v16 = v12;
          v17 = [objc_opt_self() isValidEnvironment:v11];

          if (v17)
          {
LABEL_16:
            if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v19)
            {
            }

            else
            {
              v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v21 & 1) == 0)
              {
                v22 = Logger.logObject.getter();
                v23 = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v22, v23))
                {
                  v25 = 1;
                  goto LABEL_29;
                }

                v24 = swift_slowAlloc();
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v22, v23, "APS environment: Sandbox", v24, 2u);
                v25 = 1;
                goto LABEL_26;
              }
            }

            v22 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v22, v26))
            {
              v25 = 0;
              goto LABEL_29;
            }

            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v22, v26, "APS environment: Prod", v27, 2u);
            v25 = 0;
LABEL_26:

LABEL_29:

            v28 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_topics;
            v29 = *(*&v9[OBJC_IVAR____TtC15icloudmailagent11APNSManager_topics] + 16);
            if (v29)
            {
              v30 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_pdsRegistrarService;

              do
              {
                v31 = *&v9[v30];
                specialized PDSRegistrarService.register(dsid:environment:topic:)(0, 0, v25);

                --v29;
              }

              while (v29);
            }

            type metadata accessor for OS_dispatch_queue();
            v32 = static OS_dispatch_queue.main.getter();
            v33 = objc_allocWithZone(APSConnection);
            v34 = String._bridgeToObjectiveC()();

            v35 = String._bridgeToObjectiveC()();
            v36 = [v33 initWithEnvironmentName:v34 namedDelegatePort:v35 queue:v32];

            v37 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection;
            v38 = *&v9[OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection];
            *&v9[OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection] = v36;

            v39 = *&v9[v37];
            if (v39)
            {
              [v39 setDelegate:v9];
              v40 = *&v9[v37];
              if (v40)
              {
                v41 = *(*&v9[v28] + 16);
                if (v41)
                {
                  v42 = v40;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
                  v43 = _swiftEmptyArrayStorage[2];
                  v44 = 2 * v43;
                  do
                  {
                    v45 = _swiftEmptyArrayStorage[3];
                    v46 = v43 + 1;
                    if (v43 >= v45 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v43 + 1, 1);
                    }

                    _swiftEmptyArrayStorage[2] = v46;
                    v47 = &_swiftEmptyArrayStorage[v44];
                    v47[4] = 0xD00000000000001ELL;
                    v47[5] = 0x8000000100038610;
                    v44 += 2;
                    v43 = v46;
                    --v41;
                  }

                  while (v41);
                }

                else
                {
                  v42 = v40;
                }

                isa = Array._bridgeToObjectiveC()().super.isa;

                [v42 _setEnabledTopics:isa];
              }
            }

            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              _os_log_impl(&_mh_execute_header, v49, v50, "APS Connection starting...", v51, 2u);
            }

            return;
          }
        }

        else
        {
        }
      }
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v18;
    goto LABEL_16;
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AAURLConfiguration?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall APNSManager.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection);
  *(v0 + OBJC_IVAR____TtC15icloudmailagent11APNSManager_connection) = 0;

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "APS Connection stopped.", v4, 2u);
  }
}

id APNSManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  APNSManager.stop()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void closure #1 in APNSManager.onPrimaryAccountAdd(dsid:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1 && (v10 = [a1 apsEnvironment]) != 0)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v14)
      {
        if (v12 == v15 && v14 == v16)
        {

          v19 = 0;
          goto LABEL_14;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v19 = 0;
        if (v18)
        {
LABEL_14:
          v20 = *(*&v9[OBJC_IVAR____TtC15icloudmailagent11APNSManager_topics] + 16);
          if (v20)
          {
            v21 = OBJC_IVAR____TtC15icloudmailagent11APNSManager_pdsRegistrarService;

            do
            {
              v22 = *&v9[v21];
              specialized PDSRegistrarService.register(dsid:environment:topic:)(a4, a5, v19);

              --v20;
            }

            while (v20);
          }

          else
          {
          }

          return;
        }

LABEL_13:
        v19 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_13;
  }
}

void closure #1 in APNSManager.observeAccountChanges()(void *a1, int a2, uint64_t a3)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.sync);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "ACXPCEventSubscriber account change received", v8, 2u);
  }

  if (a2 == 3)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ACXPCEventSubscriber account deleted", v22, 2u);
    }

    if (a1)
    {
      v23 = AAAccountClassPrimary;
      v36 = a1;
      if ([v36 aa_isAccountClass:v23])
      {
        v24 = [v36 aida_dsid];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v30 = Strong;
            v31._countAndFlagsBits = v26;
            v31._object = v28;
            PDSRegistrarService.deregister(dsid:)(v31);
          }

          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }
  }

  else if (a2 == 1)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "ACXPCEventSubscriber account added", v11, 2u);
    }

    if (a1)
    {
      v12 = AAAccountClassPrimary;
      v36 = a1;
      if ([v36 aa_isAccountClass:v12])
      {
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v15 = [v36 aida_dsid];
          if (v15)
          {
            v16 = v15;
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;
          }

          else
          {
            v17 = 0;
            v19 = 0;
          }

          v32 = [objc_opt_self() sharedServer];
          v33 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = v17;
          v34[4] = v19;
          aBlock[4] = partial apply for closure #1 in APNSManager.onPrimaryAccountAdd(dsid:);
          aBlock[5] = v34;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AAURLConfiguration?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_16;
          v35 = _Block_copy(aBlock);

          [v32 configurationWithCompletion:v35];
          _Block_release(v35);

          return;
        }

LABEL_25:

        return;
      }

LABEL_23:

      goto LABEL_25;
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed ACAccount?, @unowned ACXPCAccountChangeType) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void specialized APNSManager.connection(_:didReceivePublicToken:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "APS Public token received with nil";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
    }
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.sync);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "APS Public token received";
      goto LABEL_10;
    }
  }
}

void specialized APNSManager.connection(_:didReceive:)(void *a1)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  p_align = &stru_100044FE8.align;
  v7 = &stru_100044FE8.align;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    if (!a1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = [v3 topic];

    if (!v9)
    {
LABEL_21:

      __break(1u);
      goto LABEL_22;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v3 userInfo];

    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Dictionary.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v28);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Receive APNS message with topic: %s, payload: %s", v8, 0x16u);
    swift_arrayDestroy();

    p_align = (&stru_100044FE8 + 24);
    v7 = (&stru_100044FE8 + 24);
  }

  else
  {
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = [v3 *(v7 + 241)];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [v3 *(p_align + 242)];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  CategorizationSyncManager.didReceiveNewPayload(payload:topic:)(v21, v27);

  swift_unknownObjectRelease();
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for Constants.Topic(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Constants.Topic(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Constants.Topic()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Constants.Topic(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.Topic@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.Topic, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type Constants.Topic and conformance Constants.Topic()
{
  result = lazy protocol witness table cache variable for type Constants.Topic and conformance Constants.Topic;
  if (!lazy protocol witness table cache variable for type Constants.Topic and conformance Constants.Topic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constants.Topic and conformance Constants.Topic);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FetchSenderOverridesAPIRequestBody.CodingKeys()
{
  v1 = 0x536465676E616863;
  v2 = 0x4B6564756C636E69;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchSenderOverridesAPIRequestBody.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized FetchSenderOverridesAPIRequestBody.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchSenderOverridesAPIRequestBody.CodingKeys(uint64_t a1)
{
  SenderOverridesAPIRequest = lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys();

  return CodingKey.description.getter(a1, SenderOverridesAPIRequest);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchSenderOverridesAPIRequestBody.CodingKeys(uint64_t a1)
{
  SenderOverridesAPIRequest = lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys();

  return CodingKey.debugDescription.getter(a1, SenderOverridesAPIRequest);
}

uint64_t FetchSenderOverridesAPIRequestBody.encode(to:)(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent34FetchSenderOverridesAPIRequestBodyV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent34FetchSenderOverridesAPIRequestBodyV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t FetchSenderOverridesAPIResponse.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent31FetchSenderOverridesAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent31FetchSenderOverridesAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15icloudmailagent14SenderOverrideVGMd, &_sSay15icloudmailagent14SenderOverrideVGMR);
  lazy protocol witness table accessor for type [SenderOverride] and conformance <A> [A](&lazy protocol witness table cache variable for type [SenderOverride] and conformance <A> [A], lazy protocol witness table accessor for type SenderOverride and conformance SenderOverride, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchSenderOverridesAPIResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchSenderOverridesAPIResponse.CodingKeys(uint64_t a1)
{
  SenderOverrides = lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys();

  return CodingKey.description.getter(a1, SenderOverrides);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchSenderOverridesAPIResponse.CodingKeys(uint64_t a1)
{
  SenderOverrides = lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, SenderOverrides);
}

void *protocol witness for Decodable.init(from:) in conformance FetchSenderOverridesAPIResponse@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized FetchSenderOverridesAPIResponse.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *FetchSenderOverridesAPIResponse.mappedOverrides()(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 48;
    do
    {
      v8 = *(v4 + 24);
      v9 = *(v4 + 48);
      v10 = String.lowercased()();
      if (v10._countAndFlagsBits == 0x657474756C636564 && v10._object == 0xEB00000000646572)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
        }
      }

      v15 = v2;
      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      if (v8)
      {
        v5 = String._bridgeToObjectiveC()();
      }

      else
      {
        v5 = 0;
      }

      v6 = objc_allocWithZone(RCOverrideRule);
      v7 = String._bridgeToObjectiveC()();

      [v6 initWithEmailAddress:v13 displayName:v14 overrideIdentifier:v5 category:v7 categoryUpdateTime:v9 / 1000.0];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 80;
      --v2;
    }

    while (v15 != 1);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartFullSyncAPIResponse(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartFullSyncAPIResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StartFullSyncAPIRequestBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for StartFullSyncAPIRequestBody(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FetchSenderOverridesAPIRequestBody(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchSenderOverridesAPIRequestBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t SenderOverride.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent14SenderOverrideV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent14SenderOverrideV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FetchSenderOverridesAPIRequestBody.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FetchSenderOverridesAPIRequestBody.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SenderOverride.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x79726F6765746163;
  v4 = 0x6954657461657263;
  if (v1 != 4)
  {
    v4 = 0x6954657461647075;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 7955819;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SenderOverride.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SenderOverride.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SenderOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SenderOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance SenderOverride@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SenderOverride.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StartFullSyncAPIRequestBody.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734F746E65696C63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StartFullSyncAPIRequestBody.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys();

  return CodingKey.description.getter(a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StartFullSyncAPIRequestBody.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys();

  return CodingKey.debugDescription.getter(a1, started);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StartFullSyncAPIRequestBody(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent27StartFullSyncAPIRequestBodyV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent27StartFullSyncAPIRequestBodyV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FetchSenderOverridesAPIResponse.CodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FetchSenderOverridesAPIResponse.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StartFullSyncAPIResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7472617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StartFullSyncAPIResponse.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys();

  return CodingKey.description.getter(a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StartFullSyncAPIResponse.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, started);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StartFullSyncAPIResponse@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent24StartFullSyncAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent24StartFullSyncAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9 & 1;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody.CodingKeys and conformance FetchSenderOverridesAPIRequestBody.CodingKeys);
  }

  return result;
}

uint64_t specialized FetchSenderOverridesAPIRequestBody.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536465676E616863 && a2 == 0xEC00000065636E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B6564756C636E69 && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100038840 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *specialized FetchSenderOverridesAPIResponse.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent31FetchSenderOverridesAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent31FetchSenderOverridesAPIResponseV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15icloudmailagent14SenderOverrideVGMd, &_sSay15icloudmailagent14SenderOverrideVGMR);
    lazy protocol witness table accessor for type [SenderOverride] and conformance <A> [A](&lazy protocol witness table cache variable for type [SenderOverride] and conformance <A> [A], lazy protocol witness table accessor for type SenderOverride and conformance SenderOverride, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse.CodingKeys and conformance FetchSenderOverridesAPIResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SenderOverride and conformance SenderOverride()
{
  result = lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride;
  if (!lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride;
  if (!lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride and conformance SenderOverride);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody.CodingKeys and conformance StartFullSyncAPIRequestBody.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse.CodingKeys and conformance StartFullSyncAPIResponse.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SenderOverride] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15icloudmailagent14SenderOverrideVGMd, &_sSay15icloudmailagent14SenderOverrideVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchSenderOverridesAPIRequestBody.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchSenderOverridesAPIRequestBody.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SenderOverride(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for SenderOverride(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized SenderOverride.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6954657461657263 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized SenderOverride.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent14SenderOverrideV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent14SenderOverrideV10CodingKeys33_2C2590EA5471944A1C9DD788A7FAA326LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v39[0]) = 1;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v12;
  LOBYTE(v39[0]) = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v14;
  v28 = v13;
  LOBYTE(v39[0]) = 3;
  v30 = 0;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  LOBYTE(v39[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v40 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *&v34 = v9;
  v20 = v31;
  *(&v34 + 1) = v11;
  *&v35 = v31;
  v21 = v33;
  *(&v35 + 1) = v33;
  *&v36 = v28;
  v22 = v32;
  *(&v36 + 1) = v32;
  *&v37 = v27;
  v23 = v29;
  *(&v37 + 1) = v29;
  *&v38 = v17;
  *(&v38 + 1) = v19;
  outlined init with copy of SenderOverride(&v34, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v9;
  v39[1] = v11;
  v39[2] = v20;
  v39[3] = v21;
  v39[4] = v28;
  v39[5] = v22;
  v39[6] = v27;
  v39[7] = v23;
  v39[8] = v17;
  v39[9] = v19;
  result = outlined destroy of SenderOverride(v39);
  v25 = v37;
  a2[2] = v36;
  a2[3] = v25;
  a2[4] = v38;
  v26 = v35;
  *a2 = v34;
  a2[1] = v26;
  return result;
}

unint64_t lazy protocol witness table accessor for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SenderOverride.CodingKeys and conformance SenderOverride.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SenderOverride.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SenderOverride.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *GroupedSender.dictionary.getter()
{
  v1 = v0;
  v2 = v0[1];
  if (!v2)
  {
    v6 = v1[3];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v3 = *v1;
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v17 = &type metadata for String;
    *&v16 = v3;
    *(&v16 + 1) = v2;
    outlined init with take of Any(&v16, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5F6567617373656DLL, 0xEA00000000006469, isUniquelyReferenced_nonNull_native);
  }

  v6 = v1[3];
  if (v6)
  {
LABEL_9:
    v7 = v1[2];
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v17 = &type metadata for String;
      *&v16 = v7;
      *(&v16 + 1) = v6;
      outlined init with take of Any(&v16, v15);

      v9 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5F656C7070615F78, 0xEC00000064697575, v9);
    }
  }

LABEL_13:
  v10 = v1[5];
  if (v10)
  {
    v11 = v1[4];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v17 = &type metadata for String;
      *&v16 = v11;
      *(&v16 + 1) = v10;
      outlined init with take of Any(&v16, v15);

      v13 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 7955819, 0xE300000000000000, v13);
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

unint64_t GroupedOverride.dictionary.getter(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356A0;
  *(inited + 32) = 0x79726F6765746163;
  *(inited + 40) = 0xE800000000000000;
  if (String.lowercased()() == __PAIR128__(0xE700000000000000, 0x746C7561666564))
  {
    a2 = 0x657474756C636544;

LABEL_5:
    a3 = 0xEB00000000646572;
    goto LABEL_7;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    a2 = 0x657474756C636544;
    goto LABEL_5;
  }

LABEL_7:
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6D617473656D6974;
  *(inited + 88) = 0xE900000000000070;
  *(inited + 96) = a4 * 1000.0;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0x736567617373656DLL;
  *(inited + 136) = 0xE800000000000000;
  v10 = *(a1 + 16);
  if (v10)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = a1 + 40;
    do
    {

      v12 = GroupedSender.dictionary.getter();

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v11 += 48;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
      --v10;
    }

    while (v10);
  }

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *(inited + 144) = _swiftEmptyArrayStorage;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  return v15;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent15GroupedOverrideVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent15GroupedOverrideVGMR);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent25CategorizationSyncManagerC16ClientConnection33_D3B0FCFF93C920EE1A43E2A9ED08676CLLVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent25CategorizationSyncManagerC16ClientConnection33_D3B0FCFF93C920EE1A43E2A9ED08676CLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15icloudmailagent15GroupedOverrideV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent15GroupedOverrideVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent15GroupedOverrideVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t specialized static RCOverrideHelper.groupOverrideRules(rules:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      if (result >= 1)
      {
        v3 = 0;
        v70 = v1 & 0xC000000000000001;
        v4 = &_swiftEmptyDictionarySingleton;
        v69 = v1;
        v71 = result;
        while (1)
        {
          if (v70)
          {
            v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v5 = *(v1 + 8 * v3 + 32);
          }

          v6 = v5;
          v7 = [v5 messageIdHeader];
          if (v7)
          {
            v8 = v7;
            v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v11 = v10;

            v12 = v9 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = 0;
            v11 = 0xE000000000000000;
          }

          v75 = v4;
          v13 = [v6 xAppleRequestHeader];
          if (v13)
          {
            v14 = v13;
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v16;

            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = 0;
            v17 = 0xE000000000000000;
          }

          v19 = [v6 overrideIdentifier];
          if (v19)
          {
            v20 = v19;
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            v24 = v21 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = 0;
            v23 = 0xE000000000000000;
          }

          if ((v11 & 0x2000000000000000) != 0)
          {
            v25 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v25 = v12;
          }

          if (v25)
          {
          }

          else
          {
            if ((v17 & 0x2000000000000000) != 0)
            {
              v26 = HIBYTE(v17) & 0xF;
            }

            else
            {
              v26 = v18;
            }

            if (!v26)
            {
              v27 = HIBYTE(v23) & 0xF;
              if ((v23 & 0x2000000000000000) == 0)
              {
                v27 = v24;
              }

              if (!v27)
              {

                v4 = v75;
                goto LABEL_47;
              }
            }
          }

          v28 = [v6 category];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32 = [v6 categoryUpdateTime];
          [v32 doubleValue];
          v34 = v33;

          v76[0] = 0;
          v76[1] = 0xE000000000000000;
          v35._countAndFlagsBits = v29;
          v35._object = v31;
          String.append(_:)(v35);
          v36._countAndFlagsBits = 95;
          v36._object = 0xE100000000000000;
          String.append(_:)(v36);
          Double.write<A>(to:)();
          v37 = [v6 messageIdHeader];
          if (v37)
          {
            v38 = v37;
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v40;
            v74 = v39;
          }

          else
          {
            v73 = 0;
            v74 = 0;
          }

          v41 = [v6 xAppleRequestHeader];
          if (v41)
          {
            v42 = v41;
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
          }

          else
          {
            v72 = 0;
            v44 = 0;
          }

          v45 = [v6 overrideIdentifier];
          if (v45)
          {
            v46 = v45;
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            if (!v75[2])
            {
              goto LABEL_45;
            }
          }

          else
          {
            v47 = 0;
            v49 = 0;
            if (!v75[2])
            {
              goto LABEL_45;
            }
          }

          v50 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
          if (v51)
          {
            v52 = v50;

            v53 = v75[7] + 32 * v52;
            v54 = *v53;
            v68 = *(v53 + 8);
            v55 = *(v53 + 16);
            v34 = *(v53 + 24);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
            }

            v57 = *(v54 + 2);
            v56 = *(v54 + 3);
            if (v57 >= v56 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
            }

            *(v54 + 2) = v57 + 1;
            v58 = &v54[48 * v57];
            *(v58 + 4) = v74;
            *(v58 + 5) = v73;
            *(v58 + 6) = v72;
            *(v58 + 7) = v44;
            *(v58 + 8) = v47;
            *(v58 + 9) = v49;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v76[0] = v75;
            v60 = v54;
            v61 = v68;
            v62 = v55;
            goto LABEL_46;
          }

LABEL_45:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMR);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_1000356B0;
          *(v63 + 32) = v74;
          *(v63 + 40) = v73;
          *(v63 + 48) = v72;
          *(v63 + 56) = v44;
          *(v63 + 64) = v47;
          *(v63 + 72) = v49;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76[0] = v75;
          v60 = v63;
          v61 = v29;
          v62 = v31;
LABEL_46:
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v61, v62, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native, v34);

          v4 = v76[0];
          v1 = v69;
LABEL_47:
          if (v71 == ++v3)
          {
            goto LABEL_52;
          }
        }
      }

      __break(1u);
      goto LABEL_58;
    }
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_52:
  v64 = v4[2];
  if (!v64)
  {

    return _swiftEmptyArrayStorage;
  }

  v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15icloudmailagent15GroupedOverrideV_Tt1g5(v4[2], 0);
  v66 = specialized Sequence._copySequenceContents(initializing:)(v76, v65 + 4, v64, v4);
  v67 = v76[0];

  result = outlined consume of [String : GroupedOverride].Iterator._Variant(v67);
  if (v66 == v64)
  {

    return v65;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t specialized static RCOverrideHelper.splitOverrideGroups(groups:maxMessagesPerGroup:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v45 = result + 32;
    v5 = _swiftEmptyArrayStorage;
    v43 = *(result + 16);
    while (1)
    {
      v6 = (v45 + 32 * v4);
      v7 = *v6;
      v8 = v6[3];
      v9 = *(*v6 + 16);
      v46 = v6[1];
      v47 = v6[2];
      if (v9 <= a2)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          v5 = result;
        }

        v15 = *(v5 + 2);
        v14 = *(v5 + 3);
        if (v15 >= v14 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 2) = v15 + 1;
        v16 = &v5[32 * v15];
        *(v16 + 4) = v7;
        *(v16 + 5) = v46;
        *(v16 + 6) = v47;
        *(v16 + 7) = v8;
      }

      else
      {
        if (!a2)
        {
LABEL_86:
          __break(1u);
          return result;
        }

        v44 = v4;
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = v9 >= v11;
          if (a2 > 0)
          {
            v12 = v11 >= v9;
          }

          if (v12)
          {
            break;
          }

          v13 = __OFADD__(v11, a2);
          v11 += a2;
          if (v13)
          {
            v11 = (v11 >> 63) ^ 0x8000000000000000;
          }

          v13 = __OFADD__(v10++, 1);
          if (v13)
          {
            __break(1u);
            goto LABEL_79;
          }
        }

        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
        if (v10)
        {
          v17 = 0;
          while (1)
          {
            v18 = v9 >= v17;
            if (a2 > 0)
            {
              v18 = v17 >= v9;
            }

            if (v18)
            {
              break;
            }

            v19 = v17 + a2;
            if (__OFADD__(v17, a2))
            {
              v20 = ((v17 + a2) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              v20 = v17 + a2;
            }

            if (__OFADD__(v17, a2))
            {
              goto LABEL_80;
            }

            v21 = v7[2];
            if (v21 < v19)
            {
              v19 = v7[2];
            }

            v22 = v19 - v17;
            if (v19 < v17)
            {
              goto LABEL_81;
            }

            if (v17 < 0)
            {
              goto LABEL_82;
            }

            if (v21 == v22)
            {

              v23 = v7;
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
              if (v19 != v17)
              {
                if (v22 >= 1)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMR);
                  v23 = swift_allocObject();
                  v26 = _swift_stdlib_malloc_size(v23);
                  v23[2] = v22;
                  v23[3] = 2 * ((v26 - 32) / 48);
                }

                result = swift_arrayInitWithCopy();
              }
            }

            v25 = _swiftEmptyArrayStorage[2];
            v24 = _swiftEmptyArrayStorage[3];
            if (v25 >= v24 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v25 + 1;
            _swiftEmptyArrayStorage[v25 + 4] = v23;
            v17 = v20;
            if (!--v10)
            {
              goto LABEL_45;
            }
          }

LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v20 = 0;
LABEL_45:
        v27 = v9 >= v20;
        if (a2 > 0)
        {
          v27 = v20 >= v9;
        }

        if (!v27)
        {
          while (1)
          {
            v29 = v20 + a2;
            v30 = __OFADD__(v20, a2) ? ((v20 + a2) >> 63) ^ 0x8000000000000000 : v20 + a2;
            if (__OFADD__(v20, a2))
            {
              goto LABEL_83;
            }

            v31 = v7[2];
            if (v31 < v29)
            {
              v29 = v7[2];
            }

            v32 = v29 - v20;
            if (v29 < v20)
            {
              goto LABEL_84;
            }

            if (v20 < 0)
            {
              goto LABEL_85;
            }

            if (v31 == v32)
            {

              v33 = v7;
            }

            else
            {
              v33 = _swiftEmptyArrayStorage;
              if (v29 != v20)
              {
                if (v32 >= 1)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent13GroupedSenderVGMR);
                  v33 = swift_allocObject();
                  v37 = _swift_stdlib_malloc_size(v33);
                  v33[2] = v32;
                  v33[3] = 2 * ((v37 - 32) / 48);
                }

                result = swift_arrayInitWithCopy();
              }
            }

            v35 = _swiftEmptyArrayStorage[2];
            v34 = _swiftEmptyArrayStorage[3];
            v28 = v35 + 1;
            if (v35 >= v34 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v28;
            _swiftEmptyArrayStorage[v35 + 4] = v33;
            v36 = v9 >= v30;
            if (a2 > 0)
            {
              v36 = v30 >= v9;
            }

            v20 = v30;
            if (v36)
            {
              goto LABEL_70;
            }
          }
        }

        v28 = _swiftEmptyArrayStorage[2];
        if (v28)
        {
LABEL_70:
          v38 = 4;
          do
          {
            v39 = _swiftEmptyArrayStorage[v38];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v41 = *(v5 + 2);
            v40 = *(v5 + 3);
            if (v41 >= v40 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v5);
            }

            *(v5 + 2) = v41 + 1;
            v42 = &v5[32 * v41];
            *(v42 + 4) = v39;
            *(v42 + 5) = v46;
            *(v42 + 6) = v47;
            *(v42 + 7) = v8;
            ++v38;
            --v28;
          }

          while (v28);
        }

        v2 = v43;
        v4 = v44;
      }

      if (++v4 == v2)
      {
        return v5;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupedOverride(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GroupedOverride(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupedSender(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupedSender(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *APIManager.init()()
{
  v2 = v0;
  v3 = *v0;
  v31 = v1;
  v32 = v3;
  v4 = type metadata accessor for MCCNetworkController();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for OS_dispatch_queue_serial();
  v33 = "FetchOverridesUrl";
  v34 = v11;
  v0[2] = 0;
  v0[3] = 0;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A], &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v35 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v36);
  v0[6] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[7] = &_swiftEmptySetSingleton;
  v12 = [objc_opt_self() defaultStore];
  if (!v12)
  {
    lazy protocol witness table accessor for type MSError and conformance MSError();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x80000001000389D0;
    swift_willThrow();
LABEL_6:

    swift_deallocPartialClassInstance();
    return v2;
  }

  v13 = v12;
  v14 = [v12 aa_primaryAppleAccount];
  if (!v14)
  {
    lazy protocol witness table accessor for type MSError and conformance MSError();
    swift_allocError();
    *v25 = 0xD00000000000001BLL;
    v25[1] = 0x8000000100038A00;
    swift_willThrow();

    goto LABEL_6;
  }

  v2[4] = v13;
  v2[5] = v14;
  v15 = v14;
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v15;
  v19 = [v16 defaultSessionConfiguration];
  v20 = String._bridgeToObjectiveC()();
  [v19 set_sourceApplicationBundleIdentifier:v20];

  v21 = [objc_opt_self() sessionWithConfiguration:v19];
  v2[8] = v21;
  v22 = v21;
  v23 = v28;
  MCCNetworkController.init(account:session:)();

  (*(v29 + 32))(v2 + OBJC_IVAR____TtC15icloudmailagent10APIManager_networkController, v23, v30);
  return v2;
}

uint64_t specialized APIManager.perform<A>(model:retryLater:attempt:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 352) = a3;
  *(v5 + 360) = v4;
  *(v5 + 636) = a4;
  *(v5 + 635) = a2;
  *(v5 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  *(v5 + 368) = swift_task_alloc();
  v6 = type metadata accessor for MCCError();
  *(v5 + 376) = v6;
  *(v5 + 384) = *(v6 - 8);
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v7 = type metadata accessor for AuthMethod();
  *(v5 + 408) = v7;
  *(v5 + 416) = *(v7 - 8);
  *(v5 + 424) = swift_task_alloc();
  v8 = type metadata accessor for HTTPMethod();
  *(v5 + 432) = v8;
  *(v5 + 440) = *(v8 - 8);
  *(v5 + 448) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v5 + 456) = v9;
  *(v5 + 464) = *(v9 - 8);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();

  return _swift_task_switch(specialized APIManager.perform<A>(model:retryLater:attempt:), 0, 0);
}

{
  *(v5 + 360) = a3;
  *(v5 + 368) = v4;
  *(v5 + 644) = a4;
  *(v5 + 643) = a2;
  *(v5 + 352) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  *(v5 + 376) = swift_task_alloc();
  v6 = type metadata accessor for MCCError();
  *(v5 + 384) = v6;
  *(v5 + 392) = *(v6 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  v7 = type metadata accessor for AuthMethod();
  *(v5 + 416) = v7;
  *(v5 + 424) = *(v7 - 8);
  *(v5 + 432) = swift_task_alloc();
  v8 = type metadata accessor for HTTPMethod();
  *(v5 + 440) = v8;
  *(v5 + 448) = *(v8 - 8);
  *(v5 + 456) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v5 + 464) = v9;
  *(v5 + 472) = *(v9 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();

  return _swift_task_switch(specialized APIManager.perform<A>(model:retryLater:attempt:), 0, 0);
}

{
  *(v5 + 352) = a3;
  *(v5 + 360) = v4;
  *(v5 + 637) = a4;
  *(v5 + 636) = a2;
  *(v5 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  *(v5 + 368) = swift_task_alloc();
  v6 = type metadata accessor for MCCError();
  *(v5 + 376) = v6;
  *(v5 + 384) = *(v6 - 8);
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v7 = type metadata accessor for AuthMethod();
  *(v5 + 408) = v7;
  *(v5 + 416) = *(v7 - 8);
  *(v5 + 424) = swift_task_alloc();
  v8 = type metadata accessor for HTTPMethod();
  *(v5 + 432) = v8;
  *(v5 + 440) = *(v8 - 8);
  *(v5 + 448) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v5 + 456) = v9;
  *(v5 + 464) = *(v9 - 8);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();

  return _swift_task_switch(specialized APIManager.perform<A>(model:retryLater:attempt:), 0, 0);
}

uint64_t specialized APIManager.perform<A>(model:retryLater:attempt:)()
{
  if (*(v0 + 635) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042050, partial apply for closure #1 in APIManager.insertRequest(_:), &block_descriptor_52);
  }

  v1 = *(v0 + 344);
  *(v0 + 496) = OBJC_IVAR____TtC15icloudmailagent15APIRequestModel___observationRegistrar;
  *(v0 + 336) = v1;
  swift_getKeyPath();
  *(v0 + 504) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 512) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 520) = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  v2 = *(v0 + 240);
  v7 = *(v0 + 232);
  *(v0 + 528) = v2;
  *(v0 + 272) = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v3 = ACAccountDataclassMail;
  *(v0 + 536) = OBJC_IVAR____TtC15icloudmailagent10APIManager_networkController;
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v0 + 544) = v4;
  *v4 = v0;
  v4[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v5 = *(v0 + 488);

  return MCCNetworkController.url(for:dataClass:)(v5, v7, v2, v3);
}

{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    swift_endAccess();

    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = type metadata accessor for Logger();
  *(v0 + 560) = __swift_project_value_buffer(v5, static Logger.sync);
  v6 = *(v4 + 16);
  *(v0 + 568) = v6;
  *(v0 + 576) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 464);
    v46 = *(v0 + 456);
    v47 = *(v0 + 480);
    v10 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v11 = 136315650;
    *(v0 + 320) = v10;
    swift_getKeyPath();
    v52 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
    PersistentModel.getValue<A>(forKey:)();

    if (*(v0 + 634))
    {
      v12 = 1414745936;
    }

    else
    {
      v12 = 5522759;
    }

    if (*(v0 + 634))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v54);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v47, v46);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v54);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    *(v0 + 328) = v10;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 152), *(v0 + 160), &v54);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v52, "Making request for: [%s] %s, UUID: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 456);
    v23 = *(v0 + 464);

    v18 = *(v23 + 8);
    v18(v21, v22);
  }

  *(v0 + 584) = v18;
  v24 = *(v0 + 636);
  v25 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000100038930;
  *(v0 + 280) = v25;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v27 = *(v0 + 208);
  *(inited + 48) = *(v0 + 200);
  *(inited + 56) = v27;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
  if ((v24 & 1) == 0)
  {
    *(v0 + 312) = *(v0 + 352);
    lazy protocol witness table accessor for type Int and conformance Int();
    v29 = BinaryInteger.description.getter();
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, 0xD000000000000017, 0x8000000100038950, isUniquelyReferenced_nonNull_native);
    v28 = v54;
  }

  *(v0 + 592) = v28;
  v33 = *(v0 + 440);
  v48 = *(v0 + 432);
  v49 = *(v0 + 448);
  v34 = *(v0 + 416);
  v50 = *(v0 + 408);
  v51 = *(v0 + 424);
  v35 = *(v0 + 344);
  *(v0 + 288) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  PersistentModel.getValue<A>(forKey:)();

  v36 = &enum case for HTTPMethod.POST(_:);
  if (!*(v0 + 632))
  {
    v36 = &enum case for HTTPMethod.GET(_:);
  }

  (*(v33 + 104))(v49, *v36, v48);
  *(v0 + 296) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  PersistentModel.getValue<A>(forKey:)();

  v37 = &enum case for AuthMethod.basicAuth(_:);
  if (!*(v0 + 633))
  {
    v37 = &enum case for AuthMethod.authTokenOrBasicHeader(_:);
  }

  (*(v34 + 104))(v51, *v37, v50);
  *(v0 + 304) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  v38 = *(v0 + 216);
  v39 = *(v0 + 224);
  *(v0 + 600) = v38;
  *(v0 + 608) = v39;
  swift_beginAccess();
  v40 = swift_task_alloc();
  *(v0 + 616) = v40;
  v41 = lazy protocol witness table accessor for type EmptyAPIResponse and conformance EmptyAPIResponse();
  *v40 = v0;
  v40[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v42 = *(v0 + 488);
  v43 = *(v0 + 448);
  v44 = *(v0 + 424);

  return MCCNetworkController.performDecodable<A>(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(v41, v42, v43, v44, v38, v39, v28, 1);
}

{
  v33 = v0;
  swift_endAccess();

  v1 = *(v0 + 552);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = v1;
    v5 = *(v0 + 344);
    v6 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 256) = v5;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v1 = v31;
    PersistentModel.getValue<A>(forKey:)();

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 168), *(v0 + 176), v32);

    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request for %s failed %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 635) == 1)
  {
    v11 = *(v0 + 384);
    *(v0 + 248) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = swift_dynamicCast();
    v13 = *(v11 + 56);
    if (v12)
    {
      v14 = *(v0 + 392);
      v15 = *(v0 + 400);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 368);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      (*(v17 + 16))(v14, v15, v16);
      if ((*(v17 + 88))(v14, v16) == enum case for MCCError.serverError(_:))
      {
        v19 = *(v0 + 392);
        (*(*(v0 + 384) + 96))(v19, *(v0 + 376));
        v20 = *v19;
        outlined consume of Data?(*(v19 + 8), *(v19 + 16));
        v21 = [v20 statusCode];
        if (v21 >= 200)
        {
          v28 = *(v0 + 400);
          v30 = *(v0 + 376);
          v29 = *(v0 + 384);
          if (v21 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v29 + 8))(v28, v30);
          }

          else
          {
            (*(v29 + 8))(*(v0 + 400), *(v0 + 376));
          }
        }

        else
        {
          (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        }
      }

      else
      {
        v23 = *(v0 + 392);
        v24 = *(v0 + 376);
        v25 = *(*(v0 + 384) + 8);
        v25(*(v0 + 400), v24);
        v25(v23, v24);
      }
    }

    else
    {
      v22 = *(v0 + 368);
      v13(v22, 1, 1, *(v0 + 376));
      outlined destroy of TaskPriority?(v22, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

{
  v17 = v0;
  (*(v0 + 568))(*(v0 + 472), *(v0 + 488), *(v0 + 456));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 584);
  v5 = *(v0 + 472);
  v6 = *(v0 + 456);
  if (v3)
  {
    v15 = *(v0 + 584);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request is successful for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    v4(v5, v6);
  }

  if (*(v0 + 635) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);
  }

  (*(v0 + 584))(*(v0 + 488), *(v0 + 456));

  v13 = *(v0 + 8);

  return v13();
}

{
  v44 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v40 = *(v0 + 488);
  v41 = *(v0 + 584);
  v39 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  swift_endAccess();

  outlined consume of Data?(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  v41(v40, v39);
  v9 = *(v0 + 624);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sync);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v42 = v9;
    v13 = *(v0 + 344);
    v14 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v0 + 256) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v9 = v42;
    PersistentModel.getValue<A>(forKey:)();

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 168), *(v0 + 176), v43);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v43);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Request for %s failed %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 635) == 1)
  {
    v19 = *(v0 + 384);
    *(v0 + 248) = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = swift_dynamicCast();
    v21 = *(v19 + 56);
    if (v20)
    {
      v22 = *(v0 + 392);
      v23 = *(v0 + 400);
      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 368);
      v21(v26, 0, 1, v24);
      (*(v25 + 32))(v23, v26, v24);
      (*(v25 + 16))(v22, v23, v24);
      if ((*(v25 + 88))(v22, v24) == enum case for MCCError.serverError(_:))
      {
        v27 = *(v0 + 392);
        (*(*(v0 + 384) + 96))(v27, *(v0 + 376));
        v28 = *v27;
        outlined consume of Data?(*(v27 + 8), *(v27 + 16));
        v29 = [v28 statusCode];
        if (v29 >= 200)
        {
          v36 = *(v0 + 400);
          v38 = *(v0 + 376);
          v37 = *(v0 + 384);
          if (v29 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v37 + 8))(v36, v38);
          }

          else
          {
            (*(v37 + 8))(*(v0 + 400), *(v0 + 376));
          }
        }

        else
        {
          (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        }
      }

      else
      {
        v31 = *(v0 + 392);
        v32 = *(v0 + 376);
        v33 = *(*(v0 + 384) + 8);
        v33(*(v0 + 400), v32);
        v33(v31, v32);
      }
    }

    else
    {
      v30 = *(v0 + 368);
      v21(v30, 1, 1, *(v0 + 376));
      outlined destroy of TaskPriority?(v30, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v34 = *(v0 + 8);

  return v34();
}

{
  if (*(v0 + 643) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 352), &unk_100042050, partial apply for closure #1 in APIManager.insertRequest(_:), &block_descriptor_52);
  }

  v1 = *(v0 + 352);
  *(v0 + 504) = OBJC_IVAR____TtC15icloudmailagent15APIRequestModel___observationRegistrar;
  *(v0 + 344) = v1;
  swift_getKeyPath();
  *(v0 + 512) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 520) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 528) = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  v2 = *(v0 + 160);
  v7 = *(v0 + 152);
  *(v0 + 536) = v2;
  *(v0 + 312) = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v3 = ACAccountDataclassMail;
  *(v0 + 544) = OBJC_IVAR____TtC15icloudmailagent10APIManager_networkController;
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v0 + 552) = v4;
  *v4 = v0;
  v4[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v5 = *(v0 + 496);

  return MCCNetworkController.url(for:dataClass:)(v5, v7, v2, v3);
}

{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    swift_endAccess();

    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = type metadata accessor for Logger();
  *(v0 + 568) = __swift_project_value_buffer(v5, static Logger.sync);
  v6 = *(v4 + 16);
  *(v0 + 576) = v6;
  *(v0 + 584) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 472);
    v45 = *(v0 + 464);
    v46 = *(v0 + 488);
    v10 = *(v0 + 352);
    v11 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v11 = 136315650;
    *(v0 + 328) = v10;
    swift_getKeyPath();
    v51 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
    PersistentModel.getValue<A>(forKey:)();

    if (*(v0 + 642))
    {
      v12 = 1414745936;
    }

    else
    {
      v12 = 5522759;
    }

    if (*(v0 + 642))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v53);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v46, v45);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v53);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    *(v0 + 336) = v10;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 200), *(v0 + 208), &v53);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v51, "Making request for: [%s] %s, UUID: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 488);
    v22 = *(v0 + 464);
    v23 = *(v0 + 472);

    v18 = *(v23 + 8);
    v18(v21, v22);
  }

  *(v0 + 592) = v18;
  v24 = *(v0 + 644);
  v25 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000100038930;
  *(v0 + 256) = v25;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v27 = *(v0 + 240);
  *(inited + 48) = *(v0 + 232);
  *(inited + 56) = v27;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
  if ((v24 & 1) == 0)
  {
    *(v0 + 320) = *(v0 + 360);
    lazy protocol witness table accessor for type Int and conformance Int();
    v29 = BinaryInteger.description.getter();
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, 0xD000000000000017, 0x8000000100038950, isUniquelyReferenced_nonNull_native);
    v28 = v53;
  }

  *(v0 + 600) = v28;
  v33 = *(v0 + 448);
  v47 = *(v0 + 440);
  v48 = *(v0 + 456);
  v34 = *(v0 + 424);
  v49 = *(v0 + 416);
  v50 = *(v0 + 432);
  v35 = *(v0 + 352);
  *(v0 + 280) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  PersistentModel.getValue<A>(forKey:)();

  v36 = &enum case for HTTPMethod.POST(_:);
  if (!*(v0 + 640))
  {
    v36 = &enum case for HTTPMethod.GET(_:);
  }

  (*(v33 + 104))(v48, *v36, v47);
  *(v0 + 288) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  PersistentModel.getValue<A>(forKey:)();

  v37 = &enum case for AuthMethod.basicAuth(_:);
  if (!*(v0 + 641))
  {
    v37 = &enum case for AuthMethod.authTokenOrBasicHeader(_:);
  }

  (*(v34 + 104))(v50, *v37, v49);
  *(v0 + 296) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  v38 = *(v0 + 184);
  v39 = *(v0 + 192);
  *(v0 + 608) = v38;
  *(v0 + 616) = v39;
  swift_beginAccess();
  v40 = swift_task_alloc();
  *(v0 + 624) = v40;
  lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse();
  *v40 = v0;
  v40[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v41 = *(v0 + 496);
  v42 = *(v0 + 456);
  v43 = *(v0 + 432);

  return MCCNetworkController.performDecodable<A>(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(v0 + 248, v41, v42, v43, v38, v39, v28, 1);
}

{
  v33 = v0;
  swift_endAccess();

  v1 = *(v0 + 560);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = v1;
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 272) = v5;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v1 = v31;
    PersistentModel.getValue<A>(forKey:)();

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 216), *(v0 + 224), v32);

    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request for %s failed %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 643) == 1)
  {
    v11 = *(v0 + 392);
    *(v0 + 304) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = swift_dynamicCast();
    v13 = *(v11 + 56);
    if (v12)
    {
      v14 = *(v0 + 400);
      v15 = *(v0 + 408);
      v16 = *(v0 + 384);
      v17 = *(v0 + 392);
      v18 = *(v0 + 376);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      (*(v17 + 16))(v14, v15, v16);
      if ((*(v17 + 88))(v14, v16) == enum case for MCCError.serverError(_:))
      {
        v19 = *(v0 + 400);
        (*(*(v0 + 392) + 96))(v19, *(v0 + 384));
        v20 = *v19;
        outlined consume of Data?(*(v19 + 8), *(v19 + 16));
        v21 = [v20 statusCode];
        if (v21 >= 200)
        {
          v28 = *(v0 + 408);
          v30 = *(v0 + 384);
          v29 = *(v0 + 392);
          if (v21 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 352), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v29 + 8))(v28, v30);
          }

          else
          {
            (*(v29 + 8))(*(v0 + 408), *(v0 + 384));
          }
        }

        else
        {
          (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));
        }
      }

      else
      {
        v23 = *(v0 + 400);
        v24 = *(v0 + 384);
        v25 = *(*(v0 + 392) + 8);
        v25(*(v0 + 408), v24);
        v25(v23, v24);
      }
    }

    else
    {
      v22 = *(v0 + 376);
      v13(v22, 1, 1, *(v0 + 384));
      outlined destroy of TaskPriority?(v22, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

{
  v18 = v0;
  v16 = *(v0 + 248);
  (*(v0 + 576))(*(v0 + 480), *(v0 + 496), *(v0 + 464));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 592);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);
  if (v3)
  {
    v15 = *(v0 + 592);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request is successful for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    v4(v5, v6);
  }

  if (*(v0 + 643) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 352), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);
  }

  (*(v0 + 592))(*(v0 + 496), *(v0 + 464));

  v13 = *(v0 + 8);

  return v13(v16);
}

{
  v44 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v40 = *(v0 + 496);
  v41 = *(v0 + 592);
  v39 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  swift_endAccess();

  outlined consume of Data?(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  v41(v40, v39);
  v9 = *(v0 + 632);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sync);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v42 = v9;
    v13 = *(v0 + 352);
    v14 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v0 + 272) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v9 = v42;
    PersistentModel.getValue<A>(forKey:)();

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 216), *(v0 + 224), v43);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v43);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Request for %s failed %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 643) == 1)
  {
    v19 = *(v0 + 392);
    *(v0 + 304) = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = swift_dynamicCast();
    v21 = *(v19 + 56);
    if (v20)
    {
      v22 = *(v0 + 400);
      v23 = *(v0 + 408);
      v24 = *(v0 + 384);
      v25 = *(v0 + 392);
      v26 = *(v0 + 376);
      v21(v26, 0, 1, v24);
      (*(v25 + 32))(v23, v26, v24);
      (*(v25 + 16))(v22, v23, v24);
      if ((*(v25 + 88))(v22, v24) == enum case for MCCError.serverError(_:))
      {
        v27 = *(v0 + 400);
        (*(*(v0 + 392) + 96))(v27, *(v0 + 384));
        v28 = *v27;
        outlined consume of Data?(*(v27 + 8), *(v27 + 16));
        v29 = [v28 statusCode];
        if (v29 >= 200)
        {
          v36 = *(v0 + 408);
          v38 = *(v0 + 384);
          v37 = *(v0 + 392);
          if (v29 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 352), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v37 + 8))(v36, v38);
          }

          else
          {
            (*(v37 + 8))(*(v0 + 408), *(v0 + 384));
          }
        }

        else
        {
          (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));
        }
      }

      else
      {
        v31 = *(v0 + 400);
        v32 = *(v0 + 384);
        v33 = *(*(v0 + 392) + 8);
        v33(*(v0 + 408), v32);
        v33(v31, v32);
      }
    }

    else
    {
      v30 = *(v0 + 376);
      v21(v30, 1, 1, *(v0 + 384));
      outlined destroy of TaskPriority?(v30, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v34 = *(v0 + 8);

  return v34();
}

{
  if (*(v0 + 636) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042050, partial apply for closure #1 in APIManager.insertRequest(_:), &block_descriptor_52);
  }

  v1 = *(v0 + 344);
  *(v0 + 496) = OBJC_IVAR____TtC15icloudmailagent15APIRequestModel___observationRegistrar;
  *(v0 + 248) = v1;
  swift_getKeyPath();
  *(v0 + 504) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 512) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 520) = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  v2 = *(v0 + 160);
  v7 = *(v0 + 152);
  *(v0 + 528) = v2;
  *(v0 + 312) = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v3 = ACAccountDataclassMail;
  *(v0 + 536) = OBJC_IVAR____TtC15icloudmailagent10APIManager_networkController;
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v0 + 544) = v4;
  *v4 = v0;
  v4[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v5 = *(v0 + 488);

  return MCCNetworkController.url(for:dataClass:)(v5, v7, v2, v3);
}

{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    swift_endAccess();

    v2 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = type metadata accessor for Logger();
  *(v0 + 560) = __swift_project_value_buffer(v5, static Logger.sync);
  v6 = *(v4 + 16);
  *(v0 + 568) = v6;
  *(v0 + 576) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 464);
    v45 = *(v0 + 456);
    v46 = *(v0 + 480);
    v10 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v11 = 136315650;
    *(v0 + 328) = v10;
    swift_getKeyPath();
    v51 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
    PersistentModel.getValue<A>(forKey:)();

    if (*(v0 + 634))
    {
      v12 = 1414745936;
    }

    else
    {
      v12 = 5522759;
    }

    if (*(v0 + 634))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v53);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v46, v45);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v53);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    *(v0 + 336) = v10;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 200), *(v0 + 208), &v53);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v51, "Making request for: [%s] %s, UUID: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 456);
    v23 = *(v0 + 464);

    v18 = *(v23 + 8);
    v18(v21, v22);
  }

  *(v0 + 584) = v18;
  v24 = *(v0 + 637);
  v25 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000100038930;
  *(v0 + 256) = v25;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v27 = *(v0 + 240);
  *(inited + 48) = *(v0 + 232);
  *(inited + 56) = v27;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
  if ((v24 & 1) == 0)
  {
    *(v0 + 320) = *(v0 + 352);
    lazy protocol witness table accessor for type Int and conformance Int();
    v29 = BinaryInteger.description.getter();
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, 0xD000000000000017, 0x8000000100038950, isUniquelyReferenced_nonNull_native);
    v28 = v53;
  }

  *(v0 + 592) = v28;
  v33 = *(v0 + 440);
  v47 = *(v0 + 432);
  v48 = *(v0 + 448);
  v34 = *(v0 + 416);
  v49 = *(v0 + 408);
  v50 = *(v0 + 424);
  v35 = *(v0 + 344);
  *(v0 + 280) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  PersistentModel.getValue<A>(forKey:)();

  v36 = &enum case for HTTPMethod.POST(_:);
  if (!*(v0 + 632))
  {
    v36 = &enum case for HTTPMethod.GET(_:);
  }

  (*(v33 + 104))(v48, *v36, v47);
  *(v0 + 288) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  PersistentModel.getValue<A>(forKey:)();

  v37 = &enum case for AuthMethod.basicAuth(_:);
  if (!*(v0 + 633))
  {
    v37 = &enum case for AuthMethod.authTokenOrBasicHeader(_:);
  }

  (*(v34 + 104))(v50, *v37, v49);
  *(v0 + 296) = v35;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  v38 = *(v0 + 184);
  v39 = *(v0 + 192);
  *(v0 + 600) = v38;
  *(v0 + 608) = v39;
  swift_beginAccess();
  v40 = swift_task_alloc();
  *(v0 + 616) = v40;
  lazy protocol witness table accessor for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse();
  *v40 = v0;
  v40[1] = specialized APIManager.perform<A>(model:retryLater:attempt:);
  v41 = *(v0 + 488);
  v42 = *(v0 + 448);
  v43 = *(v0 + 424);

  return MCCNetworkController.performDecodable<A>(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(v0 + 635, v41, v42, v43, v38, v39, v28, 1);
}

{
  v33 = v0;
  swift_endAccess();

  v1 = *(v0 + 552);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = v1;
    v5 = *(v0 + 344);
    v6 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 272) = v5;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v1 = v31;
    PersistentModel.getValue<A>(forKey:)();

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 216), *(v0 + 224), v32);

    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request for %s failed %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 636) == 1)
  {
    v11 = *(v0 + 384);
    *(v0 + 304) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = swift_dynamicCast();
    v13 = *(v11 + 56);
    if (v12)
    {
      v14 = *(v0 + 392);
      v15 = *(v0 + 400);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 368);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      (*(v17 + 16))(v14, v15, v16);
      if ((*(v17 + 88))(v14, v16) == enum case for MCCError.serverError(_:))
      {
        v19 = *(v0 + 392);
        (*(*(v0 + 384) + 96))(v19, *(v0 + 376));
        v20 = *v19;
        outlined consume of Data?(*(v19 + 8), *(v19 + 16));
        v21 = [v20 statusCode];
        if (v21 >= 200)
        {
          v28 = *(v0 + 400);
          v30 = *(v0 + 376);
          v29 = *(v0 + 384);
          if (v21 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v29 + 8))(v28, v30);
          }

          else
          {
            (*(v29 + 8))(*(v0 + 400), *(v0 + 376));
          }
        }

        else
        {
          (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        }
      }

      else
      {
        v23 = *(v0 + 392);
        v24 = *(v0 + 376);
        v25 = *(*(v0 + 384) + 8);
        v25(*(v0 + 400), v24);
        v25(v23, v24);
      }
    }

    else
    {
      v22 = *(v0 + 368);
      v13(v22, 1, 1, *(v0 + 376));
      outlined destroy of TaskPriority?(v22, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v26 = *(v0 + 8);

  return v26(0);
}

{
  v18 = v0;
  v16 = *(v0 + 635);
  (*(v0 + 568))(*(v0 + 472), *(v0 + 488), *(v0 + 456));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 584);
  v5 = *(v0 + 472);
  v6 = *(v0 + 456);
  if (v3)
  {
    v15 = *(v0 + 584);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request is successful for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    v4(v5, v6);
  }

  if (*(v0 + 636) == 1)
  {
    APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);
  }

  (*(v0 + 584))(*(v0 + 488), *(v0 + 456));

  v13 = *(v0 + 8);

  return v13(v16);
}

{
  v44 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v40 = *(v0 + 488);
  v41 = *(v0 + 584);
  v39 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  swift_endAccess();

  outlined consume of Data?(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  v41(v40, v39);
  v9 = *(v0 + 624);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sync);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v42 = v9;
    v13 = *(v0 + 344);
    v14 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v0 + 272) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v9 = v42;
    PersistentModel.getValue<A>(forKey:)();

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 216), *(v0 + 224), v43);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v43);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Request for %s failed %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 636) == 1)
  {
    v19 = *(v0 + 384);
    *(v0 + 304) = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = swift_dynamicCast();
    v21 = *(v19 + 56);
    if (v20)
    {
      v22 = *(v0 + 392);
      v23 = *(v0 + 400);
      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 368);
      v21(v26, 0, 1, v24);
      (*(v25 + 32))(v23, v26, v24);
      (*(v25 + 16))(v22, v23, v24);
      if ((*(v25 + 88))(v22, v24) == enum case for MCCError.serverError(_:))
      {
        v27 = *(v0 + 392);
        (*(*(v0 + 384) + 96))(v27, *(v0 + 376));
        v28 = *v27;
        outlined consume of Data?(*(v27 + 8), *(v27 + 16));
        v29 = [v28 statusCode];
        if (v29 >= 200)
        {
          v36 = *(v0 + 400);
          v38 = *(v0 + 376);
          v37 = *(v0 + 384);
          if (v29 <= 0x1F3)
          {
            APIManager.insertRequest(_:)(*(v0 + 344), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

            (*(v37 + 8))(v36, v38);
          }

          else
          {
            (*(v37 + 8))(*(v0 + 400), *(v0 + 376));
          }
        }

        else
        {
          (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        }
      }

      else
      {
        v31 = *(v0 + 392);
        v32 = *(v0 + 376);
        v33 = *(*(v0 + 384) + 8);
        v33(*(v0 + 400), v32);
        v33(v31, v32);
      }
    }

    else
    {
      v30 = *(v0 + 368);
      v21(v30, 1, 1, *(v0 + 376));
      outlined destroy of TaskPriority?(v30, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
    }
  }

  swift_willThrow();

  v34 = *(v0 + 8);

  return v34(0);
}

uint64_t specialized APIManager.perform<A>(model:retryLater:attempt:)(void *a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    v6 = v4[76];
    v7 = v4[75];
    v8 = v4[55];
    v9 = v4[53];
    v13 = v4[54];
    v14 = v4[56];
    v11 = v4[51];
    v10 = v4[52];
    swift_endAccess();

    outlined consume of Data?(v7, v6);
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v14, v13);
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    v6 = v4[77];
    v7 = v4[76];
    v8 = v4[56];
    v9 = v4[54];
    v13 = v4[55];
    v14 = v4[57];
    v11 = v4[52];
    v10 = v4[53];
    swift_endAccess();

    outlined consume of Data?(v7, v6);
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v14, v13);
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  else
  {
    v6 = v4[76];
    v7 = v4[75];
    v8 = v4[55];
    v9 = v4[53];
    v13 = v4[54];
    v14 = v4[56];
    v11 = v4[51];
    v10 = v4[52];
    swift_endAccess();

    outlined consume of Data?(v7, v6);
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v14, v13);
    v5 = specialized APIManager.perform<A>(model:retryLater:attempt:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t APIManager.insertRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 48);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t APIManager.getModelContext()()
{
  v1 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ModelConfiguration.GroupContainer();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for ModelConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Schema.Version();
  __chkstk_darwin(v7 - 8);
  if (!*(v0 + 16))
  {
    v19 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
    v9 = swift_allocObject();
    v20 = xmmword_1000356B0;
    *(v9 + 16) = xmmword_1000356B0;
    v10 = type metadata accessor for APIRequestModel(0);
    v11 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    Schema.Version.init(_:_:_:)();
    type metadata accessor for Schema();
    swift_allocObject();
    Schema.init(_:version:)();

    static ModelConfiguration.GroupContainer.none.getter();
    static ModelConfiguration.CloudKitDatabase.automatic.getter();
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
    type metadata accessor for ModelContainer();
    v12 = swift_allocObject();
    *(v12 + 16) = v20;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMd, &_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = v20;
    *(v13 + 56) = v3;
    *(v13 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type ModelConfiguration and conformance ModelConfiguration, &type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
    v15 = ModelContainer.__allocating_init(for:configurations:)();
    type metadata accessor for ModelContext();
    swift_allocObject();

    v16 = ModelContext.init(_:)();

    (*(v4 + 8))(v6, v3);
    v17 = v19;
    *(v19 + 16) = v16;

    *(v17 + 24) = v15;
  }
}

void APIManager.saveDB()()
{
  if (APIManager.getModelContext()())
  {
    dispatch thunk of ModelContext.save()();
  }

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.sync);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SQL: Saved", v2, 2u);
  }
}

void closure #1 in APIManager.insertRequest(_:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.sync);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getKeyPath();
    format = a3;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    PersistentModel.getValue<A>(forKey:)();

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v16, &v17);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, format, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  if (APIManager.getModelContext()())
  {
    v13 = type metadata accessor for APIRequestModel(0);
    v14 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    a4(a1, v13, v14);
  }

  APIManager.saveDB()();
}

id *APIManager.deinit()
{

  v1 = OBJC_IVAR____TtC15icloudmailagent10APIManager_networkController;
  v2 = type metadata accessor for MCCNetworkController();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t APIManager.__deallocating_deinit()
{
  APIManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for APIManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for APIManager;
  if (!type metadata singleton initialization cache for APIManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for APIManager(uint64_t a1)
{
  result = type metadata accessor for MCCNetworkController();
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

Swift::Void __swiftcall APIManager.retryPendingRequests()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  __chkstk_darwin(v12);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = v0[6];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in APIManager.retryPendingRequests();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v12);
}

uint64_t closure #1 in APIManager.retryPendingRequests()(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy15icloudmailagent15APIRequestModelC_QPGSgMd, &_s10Foundation9PredicateVy15icloudmailagent15APIRequestModelC_QPGSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy15icloudmailagent15APIRequestModelCGMd, &_s9SwiftData15FetchDescriptorVy15icloudmailagent15APIRequestModelCGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.sync);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Retrying pending requests...", v16, 2u);
  }

  result = APIManager.getModelContext()();
  if (result)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy15icloudmailagent15APIRequestModelC_QPGMd, &_s10Foundation9PredicateVy15icloudmailagent15APIRequestModelC_QPGMR);
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    type metadata accessor for APIRequestModel(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    FetchDescriptor.init(predicate:sortBy:)();
    v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
    (*(v10 + 8))(v12, v9);

    if (v19 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_8;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v20, v21))
      {

LABEL_19:
        static TaskPriority.background.getter();
        v31 = type metadata accessor for TaskPriority();
        (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
        v32 = swift_allocObject();
        v32[2] = 0;
        v32[3] = 0;
        v32[4] = v19;
        v32[5] = a1;
        v32[6] = v34;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests(), v32);
      }

      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v19 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;

      v24 = "There are %ld pending requests to retry";
      v25 = v21;
      v26 = v20;
      v27 = v22;
      v28 = 12;
      goto LABEL_17;
    }

    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v29))
    {
LABEL_18:

      goto LABEL_19;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v24 = "Nothing to retry, we are good 😉";
    v25 = v29;
    v26 = v20;
    v27 = v30;
    v28 = 2;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v26, v25, v24, v27, v28);

    goto LABEL_18;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in closure #1 in APIManager.retryPendingRequests()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  v5[22] = swift_task_alloc();
  v6 = type metadata accessor for MCCError();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in APIManager.retryPendingRequests(), 0, 0);
}

uint64_t closure #1 in closure #1 in APIManager.retryPendingRequests()()
{
  v18 = v1;
  v2 = *(v1 + 160);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 216) = v3;
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        v4 = *(v1 + 160);
        *(v1 + 288) = enum case for MCCError.serverError(_:);
        *(v1 + 224) = 0;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v0 = *(v4 + 32);
        }

        *(v1 + 232) = v0;
        if (one-time initialization token for sync == -1)
        {
          goto LABEL_8;
        }
      }

      swift_once();
LABEL_8:
      v5 = type metadata accessor for Logger();
      *(v1 + 240) = __swift_project_value_buffer(v5, static Logger.sync);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      v8 = &unk_100046000;
      if (os_log_type_enabled(v6, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v17 = v10;
        *v9 = 136315138;
        *(v1 + 152) = v0;
        swift_getKeyPath();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
        PersistentModel.getValue<A>(forKey:)();

        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 32), *(v1 + 40), &v17);
        v8 = &unk_100046000;

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "Retrying: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      *(v1 + 248) = v8[442];
      *(v1 + 48) = v0;
      swift_getKeyPath();
      *(v1 + 256) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      *(v1 + 264) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
      PersistentModel.getValue<A>(forKey:)();

      v13 = *(v1 + 56);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        v15 = swift_task_alloc();
        *(v1 + 272) = v15;
        *v15 = v1;
        v15[1] = closure #1 in closure #1 in APIManager.retryPendingRequests();

        return specialized APIManager.perform<A>(model:retryLater:attempt:)(v0, 0, v14, 0);
      }

      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 216) = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v1 + 8);

  return v16();
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in APIManager.retryPendingRequests();
  }

  else
  {
    v2 = closure #1 in closure #1 in APIManager.retryPendingRequests();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v23 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[29];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v0[18] = v3;
    v22 = v5;
    *v4 = 136315138;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[2], v0[3], &v22);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successful retry: %s, deleting an entry...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  APIManager.insertRequest(_:)(v0[29], &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

  v7 = v0[28] + 1;
  if (v7 == v0[27])
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[28] = v7;
    v10 = v0[20];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v7 + 32);
    }

    v0[29] = v11;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[30] = __swift_project_value_buffer(v12, static Logger.sync);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = &unk_100046000;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v0[19] = v11;
      swift_getKeyPath();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
      PersistentModel.getValue<A>(forKey:)();

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[4], v0[5], &v22);
      v15 = &unk_100046000;

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Retrying: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    v0[31] = v15[442];
    v0[6] = v11;
    swift_getKeyPath();
    v0[32] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v0[33] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    PersistentModel.getValue<A>(forKey:)();

    v19 = v0[7];
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v21 = swift_task_alloc();
      v0[34] = v21;
      *v21 = v0;
      v21[1] = closure #1 in closure #1 in APIManager.retryPendingRequests();

      return specialized APIManager.perform<A>(model:retryLater:attempt:)(v11, 0, v20, 0);
    }
  }

  return result;
}

{
  v54 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Retry failed with error: %@", v3, 0xCu);
    outlined destroy of TaskPriority?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v6 = *(v0 + 280);
  v7 = *(v0 + 192);

  *(v0 + 64) = v6;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  if (v8)
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v9(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    (*(v14 + 16))(v11, v12, v13);
    if ((*(v14 + 88))(v11, v13) == v10)
    {
      v16 = *(v0 + 200);
      (*(*(v0 + 192) + 96))(v16, *(v0 + 184));
      v17 = *v16;
      outlined consume of Data?(*(v16 + 8), *(v16 + 16));
      v18 = [v17 statusCode];
      if (v18 > 199 && v18 < 0x1F4)
      {
        v50 = *(v0 + 208);
        v51 = *(v0 + 184);
        v52 = *(v0 + 192);
        APIManager.insertRequest(_:)(*(v0 + 232), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);

        (*(v52 + 8))(v50, v51);
        goto LABEL_20;
      }

      (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    }

    else
    {
      v20 = *(v0 + 200);
      v21 = *(v0 + 184);
      v22 = *(*(v0 + 192) + 8);
      v22(*(v0 + 208), v21);
      v22(v20, v21);
    }
  }

  else
  {
    v19 = *(v0 + 176);
    v9(v19, 1, 1, *(v0 + 184));
    outlined destroy of TaskPriority?(v19, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  }

  v23 = *(v0 + 264);
  *(v0 + 72) = *(v0 + 232);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v24 = *(v0 + 80);
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_28;
  }

  v26 = *(v0 + 232);
  *(v0 + 88) = v26;
  swift_getKeyPath();
  v27 = swift_task_alloc();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  *(v0 + 96) = v26;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v28 = *(v0 + 104);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  if (v28 >= 3)
  {
    if (v31)
    {
      v34 = *(v0 + 232);
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v0 + 112) = v34;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      *(v35 + 4) = *(v0 + 120);

      _os_log_impl(&_mh_execute_header, v29, v30, "Reached maximum retry attempts, removing it: %ld", v35, 0xCu);
    }

    else
    {
    }

    APIManager.insertRequest(_:)(*(v0 + 232), &unk_100042000, partial apply for closure #1 in APIManager.removeRequest(_:), &block_descriptor_27);
  }

  else
  {
    if (v31)
    {
      v32 = *(v0 + 232);
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v0 + 128) = v32;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      *(v33 + 4) = *(v0 + 136);

      _os_log_impl(&_mh_execute_header, v29, v30, "Retry count: %ld", v33, 0xCu);
    }

    else
    {
    }
  }

LABEL_20:
  v36 = *(v0 + 224) + 1;
  if (v36 == *(v0 + 216))
  {

    v37 = *(v0 + 8);

    return v37();
  }

  *(v0 + 224) = v36;
  v39 = *(v0 + 160);
  if ((v39 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(v39 + 8 * v36 + 32);
  }

  *(v0 + 232) = v23;
  if (one-time initialization token for sync != -1)
  {
    goto LABEL_36;
  }

LABEL_28:
  v40 = type metadata accessor for Logger();
  *(v0 + 240) = __swift_project_value_buffer(v40, static Logger.sync);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = &unk_100046000;
  if (os_log_type_enabled(v41, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v44 = 136315138;
    *(v0 + 152) = v23;
    swift_getKeyPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    PersistentModel.getValue<A>(forKey:)();

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 32), *(v0 + 40), &v53);
    v43 = &unk_100046000;

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v41, v42, "Retrying: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  *(v0 + 248) = v43[442];
  *(v0 + 48) = v23;
  swift_getKeyPath();
  *(v0 + 256) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 264) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  v47 = *(v0 + 56);
  v48 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
  }

  else
  {
    v49 = swift_task_alloc();
    *(v0 + 272) = v49;
    *v49 = v0;
    v49[1] = closure #1 in closure #1 in APIManager.retryPendingRequests();

    return specialized APIManager.perform<A>(model:retryLater:attempt:)(v23, 0, v48, 0);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(char a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 77) = a3;
  *(v5 + 144) = a2;
  *(v5 + 152) = v4;
  *(v5 + 76) = a1;
  *(v5 + 136) = a4;
  v6 = type metadata accessor for Date();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 192) = v7;
  *(v5 + 200) = *(v7 - 8);
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:), 0, 0);
}

uint64_t APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)()
{
  v1 = *(v0 + 77);
  v2 = *(v0 + 144);
  v3 = *(v0 + 76);
  v4 = *(v0 + 136);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 48) = v4;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 73) = v1;
  lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  *(v0 + 216) = v5;
  *(v0 + 224) = v7;
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 192);
  v20 = *(v0 + 184);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v9 + 8))(v8, v10);
  outlined copy of Data?(v5, v7);
  Date.init()();
  v14 = type metadata accessor for APIRequestModel(0);
  v15 = swift_allocObject();
  *(v0 + 232) = v15;
  *(v15 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  v16 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 16) = v14;
  *(v0 + 24) = v14;
  *(v0 + 32) = v16;
  *(v0 + 40) = v16;
  *(v15 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v15 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v15 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 128) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 80) = v11;
  *(v0 + 88) = v13;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 96) = v5;
  *(v0 + 104) = v7;
  outlined copy of Data?(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v5, v7);
  *(v15 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 74) = 1;
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 112) = 0xD000000000000011;
  *(v0 + 120) = 0x8000000100038990;
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *(v0 + 75) = 1;
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v21 + 16))(v22, v20, v23);
  __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v5, v7);
  v17 = *(v21 + 8);
  v17(v22, v23);
  v17(v20, v23);
  v18 = swift_task_alloc();
  *(v0 + 240) = v18;
  *v18 = v0;
  v18[1] = APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:);

  return specialized APIManager.perform<A>(model:retryLater:attempt:)(v15, 0, 0, 1);
}

{
  outlined consume of Data?(v0[27], v0[28]);

  v1 = v0[1];
  v2 = v0[32];

  return v1(v2);
}

{
  outlined consume of Data?(v0[27], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:);
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t APIManager.syncRecategorizationRule(rule:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 144) = v4;
  *(v5 + 136) = a4;
  *(v5 + 120) = a2;
  *(v5 + 128) = a3;
  *(v5 + 112) = a1;
  v6 = type metadata accessor for Date();
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();

  return _swift_task_switch(APIManager.syncRecategorizationRule(rule:), 0, 0);
}

uint64_t APIManager.syncRecategorizationRule(rule:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = objc_opt_self();
  GroupedOverride.dictionary.getter(v4, v2, v3, v1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 96) = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v0 + 96];

  v8 = *(v0 + 96);
  if (v7)
  {
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v29 = *(v0 + 152);
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v0 + 208) = v12;
    *(v0 + 216) = v14;
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v9 + 8))(v10, v11);
    outlined copy of Data._Representation(v12, v14);
    Date.init()();
    v18 = type metadata accessor for APIRequestModel(0);
    v19 = swift_allocObject();
    *(v0 + 224) = v19;
    *(v19 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
    v20 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
    *(v0 + 16) = v18;
    *(v0 + 24) = v18;
    *(v0 + 32) = v20;
    *(v0 + 40) = v20;
    *(v19 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v19 + 24));
    static PersistentModel.createBackingData<A>()();
    *(v19 + 16) = 1;
    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 104) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    ObservationRegistrar.init()();
    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 48) = v15;
    *(v0 + 56) = v17;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 64) = v12;
    *(v0 + 72) = v14;
    outlined copy of Data._Representation(v12, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined consume of Data._Representation(v12, v14);
    *(v19 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 248) = 1;
    lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 80) = 0xD000000000000017;
    *(v0 + 88) = 0x8000000100038A40;
    lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    *(v0 + 249) = 1;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    (*(v27 + 16))(v28, v26, v29);
    __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
    swift_getKeyPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined consume of Data._Representation(v12, v14);
    v21 = *(v27 + 8);
    v21(v28, v29);
    v21(v26, v29);
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = APIManager.syncRecategorizationRule(rule:);

    return specialized APIManager.perform<A>(model:retryLater:attempt:)(v19, 1, 0, 1);
  }

  else
  {
    v24 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = APIManager.syncRecategorizationRule(rule:);
  }

  else
  {
    v2 = APIManager.syncRecategorizationRule(rule:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined consume of Data._Representation(v0[26], v0[27]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[26], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t APIManager.clearAllUserOverrides(timestamp:)(double a1)
{
  *(v2 + 176) = v1;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();

  return _swift_task_switch(APIManager.clearAllUserOverrides(timestamp:), 0, 0);
}

uint64_t APIManager.clearAllUserOverrides(timestamp:)()
{
  v1 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SdtGMd, &_ss23_ContiguousArrayStorageCySS_SdtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = 0x6D617473656D6974;
  v3 = inited + 32;
  *(inited + 40) = 0xE900000000000070;
  *(inited + 48) = v1 * 1000.0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v3, &_sSS_SdtMd, &_sSS_SdtMR);
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 152) = 0;
  v6 = [v4 dataWithJSONObject:isa options:0 error:v0 + 152];

  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *(v0 + 240) = v8;
  *(v0 + 248) = v10;
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *(v0 + 200);
  v27 = *(v0 + 184);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  outlined copy of Data?(v8, v10);
  Date.init()();
  v18 = type metadata accessor for APIRequestModel(0);
  v19 = swift_allocObject();
  *(v0 + 256) = v19;
  *(v19 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  v20 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 72) = v18;
  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  *(v0 + 96) = v20;
  *(v19 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v19 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v19 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 160) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 104) = v15;
  *(v0 + 112) = v17;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 120) = v8;
  *(v0 + 128) = v10;
  outlined copy of Data?(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v8, v10);
  *(v19 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 280) = 1;
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x8000000100038970;
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  *(v0 + 281) = 1;
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v25 + 16))(v26, v24, v27);
  __swift_project_boxed_opaque_existential_1((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v8, v10);
  v21 = *(v25 + 8);
  v21(v26, v27);
  v21(v24, v27);
  v22 = swift_task_alloc();
  *(v0 + 264) = v22;
  *v22 = v0;
  v22[1] = APIManager.clearAllUserOverrides(timestamp:);

  return specialized APIManager.perform<A>(model:retryLater:attempt:)(v19, 1, 0, 1);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = APIManager.clearAllUserOverrides(timestamp:);
  }

  else
  {
    v2 = APIManager.clearAllUserOverrides(timestamp:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined consume of Data?(v0[30], v0[31]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data?(v0[30], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t APIManager.syncNewOldCategoryTimestamps(categories:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for Date();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(APIManager.syncNewOldCategoryTimestamps(categories:), 0, 0);
}

uint64_t APIManager.syncNewOldCategoryTimestamps(categories:)()
{
  v1 = *(v0 + 232);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v61 = v1;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v6)) | (v11 << 6);
        v13 = (*(v61 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(v61 + 56) + 8 * v12);
        v17 = String.lowercased()();
        if (v17._countAndFlagsBits == 0x746C7561666564 && v17._object == 0xE700000000000000)
        {
          v21 = v16;
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v16;

          if ((v19 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v15 = 0x657474756C636544;
        v14 = 0xEB00000000646572;
LABEL_18:
        [v16 doubleValue];
        *(v63 + 96) = &type metadata for Double;
        *(v63 + 72) = v22 * 1000.0;
        outlined init with take of Any((v63 + 72), (v63 + 104));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        v26 = v2[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_38;
        }

        v30 = v25;
        if (v2[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v24;
            specialized _NativeDictionary.copy()();
            v24 = v35;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
          if ((v30 & 1) != (v31 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }
        }

        v6 &= v6 - 1;
        if (v30)
        {
          v9 = v24;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          outlined init with take of Any((v63 + 104), v10);

          v8 = v11;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v2[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v2[6] + 16 * v24);
          *v32 = v15;
          v32[1] = v14;
          outlined init with take of Any((v63 + 104), (v2[7] + 32 * v24));

          v33 = v2[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_39;
          }

          v2[2] = v34;
          v8 = v11;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v8;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = 0x6574617473;
  v37 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v37, &_sSS_SDySSypGtMd, &_sSS_SDySSypGtMR);
  v38 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v63 + 216) = 0;
  v40 = [v38 dataWithJSONObject:isa options:0 error:v63 + 216];

  v41 = *(v63 + 216);
  if (v40)
  {
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v45 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v42 = 0;
    v44 = 0xF000000000000000;
  }

  *(v63 + 304) = v42;
  *(v63 + 312) = v44;
  v47 = *(v63 + 288);
  v46 = *(v63 + 296);
  v48 = *(v63 + 280);
  v58 = *(v63 + 272);
  v59 = *(v63 + 256);
  v60 = *(v63 + 264);
  v62 = *(v63 + 248);
  UUID.init()();
  v57 = UUID.uuidString.getter();
  v50 = v49;
  (*(v47 + 8))(v46, v48);
  outlined copy of Data?(v42, v44);
  Date.init()();
  v51 = type metadata accessor for APIRequestModel(0);
  v52 = swift_allocObject();
  *(v63 + 320) = v52;
  *(v52 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  v53 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v63 + 136) = v51;
  *(v63 + 144) = v51;
  *(v63 + 152) = v53;
  *(v63 + 160) = v53;
  *(v52 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v52 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v52 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  *(v63 + 224) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  *(v63 + 168) = v57;
  *(v63 + 176) = v50;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  *(v63 + 184) = v42;
  *(v63 + 192) = v44;
  outlined copy of Data?(v42, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v42, v44);
  *(v52 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  *(v63 + 344) = 1;
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  strcpy((v63 + 200), "SyncNewOldURL");
  *(v63 + 214) = -4864;
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  *(v63 + 345) = 1;
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v59 + 16))(v60, v58, v62);
  __swift_project_boxed_opaque_existential_1((v52 + 24), *(v52 + 48));
  swift_getKeyPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v42, v44);
  v54 = *(v59 + 8);
  v54(v60, v62);
  v54(v58, v62);
  v55 = swift_task_alloc();
  *(v63 + 328) = v55;
  *v55 = v63;
  v55[1] = APIManager.syncNewOldCategoryTimestamps(categories:);

  return specialized APIManager.perform<A>(model:retryLater:attempt:)(v52, 1, 0, 1);
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = APIManager.syncNewOldCategoryTimestamps(categories:);
  }

  else
  {
    v2 = APIManager.syncNewOldCategoryTimestamps(categories:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined consume of Data?(v0[38], v0[39]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data?(v0[38], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t APIManager.shouldStartFullSync()()
{
  v1[15] = v0;
  v2 = type metadata accessor for Date();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(APIManager.shouldStartFullSync(), 0, 0);
}

{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 48) = 5459817;
  *(v0 + 56) = 0xE300000000000000;
  lazy protocol witness table accessor for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;

  *(v0 + 184) = v1;
  *(v0 + 192) = v3;
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  outlined copy of Data?(v1, v3);
  Date.init()();
  v10 = type metadata accessor for APIRequestModel(0);
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  *(v11 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v0 + 16) = v10;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v12;
  *(v11 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v11 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v11 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  *(v0 + 112) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  *(v0 + 64) = v7;
  *(v0 + 72) = v9;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  *(v0 + 80) = v1;
  *(v0 + 88) = v3;
  outlined copy of Data?(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v1, v3);
  *(v11 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  *(v0 + 224) = 1;
  lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  strcpy((v0 + 96), "StartSyncURL");
  *(v0 + 109) = 0;
  *(v0 + 110) = -5120;
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  *(v0 + 225) = 1;
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v17 + 16))(v18, v16, v19);
  __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data?(v1, v3);
  v13 = *(v17 + 8);
  v13(v18, v19);
  v13(v16, v19);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = APIManager.shouldStartFullSync();

  return specialized APIManager.perform<A>(model:retryLater:attempt:)(v11, 0, 0, 1);
}

{
  outlined consume of Data?(*(v0 + 184), *(v0 + 192));

  v1 = *(v0 + 8);
  v2 = *(v0 + 226);

  return v1(v2);
}

{
  outlined consume of Data?(v0[23], v0[24]);

  v1 = v0[1];

  return v1(0);
}

uint64_t APIManager.shouldStartFullSync()(char a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = APIManager.shouldStartFullSync();
  }

  else
  {
    *(v4 + 226) = a1 & 1;
    v5 = APIManager.shouldStartFullSync();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return closure #1 in closure #1 in APIManager.retryPendingRequests()(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey);
  }

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
      outlined init with copy of TaskPriority?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t lazy protocol witness table accessor for type HTTPMethod and conformance HTTPMethod()
{
  result = lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod;
  if (!lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod;
  if (!lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod;
  if (!lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod;
  if (!lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HTTPMethod and conformance HTTPMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod and conformance APIRequestModel.AuthMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAPIResponse and conformance EmptyAPIResponse()
{
  result = lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse;
  if (!lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{

  return _swift_deallocObject(v0, 32, 7);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type MSError and conformance MSError()
{
  result = lazy protocol witness table cache variable for type MSError and conformance MSError;
  if (!lazy protocol witness table cache variable for type MSError and conformance MSError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSError and conformance MSError);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id MCCSecretAgentService.().init()()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static CategorizationManager.sharedInstance;
  *&v0[OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager] = static CategorizationManager.sharedInstance;
  v2 = one-time initialization token for sharedInstance;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static CategorizationSyncManager.sharedInstance;
  *&v0[OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager] = static CategorizationSyncManager.sharedInstance;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for MCCSecretAgentService();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v14, "init");
  v7 = one-time initialization token for secretAgentService;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.secretAgentService);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "MCCSecretAgentService is initialized", v12, 2u);
  }

  return v8;
}

void @objc MCCSecretAgentService.isModelReady(completion:)(void *a1, int a2, void *aBlock, const char *a4, void (*a5)(uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  specialized MCCSecretAgentService.isModelReady(completion:)(v9, v8, a4, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t @objc MCCSecretAgentService.getIABCategoryID(_:completion:)(void *a1, int a2, uint64_t a3, void *aBlock, const char *a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  specialized MCCSecretAgentService.getIABCategoryID(_:completion:)(v10, v12, v13, v9, a5, a6);
  _Block_release(v9);
  _Block_release(v9);
}

Swift::Void __swiftcall MCCSecretAgentService.syncNewOldCategoryTimestamps(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.secretAgentService);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "MCCSecretAgentService syncNewOldCategoryTimestamps called", v5, 2u);
  }

  CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)(a1);
}

id MCCSecretAgentService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCCSecretAgentService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined destroy of (String, Double)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RCOverrideRule(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t specialized MCCSecretAgentService.pingWithcompletion(_:)(uint64_t a1)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.secretAgentService);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "MCCSecretAgentService ping", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 1, 0);
}

void specialized MCCSecretAgentService.predictCommerceEmail(with:completion:)(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.secretAgentService);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "predictCommerceEmail MCCSecretAgentService predictCommerceEmailWithContext called", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  v13 = &_swiftEmptyDictionarySingleton;
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  v11 = objc_autoreleasePoolPush();
  specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(v10, a1, &v13, aBlock);
  objc_autoreleasePoolPop(v11);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(aBlock + 2))(aBlock, isa, 0);

  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.getPKCategory(forDomain:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.sync);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "getPKCategoryForDomain MCCSecretAgentService called", v11, 2u);
  }

  v12 = *(a3 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  specialized CategorizationManager.getPKCategory(forDomain:completion:)(a1, a2, v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.getIABCategoryID(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, const char *a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.secretAgentService);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v15, 2u);
  }

  v16 = *(a3 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  a6(a1, a2, v16, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}