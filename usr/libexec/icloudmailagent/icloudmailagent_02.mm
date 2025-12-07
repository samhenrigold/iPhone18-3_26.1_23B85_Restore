void specialized CategorizationManager.isCategorizationSupported(forLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocaleHelper();
  v4 = static LocaleHelper.isCategorizationSupported(forLocale:)();
  if (v4 == 2)
  {
    v5 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithDomain:v6 code:-1 userInfo:0];

    v8 = v7;
    v10 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v10);
  }

  else
  {
    v9 = *(a3 + 16);

    v9(a3, v4 & 1, 0);
  }
}

uint64_t lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OSTransactionHelper.makeTransaction()()
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v0 = v1;
    *(v1 + 16) = v4;
    if (one-time initialization token for rules == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.rules);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v0 + 16);

    _os_log_impl(&_mh_execute_header, v6, v7, "CategorizationManager transaction being created as %llu", v8, 0xCu);
  }

  else
  {
  }

  _StringGuts.grow(_:)(39);

  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  String.utf8CString.getter();

  v10 = os_transaction_create();

  return v10;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t DeviceLockObserver.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v1 - 8);
  v9 = v1;
  __chkstk_darwin(v1);
  v7 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  *(v0 + 24) = -1;
  LOBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, _s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();
  *(v0 + 32) = CurrentValueSubject.init(_:)();
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = *(v0 + 32);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, _s7Combine19CurrentValueSubjectCySbs5NeverOGMR, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  *(v0 + 16) = Publisher.eraseToAnyPublisher()();
  *(v0 + 40) = 0;
  DeviceLockObserver.registerForLockStateNotifications()();
  DeviceLockObserver.updateLockedState()();
  return v0;
}

void DeviceLockObserver.registerForLockStateNotifications()()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = partial apply for closure #1 in DeviceLockObserver.registerForLockStateNotifications();
  v9[5] = v2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v9[3] = &block_descriptor_3;
  v3 = _Block_copy(v9);

  v4 = String.utf8CString.getter();
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 24), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sync);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not register for lock state notifications", v8, 2u);
    }
  }
}

uint64_t DeviceLockObserver.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MCCAgentConnectionManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener;
  v2 = *&v0[OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener];
  if (v2)
  {
    v3 = v2;
    [v3 invalidate];
    [v3 setDelegate:0];

    v4 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for MCCAgentConnectionManager();
  return objc_msgSendSuper2(&v6, "dealloc");
}

id MCCAgentConnectionManager.start()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener;
  result = *(v0 + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
  if (result)
  {
    v3 = v0;
    result = [result serviceName];
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (one-time initialization token for agentConnectionManager != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.agentConnectionManager);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v15 = v12;
        *v11 = 136315138;
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v15);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Resuming XPC listener for Mach service %s...", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      else
      {
      }

      v14 = *(v3 + v1);
      if (v14)
      {
        [v14 setDelegate:v3];
        v14 = *(v3 + v1);
      }

      return [v14 resume];
    }
  }

  return result;
}

Swift::Bool __swiftcall MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v5 = specialized MCCAgentConnectionManager._hasValidEntitlementsOnConnection(_:)(shouldAcceptNewConnection.super.isa);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
    if (v6 && (type metadata accessor for NSXPCListener(), v7 = _.super.isa, v8 = v6, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) != 0))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:static MCCSecretAgentService.shared];
      v10 = objc_opt_self();
      v11 = [v10 XPCInterface];
      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v11];

      v12 = [v10 XPCInterface];
      [(objc_class *)shouldAcceptNewConnection.super.isa setRemoteObjectInterface:v12];

      v34 = closure #1 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:);
      v35 = 0;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v33 = &block_descriptor_4;
      v13 = _Block_copy(&v30);
      [(objc_class *)shouldAcceptNewConnection.super.isa setInterruptionHandler:v13];
      _Block_release(v13);
      v34 = closure #2 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:);
      v35 = 0;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v33 = &block_descriptor_9_0;
      v14 = _Block_copy(&v30);
      [(objc_class *)shouldAcceptNewConnection.super.isa setInvalidationHandler:v14];
      _Block_release(v14);
    }

    else
    {
      if (one-time initialization token for agentConnectionManager != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.agentConnectionManager);
      v23 = _.super.isa;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Fatal error! Unknown XPC listener: %@", v26, 0xCu);
        outlined destroy of TaskPriority?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }
    }

    [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  }

  else
  {
    if (one-time initialization token for agentConnectionManager != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.agentConnectionManager);
    v16 = shouldAcceptNewConnection.super.isa;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid entitlement on connection %@", v19, 0xCu);
      outlined destroy of TaskPriority?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }

  return v5 & 1;
}

void closure #1 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(const char *a1)
{
  if (one-time initialization token for agentConnectionManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.agentConnectionManager);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t specialized MCCAgentConnectionManager._hasValidEntitlementsOnConnection(_:)(void *a1)
{

  v2 = String._bridgeToObjectiveC()();

  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v5)
    {
      return 1;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v8, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

unint64_t type metadata accessor for NSXPCListener()
{
  result = lazy cache variable for type metadata for NSXPCListener;
  if (!lazy cache variable for type metadata for NSXPCListener)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSXPCListener);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall BlackPearlCategorizationVersion.getVersionString()()
{
  v0 = BlackPearlCategorizationVersion.getVersionString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlTreatmentId()()
{
  v0 = BlackPearlVersion.getBlackPearlTreatmentId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlExperimentId()()
{
  v0 = BlackPearlVersion.getBlackPearlExperimentId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutFactorPackId()()
{
  v0 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutId()()
{
  v0 = BlackPearlVersion.getBlackPearlRolloutId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlSenderModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlSenderModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlBreakthroughVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlBreakthroughVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlTSModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlTSModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlFinalRuleVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlFinalRuleVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}