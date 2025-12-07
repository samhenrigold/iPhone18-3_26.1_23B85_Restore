uint64_t LACCompanionAuthenticationSessionMonitor.inject(sessionProvider:)(uint64_t *a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  return swift_endAccess();
}

id specialized LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor____lazy_storage___mockedSessionProvider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = 0;
  v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_isUnderlyingSessionActive] = 0;
  *&v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_companion] = a1;
  if (a1 == 2)
  {
    v7 = type metadata accessor for LACOnenessSessionProvider();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[4] = 0;
    LOBYTE(v23) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
    swift_allocObject();
    v9 = a3;
    v8[5] = CurrentValueSubject.init(_:)();
    v8[3] = v9;
    v10 = &v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
    *(v10 + 3) = v7;
    *(v10 + 4) = &protocol witness table for LACOnenessSessionProvider;
    *v10 = v8;
  }

  else if (a1 == 4)
  {
    v12 = [objc_allocWithZone(LACSharingManager) initWithReplyQueue_];
    v13 = type metadata accessor for LACPhoneIntegrationSessionProvider();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
    swift_allocObject();
    v15 = a3;
    swift_unknownObjectRetain();
    v16 = v12;
    *(v14 + 56) = CurrentValueSubject.init(_:)();
    *(v14 + 24) = a2;
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;
    v24 = v13;
    v25 = &protocol witness table for LACPhoneIntegrationSessionProvider;

    *&v23 = v14;
    outlined init with take of LACPreboardUseCaseProviding(&v23, &v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider]);
  }

  else
  {
    v18 = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
    objc_allocWithZone(v18);
    v19 = LACCompanionAuthenticationSessionProviderDummy.init(companion:replyQueue:)(a1, a3);
    v20 = &v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
    *(v20 + 3) = v18;
    *(v20 + 4) = &protocol witness table for LACCompanionAuthenticationSessionProviderDummy;
    *v20 = v19;
  }

  v21 = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_observers] = v21;
  *&v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_replyQueue] = a3;
  v26.receiver = v4;
  v26.super_class = LACCompanionAuthenticationSessionMonitor;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t objectdestroy_6Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for LACCompanionAuthenticationSessionMonitor()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor);
  }

  return result;
}

uint64_t outlined assign with take of LACCompanionAuthenticationSessionProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMd, _s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LACPreboardLaunching.launchPreboard()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v7(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACEvaluationResultWithAssociatedValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LACEvaluationResultWithAssociatedValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t LACACMContextProvider.externalizedContext.getter()
{
  v1 = [*(v0 + 16) externalizedContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t LACACMContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(LACACMHelper) init];
  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t LACACMContextProvider.init()()
{
  v1 = [objc_allocWithZone(LACACMHelper) init];
  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    type metadata accessor for LACACMContextProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t LACACMContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id LACOnenessEnvironmentProvider.environment.getter()
{
  v1 = [v0 isFeatureAvailable];
  v2 = [v0 isFeatureSupported];
  v3 = objc_allocWithZone(LACCompanionAuthenticationEnvironment);

  return [v3 initWithFeatureAvailable:v1 featureSupported:v2];
}

LACOnenessEnvironmentProvider __swiftcall LACOnenessEnvironmentProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isFeatureAvailable = v1;
  result.isFeatureSupported = HIBYTE(v1);
  return result;
}

id LACOnenessEnvironmentProvider.init()()
{
  *(v0 + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureAvailable) = 1;
  *(v0 + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureSupported) = 1;
  v2.super_class = LACOnenessEnvironmentProvider;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for LACOnenessEnvironmentProvider()
{
  result = lazy cache variable for type metadata for LACOnenessEnvironmentProvider;
  if (!lazy cache variable for type metadata for LACOnenessEnvironmentProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACOnenessEnvironmentProvider);
  }

  return result;
}

id LACInternalInfoParser.init(internalInfo:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithInternalInfo_];

  return v3;
}

{
  *(v1 + OBJC_IVAR___LACInternalInfoParser_internalInfo) = a1;
  v3.super_class = LACInternalInfoParser;
  return objc_msgSendSuper2(&v3, sel_init);
}

id LACInternalInfoParser.callerAuditToken.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14 = 0x6B6F547469647541;
  *(&v14 + 1) = 0xEA00000000006E65;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v14);
    outlined destroy of AnyHashable(v16);
  }

  else
  {

    outlined destroy of AnyHashable(v16);
    v14 = 0u;
    v15 = 0u;
  }

  v13[0] = v14;
  v13[1] = v15;
  if (*(&v15 + 1))
  {
    outlined init with take of Any(v13, &v12);
    if (swift_dynamicCast())
    {
      v5 = v17;
      if (v17 >> 60 != 15)
      {
        v6 = v16[5];
        v7 = objc_allocWithZone(LACAuditToken);
        outlined copy of Data._Representation(v6, v5);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v9 = [v7 initWithData_];

        outlined consume of Data?(v6, v5);
        outlined consume of Data?(v6, v5);
        if (v9)
        {
          return v9;
        }
      }
    }
  }

  v11 = [objc_opt_self() nullInstance];

  return v11;
}

uint64_t LACInternalInfoParser.userId.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8[0] = 0x644972657355;
  v8[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

uint64_t LACInternalInfoParser.options.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8[0] = 0x736E6F6974704FLL;
  v8[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

id LACInternalInfoParser.policy.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v11 = 0x7963696C6F50;
  *(&v11 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v11);
    outlined destroy of AnyHashable(v13);
  }

  else
  {

    outlined destroy of AnyHashable(v13);
    v11 = 0u;
    v12 = 0u;
  }

  v9[0] = v11;
  v9[1] = v12;
  if (!*(&v12 + 1))
  {
    return 0;
  }

  outlined init with take of Any(v9, &v8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (!v10)
  {
    return 0;
  }

  v6 = [v10 integerValue];

  return v6;
}

id LACInternalInfoParser.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double static LACPreboardUseCaseProviding.allUseCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18LACPreboardUseCaseaGMd, &_ss23_ContiguousArrayStorageCySo18LACPreboardUseCaseaGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1B0342810;
  *(v0 + 32) = 4;
  *(v0 + 40) = 3;
  return result;
}

uint64_t dispatch thunk of LACPreboardUseCaseProviding.completeCurrentUseCase(success:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v9(a1, a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned LACEvaluationRequest, @unowned LACEvaluationResult, @unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned LACEvaluationResult) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v10[3] = &block_descriptor_16_1;
  v8 = _Block_copy(v10);

  a5(a1, a2, v8);
  _Block_release(v8);
}

id LACConcurrentEvaluationController.canProcessRequest(_:)(uint64_t a1)
{
  v2 = [objc_msgSend(v1 model)];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t LACConcurrentEvaluationController.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v12[3] = &block_descriptor_12;
  v10 = _Block_copy(v12);

  [v9 processRequest:a1 configuration:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationController.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 model];
  if ([v10 respondsToSelector_])
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    v13[3] = &block_descriptor_3;
    v11 = _Block_copy(v13);

    [v10 postProcessRequest:a1 result:a2 completion:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id LACConcurrentEvaluationController.makeModel()()
{
  v1 = [v0 manager];
  v2 = [v0 replyQueue];
  v3 = [objc_opt_self() sharedInstance];
  v4 = [objc_opt_self() sharedInstance];
  v5 = type metadata accessor for LACConcurrentEvaluationControllerModel();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = v3;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = v4;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = v1;
  type metadata accessor for LACConcurrentIdleUIListenerProvider();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v10 = specialized LACConcurrentIdleUIListenerProvider.__allocating_init(handler:replyQueue:)(v1, v9);

  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v10;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v9;
  v13.receiver = v6;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  swift_unknownObjectRelease();

  return v11;
}

unint64_t type metadata accessor for LACConcurrentIdleUIListenerProvider()
{
  result = lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider;
  if (!lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider);
  }

  return result;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isSessionActive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMR);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive;
  if (*(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive))
  {
    v9 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive);
  }

  else
  {
    v18 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject);
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR, MEMORY[0x1E695BFB0]);
    v10 = v0;
    v11 = Publisher.share()();
    v12 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_replyQueue);
    v17 = v12;
    v18 = v11;
    v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMR);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<CurrentValueSubject<Bool, Never>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMR, MEMORY[0x1E695BDD0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(v3);

    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Share<CurrentValueSubject<Bool, Never>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    v9 = Publisher.eraseToAnyPublisher()();
    (*(v16 + 8))(v7, v4);
    *(v10 + v8) = v9;
  }

  return v9;
}

uint64_t (*LACCompanionAuthenticationSessionProviderDummy.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACCompanionAuthenticationSessionProviderDummy.isSessionActive.getter();
  return LACCompanionAuthenticationSessionProviderDummy.isSessionActive.modify;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isActive.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

void *LACCompanionAuthenticationSessionProviderDummy.init(companion:replyQueue:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive] = 0;
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();
  *&v2[v5] = CurrentValueSubject.init(_:)();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_companion] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_replyQueue] = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  v6 = a2;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  [v10 addObserver:v9 notification:@"com.apple.LocalAuthentication.GlobalDomainDidChange"];

  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xC0))(destructiveProjectEnumData for LACLog, 0);
  return v9;
}

id LACCompanionAuthenticationSessionProviderDummy.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.refresh(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))() & 1;

  CurrentValueSubject.send(_:)();

  if (a1)
  {
    return a1(v3);
  }

  return result;
}

id LACCompanionAuthenticationSessionProviderDummy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  result = LACDarwinNotificationsEqual(a2, @"com.apple.LocalAuthentication.GlobalDomainDidChange");
  if (result)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);

    return v4(destructiveProjectEnumData for LACLog, 0);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManager.stashRequest(_:acceptsIdleUI:)(uint64_t a1, char a2)
{
  [objc_msgSend(v2 model)];

  return swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.register(_:)(uint64_t a1, SEL *a2)
{
  [objc_msgSend(v2 model)];

  return swift_unknownObjectRelease();
}

void @objc LACConcurrentEvaluationManager.register(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  [objc_msgSend(v7 model)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.add(observer:for:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  [objc_msgSend(v3 model)];

  return swift_unknownObjectRelease();
}

void @objc LACConcurrentEvaluationManager.add(observer:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  [objc_msgSend(v9 model)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id LACConcurrentEvaluationManager.restartRequests(forContextID:)()
{
  v1 = [v0 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 restartRequestsForContextID_];
  swift_unknownObjectRelease();

  return v3;
}

void LACConcurrentEvaluationManager.cancelRequests(forContextID:)()
{
  v1 = [v0 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 cancelRequestsForContextID_];
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.idleUIGotFocus(_:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_13;
  v10 = _Block_copy(v12);

  [v9 idleUIGotFocus:a1 identifier:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall LACConcurrentEvaluationManager.connectionInvalidated(forIdentifier:)(NSNumber_optional forIdentifier)
{
  [objc_msgSend(v1 model)];

  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.connect(_:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_3_0;
  v10 = _Block_copy(v12);

  [v9 connectIdleUI:a1 identifier:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id LACConcurrentEvaluationManager.makeModel()()
{
  v1 = [v0 replyQueue];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_opt_self() sharedInstance];
  v4 = objc_allocWithZone(type metadata accessor for LACConcurrentEvaluationManagerModel());

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(v2, v3, v1, v4);
}

id specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers;
  *&a4[v9] = [objc_opt_self() weakObjectsHashTable];
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
  *&a4[v10] = [objc_opt_self() strongToWeakObjectsMapTable];
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances;
  *&a4[v11] = [objc_opt_self() strongToWeakObjectsMapTable];
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  v13 = MEMORY[0x1E69E7CC0];
  *&a4[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests] = v13;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_clientInfoProvider] = a1;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_helper] = a2;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue] = a3;
  v15.receiver = a4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LACFileManager.fileExists(at:)()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

uint64_t LACFileManager.writeFile(contents:at:isExcludedFromBackup:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a3, a4, a5);
  if (!v5)
  {
    return Data.write(to:options:)();
  }

  return result;
}

void LACFileManager.replaceFile(at:with:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  v6 = [objc_opt_self() defaultManager];
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (!v2)
  {
    outlined destroy of URL?(v5);
  }
}

id protocol witness for LACFileManaging.fileExists(at:) in conformance LACFileManager()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

uint64_t protocol witness for LACFileManaging.writeFile(contents:at:isExcludedFromBackup:attributes:) in conformance LACFileManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a3, a4, a5);
  if (!v5)
  {
    return Data.write(to:options:)();
  }

  return result;
}

void protocol witness for LACFileManaging.replaceFile(at:with:) in conformance LACFileManager(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  v6 = [objc_opt_self() defaultManager];
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (!v2)
  {
    outlined destroy of URL?(v5);
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  outlined init with copy of (NSFileAttributeKey, Any)(a1 + 32, &v35);
  v7 = v35;
  v37 = v35;
  outlined init with take of Any(v36, v34);
  v8 = *a3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for NSFileAttributeKey(0);
    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v34);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 8 * v9) = v7;
  outlined init with take of Any(v34, (v20[7] + 32 * v9));
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v13)
  {
    v20[2] = v22;
    if (v4 != 1)
    {
      v15 = a1 + 72;
      v23 = 1;
      while (v23 < *(a1 + 16))
      {
        outlined init with copy of (NSFileAttributeKey, Any)(v15, &v35);
        v7 = v35;
        v37 = v35;
        outlined init with take of Any(v36, v34);
        v24 = *a3;
        v25 = specialized __RawDictionaryStorage.find<A>(_:)();
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v13 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v13)
        {
          goto LABEL_22;
        }

        a2 = v26;
        if (v24[3] < v29)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, 1);
          v25 = specialized __RawDictionaryStorage.find<A>(_:)();
          if ((a2 & 1) != (v30 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v31 = *a3;
        *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(v31[6] + 8 * v25) = v7;
        outlined init with take of Any(v34, (v31[7] + 32 * v25));
        v32 = v31[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v23;
        v31[2] = v33;
        v15 += 40;
        if (v4 == v23)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1B2722A80](0xD00000000000001BLL, 0x80000001B0356900);
  type metadata accessor for NSFileAttributeKey(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2722A80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v69 = a3;
  v72 = a2;
  v80 = *MEMORY[0x1E69E9840];
  v74 = type metadata accessor for URLResourceValues();
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = *(v6 + 16);
  v67 = v6 + 16;
  v68 = a1;
  v66 = v12;
  v12(&v61 - v10, a1, v5);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v16 = MEMORY[0x1B27229A0](countAndFlagsBits);

  LOBYTE(a1) = [v14 fileExistsAtPath_];

  v73 = v6;
  if ((a1 & 1) == 0)
  {
    v65 = v13;
    v20 = [v13 defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v26 = *(v6 + 8);
    v24 = v6 + 8;
    v25 = v26;
    v26(v9, v5);
    *&v79 = 0;
    v27 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v79];

    if (!v27)
    {
      v49 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v25(v11, v5);
    }

    v63 = v25;
    v64 = v24;
    v28 = v69;
    if (!v69)
    {
      v50 = v79;
      v51 = v65;
      v17 = v74;
LABEL_33:
      v55 = [v51 defaultManager];
      v56 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
      v57 = MEMORY[0x1B27229A0](v56);

      if (v28)
      {
        type metadata accessor for NSFileAttributeKey(0);
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
        v58.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v58.super.isa = 0;
      }

      v59 = [v55 createFileAtPath:v57 contents:0 attributes:v58.super.isa];

      if ((v59 & 1) == 0)
      {
        type metadata accessor for LACFileManager.Error(0);
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error, &protocol conformance descriptor for LACFileManager.Error);
        swift_allocError();
        v66(v60, v68, v5);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v63(v11, v5);
      }

      goto LABEL_3;
    }

    v29 = *(v69 + 16);
    v17 = v74;
    v30 = v75;
    if (v29)
    {
      v61 = v11;
      v62 = v5;
      v31 = v79;
      v32 = 0;
      v78 = *MEMORY[0x1E696A370];
      v77 = *MEMORY[0x1E696A320];
      v76 = *MEMORY[0x1E696A358];
      v33 = MEMORY[0x1E69E7CC0];
      v34 = (v28 + 40);
      do
      {
        v35 = *(v34 - 1);
        v37 = *v34;
        v34 += 16;
        v36 = v37;
        v38 = v37 == 1;
        v39 = v78;
        if (v37 == 1)
        {
          v39 = v77;
        }

        v40 = MEMORY[0x1E69E75F8];
        if (v38)
        {
          v40 = MEMORY[0x1E69E6810];
          v41 = v35 >> 16;
        }

        else
        {
          v41 = v32;
        }

        v42 = v36 == 0;
        v43 = v76;
        if (v42)
        {
          v44 = MEMORY[0x1E69E6810];
        }

        else
        {
          v43 = v39;
          v44 = v40;
        }

        if (v42)
        {
          v32 = v35 >> 16;
        }

        else
        {
          v32 = v41;
        }

        v45 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        }

        v47 = v33[2];
        v46 = v33[3];
        if (v47 >= v46 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v33);
        }

        v33[2] = v47 + 1;
        v48 = &v33[5 * v47];
        v48[4] = v45;
        v48[5] = v35 | (v32 << 16);
        *(v48 + 3) = v79;
        v48[8] = v44;
        --v29;
      }

      while (v29);
      v17 = v74;
      v30 = v75;
      v11 = v61;
      v5 = v62;
    }

    else
    {
      v52 = v79;
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        v53 = MEMORY[0x1E69E7CC8];
        goto LABEL_31;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
    v53 = static _DictionaryStorage.allocate(capacity:)();
LABEL_31:
    *&v79 = v53;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v54, 1, &v79);
    if (v30)
    {
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v28 = v79;
    v51 = v65;
    goto LABEL_33;
  }

  v17 = v74;
LABEL_3:
  if (v72 != 2)
  {
    v18 = v70;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    (*(v71 + 8))(v18, v17);
  }

  return (*(v73 + 8))(v11, v5);
}

uint64_t specialized LACFileManager.verifyFile(at:hasAttributes:)(uint64_t a1, uint64_t a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v5 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v30[0] = 0;
  v6 = [v3 attributesOfItemAtPath:v5 error:v30];

  v7 = v30[0];
  if (!v6)
  {
    v23 = v30[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
  }

  for (i = (a2 + 40); ; i += 16)
  {
    v12 = *(i - 1);
    if (!*i)
    {
      break;
    }

    if (*i == 1)
    {
      if (!*(v8 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(), (v14 & 1) == 0) || (outlined init with copy of Any(*(v8 + 56) + 32 * v13, v30), (swift_dynamicCast() & 1) == 0) || v29 != v12)
      {
        type metadata accessor for LACFileManager.Error(0);
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error, &protocol conformance descriptor for LACFileManager.Error);
        swift_allocError();
        *v27 = v12;
        v20 = v27 + 1;
        if (!*(v8 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(), (v28 & 1) == 0))
        {
          *v20 = 0u;
          v20[1] = 0u;
          goto LABEL_35;
        }

        goto LABEL_23;
      }
    }

    else if (!*(v8 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(), (v18 & 1) == 0) || (outlined init with copy of Any(*(v8 + 56) + 32 * v17, v30), (swift_dynamicCast() & 1) == 0) || v29 != v12)
    {
      type metadata accessor for LACFileManager.Error(0);
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error, &protocol conformance descriptor for LACFileManager.Error);
      swift_allocError();
      *v19 = v12;
      v20 = v19 + 4;
      if (!*(v8 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(), (v22 & 1) == 0))
      {
        *v20 = 0u;
        v20[1] = 0u;
        goto LABEL_35;
      }

LABEL_23:
      outlined init with copy of Any(*(v8 + 56) + 32 * v21, v20);
      goto LABEL_35;
    }

LABEL_4:
    if (!--v10)
    {
    }
  }

  if (*(v8 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v16)
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v15, v30);
      if ((swift_dynamicCast() & 1) != 0 && v29 == v12)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for LACFileManager.Error(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error, &protocol conformance descriptor for LACFileManager.Error);
  swift_allocError();
  *v25 = v12;
  v20 = v25 + 1;
  if (*(v8 + 16))
  {
    v21 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v26)
    {
      goto LABEL_23;
    }
  }

  *v20 = 0u;
  v20[1] = 0u;
LABEL_35:

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t specialized LACFileManager.readFile(at:verifyingAttributes:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v7 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v8 = [v5 fileExistsAtPath_];

  if (v8)
  {
    result = specialized LACFileManager.verifyFile(at:hasAttributes:)(a1, a2);
    if (!v2)
    {
      return Data.init(contentsOf:options:)();
    }
  }

  else
  {
    type metadata accessor for LACFileManager.Error(0);
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error, &protocol conformance descriptor for LACFileManager.Error);
    swift_allocError();
    v11 = v10;
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

id specialized LACFileManager.deleteItem(at:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t specialized LACFileManager.replaceFile(at:with:isExcludedFromBackup:fileAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v53 - v9;
  v74 = type metadata accessor for URL.DirectoryHint();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UUID();
  v68 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for URL();
  v65 = *(v75 - 8);
  v13 = MEMORY[0x1EEE9AC00](v75);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v72 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v67 = &v53 - v27;
  v70 = a4;
  v71 = a5;
  v28 = v78;
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a1, a4, a5);
  if (!v28)
  {
    v56 = v21;
    v55 = v15;
    v54 = v18;
    v57 = a1;
    v78 = 0;
    URL.deletingLastPathComponent()();
    UUID.init()();
    v30 = UUID.uuidString.getter();
    v31 = v65;
    v33 = v32;
    v34 = *(v68 + 8);
    v58 = v32;
    v59 = v34;
    v34(v12, v73);
    v76 = v30;
    v77 = v33;
    LODWORD(v68) = *MEMORY[0x1E6968F70];
    v35 = v69;
    v61 = *(v69 + 104);
    v36 = v66;
    v37 = v74;
    v61(v66);
    v60 = lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    v69 = *(v35 + 8);
    (v69)(v36, v37);

    v38 = *(v31 + 8);
    v38(v24, v75);
    UUID.init()();
    v39 = UUID.uuidString.getter();
    v41 = v40;
    v59(v12, v73);
    v76 = v39;
    v77 = v41;
    MEMORY[0x1B2722A80](1886221358, 0xE400000000000000);
    v42 = v74;
    (v61)(v36, v68, v74);
    v43 = v38;
    v44 = v75;
    v45 = v67;
    v46 = v72;
    URL.appending<A>(path:directoryHint:)();
    (v69)(v36, v42);

    v38(v46, v44);
    v47 = v70;
    v48 = v71;
    v49 = v78;
    specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(v45, v70, v71);
    if (!v49)
    {
      specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(v45, v47, v48);
      Data.write(to:options:)();
      v50 = [objc_opt_self() defaultManager];
      v51 = v62;
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      outlined destroy of URL?(v51);

      v52 = v54;
      URL.deletingLastPathComponent()();
      specialized LACFileManager.deleteItem(at:)();
      v43(v52, v44);
    }

    return (v43)(v45, v44);
  }

  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LACFileManager.Error(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACFileManager.Error;
  if (!type metadata singleton initialization cache for LACFileManager.Error)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACFileManager.Error(uint64_t a1)
{
  type metadata accessor for (at: URL)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (expected: UInt, actual: Any?)(319, &lazy cache variable for type metadata for (expected: UInt, actual: Any?), MEMORY[0x1E69E6810]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (expected: UInt, actual: Any?)(319, &lazy cache variable for type metadata for (expected: UInt16, actual: Any?), MEMORY[0x1E69E75F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (at: URL)()
{
  if (!lazy cache variable for type metadata for (at: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (at: URL));
    }
  }
}

void type metadata accessor for (expected: UInt, actual: Any?)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sypSgMd, _sypSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of (NSFileAttributeKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id LACConcurrentEvaluationManagerModel.__allocating_init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(a1, a2, a3, v7);
}

uint64_t LACConcurrentEvaluationManagerModel.activeRequests.didset()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.activeRequests.didset;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_31_0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void closure #1 in LACConcurrentEvaluationManagerModel.activeRequests.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    LACConcurrentEvaluationManagerModel.unstashRequestIfPossible()();
  }
}

uint64_t LACConcurrentEvaluationManagerModel.unstashRequestIfPossible()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v26 - v7;
  v9 = LACLogConcurrentEvaluations(v6);
  Logger.init(_:)();
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    *(v13 + 4) = (*(&v10->isa + v14))[2];

    _os_log_impl(&dword_1B0233000, v11, v12, "Active requests count: %ld", v13, 0xCu);
    MEMORY[0x1B27246A0](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  v15 = *(v2 + 8);
  v15(v8, v1);
  v16 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  result = swift_beginAccess();
  if ((*(&v10->isa + v16))[2])
  {
    return result;
  }

  v18 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();
  v19 = *(&v10->isa + v18);
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x1B2722F00](v21);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    v22 = LACLogConcurrentEvaluations(result);
    Logger.init(_:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B0233000, v23, v24, "No stashed request", v25, 2u);
      MEMORY[0x1B27246A0](v25, -1, -1);
    }

    return (v15)(v5, v1);
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x1B2722E50](0, v19);

    goto LABEL_10;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);

LABEL_10:
    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v20);
  }

  __break(1u);
  return result;
}

id LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(a1, a2, a3, v3);
}

id LACConcurrentEvaluationManagerModel.add(observer:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v33 = v6;
  v17 = LACLogConcurrentEvaluations(result);
  Logger.init(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v32 = v3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446466;
    v22 = [a1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v36);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    if (a2)
    {
      v35 = [a2 identifier];
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v27 = BinaryInteger.description.getter();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1B0233000, v18, v19, "Adding observer %{public}s for request rid: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v21, -1, -1);
    MEMORY[0x1B27246A0](v20, -1, -1);

    (*(v34 + 8))(v8, v33);
    v3 = v32;
    if (!a2)
    {
      return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) addObject_];
    }

    return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) setObject:a1 forKey:a2];
  }

  (*(v34 + 8))(v8, v33);
  if (a2)
  {
    return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) setObject:a1 forKey:a2];
  }

  return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) addObject_];
}

void LACConcurrentEvaluationManagerModel.remove(observer:for:)(void *a1, void *a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v2;
  v15 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v18 = LACLogConcurrentEvaluations(v17);
  Logger.init(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v21 = os_log_type_enabled(v19, v20);
  v53 = a1;
  if (v21)
  {
    v48 = v8;
    v22 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v56 = v47;
    *v22 = 136446466;
    v23 = [a1 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v56);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    if (a2)
    {
      LODWORD(v55) = [a2 identifier];
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v28 = BinaryInteger.description.getter();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
    }

    v38 = v51;
    v31 = v52;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v56);

    *(v22 + 14) = v39;
    _os_log_impl(&dword_1B0233000, v19, v20, "Removing observer %{public}s for request rid: %{public}s", v22, 0x16u);
    v40 = v47;
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v40, -1, -1);
    MEMORY[0x1B27246A0](v22, -1, -1);

    (*(v38 + 8))(v10, v48);
    v32 = v53;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {

    (*(v51 + 8))(v10, v8);
    v31 = v52;
    v32 = v53;
    if (!a2)
    {
LABEL_12:
      [*&v31[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers] removeObject_];
      v41 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
      [*&v31[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers] copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd, &_sSo10NSMapTableCMR);
      swift_dynamicCast();
      v52 = v55;
      v42 = [v55 keyEnumerator];
      NSEnumerator.makeIterator()();

      NSFastEnumerationIterator.next()();
      while (v57)
      {
        outlined init with take of Any(&v56, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20LACEvaluationRequest_pMd, _sSo20LACEvaluationRequest_pMR);
        if (swift_dynamicCast())
        {
          v44 = v54;
          v45 = *&v31[v41];
          swift_unknownObjectRetain();
          v46 = [v45 objectForKey_];
          if (v46)
          {
            if (v46 == v32)
            {
              v43 = *&v31[v41];
              [v43 removeObjectForKey_];
              swift_unknownObjectRelease();

              v32 = v53;
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          swift_unknownObjectRelease_n();
        }

        NSFastEnumerationIterator.next()();
      }

      (*(v49 + 8))(v7, v50);

      return;
    }
  }

  v33 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
  v34 = *&v31[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers];
  swift_unknownObjectRetain_n();
  v35 = [v34 objectForKey_];
  if (v35)
  {
    v36 = v35;
    swift_unknownObjectRelease();
    if (v36 == v32)
    {
      v37 = *&v31[v33];
      [v37 removeObjectForKey_];
    }
  }

  swift_unknownObjectRelease_n();
}

void @objc LACConcurrentEvaluationManagerModel.add(observer:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManagerModel.register(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v88 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v93 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v88 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    if (v10 < 0)
    {
      v87 = v10;
    }

    else
    {
      v87 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v53 = MEMORY[0x1B2722F00](v87);
    goto LABEL_16;
  }

  v21 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
  if (!v22)
  {
    v47 = LACLogConcurrentEvaluations(v21);
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = [a1 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v48, v49, "Missing identifiers to register request rid: %u", v50, 8u);
      MEMORY[0x1B27246A0](v50, -1, -1);
    }

    else
    {
LABEL_31:

      swift_unknownObjectRelease();
    }

    return (*(v4 + 8))(v7, v3);
  }

  v17 = v21;
  v20 = v22;
  type metadata accessor for LACConcurrentEvaluationManagedRequest();
  v7 = swift_allocObject();
  v7[48] = 1;
  *(v7 + 2) = a1;
  *(v7 + 3) = v17;
  *(v7 + 4) = v20;
  *(v7 + 5) = 0;
  v94 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances);
  swift_unknownObjectRetain();
  v24 = v23;

  v25 = [a1 identifier];
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  v27 = [v24 objectForKey_];

  if (v27)
  {
    *(v7 + 5) = v27;
    swift_unknownObjectRelease();
  }

  v28 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  v29 = v94;
  swift_beginAccess();
  v30 = *(v29 + v28);
  v31 = *(v30 + 16);
  v91 = v28;
  if (v31 && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v20), (v33 & 1) != 0))
  {
    v34 = *(*(v30 + 56) + 8 * v32);
    swift_endAccess();
    v98 = v34;
    v35 = swift_bridgeObjectRetain_n();
  }

  else
  {
    v35 = swift_endAccess();
    v34 = MEMORY[0x1E69E7CC0];
    v98 = MEMORY[0x1E69E7CC0];
  }

  v97[0] = v7;
  MEMORY[0x1EEE9AC00](v35);
  *(&v88 - 2) = v97;
  v36 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v88 - 4), v34);

  if (v36)
  {

    v38 = LACLogConcurrentEvaluations(v37);
    Logger.init(_:)();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v97[0] = v42;
      *v41 = 136446210;

      v43 = LACConcurrentEvaluationManagedRequest.description.getter();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v97);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1B0233000, v39, v40, "Request %{public}s already registered", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B27246A0](v42, -1, -1);
      MEMORY[0x1B27246A0](v41, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v10, v3);
  }

  v51 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v52 = v94;
  swift_beginAccess();
  v10 = *(v52 + v51);
  if (v10 >> 62)
  {
    goto LABEL_46;
  }

  v53 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  v90 = v3;
  if (v53)
  {
    v89 = v4;
    v48 = 0;
    v3 = v10 & 0xC000000000000001;
    v4 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v54 = MEMORY[0x1B2722E50](v48, v10);
        v55 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        if (v48 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v54 = *(v10 + 8 * v48 + 32);

        v55 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_30;
        }
      }

      v56 = *(v54 + 24) == v17 && v20 == *(v54 + 32);
      if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v48;
      if (v55 == v53)
      {
        v4 = v89;
        v3 = v90;
        goto LABEL_38;
      }
    }

    v59 = LACLogConcurrentEvaluations(v58);
    v60 = v92;
    Logger.init(_:)();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v96[0] = v88;
      *v63 = 136446466;

      v64 = LACConcurrentEvaluationManagedRequest.description.getter();
      v66 = v65;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v96);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, v96);
      _os_log_impl(&dword_1B0233000, v61, v62, "Cancelling stashed request %{public}s because a new request for session %s is registered", v63, 0x16u);
      v68 = v88;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v68, -1, -1);
      MEMORY[0x1B27246A0](v63, -1, -1);
    }

    v4 = v89;
    v3 = v90;
    (*(v89 + 8))(v60, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1B0343080;
    *(v69 + 32) = v54;

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v69);
  }

LABEL_38:

  v71 = LACLogConcurrentEvaluations(v70);
  v72 = v93;
  Logger.init(_:)();

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v4;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v96[0] = v77;
    *v76 = 136446466;

    v78 = LACConcurrentEvaluationManagedRequest.description.getter();
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v96);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2082;
    *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, v96);
    _os_log_impl(&dword_1B0233000, v73, v74, "Registering request %{public}s with sessionID: %{public}s", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v77, -1, -1);
    MEMORY[0x1B27246A0](v76, -1, -1);

    (*(v75 + 8))(v93, v90);
  }

  else
  {

    (*(v4 + 8))(v72, v3);
  }

  v82 = v91;

  MEMORY[0x1B2722B30](v83);
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v84 = v98;
  v85 = v94;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v85 + v82);
  *(v85 + v82) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, v17, v20, isUniquelyReferenced_nonNull_native);

  *(v85 + v82) = v95;
  swift_endAccess();
  LACConcurrentEvaluationManagerModel.activeRequests.didset();
}

id LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  result = [a1 contextID];
  if (result)
  {
    v11 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v7, v3);
    v12 = [a1 client];
    if (v12)
    {
      v13 = v12;
      v14 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_clientInfoProvider);
      v15 = [a1 options];
      if (v15)
      {
        v16 = v15;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v17.super.isa = 0;
      }

      v18 = [v14 infoForXPCClient:v13 evaluationOptions:v17.super.isa];

      if ([*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_helper) isClientAllowListedWithClientInfo_])
      {
        v23 = UUID.uuidString.getter();
        v24 = v19;
        MEMORY[0x1B2722A80](45, 0xE100000000000000);
        v22[3] = [v13 processId];
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B2722A80](v20);
        swift_unknownObjectRelease();

        v21 = v23;
      }

      else
      {
        LODWORD(v23) = [v13 processId];
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        swift_unknownObjectRelease();
      }

      (*(v4 + 8))(v9, v3);
      return v21;
    }

    else
    {
      (*(v4 + 8))(v9, v3);
      return 0;
    }
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelRequests(_:)(unint64_t a1)
{
  v73 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v80 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v62 - v12;
  v64 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    do
    {
      v15 = LACLogConcurrentEvaluations(result);
      Logger.init(_:)();
      v16 = v64;

      a1 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      v18 = os_log_type_enabled(a1, v17);
      v78 = v4;
      v77 = v5;
      v70 = v14;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = v2;
        v21 = swift_slowAlloc();
        *&v87 = v21;
        *v19 = 136446210;
        v22 = type metadata accessor for LACConcurrentEvaluationManagedRequest();
        v23 = MEMORY[0x1B2722B60](v16, v22);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v87);
        v5 = v77;

        *(v19 + 4) = v25;
        _os_log_impl(&dword_1B0233000, a1, v17, "Cancelling requests: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        v26 = v21;
        v2 = v20;
        MEMORY[0x1B27246A0](v26, -1, -1);
        v27 = v19;
        v4 = v78;
        MEMORY[0x1B27246A0](v27, -1, -1);
      }

      v28 = *(v80 + 8);
      v80 += 8;
      v29 = v28;
      v30 = (v28)(v13, v5);
      v13 = 0;
      v69 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers;
      v68 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
      v71 = v16 & 0xC000000000000001;
      v63 = v16 & 0xFFFFFFFFFFFFFF8;
      v62 = v16 + 32;
      v75 = " accept idling UI";
      v67 = (v2 + 8);
      v30.n128_u64[0] = 136446466;
      v76 = v30;
      while (v71)
      {
        v31 = MEMORY[0x1B2722E50](v13, v64);
        v32 = __OFADD__(v13++, 1);
        if (v32)
        {
          goto LABEL_28;
        }

LABEL_15:
        v74 = v13;
        v33 = *(v31 + 40);
        if (v33)
        {
          [v33 destroyIdleUI];
        }

        v34 = [*(v79 + v69) objectEnumerator];
        NSEnumerator.makeIterator()();

        while (1)
        {
          NSFastEnumerationIterator.next()();
          if (!v88)
          {
            break;
          }

          v35 = outlined init with take of Any(&v87, &v86);
          v36 = LACLogConcurrentEvaluations(v35);
          Logger.init(_:)();
          outlined init with copy of Any(&v86, v85);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v84 = v40;
            *v39 = v76.n128_u32[0];
            outlined init with copy of Any(v85, &v82);
            v41 = String.init<A>(describing:)();
            v43 = v42;
            __swift_destroy_boxed_opaque_existential_0(v85);
            v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v84);

            *(v39 + 4) = v44;
            *(v39 + 12) = 2082;
            v82 = 0;
            v83 = 0xE000000000000000;

            _StringGuts.grow(_:)(59);
            MEMORY[0x1B2722A80](0xD00000000000002BLL, v75 | 0x8000000000000000);
            v81 = [*(v31 + 16) identifier];
            v45 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1B2722A80](v45);

            MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
            MEMORY[0x1B2722A80](*(v31 + 24), *(v31 + 32));

            v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v84);

            *(v39 + 14) = v46;
            v4 = v78;
            _os_log_impl(&dword_1B0233000, v37, v38, "Informing %{public}s about canceling of request %{public}s", v39, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B27246A0](v40, -1, -1);
            v47 = v39;
            v5 = v77;
            MEMORY[0x1B27246A0](v47, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v85);
          }

          v29(v10, v5);
          outlined init with copy of Any(&v86, v85);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pMd, &_sSo38LACConcurrentEvaluationManagerObserver_pMR);
          if (swift_dynamicCast())
          {
            [v82 systemDidCancelRequest:*(v31 + 16) manager:v79];
            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_0(&v86);
        }

        (*v67)(v4, v73);
        v48 = [*(v79 + v68) objectForKey_];
        v49 = LACLogConcurrentEvaluations(v48);
        v2 = v72;
        Logger.init(_:)();

        swift_unknownObjectRetain();
        a1 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(a1, v50))
        {
          v51 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v87 = v66;
          *v51 = v76.n128_u32[0];
          *&v86 = v48;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pSgMd, &_sSo38LACConcurrentEvaluationManagerObserver_pSgMR);
          v52 = String.init<A>(describing:)();
          v65 = v50;
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v87);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2082;

          v55 = LACConcurrentEvaluationManagedRequest.description.getter();
          v57 = v56;

          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v87);
          v4 = v78;

          *(v51 + 14) = v58;
          _os_log_impl(&dword_1B0233000, a1, v65, "Informing %{public}s about canceling of request %{public}s", v51, 0x16u);
          v59 = v66;
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v59, -1, -1);
          v60 = v51;
          v5 = v77;
          MEMORY[0x1B27246A0](v60, -1, -1);
        }

        v29(v2, v5);
        v13 = v74;
        if (v48)
        {
          a1 = *(v31 + 16);
          swift_unknownObjectRetain();
          [v48 systemDidCancelRequest:a1 manager:v79];

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
        }

        else
        {
        }

        if (v13 == v70)
        {
          return result;
        }
      }

      if (v13 >= *(v63 + 16))
      {
        goto LABEL_29;
      }

      v31 = *(v62 + 8 * v13);

      v32 = __OFADD__(v13++, 1);
      if (!v32)
      {
        goto LABEL_15;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v61 = a1;
      }

      else
      {
        v61 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1B2722F00](v61);
      v14 = result;
    }

    while (result);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.stashRequest(_:acceptsIdleUI:)(void *a1, int a2)
{
  v120 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v114 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v119 = &v114 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v118 = &v114 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v116 = &v114 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v114 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v25 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
    if (!v26)
    {
LABEL_19:
      v37 = LACLogConcurrentEvaluations(v25);
      Logger.init(_:)();
      swift_unknownObjectRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 67109120;
        *(v40 + 4) = [a1 identifier];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v38, v39, "Missing identifiers to stash request rid: %u", v40, 8u);
        MEMORY[0x1B27246A0](v40, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v5 + 8))(v8, v4);
    }

    v27 = v25;
    v28 = v26;
    v29 = v2;
    v30 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    v31 = *(v2 + v30);
    if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28), (v33 & 1) != 0))
    {
      v2 = *(*(v31 + 56) + 8 * v32);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v2 = MEMORY[0x1E69E7CC0];
    }

    v124 = v27;
    v125 = v28;
    v121 = v4;
    v122 = v5;
    v114 = v2 >> 62;
    v115 = v29;
    if (!(v2 >> 62))
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_9;
      }

LABEL_72:

      v102 = LACLogConcurrentEvaluations(v101);
      v103 = v123;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v127[0] = v107;
        *v106 = 136446466;
        v108 = [a1 description];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v127);

        *(v106 + 4) = v112;
        *(v106 + 12) = 1024;
        LODWORD(v112) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v106 + 14) = v112;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v104, v105, "No active request for %{public}s rid: %u to stash", v106, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x1B27246A0](v107, -1, -1);
        MEMORY[0x1B27246A0](v106, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v122 + 8))(v103, v121);
    }
  }

  else
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  if (v2 < 0)
  {
    v100 = v2;
  }

  else
  {
    v100 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = MEMORY[0x1B2722F00](v100);
  if (!v4)
  {
    goto LABEL_72;
  }

LABEL_9:
  v34 = 0;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1B2722E50](v34, v2);
      v8 = v25;
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v34 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v8 = *(v2 + 8 * v34 + 32);

      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_18;
      }
    }

    v36 = [v8[2] identifier];
    if (v36 == [a1 identifier])
    {
      break;
    }

    ++v34;
    if (v35 == v4)
    {
      goto LABEL_72;
    }
  }

  v41 = v120;
  *(v8 + 48) = v120 & 1;
  if (v114)
  {
    if (v2 < 0)
    {
      v44 = v2;
    }

    else
    {
      v44 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = MEMORY[0x1B2722F00](v44);
  }

  else
  {
    v42 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v121;
  v46 = v125;

  v48 = v122;
  if (v42 == 1)
  {
    v49 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
    v50 = v115;
    swift_beginAccess();
    v2 = *(v50 + v49);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v113 = v2;
      }

      else
      {
        v113 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v45 = MEMORY[0x1B2722F00](v113);
    }

    else
    {
      v45 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v45)
    {
      v46 = 0;
      v48 = v2 & 0xC000000000000001;
      a1 = (v2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v48)
        {
          v47 = MEMORY[0x1B2722E50](v46, v2);
          v51 = v47;
          v52 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v46 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v51 = *(v2 + 8 * v46 + 32);

          v52 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v53 = *(v51 + 24) == v124 && v125 == *(v51 + 32);
        if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v46;
        if (v52 == v45)
        {
          goto LABEL_49;
        }
      }

      v77 = [*(v51 + 16) identifier];
      v78 = [v8[2] identifier];
      v79 = v78;
      v80 = LACLogConcurrentEvaluations(v78);
      if (v77 == v79)
      {
        v81 = v117;
        Logger.init(_:)();

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v126 = v85;
          *v84 = 136446210;

          v86 = LACConcurrentEvaluationManagedRequest.description.getter();
          v88 = v87;

          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v126);

          *(v84 + 4) = v89;
          _os_log_impl(&dword_1B0233000, v82, v83, "Request %{public}s already stashed", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v85);
          MEMORY[0x1B27246A0](v85, -1, -1);
          MEMORY[0x1B27246A0](v84, -1, -1);
        }

        else
        {
        }

        (*(v122 + 8))(v81, v121);
        LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v8, v124, v125);
      }

      else
      {
        v90 = v116;
        Logger.init(_:)();
        v91 = v125;

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();

        v94 = os_log_type_enabled(v92, v93);
        v95 = v121;
        if (v94)
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v126 = v97;
          *v96 = 136446210;
          v98 = v124;
          *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v126);
          _os_log_impl(&dword_1B0233000, v92, v93, "There is another stashed request for sessionID: %{public}s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x1B27246A0](v97, -1, -1);
          v91 = v125;
          MEMORY[0x1B27246A0](v96, -1, -1);

          (*(v122 + 8))(v90, v95);
        }

        else
        {

          (*(v122 + 8))(v90, v95);
          v98 = v124;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1B0343080;
        *(v99 + 32) = v8;

        LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v99);

        LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v8, v98, v91);
      }
    }

    else
    {
LABEL_49:

      v63 = LACLogConcurrentEvaluations(v62);
      v64 = v118;
      Logger.init(_:)();

      v65 = v125;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v126 = v69;
        *v68 = 136446722;

        v70 = LACConcurrentEvaluationManagedRequest.description.getter();
        v72 = v71;

        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v126);
        v65 = v125;

        *(v68 + 4) = v73;
        *(v68 + 12) = 2082;
        v74 = v64;
        v75 = v124;
        *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v65, &v126);
        *(v68 + 22) = 1024;
        *(v68 + 24) = v41 & 1;
        _os_log_impl(&dword_1B0233000, v66, v67, "Stashing request %{public}s with sessionID: %{public}s acceptsIdleUI: %{BOOL}d", v68, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v69, -1, -1);
        MEMORY[0x1B27246A0](v68, -1, -1);

        (*(v122 + 8))(v74, v121);
      }

      else
      {

        (*(v122 + 8))(v64, v121);
        v75 = v124;
      }

      LACConcurrentEvaluationManagerModel.stashRequest(_:)(v8);
      LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v8, v75, v65);
    }
  }

  else
  {
LABEL_47:
    v54 = LACLogConcurrentEvaluations(v47);
    v55 = v119;
    Logger.init(_:)();

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v127[0] = v59;
      *v58 = 136446210;
      v60 = v124;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v127);
      _os_log_impl(&dword_1B0233000, v56, v57, "There are other active requests for sessionID: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B27246A0](v59, -1, -1);
      v61 = v58;
      v46 = v125;
      MEMORY[0x1B27246A0](v61, -1, -1);

      (*(v48 + 8))(v55, v45);
    }

    else
    {

      (*(v48 + 8))(v55, v45);
      v60 = v124;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1B0343080;
    *(v76 + 32) = v8;

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v76);

    LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v8, v60, v46);
  }
}

id LACConcurrentEvaluationManagerModel.stashRequest(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();

  MEMORY[0x1B2722B30](v8);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = swift_endAccess();
  if ((*(a1 + 48) & 1) == 0 && *(a1 + 40))
  {
    v10 = LACLogConcurrentEvaluations(result);
    Logger.init(_:)();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v15 = LACConcurrentEvaluationManagedRequest.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B0233000, v11, v12, "Destroying idle UI for %s because the request does not allow idling UI", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B27246A0](v14, -1, -1);
      MEMORY[0x1B27246A0](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    result = *(a1 + 40);
    if (result)
    {
      return [result destroyIdleUI];
    }
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.unregisterRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v68 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v62 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v19 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
    if (!v20)
    {
LABEL_19:
      v30 = LACLogConcurrentEvaluations(v19);
      Logger.init(_:)();
      swift_unknownObjectRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 67109120;
        *(v33 + 4) = [a1 identifier];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v31, v32, "Missing identifiers to unregister request %u", v33, 8u);
        MEMORY[0x1B27246A0](v33, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return v5[1](v8, v4);
    }

    v21 = v19;
    v22 = v20;
    v23 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    v24 = *(v2 + v23);
    if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v26 & 1) != 0))
    {
      v15 = *(*(v24 + 56) + 8 * v25);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v15 = MEMORY[0x1E69E7CC0];
    }

    v65 = v22;
    v66 = v5;
    v62 = v21;
    v63 = v2;
    v67 = v4;
    if (!(v15 >> 62))
    {
      v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_34:

      v51 = LACLogConcurrentEvaluations(v50);
      v52 = v68;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69[0] = v56;
        *v55 = 136446466;
        v57 = [a1 description];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v69);

        *(v55 + 4) = v61;
        *(v55 + 12) = 1024;
        LODWORD(v61) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v55 + 14) = v61;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v53, v54, "No active request for %{public}s rid: %u to remove", v55, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1B27246A0](v56, -1, -1);
        MEMORY[0x1B27246A0](v55, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return v66[1](v52, v67);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }

  if (v15 < 0)
  {
    v49 = v15;
  }

  else
  {
    v49 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v27 = MEMORY[0x1B2722F00](v49);
  if (!v27)
  {
    goto LABEL_34;
  }

LABEL_9:
  v28 = 0;
  v4 = v15 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v19 = MEMORY[0x1B2722E50](v28, v15);
      v8 = v19;
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v28 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v15 + 8 * v28 + 32);

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_18;
      }
    }

    v5 = [v8[2] identifier];
    if (v5 == [a1 identifier])
    {
      break;
    }

    ++v28;
    if (v29 == v27)
    {
      goto LABEL_34;
    }
  }

  v35 = LACLogConcurrentEvaluations(v34);
  v36 = v64;
  Logger.init(_:)();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v69[0] = v40;
    *v39 = 136446210;

    v41 = LACConcurrentEvaluationManagedRequest.description.getter();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v69);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1B0233000, v37, v38, "Unregistering request %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B27246A0](v40, -1, -1);
    MEMORY[0x1B27246A0](v39, -1, -1);
  }

  v66[1](v36, v67);
  v45 = v62;
  v46 = v65;
  v47 = v8[5];
  if (v47)
  {
    [v47 destroyIdleUI];
  }

  LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v8, v45, v46);
}

uint64_t LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v18 = v11;
  }

  else
  {
    swift_endAccess();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v12 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v18, a1);

  if (!(v18 >> 62))
  {
    v13 = v18 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v12)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    if (v12 < 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x1B2722F00](v17))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v18 < 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = MEMORY[0x1B2722F00](v16);
  if (v14 < v12)
  {
    goto LABEL_15;
  }

LABEL_7:
  specialized Array.replaceSubrange<A>(_:with:)(v12, v14, v13);
  v12 = v18;
  if (v18 >> 62)
  {
    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v12 = 0;
  }

LABEL_10:
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v12, a2, a3);
  swift_endAccess();
  return LACConcurrentEvaluationManagerModel.activeRequests.didset();
}

void @objc LACConcurrentEvaluationManagerModel.register(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

unint64_t LACConcurrentEvaluationManagerModel.restartRequests(forContextID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = LACLogConcurrentEvaluations(result);
    Logger.init(_:)();
    v19 = *(v5 + 16);
    v30 = a1;
    v19(v7, a1, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29[1] = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v5 + 8))(v7, v4);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B0233000, v20, v21, "Retrying requests with UUID %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B27246A0](v24, -1, -1);
      MEMORY[0x1B27246A0](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v31 + 8))(v10, v32);
    return LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(v30) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v58 - v8;
  v9 = type metadata accessor for Logger();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v58 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    v22 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
    v23 = swift_beginAccess();
    v24 = *(v1 + v22);
    MEMORY[0x1EEE9AC00](v23);
    *(&v58 - 2) = a1;

    result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:), &v58 - 4, v24);
    v20 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
    v14 = result >> 62;
    if (!(result >> 62))
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  if (v20 < 0)
  {
    v42 = v20;
  }

  else
  {
    v42 = v21;
  }

  result = MEMORY[0x1B2722F00](v42);
  v26 = result;
LABEL_4:
  v27 = v3;
  v28 = v4;
  if (!v26)
  {
    v60 = 0;

    v33 = LACLogConcurrentEvaluations(v32);
    Logger.init(_:)();
    (*(v4 + 16))(v7, a1, v27);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v28 + 8))(v7, v27);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v63);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B0233000, v34, v35, "No requests to retry for contextID: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B27246A0](v37, -1, -1);
      MEMORY[0x1B27246A0](v36, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v27);
    }

    (*(v61 + 8))(v12, v62);
    v26 = v60;
    return v26 != 0;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1B2722E50](0, v20);
    v30 = v20 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v20 + 32);

    v30 = v20 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
LABEL_8:
      v31 = *(v30 + 16);
      goto LABEL_23;
    }

LABEL_19:
    if (v20 < 0)
    {
      v43 = v20;
    }

    else
    {
      v43 = v30;
    }

    v31 = MEMORY[0x1B2722F00](v43);
LABEL_23:

    if (v31 >= 2)
    {
      v58 = v1;
      v45 = LACLogConcurrentEvaluations(v44);
      v46 = v60;
      Logger.init(_:)();
      v47 = v59;
      (*(v4 + 16))(v59, a1, v27);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = v47;
        v52 = swift_slowAlloc();
        v63[0] = v52;
        *v50 = 136446210;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v27;
        v56 = v55;
        (*(v28 + 8))(v51, v54);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v56, v63);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_1B0233000, v48, v49, "There are more than one requests for contextID: %{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1B27246A0](v52, -1, -1);
        MEMORY[0x1B27246A0](v50, -1, -1);

        (*(v61 + 8))(v60, v62);
      }

      else
      {

        (*(v4 + 8))(v47, v27);
        (*(v61 + 8))(v46, v62);
      }
    }

    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v29);

    return v26 != 0;
  }

  __break(1u);
  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelRequests(forContextID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = LACLogConcurrentEvaluations(result);
    Logger.init(_:)();
    v19 = *(v5 + 16);
    v30 = a1;
    v19(v7, a1, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29[1] = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v5 + 8))(v7, v4);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B0233000, v20, v21, "Canceling requests with UUID %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B27246A0](v24, -1, -1);
      MEMORY[0x1B27246A0](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v31 + 8))(v10, v32);
    return LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v17 = (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    v24 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 < 0)
    {
      v24 = v17;
    }

    v25 = v17;
    v26 = MEMORY[0x1B2722F00](v24);
    v17 = v25;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v18 = swift_beginAccess();
  v19 = *(v1 + v16);
  MEMORY[0x1EEE9AC00](v18);
  *(&v37 - 2) = a1;

  v17 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:), &v37 - 4, v19);
  if (v17 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v20 = *(v1 + v16);
    v21 = MEMORY[0x1EEE9AC00](v17);
    *(&v37 - 2) = a1;
    v22 = v21;

    *(v1 + v16) = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:), &v37 - 4, v20);

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v22);
  }

LABEL_9:

  v28 = LACLogConcurrentEvaluations(v27);
  Logger.init(_:)();
  (*(v4 + 16))(v6, a1, v3);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136446210;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v4 + 8))(v6, v3);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v40);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1B0233000, v29, v30, "No requests to cancel for contextID: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B27246A0](v32, -1, -1);
    MEMORY[0x1B27246A0](v31, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return (*(v38 + 8))(v9, v39);
}

id LACConcurrentEvaluationManagerModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationManagerModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - v13;
  v15 = [a1 unsignedIntValue];
  v16 = v15;
  v17 = LACLogConcurrentEvaluations(v15);
  Logger.init(_:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v9;
    v21 = a4;
    v22 = a3;
    v23 = a2;
    v24 = v12;
    v25 = v20;
    *v20 = 67109120;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_1B0233000, v18, v19, "Idle UI for rid: %u got focus", v20, 8u);
    v26 = v25;
    v12 = v24;
    a2 = v23;
    a3 = v22;
    a4 = v21;
    v9 = v48;
    MEMORY[0x1B27246A0](v26, -1, -1);
  }

  v48 = *(v9 + 1);
  v48(v14, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v46 = a4;
  v28 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v29 = Strong;
  swift_beginAccess();
  v30 = *&v29[v28];

  v47 = a3;
  v44 = v12;
  v45 = v8;
  v43[1] = a2;
  if (v30 >> 62)
  {
LABEL_20:
    if (v30 < 0)
    {
      v38 = v30;
    }

    else
    {
      v38 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = MEMORY[0x1B2722F00](v38);
    if (v31)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_24:

    a3 = v47;
    v12 = v44;
    v8 = v45;
LABEL_25:
    v39 = LACLogConcurrentEvaluations(Strong);
    Logger.init(_:)();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v16;
      _os_log_impl(&dword_1B0233000, v40, v41, "No stashed request to refocus with rid: %u", v42, 8u);
      MEMORY[0x1B27246A0](v42, -1, -1);
    }

    v48(v12, v8);
    return a3(0);
  }

LABEL_6:
  v32 = 0;
  while ((v30 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1B2722E50](v32, v30);
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    if ([*(v33 + 16) identifier] == v16)
    {
      goto LABEL_16;
    }

    ++v32;
    if (v34 == v31)
    {
      goto LABEL_24;
    }
  }

  if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v33 = *(v30 + 8 * v32 + 32);

  v34 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v33);
  }

  return v47(0);
}

uint64_t LACConcurrentEvaluationManagerModel.unstashRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = type metadata accessor for NSFastEnumerationIterator();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  if (v13)
  {
    [v13 expectReconnectionOfIdleUI];
  }

  v14 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();

  v15 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v14), a1);

  v16 = *(v2 + v14);
  v53 = v7;
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v50 = v16;
    }

    else
    {
      v50 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = MEMORY[0x1B2722F00](v50);
    if (v17 >= v15)
    {
      goto LABEL_5;
    }

LABEL_22:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17 < v15)
  {
    goto LABEL_22;
  }

LABEL_5:
  v51 = v10;
  specialized Array.replaceSubrange<A>(_:with:)(v15, v17, &v67);
  swift_endAccess();
  v18 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) objectEnumerator];
  NSEnumerator.makeIterator()();

  NSFastEnumerationIterator.next()();
  v57 = v2;
  v58 = v4;
  if (v66)
  {
    v20 = (v54 + 8);
    v56 = " accept idling UI";
    *&v19 = 136446466;
    v55 = v19;
    do
    {
      v21 = outlined init with take of Any(&v65, v64);
      v22 = LACLogConcurrentEvaluations(v21);
      Logger.init(_:)();
      outlined init with copy of Any(v64, v63);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v25 = v55;
        outlined init with copy of Any(v63, &v60);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_0(v63);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v62);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2082;
        v60 = 0;
        v61 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        MEMORY[0x1B2722A80](0xD00000000000002BLL, v56 | 0x8000000000000000);
        v59 = [*(a1 + 16) identifier];
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B2722A80](v31);

        MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
        MEMORY[0x1B2722A80](*(a1 + 24), *(a1 + 32));
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v62);

        *(v25 + 14) = v32;
        v2 = v57;
        _os_log_impl(&dword_1B0233000, v23, v24, "Informing %{public}s about unstashing of request %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        v33 = v26;
        v4 = v58;
        MEMORY[0x1B27246A0](v33, -1, -1);
        MEMORY[0x1B27246A0](v25, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v63);
      }

      (*v20)(v9, v4);
      outlined init with copy of Any(v64, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pMd, &_sSo38LACConcurrentEvaluationManagerObserver_pMR);
      if (swift_dynamicCast())
      {
        [v60 systemReadyForRequest:*(a1 + 16) manager:v2];
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(v64);
      NSFastEnumerationIterator.next()();
    }

    while (v66);
  }

  (*(v52 + 8))(v12, v51);
  v34 = *(a1 + 16);
  v35 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) objectForKey_];
  v36 = LACLogConcurrentEvaluations(v35);
  v37 = v53;
  Logger.init(_:)();

  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v65 = v41;
    *v40 = 136446466;
    *&v64[0] = v35;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pSgMd, &_sSo38LACConcurrentEvaluationManagerObserver_pSgMR);
    v42 = String.init<A>(describing:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v65);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = LACConcurrentEvaluationManagedRequest.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v65);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_1B0233000, v38, v39, "Informing %{public}s about unstashing of request %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    v48 = v41;
    v2 = v57;
    MEMORY[0x1B27246A0](v48, -1, -1);
    MEMORY[0x1B27246A0](v40, -1, -1);
  }

  result = (*(v54 + 8))(v37, v58);
  if (v35)
  {
    [v35 systemReadyForRequest:v34 manager:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a2;
  v16[6] = a1;
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

void closure #1 in LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [a4 unsignedIntValue];
    v15 = v14;
    v16 = LACLogConcurrentEvaluations(v14);
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = a5;
      v20 = a2;
      v21 = v19;
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_1B0233000, v17, v18, "Connect idle UI for rid: %u", v19, 8u);
      v22 = v21;
      a2 = v20;
      a5 = v41;
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v23 = LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(v15);
    if (v23)
    {
      if ((*(v23 + 48) & 1) == 0)
      {
        v37 = objc_opt_self();
        v38 = MEMORY[0x1B27229A0](0xD000000000000021, 0x80000001B0356B00);
        v39 = [v37 errorWithCode:-1000 debugDescription:v38];

        a2(0, v39);

        goto LABEL_11;
      }

      *(v23 + 40) = a5;
      v24 = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v25 = *(v24 + 16);
      v26 = *&v13[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances];
      v27 = [v25 identifier];
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      [v26 setObject:a5 forKey:v28];

      v29 = v13;
      a2(v13, 0);
    }

    else
    {
      v33 = objc_opt_self();
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v43 = 0xD000000000000027;
      v44 = 0x80000001B0356AD0;
      v42 = v15;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2722A80](v34);

      v35 = MEMORY[0x1B27229A0](v43, v44);

      v36 = [v33 errorWithCode:-1000 debugDescription:v35];

      v29 = v36;
      a2(0, v36);
    }

    v13 = v29;
  }

  else
  {
    v30 = objc_opt_self();
    v31 = MEMORY[0x1B27229A0](0xD000000000000011, 0x80000001B0356AB0);
    v32 = [v30 errorWithCode:-1000 debugDescription:v31];

    v13 = v32;
    a2(0, v32);
  }

LABEL_11:
}

uint64_t LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(int a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2722E50](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          if (v4 < 0)
          {
            v13 = v4;
          }

          else
          {
            v13 = v4 & 0xFFFFFFFFFFFFFF8;
          }

          v5 = MEMORY[0x1B2722F00](v13);
          goto LABEL_3;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if ([*(v7 + 16) identifier] == a1)
      {
        goto LABEL_26;
      }

      ++v6;
    }

    while (v8 != v5);
  }

  swift_beginAccess();

  v10 = specialized Sequence.flatMap<A>(_:)(v9);

  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x1B2722F00](v14);
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_38:

    return 0;
  }

  v4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_16:
  v11 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B2722E50](v11, v10);
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_25;
    }

LABEL_20:
    if ([*(v7 + 16) identifier] == a1)
    {
      goto LABEL_26;
    }

    ++v11;
    if (v12 == v4)
    {
      goto LABEL_38;
    }
  }

  if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v7 = *(v10 + 8 * v11 + 32);

  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:

  return v7;
}

Swift::Void __swiftcall LACConcurrentEvaluationManagerModel.connectionInvalidated(forIdentifier:)(NSNumber_optional forIdentifier)
{
  isa = forIdentifier.value.super.super.isa;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v7 = [(objc_class *)isa unsignedIntValue];
    [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances) removeObjectForKey_];
    v8 = LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(v7);
    if (v8)
    {
      v9 = v8;
      v10 = LACLogConcurrentEvaluations(v8);
      Logger.init(_:)();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = v7;
        _os_log_impl(&dword_1B0233000, v11, v12, "Connection invalidated for request rid: %u", v13, 8u);
        MEMORY[0x1B27246A0](v13, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      *(v9 + 40) = 0;

      swift_unknownObjectRelease();
    }
  }
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1B2722F00](v13))
  {
    v9 = 0;
    v16 = v5 & 0xFFFFFFFFFFFFFF8;
    v17 = v5 & 0xC000000000000001;
    v15 = v5;
    while (1)
    {
      if (v17)
      {
        v10 = MEMORY[0x1B2722E50](v9, v5);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          return v3;
        }

        goto LABEL_9;
      }

      if (v9 >= *(v16 + 16))
      {
        break;
      }

      v10 = *(v5 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v18 = v10;
      v3 = a2;
      v12 = a1(&v18);
      if (v4)
      {
        goto LABEL_15;
      }

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v5 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      if (v11 == i)
      {
        v3 = v19;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v3;
}

uint64_t closure #1 in LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = [*(*a1 + 16) contextID];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
  }

  (*(v5 + 16))(v15, a2, v4);
  v20(v15, 0, 1, v4);
  v21 = *(v7 + 48);
  outlined init with copy of UUID?(v17, v9);
  outlined init with copy of UUID?(v15, &v9[v21]);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v24 = v29;
    outlined init with copy of UUID?(v9, v29);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v28;
      (*(v5 + 32))(v28, &v9[v21], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v25, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26(v29, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v23 & 1;
    }

    outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v24, v4);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v22(&v9[v21], 1, v4) != 1)
  {
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = 1;
  return v23 & 1;
}

uint64_t closure #2 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28[-v16];
  v18 = [*(*a1 + 16) contextID];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
  }

  (*(v5 + 16))(v15, a2, v4);
  v20(v15, 0, 1, v4);
  v21 = *(v7 + 48);
  outlined init with copy of UUID?(v17, v9);
  outlined init with copy of UUID?(v15, &v9[v21]);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v24 = v31;
    outlined init with copy of UUID?(v9, v31);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v30;
      (*(v5 + 32))(v30, &v9[v21], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v25, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26(v24, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v23 = v29 ^ 1;
      return v23 & 1;
    }

    outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v24, v4);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v22(&v9[v21], 1, v4) != 1)
  {
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v23 = 1;
    return v23 & 1;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v36 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v37 = result;
  v39 = v2;
  while (v5)
  {
LABEL_10:
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v34 = v10;
      }

      else
      {
        v34 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x1B2722F00](v34);
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v35 = v8;
      }

      else
      {
        v35 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1B2722F00](v35);
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_51;
    }

    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v17 = v8;
    if (v14)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v18 = v8 & 0xFFFFFFFFFFFFFF8, v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      v19 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v14)
      {
        if (v8 < 0)
        {
          v19 = v8;
        }

        MEMORY[0x1B2722F00](v19);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v12;
    v40 = v17;
    if (v11)
    {
      if (v12 < 0)
      {
        v24 = v12;
      }

      else
      {
        v24 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = v18;
      result = MEMORY[0x1B2722F00](v24);
      v18 = v25;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v42)
      {
        goto LABEL_53;
      }

      v26 = v18 + 8 * v20 + 32;
      v38 = v18;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_55;
        }

        v27 = v22;
        lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [LACConcurrentEvaluationManagedRequest] and conformance [A], &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMd, &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMR, MEMORY[0x1E69E6340]);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMd, &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMR);
          v29 = specialized protocol witness for Collection.subscript.read in conformance [A](v41, i, v27);
          v31 = *v30;

          (v29)(v41, 0);
          *(v26 + 8 * i) = v31;
        }
      }

      else
      {
        type metadata accessor for LACConcurrentEvaluationManagedRequest();
        swift_arrayInitWithCopy();
      }

      v1 = v37;
      v2 = v39;
      v8 = v40;
      if (v42 >= 1)
      {
        v32 = *(v38 + 16);
        v15 = __OFADD__(v32, v42);
        v33 = v32 + v42;
        if (v15)
        {
          goto LABEL_54;
        }

        *(v38 + 16) = v33;
      }
    }

    else
    {

      v2 = v39;
      v8 = v40;
      if (v42 > 0)
      {
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v36)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t LACConcurrentEvaluationManagedRequest.description.getter()
{
  _StringGuts.grow(_:)(59);
  MEMORY[0x1B2722A80](0xD00000000000002BLL, 0x80000001B0356B30);
  v3 = [*(v0 + 16) identifier];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v1);

  MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
  MEMORY[0x1B2722A80](*(v0 + 24), *(v0 + 32));
  return HIDWORD(v3);
}

uint64_t LACConcurrentEvaluationManagedRequest.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LACConcurrentEvaluationManagedRequest(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  return v3 == [*(v2 + 16) identifier];
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x1B2722F00](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2722E50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2722E50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (void *a1)
{
}

{
  return swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

BOOL partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  v2 = **(v1 + 16);
  v3 = [*(*a1 + 16) identifier];
  return v3 == [*(v2 + 16) identifier];
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = v3;
    }

    v4 = MEMORY[0x1B2722F00](v11);
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2722E50](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = [*(v6 + 16) identifier];
    v8 = [*(a2 + 16) identifier];

    if (v7 == v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for LACConcurrentEvaluationManagedRequest();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x1B2722F00](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x1B2722F00](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x1B2722F00](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x1B2722F00](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      goto LABEL_50;
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v19 = v5;
      }

      else
      {
        v19 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (v9 == MEMORY[0x1B2722F00](v19))
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B2722E50](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_15:
    v12 = [*(v11 + 16) identifier];
    v13 = [*(a2 + 16) identifier];

    if (v12 != v13)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B2722E50](v8, v5);
          v15 = MEMORY[0x1B2722E50](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_48;
          }

          if (v9 >= v16)
          {
            goto LABEL_49;
          }

          v14 = *(v5 + 32 + 8 * v8);
          v15 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

        if (v5 < 0 || v17)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v18 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v18 + 16))
        {
          goto LABEL_46;
        }

        *(v18 + 8 * v9 + 32) = v14;

        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_45;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  if (v5 < 0)
  {
    v20 = v5;
  }

  else
  {
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x1B2722F00](v20);
}

uint64_t specialized LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LACCompanionAuthenticationRequest.acmContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData + 8));
  return v1;
}

uint64_t LACCompanionAuthenticationRequest.isFallbackAvailable.getter()
{
  v1 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationRequest.isFallbackAvailable.setter(char a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LACCompanionAuthenticationRequest.identifier.getter()
{
  v1 = [objc_msgSend(v0 evaluationRequest)];
  swift_unknownObjectRelease();
  return v1;
}

id LACCompanionAuthenticationRequest.init(evaluationRequest:clientInfo:companionType:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvaluationRequest:a1 clientInfo:a2 companionType:a3];
  swift_unknownObjectRelease();

  return v4;
}

id LACCompanionAuthenticationRequest.init(evaluationRequest:clientInfo:companionType:)(void *a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 externalizedContext];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = &v4[OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData];
    *v17 = v14;
    v17[1] = v16;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_clientInfo] = a2;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_companionType] = a3;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_evaluationRequest] = a1;
    v4[OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable] = 1;
    v23.receiver = v4;
    v23.super_class = LACCompanionAuthenticationRequest;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  else
  {
    v19 = LACLogABM(0);
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67240192;
      *(v22 + 4) = [a1 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v20, v21, "ACMContext for request: %{public}u is nil", v22, 8u);
      MEMORY[0x1B27246A0](v22, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      v20 = a2;
    }

    (*(v9 + 8))(v11, v8);
    type metadata accessor for LACCompanionAuthenticationRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t type metadata accessor for LACCompanionAuthenticationRequest()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationRequest;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationRequest);
  }

  return result;
}

id LACCompanionAuthenticationRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t static LACLogger.abm.getter(uint64_t a1)
{
  v1 = LACLogABM(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.default.getter(uint64_t a1)
{
  v1 = LACLogDefault(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.ui.getter(uint64_t a1)
{
  v1 = LACLogUI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.processor.getter(uint64_t a1)
{
  v1 = LACLogProcessor(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoUI.getter(uint64_t a1)
{
  v1 = LACLogDTOUI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoEvaluation.getter(uint64_t a1)
{
  v1 = LACLogDTOEvaluation(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoEnvironment.getter(uint64_t a1)
{
  v1 = LACLogDTOEnvironment(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.preboard.getter(uint64_t a1)
{
  v1 = LACLogPreboard(a1);

  return Logger.init(_:)();
}

uint64_t static LACLogger.tests.getter(uint64_t a1)
{
  v1 = LACLogTests(a1);

  return Logger.init(_:)();
}

Swift::Void __swiftcall LACLogger.log(level:_:)(LocalAuthenticationCore::LACLogger::Level level, Swift::String _)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (*level > 1u)
  {
    if (*level == 2)
    {
      v4 = static os_log_type_t.default.getter();
    }

    else
    {
      v4 = static os_log_type_t.error.getter();
    }
  }

  else if (*level)
  {
    v4 = static os_log_type_t.info.getter();
  }

  else
  {
    v4 = static os_log_type_t.debug.getter();
  }

  v5 = v4;
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v9);
    _os_log_impl(&dword_1B0233000, log, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B27246A0](v7, -1, -1);
    MEMORY[0x1B27246A0](v6, -1, -1);
  }
}

Swift::Int LACLogger.Level.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LACLogger.Level and conformance LACLogger.Level()
{
  result = lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level;
  if (!lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level);
  }

  return result;
}

uint64_t type metadata accessor for LACLogger(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACLogger;
  if (!type metadata singleton initialization cache for LACLogger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACLogger(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
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

      outlined destroy of TaskPriority?(a3);

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

  outlined destroy of TaskPriority?(a3);
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t LACRatchetFlowManager.showCoolOffSheet(options:presentationCompletion:sheetCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  *(v10 + 40) = xmmword_1B0342B10;
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:), v10);
}

uint64_t LACRatchetFlowManager.dismiss(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LACRatchetFlowManager.dismiss(completion:), v9);
}

uint64_t closure #1 in LACRatchetFlowManager.dismiss(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in LACRatchetFlowManager.dismiss(completion:), 0, 0);
}

uint64_t closure #1 in LACRatchetFlowManager.dismiss(completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = closure #1 in LACRatchetFlowManager.dismiss(completion:);

    return LACRatchetFlowManager.dismiss()();
  }

  else
  {
    v4 = v0[6];
    if (v4)
    {
      v4(0);
    }

    v5 = v0[1];

    return v5();
  }
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in LACRatchetFlowManager.dismiss(completion:);
  }

  else
  {

    v3 = closure #1 in LACRatchetFlowManager.dismiss(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 48);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = *(v0 + 48);
    v4 = v2;
    v3(v2);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t LACRatchetFlowManager.dismiss()()
{
  *(v1 + 208) = v0;
  return MEMORY[0x1EEE6DFA0](LACRatchetFlowManager.dismiss(), 0, 0);
}

{
  v1 = [*(v0 + 208) presenter];
  if (v1)
  {
    v2 = [v1 isPresented];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [*(v0 + 208) presenter];
      *(v0 + 216) = v3;
      if (v3)
      {
        v4 = v3;
        *(v0 + 80) = v0;
        *(v0 + 88) = LACRatchetFlowManager.dismiss();
        v5 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 168) = &block_descriptor_33_0;
        *(v0 + 176) = v5;
        [v4 dismissAnimated:1 completion:v0 + 144];
        v6 = v0 + 80;
LABEL_7:

        return MEMORY[0x1EEE6DEC8](v6);
      }

      v7 = [*(v0 + 208) uiManager];
      *(v0 + 232) = v7;
      if (v7)
      {
        v8 = v7;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *(v0 + 240) = isa;

        *(v0 + 16) = v0;
        *(v0 + 24) = LACRatchetFlowManager.dismiss();
        v10 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 168) = &block_descriptor_15;
        *(v0 + 176) = v10;
        [v8 transitionToState:0 withOptions:isa completion:v0 + 144];
        v6 = v0 + 16;
        goto LABEL_7;
      }
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.dismiss();
  }

  else
  {
    v2 = LACRatchetFlowManager.dismiss();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = [*(v0 + 208) uiManager];
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 240) = isa;

    *(v0 + 16) = v0;
    *(v0 + 24) = LACRatchetFlowManager.dismiss();
    v4 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 168) = &block_descriptor_15;
    *(v0 + 176) = v4;
    [v2 transitionToState:0 withOptions:isa completion:v0 + 144];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.dismiss();
  }

  else
  {
    v2 = LACRatchetFlowManager.dismiss();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 240);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LACRatchetFlowManager.dismiss()(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

{
  v2 = *(v1 + 240);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:), 0, 0);
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v0[11] = v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
    v5 = v0[6];
    v4 = v0[7];

    return LACRatchetFlowManager.transition(to:with:style:)(v5, v2, v4);
  }

  else
  {
    v7 = v0[8];
    if (v7)
    {
      v7(0);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
  }

  else
  {
    v4 = *(v2 + 80);

    v3 = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[13];
  if (v2)
  {
    v4 = v0[8];
    v5 = v3;
    v4(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in LACRatchetFlowManager.dismiss(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACRatchetFlowManager.dismiss(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_2Tm_1()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t LACRatchetFlowManager.transition(to:with:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  return MEMORY[0x1EEE6DFA0](LACRatchetFlowManager.transition(to:with:style:), 0, 0);
}

uint64_t LACRatchetFlowManager.transition(to:with:style:)()
{
  v1 = [(objc_class *)v0[61].super.isa presenter];
  if (v1)
  {
    v2 = [v1 isPresented];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [(objc_class *)v0[61].super.isa presenter];
      if (v3)
      {
        isa = v0[60].super.isa;
        v5 = [v3 presentationStyle];
        swift_unknownObjectRelease();
        if (v5 == isa)
        {
          v6 = [(objc_class *)v0[61].super.isa uiManager];
          v0[69].super.isa = v6;
          if (v6)
          {
            v7 = v6;
            v8 = v0 + 42;
            v9 = v0[58].super.isa;
            v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
            v0[70].super.isa = v10.super.isa;
            v0[42].super.isa = v0;
            v0[43].super.isa = LACRatchetFlowManager.transition(to:with:style:);
            v11 = swift_continuation_init();
            v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
            v0[54].super.isa = v11;
            v0[50].super.isa = MEMORY[0x1E69E9820];
            v0[51].super.isa = 1107296256;
            v12 = &block_descriptor_62;
LABEL_9:
            v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
            v0[53].super.isa = v12;
            [(objc_class *)v7 transitionToState:v9 withOptions:v10.super.isa completion:&v0[50]];
LABEL_13:
            v20 = v8;
LABEL_14:

            return MEMORY[0x1EEE6DEC8](v20);
          }

          goto LABEL_23;
        }
      }

      v21 = [(objc_class *)v0[61].super.isa presenter];
      v0[62].super.isa = v21;
      if (v21)
      {
        v22 = v21;
        v0[34].super.isa = v0;
        v0[35].super.isa = LACRatchetFlowManager.transition(to:with:style:);
        v23 = swift_continuation_init();
        v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[50].super.isa = MEMORY[0x1E69E9820];
        v0[51].super.isa = 1107296256;
        v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        v0[53].super.isa = &block_descriptor_59;
        v0[54].super.isa = v23;
        [(objc_class *)v22 dismissAnimated:1 completion:&v0[50]];
        v20 = v0 + 34;
        goto LABEL_14;
      }

      v24 = [(objc_class *)v0[61].super.isa uiManager];
      v0[64].super.isa = v24;
      if (v24)
      {
        v7 = v24;
        v8 = v0 + 26;
        v9 = v0[58].super.isa;
        v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v0[65].super.isa = v10.super.isa;
        v0[26].super.isa = v0;
        v0[27].super.isa = LACRatchetFlowManager.transition(to:with:style:);
        v25 = swift_continuation_init();
        v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[54].super.isa = v25;
        v0[50].super.isa = MEMORY[0x1E69E9820];
        v0[51].super.isa = 1107296256;
        v12 = &block_descriptor_56;
        goto LABEL_9;
      }

      v26 = [(objc_class *)v0[61].super.isa presenter];
      v0[67].super.isa = v26;
      if (!v26)
      {
        goto LABEL_23;
      }

      v16 = v26;
      v8 = v0 + 18;
      v17 = v0[60].super.isa;
      v0[18].super.isa = v0;
      v0[19].super.isa = LACRatchetFlowManager.transition(to:with:style:);
      v27 = swift_continuation_init();
      v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
      v0[54].super.isa = v27;
      v0[50].super.isa = MEMORY[0x1E69E9820];
      v0[51].super.isa = 1107296256;
      v19 = &block_descriptor_53;
LABEL_12:
      v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      v0[53].super.isa = v19;
      [(objc_class *)v16 presentWithStyle:v17 animated:1 completion:&v0[50]];
      goto LABEL_13;
    }
  }

  v13 = [(objc_class *)v0[61].super.isa uiManager];
  v0[72].super.isa = v13;
  if (v13)
  {
    v7 = v13;
    v8 = v0 + 10;
    v9 = v0[58].super.isa;
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[73].super.isa = v10.super.isa;
    v0[10].super.isa = v0;
    v0[11].super.isa = LACRatchetFlowManager.transition(to:with:style:);
    v14 = swift_continuation_init();
    v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[54].super.isa = v14;
    v0[50].super.isa = MEMORY[0x1E69E9820];
    v0[51].super.isa = 1107296256;
    v12 = &block_descriptor_50;
    goto LABEL_9;
  }

  v15 = [(objc_class *)v0[61].super.isa presenter];
  v0[75].super.isa = v15;
  if (v15)
  {
    v16 = v15;
    v8 = v0 + 2;
    v17 = v0[60].super.isa;
    v0[2].super.isa = v0;
    v0[3].super.isa = LACRatchetFlowManager.transition(to:with:style:);
    v18 = swift_continuation_init();
    v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[54].super.isa = v18;
    v0[50].super.isa = MEMORY[0x1E69E9820];
    v0[51].super.isa = 1107296256;
    v19 = &block_descriptor_46;
    goto LABEL_12;
  }

LABEL_23:
  v28 = v0[1].super.isa;

  return v28();
}

{
  v1 = *(*v0 + 304);
  *(*v0 + 504) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = [*(v0 + 488) uiManager];
  *(v0 + 512) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0 + 208;
    v4 = *(v0 + 464);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 520) = isa;
    *(v0 + 208) = v0;
    *(v0 + 216) = LACRatchetFlowManager.transition(to:with:style:);
    v6 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_56;
    *(v0 + 432) = v6;
    [v2 transitionToState:v4 withOptions:isa completion:v0 + 400];
LABEL_5:

    return MEMORY[0x1EEE6DEC8](v3);
  }

  v7 = [*(v0 + 488) presenter];
  *(v0 + 536) = v7;
  if (v7)
  {
    v8 = v7;
    v3 = v0 + 144;
    v9 = *(v0 + 480);
    *(v0 + 144) = v0;
    *(v0 + 152) = LACRatchetFlowManager.transition(to:with:style:);
    v10 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_53;
    *(v0 + 432) = v10;
    [v8 presentWithStyle:v9 animated:1 completion:v0 + 400];
    goto LABEL_5;
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(*v0 + 240);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 520);
  swift_unknownObjectRelease();

  v2 = [*(v0 + 488) presenter];
  *(v0 + 536) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 480);
    *(v0 + 144) = v0;
    *(v0 + 152) = LACRatchetFlowManager.transition(to:with:style:);
    v5 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_53;
    *(v0 + 432) = v5;
    [v3 presentWithStyle:v4 animated:1 completion:v0 + 400];

    return MEMORY[0x1EEE6DEC8](v0 + 144);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = *(*v0 + 176);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 368);
  *(*v0 + 568) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 592) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 584);
  swift_unknownObjectRelease();

  v2 = [*(v0 + 488) presenter];
  *(v0 + 600) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 480);
    *(v0 + 16) = v0;
    *(v0 + 24) = LACRatchetFlowManager.transition(to:with:style:);
    v5 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_46;
    *(v0 + 432) = v5;
    [v3 presentWithStyle:v4 animated:1 completion:v0 + 400];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 608) = v1;
  if (v1)
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v2 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACRatchetFlowManager.transition(to:with:style:)(uint64_t a1)
{
  v2 = *(v1 + 584);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v1 + 8);

  return v3();
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

{
  v2 = *(v1 + 520);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v1 + 8);

  return v3();
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

{
  v2 = *(v1 + 560);
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_41(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t LACPreboardStorageRequest.acl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl + 8));
  return v1;
}

id LACPreboardStorageRequest.init(for:contextID:options:)(id result, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl] = xmmword_1B0343300;
  v4 = static LACPreboardStorageRequest.identifier + 1;
  if (static LACPreboardStorageRequest.identifier == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    ++static LACPreboardStorageRequest.identifier;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_identifier] = v4;
    v8 = [objc_opt_self() currentConnection];
    v9 = [objc_allocWithZone(LACXPCClient) initWithConnection_];

    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_client] = v9;
    v10 = OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_contextID;
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    (*(v12 + 16))(&v3[v10], a2, v11);
    (*(v12 + 56))(&v3[v10], 0, 1, v11);
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_domain] = 0;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_key] = v7;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_options] = a3;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for LACPreboardStorageRequest(0);
    v13 = objc_msgSendSuper2(&v14, sel_init);
    (*(v12 + 8))(a2, v11);
    return v13;
  }

  return result;
}

uint64_t type metadata accessor for LACPreboardStorageRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACPreboardStorageRequest;
  if (!type metadata singleton initialization cache for LACPreboardStorageRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id LACPreboardStorageRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardStorageRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACPreboardStorageRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for LACPreboardStorageRequest(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double LACPreboardController.contextProvider.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + v3, &v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
  if (*(&v8 + 1) == 1)
  {
    v4 = outlined destroy of AsyncStream<()>.Continuation?(&v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
    (*(**(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory) + 88))(v4);
    outlined init with copy of (String, Any)(a1, &v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACACMContextProviding??(&v7, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

id LACPreboardController.syncDispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue;
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1B27229A0](0xD000000000000011, 0x80000001B0357230);
    v6 = [v4 createUserInitiatedSerialQueueWithIdentifier_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *LACPreboardController.__allocating_init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(v16 + 24) = xmmword_1B0342B10;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult] = 0;
  v17 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
  *v17 = 0;
  v17[8] = -1;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue] = 0;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory] = a1;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a2, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher]);
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a3, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier]);
  v18 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  *v18 = a4;
  *(v18 + 1) = a5;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a6, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager]);
  v19 = a7;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a7, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider]);
  v29.receiver = v15;
  v29.super_class = v7;

  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v29, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8];
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 16);
  v24 = v20;
  swift_unknownObjectRetain();
  v23(v20, &protocol witness table for LACPreboardController, ObjectType, v21);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v24;
}

char *LACPreboardController.init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(v16 + 24) = xmmword_1B0342B10;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult] = 0;
  v17 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
  *v17 = 0;
  v17[8] = -1;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue] = 0;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory] = a1;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a2, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher]);
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a3, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier]);
  v18 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  *v18 = a4;
  *(v18 + 1) = a5;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a6, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager]);
  v19 = a7;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a7, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider]);
  v29.receiver = v7;
  v29.super_class = ObjectType;

  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v29, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8];
  v22 = swift_getObjectType();
  v23 = *(v21 + 16);
  v24 = v20;
  swift_unknownObjectRetain();
  v23(v20, &protocol witness table for LACPreboardController, v22, v21);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v24;
}

uint64_t LACPreboardController.batchOptions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v41 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = LACPreboardController.syncDispatchQueue.getter();
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGSgMd, &_sSaySo8NSNumberCGSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  result = v43;
  if (!v43)
  {
    v39 = v5;
    v36 = v3;
    v37 = v2;
    v17 = dispatch_semaphore_create(0);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v38 = v6;
    v20 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24];
    v19 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32];
    v40 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
    __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider], v20);
    v21 = *(v19 + 8);
    swift_unknownObjectRetain();
    v22 = v21(v20, v19);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v1;
    *(v23 + 40) = v40;
    *(v23 + 56) = v22;
    *(v23 + 64) = v17;
    v24 = v1;
    v25 = v17;
    v26 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #2 in LACPreboardController.batchOptions.getter, v23);
    outlined destroy of AsyncStream<()>.Continuation?(v14, &_sScPSgMd, &_sScPSgMR);
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v41 + 8);
    v28 = v9;
    v29 = v38;
    v27(v28, v38);
    LOBYTE(v22) = MEMORY[0x1B2722D30](v11);
    v30 = (v27)(v11, v29);
    if (v22)
    {
      v31 = LACLogPreboard(v30);
      Logger.init(_:)();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1B0233000, v32, v33, "batchOptions semaphore timed out.", v34, 2u);
        MEMORY[0x1B27246A0](v34, -1, -1);
      }

      (*(v36 + 8))(v39, v37);
      MEMORY[0x1B2722C20](v26, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v35 = *&v24[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult];
    if (v35)
    {

      return v35;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t LACPreboardController.useCase.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a8;
  ObjectType = swift_getObjectType();
  v14 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = closure #2 in LACPreboardController.batchOptions.getter;

  return v14(a7, ObjectType, a6);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](closure #2 in LACPreboardController.batchOptions.getter, 0, 0);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);

    v5 = v8;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult) = v5;

  OS_dispatch_semaphore.signal()();
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #2 in LACPreboardController.batchOptions.getter(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, Any)(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_sScPSgMd, &_sScPSgMR);
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

id LACPreboardController.isFeatureSupported.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 featureFlagPreboardEnabled];

  return v1;
}

id LACPreboardController.isRequired.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 featureFlagPreboardEnabled];

  if (!v10)
  {
    v22 = LACLogPreboard(v11);
    Logger.init(_:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7269757165527369, 0xEA00000000006465, &v30);
      _os_log_impl(&dword_1B0233000, v23, v24, "%s - feature is not supported", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B27246A0](v26, -1, -1);
      MEMORY[0x1B27246A0](v25, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v12 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v13 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v12);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = LACLogPreboard(v14);
  Logger.init(_:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7269757165527369, 0xEA00000000006465, &v30);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_1B0233000, v16, v17, "%s use case: %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B27246A0](v19, -1, -1);
    MEMORY[0x1B27246A0](v18, -1, -1);
  }

  (*(v2 + 8))(v7, v1);
  if (v14 != 4)
  {
    if (v14 == 3)
    {
      v20 = [v8 sharedInstance];
      v21 = [v20 featureFlagPreboardUPPEnabled];
      goto LABEL_12;
    }

    return 0;
  }

  v20 = [v8 sharedInstance];
  v21 = [v20 featureFlagPreboardDeveloperModeEnabled];
LABEL_12:
  v28 = v21;

  return v28;
}

Swift::String_optional __swiftcall LACPreboardController.uppTeamName()()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 24);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager), v1);
  v3 = (*(v2 + 8))(v1, v2);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LACPreboardController.launchPreboard()()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = v49 - v7;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v49 - v16;
  v18 = LACPreboardController.syncDispatchQueue.getter();
  v56 = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v57 == 1)
  {
    v52 = v1;
    v20 = dispatch_semaphore_create(0);
    v21 = type metadata accessor for TaskPriority();
    v22 = *(v21 - 8);
    v50 = *(v22 + 56);
    v51 = v21;
    v49[1] = v22 + 56;
    v50(v17, 1, 1);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v2;
    v23[5] = v20;
    v24 = v2;
    v25 = v20;
    v26 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #2 in LACPreboardController.launchPreboard(), v23);
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v9 + 8);
    v28 = v12;
    v29 = v25;
    v27(v28, v8);
    LOBYTE(v25) = MEMORY[0x1B2722D30](v14);
    v30 = (v27)(v14, v8);
    v31 = MEMORY[0x1E69E7CA8];
    if (v25)
    {
      v32 = LACLogPreboard(v30);
      v33 = v53;
      Logger.init(_:)();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B0233000, v34, v35, "Launch semaphore timed out, rebooting now.", v36, 2u);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      (*(v54 + 8))(v33, v55);
      MEMORY[0x1B2722C20](v26, v31 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      (v50)(v17, 1, 1, v51);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v24;
      v38 = v24;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #3 in LACPreboardController.launchPreboard(), v37);

      v39 = specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000013, 0x80000001B0356ED0);
      v40 = &v38[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
      v41 = *&v38[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
      *v40 = v39;
      v42 = v40[8];
      v40[8] = 1;
      outlined consume of Result<(), Error>?(v41, v42);
    }

    MEMORY[0x1EEE9AC00](v30);
    v49[-2] = v24;
    v44 = v43;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v45 = LACLogPreboard(v19);
    Logger.init(_:)();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1B0233000, v46, v47, "LAPreboard is already launching", v48, 2u);
      MEMORY[0x1B27246A0](v48, -1, -1);
    }

    (*(v54 + 8))(v6, v55);
    specialized static LACPreboardErrorBuilder.error(code:message:)(1, 0xD00000000000001FLL, 0x80000001B0356EB0);
    swift_willThrow();
  }
}

uint64_t closure #2 in LACPreboardController.launchPreboard()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = closure #2 in LACPreboardController.launchPreboard();

  return LACPreboardController.launchPreboard()();
}

uint64_t closure #2 in LACPreboardController.launchPreboard()()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #2 in LACPreboardController.launchPreboard();
  }

  else
  {
    v2 = closure #2 in LACPreboardController.launchPreboard();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v2 = *v1;
  *v1 = 0;
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  outlined consume of Result<(), Error>?(v2, v3);
  OS_dispatch_semaphore.signal()();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #2 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v2 = v1[8];
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Synchronous launch failed with %@, rebooting now.", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v1[8];
  v14 = v1[5];
  v13 = v1[6];
  v15 = v1[4];

  (*(v14 + 8))(v13, v15);
  v16 = v1[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v17 = *v16;
  *v16 = v12;
  v18 = *(v16 + 8);
  *(v16 + 8) = 1;
  outlined consume of Result<(), Error>?(v17, v18);
  OS_dispatch_semaphore.signal()();

  v19 = v1[1];

  return v19();
}

uint64_t LACPreboardController.launchPreboard()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
}

{
  v1 = LACPreboardController.isRequired.getter();
  if (v1)
  {
    v2 = (v0[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v3);
    v15 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = LACPreboardController.launchPreboard();

    return v15(v3, v4);
  }

  else
  {
    v7 = LACLogPreboard(v1);
    Logger.init(_:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B0233000, v8, v9, "Unable to launch preboard as the feature is not supported", v10, 2u);
      MEMORY[0x1B27246A0](v10, -1, -1);
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v11, v13);
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = LACPreboardController.launchPreboard();

    return LACPreboardController.terminate()();
  }
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v3 = swift_task_alloc();
    *(v2 + 80) = v3;
    *v3 = v2;
    v3[1] = LACPreboardController.launchPreboard();

    return LACPreboardController.terminate()();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
  }
}

{
  specialized static LACPreboardErrorBuilder.notSupportedError()();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = LACPreboardController.launchPreboard();
  }

  else
  {
    v2 = LACPreboardController.launchPreboard();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACPreboardController.launchPreboard()(uint64_t a1)
{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Did launch preboard", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v1[6];
  v7 = v1[3];
  v8 = v1[4];

  (*(v8 + 8))(v6, v7);

  v9 = v1[1];

  return v9();
}

{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t closure #3 in LACPreboardController.launchPreboard()()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = closure #3 in LACPreboardController.launchPreboard();

  return LACPreboardController.terminate()();
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #3 in LACPreboardController.launchPreboard(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #3 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Device reboot failed", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 16);

  (*(v7 + 8))(v6, v8);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t LACPreboardController.terminate()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.terminate(), 0, 0);
}

{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 featureFlagPreboardEnabled];

  if (v2)
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = LACPreboardController.terminate();

    return LACPreboardController.finishPreboard(success:reason:)(0, 0xD000000000000016, 0x80000001B0356EF0);
  }

  else
  {
    v6 = LACLogPreboard(v3);
    Logger.init(_:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B0233000, v7, v8, "Unable to terminate preboard as the feature is not supported", v9, 2u);
      MEMORY[0x1B27246A0](v9, -1, -1);
    }

    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];

    (*(v11 + 8))(v10, v12);
    specialized static LACPreboardErrorBuilder.notSupportedError()();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.terminate(), 0, 0);
  }
}

uint64_t LACPreboardController.terminate()(uint64_t a1)
{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Preboard terminated", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v1[6];
  v7 = v1[3];
  v8 = v1[4];

  (*(v8 + 8))(v6, v7);

  v9 = v1[1];

  return v9();
}

void closure #4 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v2 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult);
  v3 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult + 8);
  if (v3 == 255)
  {
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000017, 0x80000001B0357210);
    v5 = *v1;
    v4 = *(v1 + 8);
    v6 = 1;
  }

  else
  {
    v4 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult + 8);
    v5 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult);
    v6 = v4;
  }

  *v1 = 0;
  *(v1 + 8) = -1;
  outlined copy of Result<(), Error>?(v2, v3);
  outlined consume of Result<(), Error>?(v5, v4);
  if (v6)
  {
    swift_willThrow();
  }
}

uint64_t @objc closure #1 in LACPreboardController.launchPreboard()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACPreboardController.launchPreboard();

  return LACPreboardController.launchPreboard()();
}

uint64_t @objc closure #1 in LACPreboardController.launchPreboard()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t LACPreboardController.enableCurrentUseCase(withPasscode:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for String.Encoding();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
}

uint64_t LACPreboardController.enableCurrentUseCase(withPasscode:)(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 160);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24];
    v10 = *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32];
    __swift_project_boxed_opaque_existential_0(&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider], v9);
    *(v8 + 4) = (*(v10 + 8))(v9, v10);

    _os_log_impl(&dword_1B0233000, v5, v6, "Enabling protected option for usecase: %ld", v8, 0xCu);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  else
  {

    v5 = *(v1 + 160);
  }

  v11 = *(v1 + 248);
  v12 = *(v1 + 192);
  v13 = *(v1 + 200);

  v14 = *(v13 + 8);
  *(v1 + 256) = v14;
  *(v1 + 264) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = LACPreboardController.isRequired.getter();
  if ((v15 & 1) == 0)
  {
    v29 = LACLogPreboard(v15);
    Logger.init(_:)();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B0233000, v30, v31, "Unable to enable protected option as the feature is not supported", v32, 2u);
      MEMORY[0x1B27246A0](v32, -1, -1);
    }

    v33 = *(v1 + 208);
    v34 = *(v1 + 192);

    v14(v33, v34);
    specialized static LACPreboardErrorBuilder.notSupportedError()();
    goto LABEL_12;
  }

  v17 = *(v1 + 176);
  v16 = *(v1 + 184);
  v18 = *(v1 + 168);
  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;
  *(v1 + 272) = v19;
  *(v1 + 280) = v20;
  v22 = (*(v17 + 8))(v16, v18);
  if (v21 >> 60 == 15)
  {
    v23 = LACLogPreboard(v22);
    Logger.init(_:)();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B0233000, v24, v25, "Unable to encode passcode", v26, 2u);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    v27 = *(v1 + 216);
    v28 = *(v1 + 192);

    v14(v27, v28);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000019, 0x80000001B0356F10);
LABEL_12:
    swift_willThrow();
LABEL_13:

    v35 = *(v1 + 8);

    return v35();
  }

  LACPreboardController.contextProvider.getter(v1 + 56);
  if (!*(v1 + 80))
  {
    v47 = outlined destroy of AsyncStream<()>.Continuation?(v1 + 56, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v48 = LACLogPreboard(v47);
    Logger.init(_:)();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B0233000, v49, v50, "Unable to instantiate ACM helper", v51, 2u);
      MEMORY[0x1B27246A0](v51, -1, -1);
    }

    v52 = *(v1 + 224);
    v53 = *(v1 + 192);

    v14(v52, v53);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD00000000000001DLL, 0x80000001B0356F30);
    swift_willThrow();
    outlined consume of Data?(v19, v21);
    goto LABEL_13;
  }

  outlined init with take of LACPreboardUseCaseProviding((v1 + 56), v1 + 16);
  v37 = *(v1 + 40);
  v38 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v37);
  v39 = (*(v38 + 8))(v37, v38);
  *(v1 + 288) = v39;
  *(v1 + 296) = v40;
  if (v40 >> 60 == 15)
  {
    v41 = LACLogPreboard(v39);
    Logger.init(_:)();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B0233000, v42, v43, "Unable to get externalized context", v44, 2u);
      MEMORY[0x1B27246A0](v44, -1, -1);
    }

    v45 = *(v1 + 232);
    v46 = *(v1 + 192);

    v14(v45, v46);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000021, 0x80000001B0356F50);
    swift_willThrow();
    outlined consume of Data?(v19, v21);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    goto LABEL_13;
  }

  v54 = v39;
  v55 = v40;
  v56 = (*(v1 + 160) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier);
  v57 = v56[3];
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v57);
  (*(v58 + 8))(v19, v21, v54, v55, v57, v58);
  v59 = (*(v1 + 160) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider);
  v60 = v59[3];
  v61 = v59[4];
  __swift_project_boxed_opaque_existential_0(v59, v60);
  v62 = (*(v61 + 8))(v60, v61);
  if (v62 == 4)
  {
    v63 = swift_task_alloc();
    *(v1 + 304) = v63;
    *v63 = v1;
    v63[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);

    return LACPreboardController.setEnvironmentVariable()();
  }

  else if (v62 == 3)
  {
    v64 = swift_task_alloc();
    *(v1 + 320) = v64;
    *v64 = v1;
    v64[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);

    return LACPreboardController.installProfile()();
  }

  else
  {
    if (v62 == -1)
    {
      _StringGuts.grow(_:)(24);
      *(v1 + 120) = 0xE000000000000000;
      *(v1 + 112) = 0;
      MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B0356FC0);
      v65 = v59[3];
      v66 = v59[4];
      __swift_project_boxed_opaque_existential_0(v59, v65);
      *(v1 + 136) = (*(v66 + 8))(v65, v66);
    }

    else
    {
      _StringGuts.grow(_:)(24);
      *(v1 + 104) = 0xE000000000000000;
      *(v1 + 96) = 0;
      MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B0356FC0);
      v67 = v59[3];
      v68 = v59[4];
      __swift_project_boxed_opaque_existential_0(v59, v67);
      *(v1 + 128) = (*(v68 + 8))(v67, v68);
    }

    type metadata accessor for LACPreboardUseCase(0);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Preboard completed", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v1[34];
  v6 = v1[35];
  v8 = v1[32];
  v9 = v1[30];
  v10 = v1[24];
  outlined consume of Data?(v1[36], v1[37]);
  outlined consume of Data?(v7, v6);

  v8(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v11 = v1[1];

  return v11();
}

uint64_t LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 336) = v3;
    *v3 = v2;
    v3[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);

    return LACPreboardController.finishPreboard(success:reason:)(1, 0xD000000000000025, 0x80000001B0356FE0);
  }
}

{
  v2 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 336) = v3;
    *v3 = v2;
    v3[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);

    return LACPreboardController.finishPreboard(success:reason:)(1, 0xD000000000000025, 0x80000001B0356FE0);
  }
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = LACPreboardController.enableCurrentUseCase(withPasscode:);
  }

  else
  {
    v2 = LACPreboardController.enableCurrentUseCase(withPasscode:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t LACPreboardController.setEnvironmentVariable()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.setEnvironmentVariable(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v9 = (*(v2 + 56) + **(v2 + 56));
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = LACPreboardController.setEnvironmentVariable();

  return v9(v6, ObjectType, v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = LACPreboardController.setEnvironmentVariable();
  }

  else
  {
    v2 = LACPreboardController.setEnvironmentVariable();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t LACPreboardController.setEnvironmentVariable()(uint64_t a1)
{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Environment variable set succeeded", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v1[9];
  v7 = v1[6];
  v8 = v1[7];

  (*(v8 + 8))(v6, v7);

  v9 = v1[1];

  return v9();
}

{
  v2 = v1[11];
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Environment variable set failed with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v1[11];
  v13 = v1[8];
  v14 = v1[6];
  v15 = v1[7];

  (*(v15 + 8))(v13, v14);
  _StringGuts.grow(_:)(46);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD00000000000002CLL, 0x80000001B03571C0);
  v1[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  specialized static LACPreboardErrorBuilder.error(code:message:)(1, v1[2], v1[3]);

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t LACPreboardController.installProfile()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.installProfile(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 24);
  v3 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager), v2);
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = LACPreboardController.installProfile();

  return v9(v6, v2, v3);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = LACPreboardController.installProfile();
  }

  else
  {
    v2 = LACPreboardController.installProfile();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t LACPreboardController.installProfile()(uint64_t a1)
{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "UPP install succeeded", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v1[9];
  v7 = v1[6];
  v8 = v1[7];

  (*(v8 + 8))(v6, v7);

  v9 = v1[1];

  return v9();
}

{
  v2 = v1[11];
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "UPP install failed with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v1[11];
  v13 = v1[8];
  v14 = v1[6];
  v15 = v1[7];

  (*(v15 + 8))(v13, v14);
  _StringGuts.grow(_:)(33);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD00000000000001FLL, 0x80000001B03571F0);
  v1[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  specialized static LACPreboardErrorBuilder.error(code:message:)(3, v1[2], v1[3]);

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t LACPreboardController.finishPreboard(success:reason:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 152) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.finishPreboard(success:reason:), 0, 0);
}

uint64_t LACPreboardController.finishPreboard(success:reason:)(uint64_t a1)
{
  v33 = v1;
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v30 = *(v1 + 80);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v9 = *(v1 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v32);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_1B0233000, v3, v4, "Finishing Preboard with reason: %s success: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B27246A0](v11, -1, -1);
    MEMORY[0x1B27246A0](v10, -1, -1);

    v12 = *(v6 + 8);
    v12(v30, v5);
  }

  else
  {
    v13 = *(v1 + 80);
    v14 = *(v1 + 40);
    v15 = *(v1 + 48);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v16 = *(v1 + 32);
  v17 = *(v1 + 152);
  *(v1 + 88) = v12;
  *(v1 + 96) = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetSuccess";
  *(v1 + 104) = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetFailure";
  if (v17)
  {
    v18 = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetSuccess";
  }

  else
  {
    v18 = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetFailure";
  }

  v19 = v18;
  v20 = [objc_opt_self() sharedInstance];
  [v20 postNotification_];

  v21 = *(v16 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8);
  ObjectType = swift_getObjectType();
  v23 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider;
  *(v1 + 112) = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider;
  v24 = (v16 + v23);
  v25 = *(v16 + v23 + 24);
  v26 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v27 = (*(v26 + 8))(v25, v26);
  v31 = (*(v21 + 40) + **(v21 + 40));
  v28 = swift_task_alloc();
  *(v1 + 120) = v28;
  *v28 = v1;
  v28[1] = LACPreboardController.finishPreboard(success:reason:);

  return v31(v27, ObjectType, v21);
}

{
  v2 = LACLogPreboard(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Successfully cleaned storage", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = (*(v1 + 32) + *(v1 + 112));
  (*(v1 + 88))(*(v1 + 72), *(v1 + 40));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v7);
  v12 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  *(v1 + 136) = v9;
  *v9 = v1;
  v9[1] = LACPreboardController.finishPreboard(success:reason:);
  v10 = *(v1 + 152);

  return v12(v10, v7, v8);
}

{
  v2 = *(v1 + 128);
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 128);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0233000, v5, v6, "Unable to clean storage with error: %@", v9, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v10, -1, -1);
    MEMORY[0x1B27246A0](v9, -1, -1);
  }

  else
  {
  }

  v13 = (*(v1 + 32) + *(v1 + 112));
  (*(v1 + 88))(*(v1 + 64), *(v1 + 40));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v14);
  v19 = (*(v15 + 16) + **(v15 + 16));
  v16 = swift_task_alloc();
  *(v1 + 136) = v16;
  *v16 = v1;
  v16[1] = LACPreboardController.finishPreboard(success:reason:);
  v17 = *(v1 + 152);

  return v19(v17, v14, v15);
}

{
  v2 = *(v1 + 144);
  v3 = LACLogPreboard(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Unable to complete boot mode with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = (v1 + 104);
  v13 = *(v1 + 88);
  v14 = *(v1 + 56);
  v15 = *(v1 + 40);
  if (*(v1 + 152))
  {
    v12 = (v1 + 96);
  }

  v16 = v5;
  v17 = *v12;

  v13(v14, v15);
  swift_willThrow();

  v18 = *(v1 + 8);

  return v18();
}

uint64_t LACPreboardController.finishPreboard(success:reason:)()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = LACPreboardController.finishPreboard(success:reason:);
  }

  else
  {
    v2 = LACPreboardController.finishPreboard(success:reason:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = LACPreboardController.finishPreboard(success:reason:);
  }

  else
  {
    v2 = LACPreboardController.finishPreboard(success:reason:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = (v0 + 104);
  if (*(v0 + 152))
  {
    v1 = (v0 + 96);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:);

  return LACPreboardController.enableCurrentUseCase(withPasscode:)(v5, v7);
}

uint64_t @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t @objc closure #1 in LACPreboardController.terminate()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACPreboardController.terminate();

  return LACPreboardController.terminate()();
}

id LACPreboardController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACPreboardController.acmContext(for:)()
{
  LACPreboardController.contextProvider.getter(v9);
  v0 = v10;
  if (v10)
  {
    v1 = v11;
    v2 = __swift_project_boxed_opaque_existential_0(v9, v10);
    v3 = *(v0 - 8);
    MEMORY[0x1EEE9AC00](v2);
    v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v6 = (*(v1 + 8))(v0, v1);
    (*(v3 + 8))(v5, v0);
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    return 0;
  }

  return v6;
}

uint64_t protocol witness for LACPreboardStorageDelegate.acmContext(for:) in conformance LACPreboardController()
{
  LACPreboardController.contextProvider.getter(v9);
  v0 = v10;
  if (v10)
  {
    v1 = v11;
    v2 = __swift_project_boxed_opaque_existential_0(v9, v10);
    v3 = *(v0 - 8);
    MEMORY[0x1EEE9AC00](v2);
    v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v6 = (*(v1 + 8))(v0, v1);
    (*(v3 + 8))(v5, v0);
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    return 0;
  }

  return v6;
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

void partial apply for closure #1 in LACPreboardController.launchPreboard()(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v3 = *(v2 + 8);
  if (v3 == 255)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  *a1 = v3 == 255;
}

uint64_t partial apply for closure #2 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #2 in LACPreboardController.launchPreboard()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #3 in LACPreboardController.launchPreboard()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #3 in LACPreboardController.launchPreboard()();
}

void outlined consume of Result<(), Error>?(void *result, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<(), Error>(result, a2 & 1);
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.terminate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.terminate()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)(v2, v3, v4);
}

uint64_t objectdestroy_25Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.launchPreboard()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.launchPreboard()(v2, v3);
}

uint64_t outlined assign with take of LACACMContextProviding??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined copy of Result<(), Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<(), Error>(result, a2 & 1);
  }

  return result;
}

id outlined copy of Result<(), Error>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id LACEvaluationRequestCompoundProcessor.__allocating_init(processors:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id LACEvaluationRequestCompoundProcessor.init(processors:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void LACEvaluationRequestCompoundProcessor.processRequest(_:configuration:completion:)(void *a1, id a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  if (v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex + 8] == 1)
  {
    v9 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v20 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
      }

      else
      {
        v20 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = a2;
      v22 = MEMORY[0x1B2722F00](v20);
      a2 = v21;
      if (v22)
      {
        goto LABEL_4;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v10 = [a2 nextProcessor];
      *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = v10;
      swift_unknownObjectRelease();

      LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(a1, 0, a3, a4);
      return;
    }

    v23 = [objc_opt_self() resultWithNext_];
    a3();
  }

  else
  {
    v11 = objc_opt_self();
    _StringGuts.grow(_:)(17);

    v12 = [v4 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    MEMORY[0x1B2722A80](v13, v15);

    MEMORY[0x1B2722A80](0x7973756220, 0xE500000000000000);
    v16 = MEMORY[0x1B27229A0](0x6F737365636F7250, 0xEA00000000002072);

    v17 = [v11 errorWithCode:-1000 debugDescription:v16];

    v18 = objc_opt_self();
    v19 = _convertErrorToNSError(_:)();
    v23 = [v18 resultWithFailure_];

    (a3)(v23);
  }
}

uint64_t LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex + 8))
  {
    return (a3)(a2);
  }

  v8 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(a1, a2, v8, v4, v11, a3, a4);
}

id LACEvaluationRequestCompoundProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACEvaluationRequestCompoundProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, v4 < 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v7 = v4;
      }

      MEMORY[0x1B2722F00](v7);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1B2722F00](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [LACEvaluationRequestProcessor] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo29LACEvaluationRequestProcessor_pGMd, &_sSaySo29LACEvaluationRequestProcessor_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A]);
  }

  return result;
}

id LACMechanismTree.init(children:isAndNode:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for LACMechanismTree(v3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithChildren:isa isAndNode:a2 & 1];

  return v5;
}

{
  *(v2 + OBJC_IVAR___LACMechanismTree_children) = a1;
  *(v2 + OBJC_IVAR___LACMechanismTree_isAnd) = a2;
  *(v2 + OBJC_IVAR___LACMechanismTree_value) = -1;
  v4.super_class = LACMechanismTree;
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACMechanismTree.init(value:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithValue_];
}

{
  *(v1 + OBJC_IVAR___LACMechanismTree_children) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR___LACMechanismTree_isAnd) = 0;
  *(v1 + OBJC_IVAR___LACMechanismTree_value) = a1;
  v3.super_class = LACMechanismTree;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t LACMechanismTree.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(38);
  swift_getObjectType();
  v2 = _typeName(_:qualified:)();

  v15 = v2;
  MEMORY[0x1B2722A80](0x3A65756C6176203ALL, 0xE900000000000020);
  [v0 value];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v3);

  MEMORY[0x1B2722A80](0x72646C696863202CLL, 0xEC000000203A6E65);
  v4 = [v0 children];
  v5 = type metadata accessor for LACMechanismTree(v4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = MEMORY[0x1B2722B60](v6, v5);
  v9 = v8;

  MEMORY[0x1B2722A80](v7, v9);

  MEMORY[0x1B2722A80](0x3A646E417369202CLL, 0xE900000000000020);
  v10 = [v1 isAnd];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v12, v13);

  return v15;
}