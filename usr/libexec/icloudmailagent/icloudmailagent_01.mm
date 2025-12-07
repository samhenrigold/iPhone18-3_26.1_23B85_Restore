void specialized MCCSecretAgentService.isModelReady(completion:)(uint64_t a1, void *aBlock, const char *a3, void (*a4)(uint64_t, void *))
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.secretAgentService);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 2u);
  }

  v12 = *(a1 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  a4(v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.isCategorizationSupported(forLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.secretAgentService);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "isCategorizationSupported MCCSecretAgentService called", v7, 2u);
  }

  type metadata accessor for LocaleHelper();
  v8 = static LocaleHelper.isCategorizationSupported(forLocale:)();
  if (v8 == 2)
  {
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 initWithDomain:v10 code:-1 userInfo:0];

    v12 = v11;
    v14 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v14);
  }

  else
  {
    v13 = *(a3 + 16);

    v13(a3, v8 & 1, 0);
  }
}

uint64_t specialized MCCSecretAgentService.syncRecategorizationRules(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.secretAgentService);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "MCCSecretAgentService syncRecategorizationRules is called", v12, 2u);
  }

  v13 = *(a2 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a1;
  v16 = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.syncToWeb(rules:), v15);

  return (*(a3 + 16))(a3, 1, 0);
}

uint64_t specialized MCCSecretAgentService.clearAllUserOverrides(withTimestamp:completion:)(Swift::Double a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.secretAgentService);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "MCCSecretAgentService clearAllUserOverrides called", v8, 2u);
  }

  CategorizationSyncManager.clearAllUserOverrides(timestamp:)(a1);
  v9 = *(a3 + 16);

  return v9(a3, 1, 0);
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.syncToWeb(rules:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return closure #1 in CategorizationSyncManager.syncToWeb(rules:)(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
  __chkstk_darwin(v10 - 8);
  v68 = &v57 - v11;
  v70 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  isa = v70[-1].isa;
  __chkstk_darwin(v70);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
  v69 = *(v16 - 8);
  __chkstk_darwin(v16);
  v67 = &v57 - v17;
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.sync);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received new old category timestamps, filtering out Primary inbox", v21, 2u);
  }

  v22 = specialized _NativeDictionary.filter(_:)(a1._rawValue);
  if (v22[2])
  {
    v59 = v16;
    v60 = v6;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Received new old category timestamps, delaying them to 5 seconds", v25, 2u);
    }

    v58 = *&v2[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock];
    [v58 lock];
    v26 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend;
    swift_beginAccess();
    if (*&v2[v26])
    {
      v28 = CategorizationSyncManager.newOldValueToSend.modify(v71);
      if (*v27)
      {
        v29 = v27;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = *v29;
        *v29 = 0x8000000000000000;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v72);

        *v29 = v72;
      }

      else
      {
      }

      (v28)(v71, 0);
    }

    else
    {
      *&v2[v26] = v22;
    }

    v34 = v2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v71[0] = v38;
      *v37 = 136315138;
      v72 = *&v2[v26];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGSgMd, &_sSDySSSo8NSNumberCGSgMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v71);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updated set of category timestamps: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v42 = v60;
    v60 = v34;
    v57 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable;
    if (*&v34[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable])
    {

      AnyCancellable.cancel()();
    }

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    Just.init(_:)();
    v43 = v63;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v44 = isa;
    v45 = v68;
    (*(isa + 7))(v68, 1, 1, v70);
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v46 = v61;
    v47 = v9;
    v48 = v9;
    v49 = v62;
    (*(v61 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v62);
    v50 = static OS_dispatch_queue.global(qos:)();
    (*(v46 + 8))(v47, v49);
    v71[0] = v50;
    v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v51 - 8) + 56))(v42, 1, 1, v51);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Just<String> and conformance Just<A>, &_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR, &protocol conformance descriptor for Just<A>);
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v52 = v67;
    v53 = v65;
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    outlined destroy of TaskPriority?(v42, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    outlined destroy of TaskPriority?(v45, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
    (*(v44 + 1))(v43, v70);
    (*(v64 + 8))(v15, v53);
    swift_allocObject();
    v54 = v60;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Delay<Just<String>, OS_dispatch_queue> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.Delay<A, B>);
    v55 = v59;
    v56 = Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v52, v55);
    *&v54[v57] = v56;

    [v58 unlock];
  }

  else
  {

    v70 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v70, v31, "Received Primary inbox, ignoring it, there is no UI for it.", v32, 2u);
    }

    v33 = v70;
  }
}

uint64_t CategorizationSyncManager.notifyRuleListeners(overrides:)(unint64_t a1, void *a2, SEL *a3, char *a4)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.sync);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Nothing to notify", v23, 2u);
    }

    return 1;
  }

LABEL_21:
  v18 = a4;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  a4 = v18;
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_3:
  format = a4;
  v6 = *(v4 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
  [v6 lock];
  v7 = CategorizationSyncManager.eligibleListeners(of:)(a2);
  v4 = v7;
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
LABEL_5:
      v9 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        a2 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v12 = [v10 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
        if (swift_dynamicCast())
        {
          type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v31 *a3];

          swift_unknownObjectRelease();
        }

        ++v9;
      }

      while (v11 != v8);

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
        _os_log_impl(&_mh_execute_header, v15, v16, format, v17, 2u);
      }

      [v6 unlock];
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.sync);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "No listeners to handle overrides", v28, 2u);
  }

  [v6 unlock];
  return 0;
}

Swift::Bool __swiftcall CategorizationSyncManager.notifyNewOldListeners(categories:)(Swift::OpaquePointer categories)
{
  if (!*(categories._rawValue + 2))
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.sync);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Nothing to notify", v33, 2u);
    }

    return 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
  [v2 lock];
  v3 = CategorizationSyncManager.eligibleListeners(of:)(2);
  if (v3 >> 62)
  {
    while (2)
    {
      v39 = v3;
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v39;
      if (v4)
      {
LABEL_4:
        v44 = v2;
        v5 = 0;
        v2 = (v3 & 0xC000000000000001);
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        v7 = v3 + 32;
        v47 = v3 & 0xC000000000000001;
        v48 = v4;
        v45 = v3 + 32;
        v46 = v3 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
LABEL_6:
          if (v2)
          {
            v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_41;
            }

            v3 = *(v7 + 8 * v5);
          }

          v8 = v3;
          v9 = __OFADD__(v5++, 1);
          if (v9)
          {
            goto LABEL_40;
          }

          v10 = [v3 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
          if (swift_dynamicCast())
          {
            break;
          }

          if (v5 == v4)
          {
            goto LABEL_32;
          }
        }

        v49 = v5;
        v50 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
        v3 = static _DictionaryStorage.copy(original:)();
        v11 = v3;
        v12 = 0;
        v13 = 1 << *(categories._rawValue + 32);
        v14 = *(categories._rawValue + 8);
        if (v13 < 64)
        {
          v15 = ~(-1 << v13);
        }

        else
        {
          v15 = -1;
        }

        v16 = v15 & v14;
        v17 = (v13 + 63) >> 6;
        v51 = v3 + 64;
        if ((v15 & v14) != 0)
        {
          while (1)
          {
            v18 = __clz(__rbit64(v16));
            v16 &= v16 - 1;
LABEL_21:
            v21 = v18 | (v12 << 6);
            v22 = (*(categories._rawValue + 6) + 16 * v21);
            v23 = *v22;
            v24 = v22[1];
            v25 = *(*(categories._rawValue + 7) + 8 * v21);
            v2 = objc_allocWithZone(NSNumber);

            v3 = [v2 initWithDouble:v25];
            *(v51 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            v26 = (v11[6] + 16 * v21);
            *v26 = v23;
            v26[1] = v24;
            *(v11[7] + 8 * v21) = v3;
            v27 = v11[2];
            v9 = __OFADD__(v27, 1);
            v28 = v27 + 1;
            if (v9)
            {
              break;
            }

            v11[2] = v28;
            if (!v16)
            {
              goto LABEL_16;
            }
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          continue;
        }

LABEL_16:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v12 >= v17)
          {
            break;
          }

          v20 = *(categories._rawValue + v12 + 8);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v16 = (v20 - 1) & v20;
            goto LABEL_21;
          }
        }

        type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v53 newOldCategoryTimestampsChanged:isa];

        swift_unknownObjectRelease();
        v2 = v47;
        v4 = v48;
        v5 = v49;
        v7 = v45;
        v6 = v46;
        if (v49 != v48)
        {
          goto LABEL_6;
        }

LABEL_32:

        if (one-time initialization token for sync != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.sync);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Successfully sent new/old sync message", v37, 2u);
        }

        [v44 unlock];
        return 1;
      }

      break;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.sync);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "No listeners to handle new/old category timestamps", v43, 2u);
  }

  [v2 unlock];
  return 0;
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for CategorizationSyncManager()) init];
  static CategorizationSyncManager.sharedInstance = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for CategorizationManager()) init];
  static CategorizationManager.sharedInstance = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for MCCAgentConnectionManager()) init];
  static MCCAgentConnectionManager.sharedInstance = result;
  return result;
}

id CategorizationSyncManager.().init()()
{
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor] = 0;
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver;
  type metadata accessor for DeviceLockObserver();
  swift_allocObject();
  *&v0[v1] = DeviceLockObserver.init()();
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_cancellables] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable] = 0;
  v2 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock;
  *&v0[v2] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval] = 10080;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer] = 0;
  v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_lock;
  *&v0[v3] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer] = 0;
  v4 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock;
  *&v0[v4] = [objc_allocWithZone(NSLock) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CategorizationSyncManager();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = one-time initialization token for shared;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  *(static APNSManager.shared + OBJC_IVAR____TtC15icloudmailagent11APNSManager_delegate + 8) = &protocol witness table for CategorizationSyncManager;
  swift_unknownObjectWeakAssign();
  CategorizationSyncManager.initApiManagerIfNeeded()();
  CategorizationSyncManager.listenForDeviceLock()();

  return v7;
}

uint64_t CategorizationSyncManager.listenForDeviceLock()()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall CategorizationSyncManager.handleNewOldPush(state:)(Swift::OpaquePointer state)
{
  if (one-time initialization token for sync != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34 = v6;
      *v5 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v34);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Handle new old push %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v10 = static _DictionaryStorage.copy(original:)();
    v11 = v10;
    v12 = 0;
    v13 = 1 << *(state._rawValue + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(state._rawValue + 8);
    v16 = (v13 + 63) >> 6;
    v17 = v10 + 64;
    if (!v15)
    {
      break;
    }

    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v21 = v18 | (v12 << 6);
      v22 = (*(state._rawValue + 6) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(state._rawValue + 7) + 8 * v21) / 1000.0;
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = (v11[6] + 16 * v21);
      *v26 = v24;
      v26[1] = v23;
      *(v11[7] + 8 * v21) = v25;
      v27 = v11[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v11[2] = v29;

      if (!v15)
      {
        goto LABEL_8;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_8:
  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= v16)
    {
      break;
    }

    v20 = *(state._rawValue + v12 + 8);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  v30 = CategorizationSyncManager.notifyNewOldListeners(categories:)(v11);

  v31 = [objc_opt_self() standardUserDefaults];
  if (v30)
  {
    v33 = String._bridgeToObjectiveC()();
    [(objc_class *)v31 removeObjectForKey:?];
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v33 = String._bridgeToObjectiveC()();
    [(objc_class *)v31 setObject:isa forKey:?];

    v31 = isa;
  }
}

void CategorizationSyncManager.initApiManagerIfNeeded()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager;
  if (!*(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager))
  {
    type metadata accessor for APIManager(0);
    swift_allocObject();
    *(v0 + v1) = APIManager.init()();
  }
}

uint64_t closure #1 in CategorizationSyncManager.syncToWeb(rules:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(closure #1 in CategorizationSyncManager.syncToWeb(rules:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.syncToWeb(rules:)()
{
  v1 = v0[3];
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  v0[7] = v2;
  if (!v2)
  {
    if (one-time initialization token for sync == -1)
    {
LABEL_9:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.sync);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Unable to initialize api manager", v15, 2u);
      }

      goto LABEL_19;
    }

LABEL_23:
    swift_once();
    goto LABEL_9;
  }

  v3 = one-time initialization token for sync;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v4, static Logger.sync);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v8 >> 62)
    {
      v27 = v9;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v27;
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;
    v11 = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "Started syncing native rules to web, count: %ld", v11, 0xCu);
  }

  else
  {
  }

  v16 = specialized static RCOverrideHelper.groupOverrideRules(rules:)(v0[4]);
  v17 = specialized static RCOverrideHelper.splitOverrideGroups(groups:maxMessagesPerGroup:)(v16, 100);
  v0[9] = v17;

  v18 = *(v17 + 16);
  v0[10] = v18;
  if (v18)
  {
    v0[11] = 0;
    v19 = v0[9];
    if (*(v19 + 2))
    {
      v20 = *(v19 + 4);
      v0[12] = v20;
      v21 = *(v19 + 6);
      v0[13] = v21;
      v22 = v19[7];
      v23 = *(v19 + 5);

      v24 = swift_task_alloc();
      v0[14] = v24;
      *v24 = v0;
      v24[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      return APIManager.syncRecategorizationRule(rule:)(v20, v23, v21, v22);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_19:

  v26 = v0[1];

  return v26();
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in CategorizationSyncManager.syncToWeb(rules:);
  }

  else
  {
    v2 = closure #1 in CategorizationSyncManager.syncToWeb(rules:);
  }

  return _swift_task_switch(v2, 0, 0);
}

void closure #1 in CategorizationSyncManager.syncToWeb(rules:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully synced rule", v4, 2u);
  }

  v5 = v1[11] + 1;
  if (v5 == v1[10])
  {

    v6 = v1[1];

    v6();
  }

  else
  {
    v1[11] = v5;
    v7 = v1[9];
    if (v5 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = (v7 + 32 * v5);
      v9 = *(v8 + 4);
      v1[12] = v9;
      v10 = *(v8 + 6);
      v1[13] = v10;
      v11 = v8[7];
      v12 = *(v8 + 5);

      v13 = swift_task_alloc();
      v1[14] = v13;
      *v13 = v1;
      v13[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      APIManager.syncRecategorizationRule(rule:)(v9, v12, v10, v11);
    }
  }
}

void closure #1 in CategorizationSyncManager.syncToWeb(rules:)()
{
  v22 = v0;
  v0[2] = v0[15];
  v1 = v0[6];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for MCCError();
  v3 = swift_dynamicCast();
  (*(*(v2 - 8) + 56))(v1, v3 ^ 1u, 1, v2);
  v4 = Optional.debugDescription.getter();
  v6 = v5;
  outlined destroy of TaskPriority?(v1, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v21);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to sync native rule to web: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
  }

  v12 = v0[11] + 1;
  if (v12 == v0[10])
  {

    v13 = v0[1];

    v13();
  }

  else
  {
    v0[11] = v12;
    v14 = v0[9];
    if (v12 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = (v14 + 32 * v12);
      v16 = *(v15 + 4);
      v0[12] = v16;
      v17 = *(v15 + 6);
      v0[13] = v17;
      v18 = v15[7];
      v19 = *(v15 + 5);

      v20 = swift_task_alloc();
      v0[14] = v20;
      *v20 = v0;
      v20[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      APIManager.syncRecategorizationRule(rule:)(v16, v19, v17, v18);
    }
  }
}

Swift::Void __swiftcall CategorizationSyncManager.start()()
{
  v1 = v0;
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting CategorizationSyncManager...", v5, 2u);
  }

  v6 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000024, 0x8000000100038D00);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval);
  }

  else
  {
    v8 = v6;
  }

  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) = v8;
  v9 = objc_opt_self();
  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = (60 * v8);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = closure #1 in CategorizationSyncManager.newTimer()partial apply;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v16[3] = &block_descriptor_74;
  v13 = _Block_copy(v16);

  v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:v11];
  _Block_release(v13);
  v15 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer);
  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer) = v14;

  CategorizationSyncManager.monitorNetworkChanges()();
  CategorizationSyncManager.startPingTimer()();
  if (one-time initialization token for shared != -1)
  {
LABEL_12:
    swift_once();
  }

  APNSManager.start()();
  type metadata accessor for OSTransactionHelper();
  swift_initStaticObject();
  OSTransactionHelper.makeTransaction()();
  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void CategorizationSyncManager.startPingTimer()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer;
  if (!*(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer))
  {
    v2 = v0;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.sync);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "creating client-notification timer", v6, 2u);
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = partial apply for closure #1 in CategorizationSyncManager.startPingTimer();
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v12[3] = &block_descriptor_69;
    v9 = _Block_copy(v12);

    v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:300.0];
    _Block_release(v9);
    v11 = *(v2 + v1);
    *(v2 + v1) = v10;
  }
}

void closure #1 in CategorizationSyncManager.startPingTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock;
    [*(Strong + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock) lock];
    v5 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    swift_beginAccess();
    v6 = *(*&v3[v5] + 16);
    if (one-time initialization token for sync != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.sync);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v8, v9, "notify [%ld clients]", v10, 0xCu);
      }

      v11 = *&v3[v5];
      v12 = *(v11 + 16);

      if (!v12)
      {
        break;
      }

      v5 = 0;
      v6 = (v11 + 40);
      while (v5 < *(v11 + 16))
      {
        ++v5;
        v13 = *v6;
        v14[0] = *(v6 - 1);
        v14[1] = v13;
        closure #1 in closure #1 in CategorizationSyncManager.startPingTimer()(v14);
        v6 += 2;
        if (v12 == v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_12:
      swift_once();
    }

LABEL_9:

    [*&v3[v4] unlock];
  }
}

uint64_t closure #1 in closure #1 in CategorizationSyncManager.startPingTimer()(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.sync);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v17 = v2;
    type metadata accessor for MCCRulesListenerNotificationType();
    v10 = v4;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection: %@, notifications: %s", v7, 0x16u);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v14 = [v4 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    [v17 agentIsAlive];
    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall CategorizationSyncManager.fetchRules()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v36 - v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v43 = &v36 - v18;
  if (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0x6C75526863746566, 0xEC00000029287365))
  {
    v38 = v17;
    v39 = v16;
    v40 = v2;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.sync);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "fetchRules called, debouncing for 5 seconds...", v22, 2u);
    }

    v37 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable;
    if (*(&v45->isa + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable))
    {

      AnyCancellable.cancel()();
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    Just.init(_:)();
    v23 = v12;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    (*(v10 + 56))(v9, 1, 1, v44);
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v3);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v6, v3);
    v46 = v24;
    v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v26 = v40;
    (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Just<String> and conformance Just<A>, &_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR, &protocol conformance descriptor for Just<A>);
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v27 = v42;
    v28 = v43;
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    outlined destroy of TaskPriority?(v26, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    outlined destroy of TaskPriority?(v9, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
    (*(v10 + 8))(v23, v44);
    (*(v41 + 8))(v15, v27);
    swift_allocObject();
    v29 = v45;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Delay<Just<String>, OS_dispatch_queue> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.Delay<A, B>);
    v30 = v39;
    v31 = Publisher<>.sink(receiveValue:)();

    (*(v38 + 8))(v28, v30);
    *(&v29->isa + v37) = v31;
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.sync);
    v45 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v45, v33, "fetchRules isn't allowed, skipping...", v34, 2u);
    }

    v35 = v45;
  }
}

uint64_t closure #1 in CategorizationSyncManager.fetchRules()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:), v8);
  }

  return result;
}

Swift::Void __swiftcall CategorizationSyncManager.clearAllUserOverrides(timestamp:)(Swift::Double timestamp)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0xD000000000000021, 0x8000000100038D70))
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v1;
    *(v7 + 40) = timestamp;
    v8 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:), v7);
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.sync);
    v14 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v14, v10, "clearAllUserOverrides isn't allowed, skipping...", v11, 2u);
    }

    v12 = v14;
  }
}

uint64_t closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 24) = a5;
  *(v5 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)()
{
  v1 = *(v0 + 3);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 8) = v3;
    *v3 = v0;
    v3[1] = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
    v4 = v0[4];

    return APIManager.clearAllUserOverrides(timestamp:)(v4);
  }

  else
  {
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
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Successfully cleared all user overrides", v9, 2u);
    }

    v10 = *(v0 + 1);

    return v10();
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
  }

  else
  {

    v2 = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
  }

  return _swift_task_switch(v2, 0, 0);
}

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
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully cleared all user overrides", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[6];

  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for MCCError();
  v4 = swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v2, v4 ^ 1u, 1, v3);
  v5 = Optional.debugDescription.getter();
  v7 = v6;
  outlined destroy of TaskPriority?(v2, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
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
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to clear all user overrides: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[12] = v5;
  *v5 = v4;
  v5[1] = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);

  return CategorizationSyncManager.shouldSyncAll(fromPush:)(0);
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(char a1)
{
  *(*v1 + 161) = a1;

  return _swift_task_switch(closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)()
{
  if (*(v0 + 161) == 1)
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
      _os_log_impl(&_mh_execute_header, v2, v3, "Skipping fetching overrides, it is time to sync all overrides, yay!", v4, 2u);
    }

    v5 = *(v0 + 88);
    v6 = *(v0 + 64);

    static TaskPriority.background.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v6;
    *(v8 + 40) = 0;
    v9 = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.startFullSync(fromPush:), v8);

LABEL_26:

    v26 = *(v0 + 8);

    return v26();
  }

  CategorizationSyncManager.initApiManagerIfNeeded()();
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v10, static Logger.sync);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching Re-Categorization rules...", v13, 2u);
  }

  v14 = objc_opt_self();
  *(v0 + 112) = v14;
  v15 = [v14 standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 valueForKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  *(v0 + 16) = v27;
  *(v0 + 32) = v28;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 56) + 1.0;
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_sypSgMd, &_sypSgMR);
  }

  v18 = 0.0;
LABEL_19:
  *(v0 + 120) = v18;
  v19 = *(*(v0 + 64) + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 128) = v19;
  if (!v19)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 120);
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v22, v23, "There are no changes since last fetch: %f, nothing to notify", v25, 0xCu);
    }

    goto LABEL_26;
  }

  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);

  return APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(0, 100, 2, v18);
}

{

  SenderOverrides = FetchSenderOverridesAPIResponse.mappedOverrides()(v1);

  v3 = SenderOverrides >> 62;
  if (!(SenderOverrides >> 62))
  {
    if (*((SenderOverrides & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:

    v24 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v29))
    {
      v30 = *(v0 + 120);
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v29, "There are no changes since last fetch: %f, nothing to notify", v31, 0xCu);
    }

    goto LABEL_25;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_3:
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 160) == 1)
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unfortunately device is locked, deferring it until it is unlocked.", v6, 2u);
    }

LABEL_15:
    v23 = *(v0 + 112);

    v24 = [v23 standardUserDefaults];
    v25 = String._bridgeToObjectiveC()();
    [v24 setBool:1 forKey:v25];

LABEL_25:
    goto LABEL_26;
  }

  if ((CategorizationSyncManager.notifyRuleListeners(overrides:)(SenderOverrides, 1, &selRef_overrideRulesChanged_, "Successfully sent rules sync message") & 1) == 0)
  {

    v4 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v4, v21, "notifyRuleListeners is failed, deferring it...", v22, 2u);
    }

    goto LABEL_15;
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully fetched overrides", v9, 2u);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);

  v12 = [v11 standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  [v12 setBool:0 forKey:v13];

  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = *(v0 + 112);
    v16 = *(*(v0 + 144) + 80 * v14 + 24);

    v17 = [v15 standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();
    [v17 setDouble:v18 forKey:v16];

    v19 = SenderOverrides & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
LABEL_12:
      v20 = *(v19 + 16);
      goto LABEL_18;
    }
  }

  else
  {

    v19 = SenderOverrides & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:

  if (v20 == 100)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "There are more overrides, fetching more...", v28, 2u);
    }

    CategorizationSyncManager.fetchRules()();
  }

LABEL_26:

  v32 = *(v0 + 8);

  return v32();
}

{
  v16 = v0;
  v1 = v0[19];
  v2 = v0[10];

  v0[6] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for MCCError();
  v4 = swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v2, v4 ^ 1u, 1, v3);
  v5 = Optional.debugDescription.getter();
  v7 = v6;
  outlined destroy of TaskPriority?(v2, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v15);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unable to fetch Recategorization overrides: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);
  }

  else
  {

    v4 = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t CategorizationSyncManager.shouldSyncAll(fromPush:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return _swift_task_switch(CategorizationSyncManager.shouldSyncAll(fromPush:), 0, 0);
}

uint64_t CategorizationSyncManager.shouldSyncAll(fromPush:)()
{
  if ((specialized CategorizationSyncManager.isFullSyncEnabled()() & 1) == 0 || (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0xD000000000000018, 0x8000000100038E80) & 1) == 0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed. Push is off and No Syncing is allowed.";
    goto LABEL_13;
  }

  v1 = *(v0 + 40);
  if ((specialized CategorizationSyncManager.isTimeForFullSync()() & 1) == 0 && !v1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed, as enough time hasn't passed since last sync.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_14:

    v8 = *(v0 + 8);

    return v8(0);
  }

  v10 = *(v0 + 16);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v11 = *(v10 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 24) = v11;
  if (!v11)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed, server didn't allow";
    goto LABEL_13;
  }

  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = CategorizationSyncManager.shouldSyncAll(fromPush:);

  return APIManager.shouldStartFullSync()();
}

{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(CategorizationSyncManager.shouldSyncAll(fromPush:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3(1);
  }
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sync);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Full Recategorization Sync isn't allowed, server didn't allow", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

void CategorizationSyncManager.monitorNetworkChanges()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for NWInterface.InterfaceType();
  __chkstk_darwin(v6);
  (*(v8 + 104))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for NWInterface.InterfaceType.wifi(_:));
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v9 = NWPathMonitor.init(requiredInterfaceType:)();
  v10 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor;
  *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor) = v9;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(partial apply for closure #1 in CategorizationSyncManager.monitorNetworkChanges());
  NWPathMonitor.pathUpdateHandler.setter();

  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (*(v0 + v10))
  {

    NWPathMonitor.start(queue:)();
  }
}

char *closure #1 in CategorizationSyncManager.monitorNetworkChanges()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for NWPath.Status();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    v11 = OSTransactionHelper.makeTransaction()();
    v12 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction;
    *&v10[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction] = v11;
    swift_unknownObjectRelease();
    NWPath.status.getter();
    (*(v3 + 104))(v6, enum case for NWPath.Status.satisfied(_:), v2);
    v13 = static NWPath.Status.== infix(_:_:)();
    v14 = *(v3 + 8);
    v14(v6, v2);
    v14(v8, v2);
    if (v13)
    {
      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.sync);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Network status changed, syncing pending rules", v18, 2u);
      }

      CategorizationSyncManager.syncPendingRules()();
    }

    else
    {
      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.sync);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Network is not reachable", v22, 2u);
      }
    }

    *&v10[v12] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

char *closure #1 in CategorizationSyncManager.newTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    v4 = OSTransactionHelper.makeTransaction()();
    v5 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction;
    *&v3[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction] = v4;
    swift_unknownObjectRelease();
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
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Timer tickled...", v9, 2u);
    }

    CategorizationSyncManager.fetchRules()();
    CategorizationSyncManager.syncPendingRules()();
    CategorizationSyncManager.resetTimerIfNeeded()();
    *&v3[v5] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void CategorizationSyncManager.resetTimerIfNeeded()()
{
  v1 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000024, 0x8000000100038D00);
  if ((v2 & 1) == 0 && *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) != v1)
  {
    *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) = v1;
    v3 = v1;
    v4 = objc_opt_self();
    if ((v3 * 60) >> 64 == (60 * v3) >> 63)
    {
      v5 = v4;
      v6 = (60 * v3);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = partial apply for closure #1 in CategorizationSyncManager.newTimer();
      v11[5] = v7;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      v11[3] = &block_descriptor_1;
      v8 = _Block_copy(v11);

      v9 = [v5 scheduledTimerWithTimeInterval:1 repeats:v8 block:v6];
      _Block_release(v8);
      v10 = *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer);
      *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

id CategorizationSyncManager.syncPendingRules()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_lock);
  [v6 lock];
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 doubleForKey:v9];
  v11 = v10;

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  if (v13 - v11 <= 3600.0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sync);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Deferring sync until next hour", v19, 2u);
    }
  }

  else
  {
    v14 = [v7 standardUserDefaults];
    v15 = String._bridgeToObjectiveC()();
    [v14 setDouble:v15 forKey:v13];

    CategorizationSyncManager.initApiManagerIfNeeded()();
    if (*(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager))
    {

      APIManager.retryPendingRequests()();
    }
  }

  return [v6 unlock];
}

id CategorizationSyncManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorizationSyncManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CategorizationSyncManager.ClientConnection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CategorizationSyncManager.ClientConnection(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void closure #3 in CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CategorizationSyncManager.throttledNewOldSyncToServer()();
  }
}

id CategorizationSyncManager.throttledNewOldSyncToServer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
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
    _os_log_impl(&_mh_execute_header, v6, v7, "5 seconds delay is complete, sending them to server", v8, 2u);
  }

  v9 = *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock];
  [v9 lock];
  v10 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11)
  {
    *&v0[v10] = 0;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v16 = Dictionary.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Final set of category timestamps: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    static TaskPriority.background.getter();
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;
    v20[5] = v11;
    v21 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), v20);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No pending New Old values to sync to server, this should not have happened", v24, 2u);
    }
  }

  return [v9 unlock];
}

uint64_t closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()()
{
  v1 = v0[2];
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer();
    v4 = v0[3];

    return APIManager.syncNewOldCategoryTimestamps(categories:)(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sync);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to sync new old category timestamps: %@", v4, 0xCu);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        outlined init with take of Any(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 106) = a5;
  *(v5 + 16) = a4;
  v7 = type metadata accessor for Date();
  *(v5 + 24) = v7;
  *(v5 + 32) = *(v7 - 8);
  *(v5 + 40) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);

  return CategorizationSyncManager.shouldSyncAll(fromPush:)(a5);
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(char a1)
{
  *(*v1 + 107) = a1;

  return _swift_task_switch(closure #1 in CategorizationSyncManager.startFullSync(fromPush:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)()
{
  if (*(v0 + 107) != 1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v10 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, v13, "Full Recategorization Sync isn't allowed", v14, 2u);
    }

    goto LABEL_15;
  }

  CategorizationSyncManager.initApiManagerIfNeeded()();
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v1, static Logger.sync);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching All Category Overrides...", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v0 + 64) = *(v5 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver);
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 104) == 1)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unfortunately device is locked, deferring it until it is unlocked.", v8, 2u);
    }

    v9 = *(v0 + 106);

    if (v9 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v17 = *(*(v0 + 16) + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 72) = v17;
  if (!v17)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    if (*(v0 + 105) == 1)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unfortunately device is locked, deferring it until it is unlocked.", v21, 2u);
      }

      v22 = *(v0 + 106);

      if (v22 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        if (_swiftEmptyArrayStorage >> 62)
        {
          v38 = v25;
          v26 = _CocoaArrayWrapper.endIndex.getter();
          v25 = v38;
        }

        else
        {
          v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v25 + 4) = v26;
        v27 = v25;

        _os_log_impl(&_mh_execute_header, v23, v24, "Successfully fetched Sync All overrides, count: %ld", v27, 0xCu);
      }

      else
      {
      }

      v28 = CategorizationSyncManager.notifyRuleListeners(overrides:)(_swiftEmptyArrayStorage, 4, &selRef_syncAllCategoryOverrides_, "Successfully sent sync all message");

      if (v28)
      {
        v30 = *(v0 + 32);
        v29 = *(v0 + 40);
        v31 = *(v0 + 24);
        v32 = objc_opt_self();
        v33 = [v32 standardUserDefaults];
        v34 = String._bridgeToObjectiveC()();
        [v33 setBool:0 forKey:v34];

        v35 = [v32 standardUserDefaults];
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v37 = v36;
        (*(v30 + 8))(v29, v31);
        v10 = String._bridgeToObjectiveC()();
        [v35 setDouble:v10 forKey:v37];

        goto LABEL_15;
      }

      if (*(v0 + 106) != 1)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setBool:1 forKey:v11];

LABEL_15:
LABEL_16:

    v15 = *(v0 + 8);

    return v15();
  }

  v18 = swift_task_alloc();
  *(v0 + 80) = v18;
  *v18 = v0;
  v18[1] = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);

  return APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(1, 0, 1, 0.0);
}

{
  v1 = *(v0 + 96);
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 105) != 1)
  {
    if (v1)
    {
      SenderOverrides = FetchSenderOverridesAPIResponse.mappedOverrides()(v1);
    }

    else
    {
      SenderOverrides = _swiftEmptyArrayStorage;
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (SenderOverrides >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((SenderOverrides & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v7, v8, "Successfully fetched Sync All overrides, count: %ld", v9, 0xCu);
    }

    else
    {
    }

    v11 = CategorizationSyncManager.notifyRuleListeners(overrides:)(SenderOverrides, 4, &selRef_syncAllCategoryOverrides_, "Successfully sent sync all message");

    if (v11)
    {
      v13 = *(v0 + 32);
      v12 = *(v0 + 40);
      v14 = *(v0 + 24);
      v15 = objc_opt_self();
      v16 = [v15 standardUserDefaults];
      v17 = String._bridgeToObjectiveC()();
      [v16 setBool:0 forKey:v17];

      v18 = [v15 standardUserDefaults];
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v20 = v19;
      (*(v13 + 8))(v12, v14);
      v21 = String._bridgeToObjectiveC()();
      [v18 setDouble:v21 forKey:v20];
LABEL_18:

      goto LABEL_19;
    }

    if (*(v0 + 106) != 1)
    {
      goto LABEL_19;
    }

LABEL_17:
    v21 = [objc_opt_self() standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();
    [v21 setBool:1 forKey:v18];
    goto LABEL_18;
  }

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unfortunately device is locked, deferring it until it is unlocked.", v4, 2u);
  }

  v5 = *(v0 + 106);

  if (v5 == 1)
  {
    goto LABEL_17;
  }

LABEL_19:

  v22 = *(v0 + 8);

  return v22();
}

{

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
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to Sync All Overrides: %@", v3, 0xCu);
    outlined destroy of TaskPriority?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);
  }

  return _swift_task_switch(v5, 0, 0);
}

void closure #1 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(void *a1)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Callback connection %@ interrupted", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

void closure #2 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.sync);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Callback connection %@ invalidated", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = &unk_100046000;
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);

    [v13 lock];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    v16 = v14;
    swift_beginAccess();
    v17 = *&v16[v15];

    v18 = *(v17 + 16);
    if (v18)
    {
      v41[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = 32;
      do
      {
        v20 = *(v17 + v19);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += 16;
        --v18;
      }

      while (v18);

      v21 = v41[0];
      v11 = &unk_100046000;
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
    }

    v22 = specialized Collection<>.firstIndex(of:)(v4, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        swift_beginAccess();
        v27 = specialized Array.remove(at:)(v22);
        swift_endAccess();
      }
    }
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v30 = 136315138;
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      swift_beginAccess();
    }

    v34 = Array.description.getter();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v41);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Final list of connections: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + v11[397]);

    [v40 unlock];
  }
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSXPCConnection, NSXPCConnection_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t CategorizationSyncManager.eligibleListeners(of:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  v7 = 0;
LABEL_2:
  v8 = (v4 + 40 + 16 * v7);
  while (v5 != v7)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v7;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if ((a1 & ~v10) == 0)
    {
      v11 = *(v9 - 3);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v11;
      v14[5] = v10;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = 4;
    do
    {
      v17 = _swiftEmptyArrayStorage[v16];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall CategorizationSyncManager.didReceiveNewPayload(payload:topic:)(Swift::OpaquePointer payload, Swift::String topic)
{
  v3 = v2;
  object = topic._object;
  countAndFlagsBits = topic._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  if (one-time initialization token for sync != -1)
  {
LABEL_50:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.sync);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  *&v70 = payload;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v71 = countAndFlagsBits;
    v78[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, object, v78);
    *(v18 + 12) = 2080;
    v69 = v3;
    v20 = Dictionary.description.getter();
    v22 = v14;
    v23 = v12;
    v24 = v10;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v78);

    *(v18 + 14) = v25;
    v10 = v24;
    v12 = v23;
    v14 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did Receive push message: %s, %s", v18, 0x16u);
    v3 = v69;
    swift_arrayDestroy();
    countAndFlagsBits = v71;
  }

  v26._countAndFlagsBits = countAndFlagsBits;
  v26._object = object;
  if (_findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CategorizationSyncManager.didReceiveNewPayload(payload:topic:), v26))
  {
    return;
  }

  v76._rawValue = 0x73746E657665;
  v77 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v27 = v70;
  if (!*(v70 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v29 & 1) == 0))
  {
    outlined destroy of AnyHashable(v78);
    goto LABEL_44;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v28, v79);
  outlined destroy of AnyHashable(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
  payload._rawValue = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "[MCCSecretAgentService] ignoring received push", v65, 2u);
    }

    return;
  }

  v71 = v14;
  rawValue = v76._rawValue;
  object = *(v76._rawValue + 2);
  if (object)
  {
    v32 = 0;
    countAndFlagsBits = 1701869940;
    *&v30 = 136315138;
    v70 = v30;
    do
    {
      if (v32 >= rawValue[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v33 = rawValue[v32 + 4];
      v76._rawValue = 1701869940;
      v77 = 0xE400000000000000;

      AnyHashable.init<A>(_:)();
      if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v35 & 1) != 0))
      {
        outlined init with copy of Any(*(v33 + 56) + 32 * v34, v79);
        outlined destroy of AnyHashable(v78);
        if (swift_dynamicCast())
        {
          v36._countAndFlagsBits = v76._rawValue;
          v36._object = v77;
          v37 = _findStringSwitchCase(cases:string:)(&outlined read-only object #1 of CategorizationSyncManager.didReceiveNewPayload(payload:topic:), v36);

          if (v37)
          {
            if (v37 != 1)
            {

              if (v37 == 2)
              {
                static TaskPriority.background.getter();
                v40 = type metadata accessor for TaskPriority();
                v41 = *(v40 - 8);
                (*(v41 + 56))(v12, 0, 1, v40);
                v42 = swift_allocObject();
                *(v42 + 16) = 0;
                *(v42 + 24) = 0;
                *(v42 + 32) = v3;
                *(v42 + 40) = 1;
                outlined init with copy of TaskPriority?(v12, v10);
                v43 = (*(v41 + 48))(v10, 1, v40);
                v44 = v3;

                if (v43 == 1)
                {
                  outlined destroy of TaskPriority?(v10, &_sScPSgMd, &_sScPSgMR);
                  v45 = 7168;
                }

                else
                {
                  v57 = TaskPriority.rawValue.getter();
                  (*(v41 + 8))(v10, v40);
                  v45 = v57 | 0x1C00;
                }

                v69 = v45;
                v58 = *(v42 + 16);
                swift_unknownObjectRetain();

                if (v58)
                {
                  swift_getObjectType();
                  v59 = dispatch thunk of Actor.unownedExecutor.getter();
                  v61 = v60;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v59 = 0;
                  v61 = 0;
                }

                outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
                v62 = swift_allocObject();
                *(v62 + 16) = &closure #1 in CategorizationSyncManager.startFullSync(fromPush:)partial apply;
                *(v62 + 24) = v42;
                if (v61 | v59)
                {
                  v72 = 0;
                  v73 = 0;
                  v74 = v59;
                  v75 = v61;
                }

                payload._rawValue = &type metadata for Any;
                countAndFlagsBits = 1701869940;
                swift_task_create();

                goto LABEL_11;
              }

              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                *v56 = 0;
                _os_log_impl(&_mh_execute_header, v54, v55, "Received an unknown event type", v56, 2u);
                payload._rawValue = &type metadata for Any;
              }

              goto LABEL_35;
            }

            v76._rawValue = 0x6574617473;
            v77 = 0xE500000000000000;
            AnyHashable.init<A>(_:)();
            if (*(v33 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v39 & 1) != 0))
            {
              outlined init with copy of Any(*(v33 + 56) + 32 * v38, v79);
              outlined destroy of AnyHashable(v78);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSdGMd, &_sSDySSSdGMR);
              if (swift_dynamicCast())
              {

                CategorizationSyncManager.handleNewOldPush(state:)(v76);

LABEL_35:
                countAndFlagsBits = 1701869940;
                goto LABEL_11;
              }
            }

            else
            {
              outlined destroy of AnyHashable(v78);
            }

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v78[0] = v67;
              *v48 = v70;
              v49 = Dictionary.description.getter();
              v68 = v12;
              v69 = v10;
              v50 = v49;
              v52 = v51;

              v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v78);
              v12 = v68;

              *(v48 + 4) = v53;
              v10 = v69;
              _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring newold push, payload is invalid: %s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v67);

              payload._rawValue = &type metadata for Any;
            }

            else
            {
            }

            goto LABEL_35;
          }

          CategorizationSyncManager.fetchRules()();
          goto LABEL_35;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v78);
      }

LABEL_11:
      ++v32;
    }

    while (object != v32);
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR, &_sSDySSypGMd, &_sSDySSypGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay15icloudmailagent13GroupedSenderVGGMd, &_ss23_ContiguousArrayStorageCySay15icloudmailagent13GroupedSenderVGGMR, &_sSay15icloudmailagent13GroupedSenderVGMd, &_sSay15icloudmailagent13GroupedSenderVGMR);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n087_s15icloudmailagent25CategorizationSyncManagerC28syncNewOldCategoryTimestampsyySDySSSo8I28CGFSbSS3key_AF5valuet_tXEfU_Tf1nnc_n(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = String.lowercased()();
    if (v14._countAndFlagsBits == 0x746C7561666564 && v14._object == 0xE700000000000000)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v20, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n087_s15icloudmailagent25CategorizationSyncManagerC28syncNewOldCategoryTimestampsyySDySSSo8I28CGFSbSS3key_AF5valuet_tXEfU_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t specialized CategorizationSyncManager.syncAllowed(callingMethod:)(uint64_t a1, unint64_t a2)
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
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&_mh_execute_header, v5, v6, "Determining if syncing is allowed, requested by: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v10 = result;
    v11 = [result aa_primaryAppleAccount];

    if (!v11)
    {
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, v17, "Unable to get Apple Account", v18, 2u);
      }

      goto LABEL_17;
    }

    v12 = ACAccountDataclassMail;
    if (![v11 isProvisionedForDataclass:ACAccountDataclassMail])
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Device isn't provisioned for Mail";
        goto LABEL_15;
      }

LABEL_16:

LABEL_17:
      return 0;
    }

    if (([v11 aa_needsEmailConfiguration]& 1) != 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Device has no iCloud Mail set up";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if (([v11 isEnabledForDataclass:v12]& 1) == 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_16;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Device has Mail disabled";
      goto LABEL_15;
    }

    v19 = [v11 propertiesForDataclass:v12];
    if (!v19)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_16;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Unable to get account properties";
      goto LABEL_15;
    }

    v20 = v19;
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v23 & 1) != 0))
    {
      outlined init with copy of Any(*(v21 + 56) + 32 * v22, v25);
      outlined destroy of AnyHashable(v24);

      if (swift_dynamicCast())
      {

        return 19;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v24);
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Mail Account bag value missing: CategorySyncEnabled";
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      outlined init with copy of AnyHashable(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = outlined destroy of AnyHashable(v18);
        if (v11)
        {
          outlined destroy of AnyHashable(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void specialized CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a1];
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.sync);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v42 = a3;
  v40 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    v49 = a2;
    type metadata accessor for MCCRulesListenerNotificationType();
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "RegisterCategoryRulesCallbackListener for notifications: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MCCCategoryRulesClientProtocol];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100035B60;
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject, NSObject_ptr, &protocol conformance descriptor for NSObject);
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:isa forSelector:"overrideRulesChanged:" argumentIndex:0 ofReply:0];

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1000356A0;
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v19 = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:v19 forSelector:"newOldCategoryTimestampsChanged:" argumentIndex:0 ofReply:0];

  v20 = v15;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100035B60;
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:v22 forSelector:"syncAllCategoryOverrides:" argumentIndex:0 ofReply:0];

  [v6 setRemoteObjectInterface:v15];
  [v6 resume];
  v23 = [v6 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
  v24 = swift_dynamicCast();
  if (v24)
  {
    swift_unknownObjectRelease();
    v25 = *(v42 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
    [v25 lock];
    v26 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    swift_beginAccess();
    v27 = *(v42 + v26);
    v28 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      *(v42 + v26) = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[16 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v40;
    *(v42 + v26) = v27;
    swift_endAccess();
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    v47 = partial apply for closure #1 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:);
    v48 = v33;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_93;
    v34 = _Block_copy(&aBlock);
    v35 = v28;

    [v35 setInterruptionHandler:v34];
    _Block_release(v34);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v47 = partial apply for closure #2 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:);
    v48 = v37;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_100;
    v38 = _Block_copy(&aBlock);
    v39 = v35;

    [v39 setInvalidationHandler:v38];
    _Block_release(v38);
    [v25 unlock];
  }

  (*(a4 + 16))(a4, v24, 0);
  CategorizationSyncManager.retryAnyPendingPushes()();
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v42 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of [String : GroupedOverride].Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized CategorizationSyncManager.getAppleAccount()()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000356B0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = 0;
  v5 = [v1 accountsWithAccountTypeIdentifiers:isa error:&v25];

  v6 = v25;
  if (!v5)
  {
    v12 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for sync == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for ACAccount, ACAccount_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v6;

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_14:

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
      _os_log_impl(&_mh_execute_header, v22, v23, "Missing AppleAccount", v24, 2u);
    }

    return 0;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    return v10;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.sync);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get AppleAccount: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  return 0;
}

uint64_t specialized CategorizationSyncManager.getFrequency(for:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized CategorizationSyncManager.getAppleAccount()();
  if (!v4)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100038D00, v24);
      _os_log_impl(&_mh_execute_header, v5, v13, "Unable to get Apple Account for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v4 propertiesForDataclass:ACAccountDataclassMail];
  if (v6)
  {
    v7 = v6;
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v25);
      outlined destroy of AnyHashable(v24);

      if (swift_dynamicCast())
      {

        return a1;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v24);
    }

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sync);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_21;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&_mh_execute_header, v17, v18, "Mail Account bag value missing: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.sync);
    v17 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v22))
    {
      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v17, v22, "Unable to get account properties", v23, 2u);
  }

LABEL_21:

LABEL_22:
  return 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(v7, a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCOverrideRule(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(a1, v4, v5, v6, v7);
}

uint64_t specialized CategorizationSyncManager.isFullSyncEnabled()()
{
  v0 = specialized CategorizationSyncManager.getAppleAccount()();
  if (!v0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.sync);
    v1 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000100038EC0, v18);
      _os_log_impl(&_mh_execute_header, v1, v9, "Unable to get Apple Account for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    goto LABEL_22;
  }

  v1 = v0;
  v2 = [v0 propertiesForDataclass:ACAccountDataclassMail];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v19);
      outlined destroy of AnyHashable(v18);

      if (swift_dynamicCast())
      {

        return 31;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v18);
    }

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Mail Account bag value missing: FullCategoryOverrideSyncEnabled";
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.sync);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Unable to get account properties";
  }

  _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_21:

LABEL_22:
  return 0;
}

uint64_t specialized CategorizationSyncManager.isTimeForFullSync()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 doubleForKey:v9];
  v11 = v10;

  if (v11 == 0.0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Skipping first full sync as it is too early (doesn't apply for push trigger", v15, 2u);
    }

    v16 = [v7 standardUserDefaults];
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v18 = v17;
    (*(v1 + 8))(v6, v0);
    v19 = String._bridgeToObjectiveC()();
    [v16 setDouble:v19 forKey:v18];

    return 0;
  }

  Date.init(timeIntervalSince1970:)();
  v20 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000014, 0x8000000100038EA0);
  if (v21)
  {
    v22 = 14;
  }

  else
  {
    v22 = v20;
  }

  Date.timeIntervalSinceNow.getter();
  v24 = fabs(v23);
  if (v22 * 86400.0 > v24)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.sync);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v24 / 86400.0;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v26, v27, "Full Recategorization Sync isn't allowed, not enough time passed: %f vs %ld", v28, 0x16u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t partial apply for closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t APIRequestModel.accountBagKey.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.uuid.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.httpMethod.getter(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v4;
}

uint64_t APIRequestModel.body.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.retryCount.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HTTPMethod(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1414745936;
  }

  else
  {
    v3 = 5522759;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1414745936;
  }

  else
  {
    v5 = 5522759;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HTTPMethod()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HTTPMethod(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HTTPMethod(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HTTPMethod@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HTTPMethod.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance HTTPMethod(uint64_t *a1@<X8>)
{
  v2 = 5522759;
  if (*v1)
  {
    v2 = 1414745936;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t key path getter for APIRequestModel.uuid : APIRequestModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t closure #1 in APIRequestModel.uuid.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.setValue<A>(forKey:to:)();
}

double key path getter for APIRequestModel.body : APIRequestModel@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for APIRequestModel.uuid : APIRequestModel(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in APIRequestModel.body.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for APIRequestModel.accountBagKey : APIRequestModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t closure #1 in APIRequestModel.accountBagKey.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for APIRequestModel.httpMethod : APIRequestModel@<X0>(uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  a3();
  PersistentModel.getValue<A>(forKey:)();

  *a4 = v7;
  return result;
}

uint64_t key path setter for APIRequestModel.httpMethod : APIRequestModel(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in APIRequestModel.httpMethod.setter(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t APIRequestModel.savedDate.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path getter for APIRequestModel.savedDate : APIRequestModel(uint64_t *a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path setter for APIRequestModel.savedDate : APIRequestModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in APIRequestModel.savedDate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for APIRequestModel.retryCount : APIRequestModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t key path setter for APIRequestModel.retryCount : APIRequestModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in APIRequestModel.retryCount.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t APIRequestModel.AuthMethod.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t APIRequestModel.AccountBagKey.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance APIRequestModel.AuthMethod.CodingKeys()
{
  if (*v0)
  {
    return 0x7475416369736162;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.AuthMethod.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000100038FE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7475416369736162 && a2 == 0xE900000000000068)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance APIRequestModel.AuthMethod@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized APIRequestModel.AuthMethod.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance APIRequestModel.AccountBagKey.CodingKeys()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x73616C4361746164;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.AccountBagKey.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73616C4361746164 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AccountBagKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AccountBagKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance APIRequestModel.AccountBagKey@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized APIRequestModel.AccountBagKey.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.ACDataClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1818845549 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.ACDataClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.ACDataClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.ACDataClass.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.ACDataClass.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance APIRequestModel.ACDataClass(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void *APIRequestModel.init(backingData:)(__int128 *a1)
{
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t APIRequestModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = OBJC_IVAR____TtC15icloudmailagent15APIRequestModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for APIRequestModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for APIRequestModel;
  if (!type metadata singleton initialization cache for APIRequestModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for APIRequestModel(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t protocol witness for PersistentModel.init(backingData:) in conformance APIRequestModel(__int128 *a1)
{
  v2 = swift_allocObject();
  APIRequestModel.init(backingData:)(a1);
  return v2;
}

uint64_t protocol witness for PersistentModel.persistentBackingData.setter in conformance APIRequestModel(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(a1, v1 + 24);
  return swift_endAccess();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(v1 + 24, v4);
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel;
}

void protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 24));
    outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 24));
    outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance APIRequestModel(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance APIRequestModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance APIRequestModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel, &protocol conformance descriptor for APIRequestModel);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t specialized APIRequestModel.AuthMethod.init(from:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v18 = &type metadata for APIRequestModel.AuthMethod;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

uint64_t specialized APIRequestModel.AccountBagKey.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8[14] = 1;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t specialized APIRequestModel.ACDataClass.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = type metadata accessor for DecodingError();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v13 = &type metadata for APIRequestModel.ACDataClass;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.typeMismatch(_:), v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized static APIRequestModel.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100035D20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_1000356B0;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APIRequestModel.AuthMethod(unsigned __int8 *a1, unsigned int a2)
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

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

uint64_t one-time initialization function for secretAgentService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.secretAgentService);
  __swift_project_value_buffer(v0, static Logger.secretAgentService);

  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for agentConnectionManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.agentConnectionManager);
  __swift_project_value_buffer(v0, static Logger.agentConnectionManager);

  return Logger.init(subsystem:category:)();
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

uint64_t one-time initialization function for sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return Logger.init(subsystem:category:)();
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of TaskPriority?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(v6, a2);

    outlined destroy of TaskPriority?(v6, &_sypSgMd, &_sypSgMR);
  }
}

id one-time initialization function for nlpLock()
{
  result = [objc_allocWithZone(NSLock) init];
  static CategorizationManager.nlpLock = result;
  return result;
}

uint64_t one-time initialization function for nlpExpiry()
{
  v0 = type metadata accessor for DispatchTime();
  __swift_allocate_value_buffer(v0, static CategorizationManager.nlpExpiry);
  __swift_project_value_buffer(v0, static CategorizationManager.nlpExpiry);
  return static DispatchTime.now()();
}

uint64_t one-time initialization function for nlpQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static CategorizationManager.nlpQueue = result;
  return result;
}

id CategorizationManager.().init()()
{
  v1 = &v0[OBJC_IVAR___CategorizationManager_nextNlpTimeout];
  *v1 = closure #1 in variable initialization expression of CategorizationManager.nextNlpTimeout;
  v1[1] = 0;
  static CategorizationManager.nlp = 0;

  static CategorizationManager.nlpTransaction = 0;
  swift_unknownObjectRelease();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CategorizationManager();
  v2 = objc_msgSendSuper2(&v12, "init");
  v3 = one-time initialization token for rules;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.rules);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v4;
    *v9 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "CategorizationManager %@ initialised", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return v4;
}

uint64_t CategorizationManager.fetchNlp()()
{
  v0 = type metadata accessor for NLPLevel();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for nlpLock != -1)
  {
    swift_once();
  }

  v4 = static CategorizationManager.nlpLock;
  [static CategorizationManager.nlpLock lock];
  CategorizationManager.setupNlpTimer()();
  if (static CategorizationManager.nlp)
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.rules);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CategorizationManager NLP not nil, returning it", v8, 2u);
    }

    v9 = static CategorizationManager.nlp;
  }

  else
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.rules);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "CategorizationManager NLP nil, creating it", v13, 2u);
    }

    (*(v1 + 104))(v3, enum case for NLPLevel.english(_:), v0);
    type metadata accessor for MCCNLP();
    swift_allocObject();
    v9 = MCCNLP.init(withLevel:)();
    static CategorizationManager.nlp = v9;
  }

  [v4 unlock];
  return v9;
}

uint64_t closure #1 in variable initialization expression of CategorizationManager.nextNlpTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  *v3 = 30;
  (*(v1 + 104))(v3, enum case for DispatchTimeInterval.seconds(_:), v0);
  DispatchTime.advanced(by:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void CategorizationManager.setupNlpTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = __chkstk_darwin(v2);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = v47 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v58 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static CategorizationManager.nlpTimer)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((OS_dispatch_source.isCancelled.getter() & 1) == 0)
    {
      v62 = v0;
      if (one-time initialization token for rules != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.rules);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "CategorizationManager NLP timer cancelled (old)", v19, 2u);
      }

      OS_dispatch_source.cancel()();
      v1 = v62;
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for rules != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v47[1] = __swift_project_value_buffer(v20, static Logger.rules);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "CategorizationManager NLP timer being created", v23, 2u);
  }

  if (one-time initialization token for nlpExpiry != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, static CategorizationManager.nlpExpiry);
  v25 = *(v1 + OBJC_IVAR___CategorizationManager_nextNlpTimeout);

  v25(v26);

  swift_beginAccess();
  v27 = *(v13 + 40);
  v49 = v15;
  v27(v24, v15, v12);
  swift_endAccess();
  if (!static CategorizationManager.nlpTransaction)
  {
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    static CategorizationManager.nlpTransaction = OSTransactionHelper.makeTransaction()();
    swift_unknownObjectRelease();
  }

  v48 = v13;
  v62 = v12;
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
  if (one-time initialization token for nlpQueue != -1)
  {
    swift_once();
  }

  v28 = static CategorizationManager.nlpQueue;
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v30 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v54 + 8))(v11, v30);
  static CategorizationManager.nlpTimer = v31;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CategorizationManager.setupNlpTimer();
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v33 = _Block_copy(aBlock);

  v34 = v56;
  static DispatchQoS.unspecified.getter();
  v35 = v58;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v33);
  swift_unknownObjectRelease();
  (*(v60 + 8))(v35, v61);
  (*(v57 + 8))(v34, v59);

  if (!static CategorizationManager.nlpTimer)
  {
    __break(1u);
    goto LABEL_25;
  }

  swift_getObjectType();
  v36 = v48;
  v37 = v49;
  (*(v48 + 16))(v49, v24, v62);
  v39 = v52;
  v38 = v53;
  v40 = *(v52 + 104);
  v41 = v50;
  v40(v50, enum case for DispatchTimeInterval.never(_:), v53);
  v42 = v51;
  *v51 = 5;
  v40(v42, enum case for DispatchTimeInterval.seconds(_:), v38);
  swift_unknownObjectRetain();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v43 = *(v39 + 8);
  v43(v42, v38);
  v43(v41, v38);
  (*(v36 + 8))(v37, v62);
  if (!static CategorizationManager.nlpTimer)
  {
LABEL_25:
    __break(1u);
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "CategorizationManager NLP timer created", v46, 2u);
  }
}

void closure #1 in CategorizationManager.setupNlpTimer()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CategorizationManager.nlpTimerTriggered()();
  }

  else
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.rules);
    v2 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, v4, "CategorizationManager NLP timer failure to create", v5, 2u);
    }
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id CategorizationManager.nlpTimerTriggered()()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  if (one-time initialization token for rules != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.rules);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CategorizationManager NLP timer triggered", v10, 2u);
  }

  if (one-time initialization token for nlpLock != -1)
  {
    swift_once();
  }

  v11 = static CategorizationManager.nlpLock;
  [static CategorizationManager.nlpLock lock];
  if (one-time initialization token for nlpExpiry != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, static CategorizationManager.nlpExpiry);
  swift_beginAccess();
  (*(v1 + 16))(v6, v12, v0);
  static DispatchTime.now()();
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v6, v0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  if (v13)
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "CategorizationManager NLP timer extended", v18, 2u);
    }

    CategorizationManager.setupNlpTimer()();
  }

  else
  {
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "CategorizationManager NLP timer expired", v19, 2u);
    }

    static CategorizationManager.nlp = 0;

    static CategorizationManager.nlpTransaction = 0;
    swift_unknownObjectRelease();
  }

  return [v11 unlock];
}

void specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v184 = a4;
  v191 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v174 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v177 = &v164 - v9;
  v190 = type metadata accessor for BlackPearlVersion();
  v192 = *(v190 - 8);
  __chkstk_darwin(v190);
  v11 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReasonCode();
  v182 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v173 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v195 = &v164 - v15;
  v16 = type metadata accessor for CategoryTS();
  v194 = *(v16 - 8);
  __chkstk_darwin(v16);
  v178 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Category();
  v185 = *(v187 - 8);
  v18 = __chkstk_darwin(v187);
  v176 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v186 = &v164 - v20;
  v21 = type metadata accessor for DecisionRequest();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v188 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DecisionResult();
  v175 = *(v24 - 8);
  __chkstk_darwin(v24);
  v193 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = CategorizationManager.fetchNlp()();
  if (!v26)
  {
    v31 = objc_allocWithZone(NSError);
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 initWithDomain:v32 code:-1 userInfo:0];

    v34 = v33;
    v35 = _convertErrorToNSError(_:)();
    v36 = v184;
    (v184)[2](v184, 0, v35);

    _Block_release(v36);
    return;
  }

  v183 = v26;
  if ((dispatch thunk of MCCNLP.isModelPresetLoaded.getter() & 1) == 0)
  {
    dispatch thunk of MCCNLP.scheduleImmediateDownload()();
  }

  v165 = v22;
  v27 = a2;
  v28 = [a2 senderName];
  if (v28)
  {
    v29 = v28;
    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v30;
  }

  else
  {
    v171 = 0;
    v189 = 0xE000000000000000;
  }

  v37 = [a2 senderEmail];
  if (v37)
  {
    v38 = v37;
    v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v39;
  }

  else
  {
    v179 = 0;
    v181 = 0xE000000000000000;
  }

  v40 = [a2 emailSubject];
  if (v40)
  {
    v41 = v40;
    v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v42;
  }

  else
  {
    v170 = 0;
    v180 = 0xE000000000000000;
  }

  v167 = v4;
  v43 = [a2 receiverEmail];
  v196 = v12;
  v166 = v21;
  v164 = v24;
  v172 = v16;
  if (v43)
  {
    v44 = v43;
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v169 = 0;
    v46 = 0xE000000000000000;
  }

  v168 = [v27 isUnsubscribeHeaderPresent];
  [v27 isSenderVIP];
  [v27 isSenderInAddressBook];
  [v27 isSenderRecentContact];
  [v27 isSenderPrimary];
  [v27 isNonPersonalAccount];
  v171 = v46;
  DecisionRequest.init(senderName:senderEmail:emailSubject:receiverEmail:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:isSenderRecentContact:isSenderPrimary:isNonPersonalAccount:)();
  if (dispatch thunk of MCCNLP.isModelPresetLoaded.getter())
  {
    dispatch thunk of MCCNLP.predictCommerceEmail(decisionRequest:)();
  }

  else
  {
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildCategorizationNotReadyResult()();
  }

  v47 = kDecisionCommerceKey;
  v48 = [objc_allocWithZone(NSNumber) initWithBool:DecisionResult.commerce.getter() & 1];
  v49 = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v200 = v49;
  v199 = v48;
  specialized Dictionary.subscript.setter(&v199, v47);
  v50 = kDecisionTimeSensitiveKey;
  v51 = [objc_allocWithZone(NSNumber) initWithBool:DecisionResult.timesensitive.getter() & 1];
  v200 = v49;
  v199 = v51;
  specialized Dictionary.subscript.setter(&v199, v50);
  v52 = kDecisionSubCategoryKey;
  v53 = v186;
  DecisionResult.subCategory.getter();
  static Category.getCategoryText(for:)();
  v54 = *(v185 + 8);
  v170 = v185 + 8;
  v169 = v54;
  v54(v53, v187);
  v55 = String._bridgeToObjectiveC()();

  v179 = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  v200 = v179;
  v199 = v55;
  specialized Dictionary.subscript.setter(&v199, v52);
  v56 = kDecisionSubCategoryTSKey;
  v57 = v178;
  DecisionResult.subCategoryTS.getter();
  v58 = CategoryTS.rawValue.getter();
  (*(v194 + 1))(v57, v172);
  v59 = [objc_allocWithZone(NSNumber) initWithInteger:v58];
  v200 = v49;
  v199 = v59;
  specialized Dictionary.subscript.setter(&v199, v56);
  v60 = kDecisionScoreKey;
  DecisionResult.score.getter();
  v62 = [objc_allocWithZone(NSNumber) initWithDouble:v61];
  v200 = v49;
  v199 = v62;
  specialized Dictionary.subscript.setter(&v199, v60);
  v63 = kDecisionSenderScoreKey;
  DecisionResult.senderScore.getter();
  v65 = [objc_allocWithZone(NSNumber) initWithDouble:v64];
  v200 = v49;
  v199 = v65;
  specialized Dictionary.subscript.setter(&v199, v63);
  v66 = kDecisionTSScoreKey;
  DecisionResult.tsScore.getter();
  v68 = [objc_allocWithZone(NSNumber) initWithDouble:v67];
  v200 = v49;
  v199 = v68;
  specialized Dictionary.subscript.setter(&v199, v66);
  v69 = kDecisionTSCategoryScoreKey;
  DecisionResult.tsCategoryScore.getter();
  v71 = [objc_allocWithZone(NSNumber) initWithDouble:v70];
  v200 = v49;
  v199 = v71;
  specialized Dictionary.subscript.setter(&v199, v69);
  v198 = _swiftEmptyArrayStorage;
  v72 = DecisionResult.reasonCodes.getter();
  v73 = *(v72 + 16);
  if (v73)
  {
    v172 = v11;
    v194 = *(v182 + 16);
    v74 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v178 = v72;
    v75 = v72 + v74;
    v76 = *(v182 + 72);
    v77 = (v182 + 8);
    do
    {
      v78 = v195;
      v79 = v196;
      v194(v195, v75, v196);
      ReasonCode.rawValue.getter();
      (*v77)(v78, v79);
      String._bridgeToObjectiveC()();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v75 += v76;
      --v73;
    }

    while (v73);
    v80 = v198;

    v11 = v172;
  }

  else
  {

    v80 = _swiftEmptyArrayStorage;
  }

  v81 = kDecisionReasonCodesKey;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
  v199 = v80;
  v82 = v81;
  v194 = v80;

  specialized Dictionary.subscript.setter(&v199, v82);
  v83 = kDecisionBPModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlModelVersion()();
  v84 = v192 + 8;
  v85 = *(v192 + 8);
  v86 = v190;
  v85(v11, v190);
  v87 = String._bridgeToObjectiveC()();

  v88 = v179;
  v200 = v179;
  v199 = v87;
  specialized Dictionary.subscript.setter(&v199, v83);
  v89 = kDecisionBPSenderModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlSenderModelVersion()();
  v85(v11, v86);
  v90 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v90;
  specialized Dictionary.subscript.setter(&v199, v89);
  v91 = kDecisionBPTSModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlTSModelVersion()();
  v85(v11, v86);
  v92 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v92;
  specialized Dictionary.subscript.setter(&v199, v91);
  v93 = kDecisionBPFinalRuleModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlFinalRuleVersion()();
  v85(v11, v86);
  v94 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v94;
  specialized Dictionary.subscript.setter(&v199, v93);
  v95 = kDecisionBPBreakthroughModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlBreakthroughVersion()();
  v85(v11, v86);
  v96 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v96;
  specialized Dictionary.subscript.setter(&v199, v95);
  DecisionResult.blackPearlVersion.getter();
  object = BlackPearlVersion.getBlackPearlExperimentId()().value._object;
  v85(v11, v86);
  v195 = v85;
  v192 = v84;
  if (object)
  {

    v98 = kDecisionBPExperimentIdKey;
    DecisionResult.blackPearlVersion.getter();
    v99 = BlackPearlVersion.getBlackPearlExperimentId()().value._object;
    v85(v11, v86);
    if (!v99)
    {
      _Block_release(v184);
      __break(1u);
      goto LABEL_56;
    }

    v100 = String._bridgeToObjectiveC()();

    v200 = v88;
    v199 = v100;
    specialized Dictionary.subscript.setter(&v199, v98);
    v85 = v195;
  }

  else
  {
    v101 = kDecisionBPExperimentIdKey;
    v102 = NSString.init(stringLiteral:)();
    v200 = v88;
    v199 = v102;
    specialized Dictionary.subscript.setter(&v199, v101);
  }

  v103 = kDecisionBPExperimentDeploymentIdKey;
  DecisionResult.blackPearlVersion.getter();
  v104 = BlackPearlVersion.getBlackPearlDeploymentId()();
  v105 = v190;
  v85(v11, v190);
  v199 = v104;
  dispatch thunk of CustomStringConvertible.description.getter();
  v106 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v106;
  v107 = v195;
  specialized Dictionary.subscript.setter(&v199, v103);
  DecisionResult.blackPearlVersion.getter();
  v108 = BlackPearlVersion.getBlackPearlTreatmentId()().value._object;
  v107(v11, v105);
  if (v108)
  {

    v109 = kDecisionBPTreatmentIdKey;
    DecisionResult.blackPearlVersion.getter();
    v110 = BlackPearlVersion.getBlackPearlTreatmentId()().value._object;
    v107(v11, v105);
    if (v110)
    {
      v111 = String._bridgeToObjectiveC()();

      v200 = v88;
      v199 = v111;
      specialized Dictionary.subscript.setter(&v199, v109);
      v107 = v195;
      goto LABEL_35;
    }

LABEL_56:
    _Block_release(v184);
    __break(1u);
    goto LABEL_57;
  }

  v112 = kDecisionBPTreatmentIdKey;
  v113 = NSString.init(stringLiteral:)();
  v200 = v88;
  v199 = v113;
  specialized Dictionary.subscript.setter(&v199, v112);
LABEL_35:
  v114 = kDecisionBPRolloutDeploymentIdKey;
  DecisionResult.blackPearlVersion.getter();
  v115 = BlackPearlVersion.getBlackPearlRolloutDeploymentId()();
  v107(v11, v105);
  v199 = v115;
  dispatch thunk of CustomStringConvertible.description.getter();
  v116 = String._bridgeToObjectiveC()();

  v200 = v88;
  v199 = v116;
  v117 = v195;
  specialized Dictionary.subscript.setter(&v199, v114);
  DecisionResult.blackPearlVersion.getter();
  v118 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()().value._object;
  v117(v11, v105);
  if (v118)
  {

    v119 = kDecisionBPRolloutFactorPackIdKey;
    DecisionResult.blackPearlVersion.getter();
    v120 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()().value._object;
    v117(v11, v105);
    if (v120)
    {
      v121 = String._bridgeToObjectiveC()();

      v200 = v88;
      v199 = v121;
      specialized Dictionary.subscript.setter(&v199, v119);
      v117 = v195;
      goto LABEL_39;
    }

LABEL_57:
    _Block_release(v184);
    __break(1u);
    goto LABEL_58;
  }

  v122 = kDecisionBPRolloutFactorPackIdKey;
  v123 = NSString.init(stringLiteral:)();
  v200 = v88;
  v199 = v123;
  specialized Dictionary.subscript.setter(&v199, v122);
LABEL_39:
  DecisionResult.blackPearlVersion.getter();
  v124 = BlackPearlVersion.getBlackPearlRolloutId()().value._object;
  v117(v11, v105);
  if (v124)
  {

    v125 = kDecisionBPRolloutIdKey;
    DecisionResult.blackPearlVersion.getter();
    v126 = BlackPearlVersion.getBlackPearlRolloutId()().value._object;
    v117(v11, v105);
    if (v126)
    {
      v127 = String._bridgeToObjectiveC()();

      v200 = v88;
      v199 = v127;
      specialized Dictionary.subscript.setter(&v199, v125);
      v117 = v195;
      goto LABEL_43;
    }

LABEL_58:
    _Block_release(v184);
    __break(1u);
    goto LABEL_59;
  }

  v128 = kDecisionBPRolloutIdKey;
  v129 = NSString.init(stringLiteral:)();
  v200 = v88;
  v199 = v129;
  specialized Dictionary.subscript.setter(&v199, v128);
LABEL_43:
  v130 = v177;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlCategorizationVersion()();
  v131 = v190;
  v117(v11, v190);
  v132 = type metadata accessor for BlackPearlCategorizationVersion();
  v133 = *(v132 - 8);
  v134 = v117;
  v135 = *(v133 + 48);
  if (v135(v130, 1, v132) != 1)
  {
    outlined destroy of TaskPriority?(v130, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);
    v195 = kDecisionBPVersionKey;
    DecisionResult.blackPearlVersion.getter();
    v140 = v174;
    BlackPearlVersion.getBlackPearlCategorizationVersion()();
    v134(v11, v131);
    if (v135(v140, 1, v132) != 1)
    {

      BlackPearlCategorizationVersion.getVersionString()();
      (*(v133 + 8))(v140, v132);
      v141 = String._bridgeToObjectiveC()();

      v200 = v179;
      v199 = v141;
      v139 = v195;
      goto LABEL_47;
    }

LABEL_59:
    _Block_release(v184);
    __break(1u);
    return;
  }

  outlined destroy of TaskPriority?(v130, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);

  v136 = kDecisionBPVersionKey;
  v137 = v179;
  v138 = NSString.init(stringLiteral:)();
  v200 = v137;
  v199 = v138;
  v139 = v136;
LABEL_47:
  specialized Dictionary.subscript.setter(&v199, v139);
  v142 = v196;
  v143 = v186;
  v144 = v193;
  DecisionResult.subCategory.getter();
  v145 = v176;
  v146 = v187;
  (*(v185 + 104))(v176, enum case for Category.ERROR(_:), v187);
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type Category and conformance Category, &type metadata accessor for Category, &protocol conformance descriptor for Category);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v147 = v169;
  v169(v145, v146);
  v147(v143, v146);
  v148 = v182;
  if (v199 == v197)
  {
    v149 = DecisionResult.reasonCodes.getter();
    v150 = *(v148 + 104);
    v151 = v173;
    v150(v173, enum case for ReasonCode.errorModelNotReady(_:), v142);
    v152 = specialized Sequence<>.contains(_:)(v151, v149);
    v153 = v151;

    v154 = *(v148 + 8);
    v154(v153, v142);
    if (v152 || (v155 = DecisionResult.reasonCodes.getter(), v150(v153, enum case for ReasonCode.errorMbertModelNotReady(_:), v142), v156 = specialized Sequence<>.contains(_:)(v153, v155), , v154(v153, v142), v156))
    {
      v157 = objc_allocWithZone(NSError);
      v158 = String._bridgeToObjectiveC()();
      v159 = [v157 initWithDomain:v158 code:-2 userInfo:0];

      v160 = v159;
      v161 = _convertErrorToNSError(_:)();
      (v184)[2](v184, 0, v161);
    }

    else
    {
    }

    v162 = v188;
    v163 = v175;
    v144 = v193;
  }

  else
  {

    v162 = v188;
    v163 = v175;
  }

  (*(v165 + 8))(v162, v166);
  (*(v163 + 8))(v144, v164);
  _Block_release(v184);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for ReasonCode();
    ++v2;
    lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type ReasonCode and conformance ReasonCode, &type metadata accessor for ReasonCode, &protocol conformance descriptor for ReasonCode);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t @objc CategorizationManager.getIABCategoryID(with:completion:)(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  specialized CategorizationManager.getIABCategoryID(with:completion:)(v8, v10, v11, v7, a5);
  _Block_release(v7);
  _Block_release(v7);
}

void @objc CategorizationManager.isModelReady(completion:)(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id CategorizationManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CategorizationManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a1);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
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
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCypGMd, &_ss18_DictionaryStorageCySo8NSStringCypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v32);
      }

      else
      {
        outlined init with copy of Any(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMd, &_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = *v24;
      v39 = v24[1];
      v40 = *v22;
      v26 = v24[2];
      v27 = v24[3];
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v25;
      v17[1] = v39;
      v17[2] = v26;
      v17[3] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 < v22 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a6 & 1);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a7;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a4;
  v30[1] = a5;
  v31 = v27[7] + 32 * v17;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a7;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMd, &_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v24;
        v28[1] = v23;
        v28[2] = v25;
        v28[3] = v26;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCypGMd, &_ss18_DictionaryStorageCySo8NSStringCypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void specialized CategorizationManager.predictCommerceEmail(with:completion:)(void *a1, uint64_t a2, void *aBlock)
{
  v8 = &_swiftEmptyDictionarySingleton;
  _Block_copy(aBlock);
  v6 = objc_autoreleasePoolPush();
  specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(a2, a1, &v8, aBlock);
  objc_autoreleasePoolPop(v6);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(aBlock + 2))(aBlock, isa, 0);
}

void specialized CategorizationManager.isModelReady(completion:)(uint64_t a1, uint64_t a2)
{
  if (CategorizationManager.fetchNlp()())
  {
    v3 = dispatch thunk of MCCNLP.isModelPresetLoaded.getter();
    (*(a2 + 16))(a2, v3 & 1, 0);
  }

  else
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithDomain:v5 code:-1 userInfo:0];

    v7 = v6;
    v8 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v8);
  }
}

void specialized CategorizationManager.invokeModelDownload(completion:)(uint64_t a1, uint64_t a2)
{
  if (CategorizationManager.fetchNlp()())
  {
    dispatch thunk of MCCNLP.scheduleImmediateDownload()();
    v3 = dispatch thunk of MCCNLP.isModelPresetLoaded.getter();
    (*(a2 + 16))(a2, v3 & 1, 0);
  }

  else
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithDomain:v5 code:-1 userInfo:0];

    v7 = v6;
    v8 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v8);
  }
}

void specialized CategorizationManager.getIABCategoryID(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (CategorizationManager.fetchNlp()())
  {
    v9 = a5(a1, a2);
    (*(a4 + 16))(a4, v9, 0);
  }

  else
  {
    v10 = objc_allocWithZone(NSError);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithDomain:v11 code:-1 userInfo:0];

    v13 = v12;
    v14 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v14);
  }
}

void specialized CategorizationManager.isPersonalDomain(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CategorizationManager.fetchNlp()())
  {
    v5 = dispatch thunk of MCCNLP.isPersonalEmail(domain:)();
    (*(a4 + 16))(a4, v5 & 1, 0);
  }

  else
  {
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithDomain:v7 code:-1 userInfo:0];

    v9 = v8;
    v10 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v10);
  }
}

void specialized CategorizationManager.getBlackPearlVersion(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BlackPearlCategorizationVersion();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CategorizationManager.fetchNlp()())
  {
    dispatch thunk of MCCNLP.getBlackPearlCatVersion()();
    v12 = kBPCategorizationMajorVersionKey;
    v13 = BlackPearlCategorizationVersion.getMajorVersion()();
    v29 = &type metadata for Int;
    *&v28 = v13;
    outlined init with take of Any(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v12, isUniquelyReferenced_nonNull_native);
    v15 = v26;
    v16 = kBPCategorizationMinorVersionKey;
    v17 = BlackPearlCategorizationVersion.getMinorVersion()();
    v29 = &type metadata for Int;
    *&v28 = v17;
    outlined init with take of Any(&v28, v27);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v15;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v16, v18);
    v19 = v26;
    v20 = kBPCategorizationPatchVersionKey;
    v21 = BlackPearlCategorizationVersion.getPatchVersion()();
    v29 = &type metadata for Int;
    *&v28 = v21;
    outlined init with take of Any(&v28, v27);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v20, v22);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v26);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = objc_allocWithZone(NSError);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithDomain:v8 code:-1 userInfo:0];

    v10 = v9;
    v25 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v25);

    v11 = v25;
  }
}