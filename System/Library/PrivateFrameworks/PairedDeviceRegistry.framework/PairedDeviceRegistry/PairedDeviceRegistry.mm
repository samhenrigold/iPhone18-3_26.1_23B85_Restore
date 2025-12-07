id Registry_Impl.getActivePairedDeviceIncludingAltAccount()(uint64_t a1)
{
  v2 = [v1 getDevicesExcluding_];
  type metadata accessor for PDRDevice();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  if (v3 < 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v7);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2318DF260](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t specialized Registry_Impl.getDevicesExcluding(_:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v7 = static RegistryCrux.instance;
  v8 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v9 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v9 + 4);

  v11 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v10 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
  v40 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v41 = v10;
  v12 = *(v7 + v8);
  v43 = v10;

  v13 = v11;
  os_unfair_lock_unlock(v12 + 4);

  v14 = v13;
  v15 = [v14 allPairingIDs];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = MEMORY[0x277D84F90];
  v17 = *(v16 + 16);
  if (v17)
  {
    v42 = v14;
    v18 = v4 + 16;
    v38 = *(v4 + 16);
    v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v35 = v16;
    v20 = v16 + v19;
    v21 = (v18 - 8);
    v39 = v18;
    v22 = *(v18 + 56);
    v36 = MEMORY[0x277D84F90];
    v37 = v22;
    do
    {
      v23 = v38;
      v38(v6, v20, v3);
      v24 = type metadata accessor for Device_Impl(0);
      v25 = objc_allocWithZone(v24);
      v23(&v25[OBJC_IVAR___PDRDevice_Impl_uuid_], v6, v3);
      v26 = &v25[OBJC_IVAR___PDRDevice_Impl_registryState];
      v27 = v41;
      v28 = v42;
      *v26 = v42;
      *(v26 + 1) = v27;
      *(v26 + 2) = v40;
      v44.receiver = v25;
      v44.super_class = v24;
      v29 = v28;
      v30 = v43;
      v31 = objc_msgSendSuper2(&v44, sel_init, v35);
      (*v21)(v6, v3);
      if ((a1 & 1) != 0 && ([v31 isPaired] & 1) == 0 || (a1 & 2) != 0 && objc_msgSend(v31, sel_isArchived) || (a1 & 4) != 0 && (objc_msgSend(v31, sel_isActive) & 1) == 0 || (a1 & 8) != 0 && objc_msgSend(v31, sel_isActive) || (a1 & 0x10) != 0 && (objc_msgSend(v31, sel_isSetup) & 1) == 0 || (a1 & 0x20) != 0 && objc_msgSend(v31, sel_isAltAccount))
      {
      }

      else
      {
        v32 = v31;
        MEMORY[0x2318DF0D0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v36 = v45;
      }

      v20 += v37;
      --v17;
    }

    while (v17);

    v14 = v42;
    v33 = v36;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  return v33;
}

unint64_t type metadata accessor for PDRDevice()
{
  result = lazy cache variable for type metadata for PDRDevice;
  if (!lazy cache variable for type metadata for PDRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PDRDevice);
  }

  return result;
}

id implementationClass(uint64_t a1)
{
  if (implementationClass_onceToken != -1)
  {
    implementationClass_cold_1();
  }

  v2 = implementationClass_result;

  return v2;
}

uint64_t __implementationClass_block_invoke()
{
  +[PDRRegistry_Impl supportsWatch];
  result = objc_opt_class();
  implementationClass_result = result;
  return result;
}

uint64_t one-time initialization function for supportWatch()
{
  v0 = objc_opt_self();
  result = [v0 isUIBuild];
  if (result)
  {
    if (one-time initialization token for demoModeEnabled != -1)
    {
      swift_once();
    }

    if ((static RegistryCrux.demoModeEnabled & 1) == 0)
    {
      result = [v0 deviceClassString];
      if (!result)
      {
        goto LABEL_14;
      }

      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      if (v3 == 0x6863746157 && v5 == 0xE500000000000000)
      {

        result = 1;
        goto LABEL_14;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        result = [v0 amCompanion];
        goto LABEL_14;
      }
    }

    result = 1;
  }

LABEL_14:
  static RegistryCrux.supportWatch = result;
  return result;
}

BOOL one-time initialization function for demoModeEnabled()
{
  result = closure #1 in variable initialization expression of static RegistryCrux.demoModeEnabled();
  static RegistryCrux.demoModeEnabled = result;
  return result;
}

BOOL closure #1 in variable initialization expression of static RegistryCrux.demoModeEnabled()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x2318DF040](0xD000000000000033, 0x800000022DFB0230);
  v1 = [v0 UTF8String];
  v2 = v0;
  v3 = strdup(v1);
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  LODWORD(v13[0]) = -1;
  v5 = notify_register_check(v3, v13);
  v6 = v13[0];
  v7 = v13[0] & ~(SLODWORD(v13[0]) >> 31);
  if (!v5)
  {
    v13[0] = 0;
    if (v6 < 0)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (notify_is_valid_token(v7))
    {
      notify_get_state(v7, v13);
      v11 = v13[0] != 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_18:
    notify_cancel(v7);
    goto LABEL_19;
  }

  v8 = specialized static InternalPreferences.BOOLean(key:domain:)(0x6D654465726F7453, 0xED000065646F4D6FLL, 0xD000000000000017, 0x800000022DFB0270);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v11 = 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v9 = specialized static InternalPreferences.integer(key:domain:)(0x6D6172676F725046, 0xEE007265626D754ELL, 0xD000000000000017, 0x800000022DFB0270) == 5;
  v11 = (v10 & 1) == 0 && v9;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_11:
    if (notify_is_valid_token(v7))
    {
      notify_set_state(v7, v11);
      notify_post(v4);
    }

    goto LABEL_18;
  }

LABEL_19:
  free(v4);
  return v11;
}

id one-time initialization function for sharedInstance_()
{
  v0 = [objc_allocWithZone(type metadata accessor for Registry_Impl()) init];
  v0[OBJC_IVAR___PDRRegistry_Impl_amSingleton] = 1;
  result = [v0 start];
  static Registry_Impl.sharedInstance_ = v0;
  return result;
}

{
  v0 = [objc_allocWithZone(type metadata accessor for Registry_Stub()) init];
  v0[OBJC_IVAR___PDRRegistry_Stub_amSingleton] = 1;
  result = [v0 start];
  static Registry_Stub.sharedInstance_ = v0;
  return result;
}

id Registry_Impl.init()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR___PDRRegistry_Impl_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMd, _s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 24) = v5;
  *&v0[v3] = v4;
  *&v0[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState] = 0;
  v0[OBJC_IVAR___PDRRegistry_Impl_started_] = 0;
  *&v0[OBJC_IVAR___PDRRegistry_Impl_status_] = 0;
  v0[OBJC_IVAR___PDRRegistry_Impl_amSingleton] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for Registry_Impl();
  return objc_msgSendSuper2(&v7, sel_init);
}

void type metadata accessor for PDRRegistryStatus(uint64_t a1, unint64_t *a2, uint64_t a3)
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

Swift::Void __swiftcall Registry_Impl.start()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_started_;
  if (*(v0 + OBJC_IVAR___PDRRegistry_Impl_started_))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = v0;
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v3 = static RegistryCrux.instance;
    v4 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
    v5 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

    os_unfair_lock_lock(v5 + 4);

    specialized WeakCollection.append(_:)(v2);

    v6 = *(v3 + v4);

    os_unfair_lock_unlock(v6 + 4);

    *(v2 + v1) = 1;
    if ((*(v2 + OBJC_IVAR___PDRRegistry_Impl_amSingleton) & 1) == 0)
    {
      v7 = static RegistryCrux.instance;
      v8 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
      v9 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

      os_unfair_lock_lock(v9 + 4);

      v11 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
      v10 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
      v12 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
      v13 = *(v7 + v8);
      v14 = v10;

      v15 = v11;
      os_unfair_lock_unlock(v13 + 4);

      Registry_Impl.bootstrapNotify(_:)(v15, v10, v12);
    }
  }
}

char *one-time initialization function for instance()
{
  type metadata accessor for RegistryCrux(0);
  swift_allocObject();
  result = RegistryCrux.().init()();
  static RegistryCrux.instance = result;
  return result;
}

uint64_t type metadata accessor for RegistryCrux(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RegistryCrux(uint64_t a1)
{
  type metadata accessor for RegistryCrux.RefreshTimings(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RegistryState.LoggingInfo?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for RegistryCrux.RefreshTimings(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for RegistryState.LoggingInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RegistryState.LoggingInfo?)
  {
    type metadata accessor for RegistryState.LoggingInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RegistryState.LoggingInfo?);
    }
  }
}

uint64_t type metadata accessor for RegistryState.LoggingInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for RegistryState.LoggingInfo;
  if (!type metadata singleton initialization cache for RegistryState.LoggingInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RegistryState.LoggingInfo(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *RegistryCrux.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  static ContinuousClock.now.getter();
  v9 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) + 20);
  *(v8 + v9) = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  v10 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo;
  v11 = type metadata accessor for RegistryState.LoggingInfo(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo11PDRRegistryCGMd, &_s20PairedDeviceRegistry14WeakCollectionCySo11PDRRegistryCGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + v14) = v15;
  *(v15 + 24) = v16;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_warnedAboutEntitlement_) = 0;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_) = 0;
  v17 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  v18 = (v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_);
  *v18 = 0u;
  v18[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics) = 2;
  v19 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled) = 2;
  v21 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
  v22 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_;
  *v22 = v21;
  *(v22 + 8) = xmmword_22DFAE870;
  type metadata accessor for NotifyState();
  v23 = swift_allocObject();
  *(v23 + 40) = 0;
  *(v23 + 44) = 1;
  *(v23 + 24) = closure #1 in default argument 1 of NotifyState.init(name:_:);
  *(v23 + 32) = 0;
  v24 = MEMORY[0x2318DF040](0, 0xE000000000000000);
  v25 = [v24 UTF8String];
  v26 = v24;
  result = strdup(v25);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v23 + 16) = result;
  *(v1 + 16) = v23;
  v28 = swift_allocObject();
  *(v28 + 40) = 0;
  *(v28 + 44) = 1;

  v29 = MEMORY[0x2318DF040](0xD00000000000003FLL, 0x800000022DFB01F0);
  v30 = [v29 UTF8String];
  v31 = v29;
  result = strdup(v30);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v28 + 16) = result;
  *(v28 + 24) = partial apply for closure #1 in RegistryCrux.().init();
  *(v28 + 32) = v1;
  *(v1 + 16) = v28;

  NotifyState.registerDispatch(bootstrap:)(0);

  v32 = *(v1 + 24);
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #2 in RegistryCrux.().init();
  *(v33 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_166;
  v34 = _Block_copy(aBlock);

  dispatch_sync(v32, v34);
  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for framework != -1)
  {
LABEL_9:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logs.framework);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_22DF91000, v36, v37, "RegistryCrux fully initialized and synced", v38, 2u);
    MEMORY[0x2318DFC30](v38, -1, -1);
  }

  return v1;
}

uint64_t NotifyState.__deallocating_deinit()
{
  free(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 45, 7);
}

uint64_t type metadata accessor for NRMutableDeviceCollection(uint64_t a1, unint64_t *a2, void *a3)
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

BOOL NotifyState.registerDispatch(bootstrap:)(char a1)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  v8 = *(v1 + 16);
  type metadata accessor for OS_dispatch_queue();
  (*(v5 + 104))(v7, *MEMORY[0x277D851C8], v4);
  v9 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v7, v4);
  aBlock[4] = partial apply for closure #1 in NotifyState.registerDispatch(bootstrap:);
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  v11 = notify_register_dispatch(v8, &out_token, v9, v10);
  _Block_release(v10);

  if ((out_token & 0x80000000) == 0)
  {
    *(v2 + 40) = out_token;
    *(v2 + 44) = 0;
  }

  result = v11 != 0;
  if (!v11 && (a1 & 1) != 0)
  {
    (*(v2 + 24))(v2);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF94854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for ContinuousClock.Instant();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t one-time initialization function for framework()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logs.framework);
  __swift_project_value_buffer(v0, static Logs.framework);
  return Logger.init(subsystem:category:)();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  return (*(a1 + 32))();
}

{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t outlined init with copy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    v5 = 0;
    do
    {
      outlined init with copy of RegistryState.LoggingInfo?(v4 + 8 * v5 + 32, v12, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of UUID?(v12, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      if (Strong)
      {
        v11 = Strong;
        MEMORY[0x2318DF0D0]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v5;
      }

      else
      {
        swift_beginAccess();
        v7 = *(a1 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 16) = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          *(a1 + 16) = v7;
        }

        v9 = v7[2];
        if (v5 >= v9)
        {
          __break(1u);
          return;
        }

        v10 = v9 - 1;
        outlined destroy of UUID?(&v7[v5 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
        swift_arrayInitWithTakeFrontToBack();
        v7[2] = v10;
        *(a1 + 16) = v7;
        swift_endAccess();
      }

      v4 = *(a1 + 16);
    }

    while (v5 < *(v4 + 16));
  }
}

uint64_t specialized WeakCollection.append(_:)(uint64_t a1)
{
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2 + 4);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  outlined init with take of WeakCollection<PDRRegistry>.Weak(v9, &v3[v6 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
  *(v1 + 16) = v3;
  swift_endAccess();
  v7 = *(v1 + 24);

  os_unfair_lock_unlock(v7 + 4);
}

{
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2 + 4);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  outlined init with take of WeakCollection<PDRRegistry>.Weak(v9, &v3[v6 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
  *(v1 + 16) = v3;
  swift_endAccess();
  v7 = *(v1 + 24);

  os_unfair_lock_unlock(v7 + 4);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo11PDRRegistryC_GGMd, &_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo11PDRRegistryC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo19PDRRegistryDelegate_p_GGMd, &_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo19PDRRegistryDelegate_p_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata instantiation function for WeakCollection.Weak(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined init with take of WeakCollection<PDRRegistry>.Weak(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t Registry_Impl.bootstrapNotify(_:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  v13 = *&v3[OBJC_IVAR___PDRRegistry_Impl_unfairLock];

  os_unfair_lock_lock(v13 + 4);

  v14 = *&v3[OBJC_IVAR___PDRRegistry_Impl_delegates];
  v15 = *(v14 + 24);

  os_unfair_lock_lock(v15 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v14, aBlock);
  v16 = aBlock[0];
  v17 = *(v14 + 24);

  os_unfair_lock_unlock(v17 + 4);

  v18 = *&v4[v12];

  os_unfair_lock_unlock(v18 + 4);

  v19 = [v4 callbackQueue];
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v4;
  v21 = v29;
  v22 = v30;
  v20[4] = v29;
  v20[5] = v22;
  v20[6] = v31;
  aBlock[4] = partial apply for closure #1 in Registry_Impl.bootstrapNotify(_:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_40;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  v25 = v4;
  v26 = v21;
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v11, v8, v23);
  _Block_release(v23);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v32);
}

uint64_t sub_22DF95770()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = 0;
    do
    {
      outlined init with copy of RegistryState.LoggingInfo?(v5 + 8 * v6 + 32, v12, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of UUID?(v12, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      if (Strong)
      {
        v11 = swift_unknownObjectRetain();
        MEMORY[0x2318DF0D0](v11);
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = swift_unknownObjectRelease();
        ++v6;
      }

      else
      {
        swift_beginAccess();
        v8 = *(a1 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 16) = v8;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v8 = result;
          *(a1 + 16) = result;
        }

        v9 = v8[2];
        if (v6 >= v9)
        {
          __break(1u);
          return result;
        }

        v10 = v9 - 1;
        outlined destroy of UUID?(&v8[v6 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
        swift_arrayInitWithTakeFrontToBack();
        v8[2] = v10;
        *(a1 + 16) = v8;
        result = swift_endAccess();
      }

      v5 = *(a1 + 16);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t outlined init with copy of RegistryState.LoggingInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in Registry_Impl.bootstrapNotify(_:)(unint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v53 = a2;
  v54 = a3;
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v52 = &v40 - v10;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    do
    {
      v12 = 0;
      v13 = a1 & 0xC000000000000001;
      v44 = a1 + 32;
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
      v51 = v43 + 16;
      v14 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v15 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v16 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v56 = (v43 + 8);
      v55 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41 = v11;
      v42 = a1;
      v40 = a1 & 0xC000000000000001;
      while (v13)
      {
        v17 = MEMORY[0x2318DF260](v12, a1);
        v18 = __OFADD__(v12++, 1);
        if (v18)
        {
          goto LABEL_23;
        }

LABEL_11:
        if ([v17 v15[47]])
        {
          [v17 v14[46]];
          result = swift_unknownObjectRelease();
          if (v12 == v11)
          {
            return result;
          }
        }

        else
        {
          v58 = v17;
          v19 = [v54 allPairingIDs];
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = *(v20 + 16);
          if (v21)
          {
            v46 = v20;
            v47 = v12;
            v22 = v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
            v57 = *(v43 + 72);
            v23 = *(v43 + 16);
            v24 = v52;
            v23(v52, v22, v6);
            while (1)
            {
              v38 = v58;
              if ([v58 v15[47]])
              {
                v25 = v15;
                v26 = v48;
                v23(v48, v24, v6);
                v27 = type metadata accessor for Device_Impl(0);
                v28 = objc_allocWithZone(v27);
                v23(&v28[OBJC_IVAR___PDRDevice_Impl_uuid_], v26, v6);
                v29 = &v28[OBJC_IVAR___PDRDevice_Impl_registryState];
                v30 = v54;
                v32 = v49;
                v31 = v50;
                *v29 = v54;
                *(v29 + 1) = v32;
                *(v29 + 2) = v31;
                v59.receiver = v28;
                v59.super_class = v27;
                v33 = v30;
                v34 = v32;
                v35 = objc_msgSendSuper2(&v59, sel_init);
                v36 = *v56;
                v37 = v26;
                v15 = v25;
                v16 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
                (*v56)(v37, v6);
                [v38 registry:v53 added:v35];

                v24 = v52;
                v36(v52, v6);
              }

              else
              {
                (*v56)(v24, v6);
              }

              v22 += v57;
              if (!--v21)
              {
                break;
              }

              v23(v24, v22, v6);
            }

            swift_unknownObjectRelease();

            v11 = v41;
            a1 = v42;
            v12 = v47;
            v13 = v40;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v14 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
          if (v12 == v11)
          {
            return result;
          }
        }
      }

      if (v12 >= *(v45 + 16))
      {
        goto LABEL_24;
      }

      v17 = *(v44 + 8 * v12);
      swift_unknownObjectRetain();
      v18 = __OFADD__(v12++, 1);
      if (!v18)
      {
        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v39 = a1;
      }

      else
      {
        v39 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x2318DF310](v39);
      v11 = result;
    }

    while (result);
  }

  return result;
}

uint64_t PDRDevice.isPaired()(void *a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    outlined destroy of UUID?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  return result;
}

double Device_Impl.valueFor(property:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR___PDRDevice_Impl_registryState;
  v6 = *(v2 + OBJC_IVAR___PDRDevice_Impl_registryState);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = [v6 deviceForPairingID_];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:a1];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 value];

      if (v11)
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
          *(a2 + 24) = swift_getObjectType();

          *a2 = v11;
          return result;
        }

        v13 = *(v5 + 8);
        if (v13)
        {
          v14 = v12;
          swift_unknownObjectRetain();
          v15 = [v13 objectForKeyedSubscript_];
          if (v15)
          {
            v16 = v15;
            *(a2 + 24) = swift_getObjectType();

            swift_unknownObjectRelease_n();
            *a2 = v16;
            return result;
          }

          swift_unknownObjectRelease_n();
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logs.framework);
    v8 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22DF91000, v8, v19, "Device could not find itself in RegistryState", v20, 2u);
      MEMORY[0x2318DFC30](v20, -1, -1);
    }
  }

LABEL_15:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for Device_Impl(uint64_t a1)
{
  result = type metadata singleton initialization cache for Device_Impl;
  if (!type metadata singleton initialization cache for Device_Impl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t PDRDevice.localPairingDataStorePath.getter(void *a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of UUID?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

Swift::Bool __swiftcall Device_Impl.supportsCapabilityRaw(_:)(Swift::UInt32 a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  outlined init with copy of Any?(v9, &v7);
  if (*(&v8 + 1))
  {
    type metadata accessor for NRMiniUUIDSet();
    if (swift_dynamicCast())
    {
      v3 = [v6 hasCapability_];

      outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
      return v3;
    }

    v5 = v9;
  }

  else
  {
    outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
    v5 = &v7;
  }

  outlined destroy of UUID?(v5, &_sypSgMd, &_sypSgMR);
  return 0;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NRMiniUUIDSet()
{
  result = lazy cache variable for type metadata for NRMiniUUIDSet;
  if (!lazy cache variable for type metadata for NRMiniUUIDSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRMiniUUIDSet);
  }

  return result;
}

id @objc PDRDevice.systemBuildVersion()(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = PDRDevice.localPairingDataStorePath.getter(a3);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x2318DF040](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_22DF96B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DF96BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DF96C24()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DF96C74()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DF96CD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DF96D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96D44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96D8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DF96DCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96E14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DF96E5C()
{
  v1 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22DF96F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22DF9701C()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_22DF97074()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22DF9743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DF976C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DF97928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return NSRequestConcreteImplementation();
}

uint64_t PDRRawVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 componentsSeparatedByString:@"."];
    if (![v3 count])
    {
      v11 = 0xFFFFFFFFLL;
LABEL_11:

      goto LABEL_12;
    }

    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];

    if ([v3 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 objectAtIndexedSubscript:1];
      v7 = [v6 integerValue];

      if ([v3 count] >= 3)
      {
        v8 = [v3 objectAtIndexedSubscript:2];
        v9 = [v8 integerValue];

        v10 = v9;
LABEL_10:
        v11 = (v5 << 16) | (v7 << 8) | v10;
        goto LABEL_11;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_12:

  return v11;
}

uint64_t PDRWatchOSVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0xFFFFFFFFLL;
  if (v3 && a2)
  {
    v4 = PDRRawVersionFromString(a2);
    v5 = v3;
    if (([v5 isEqualToString:@"Watch OS"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"watchOS") & 1) == 0)
    {
      if (v4 >> 8 == 2050 && [v5 isEqualToString:@"iPhone OS"])
      {
        v4 = v4 | 0x10000u;
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

uint64_t PDRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = a1;
  v2 = [v1 valueForProperty:@"systemName"];
  v3 = [v1 valueForProperty:@"systemVersion"];

  v4 = PDRWatchOSVersion(v2, v3);
  return v4;
}

id frameworkLog(uint64_t a1)
{
  if (frameworkLog_onceToken != -1)
  {
    frameworkLog_cold_1();
  }

  v2 = frameworkLog_logHandle;

  return v2;
}

uint64_t __frameworkLog_block_invoke()
{
  frameworkLog_logHandle = os_log_create("com.apple.paireddeviceregistry", "framework");

  return MEMORY[0x2821F96F8]();
}

uint64_t PDRDeviceSizeForProductType(void *a1)
{
  v1 = a1;
  v2 = [&unk_28419EAE0 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2 && (v2 = [v2 intValue], v2))
  {
    v4 = v2;
  }

  else
  {
    v5 = frameworkLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      PDRDeviceSizeForProductType_cold_1(v1, v5);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t PDRDeviceSizeForArtworkDeviceSubType(uint64_t a1)
{
  if (a1 <= 429)
  {
    if (a1 > 383)
    {
      if (a1 == 384)
      {
        return 1;
      }

      if (a1 == 390)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 320)
      {
        return 2;
      }

      if (a1 == 340)
      {
        return 4;
      }
    }
  }

  else if (a1 <= 483)
  {
    if (a1 == 430)
    {
      return 5;
    }

    if (a1 == 446)
    {
      return 8;
    }
  }

  else
  {
    switch(a1)
    {
      case 484:
        return 6;
      case 496:
        return 9;
      case 502:
        return 7;
    }
  }

  v3 = frameworkLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    PDRDeviceSizeForArtworkDeviceSubType_cold_1(a1, v3);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance PDRDevicePropertyKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x2318DF0C0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PDRDevicePropertyKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PDRDevicePropertyKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance PDRDevicePropertyKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance PDRDevicePropertyKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PDRDevicePropertyKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x2318DF040](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PDRDevicePropertyKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PDRDevicePropertyKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x2318DF040](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PDRDevicePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PDRCompatibilityState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDRDevicePropertyKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
  v3 = lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PDRDevicePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t base witness table accessor for Equatable in PDRDevicePropertyKey()
{
  return lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
}

{
  return lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
}

uint64_t specialized static InternalPreferences.double(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040](a1, a2);
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      [v10 doubleValue];
      v12 = v11;
      swift_unknownObjectRelease();

      return v12;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t specialized static InternalPreferences.BOOLean(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040](a1, a2);
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFBooleanGetTypeID())
    {
      type metadata accessor for CFBooleanRef(0);
      swift_unknownObjectRetain();
      v10 = swift_dynamicCastUnknownClassUnconditional();
      Value = CFBooleanGetValue(v10);

      swift_unknownObjectRelease();
      return Value != 0;
    }

    swift_unknownObjectRelease();
  }

  return 2;
}

id specialized static InternalPreferences.integer(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040](a1, a2);
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      v11 = [v10 integerValue];
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t partial apply for closure #1 in NotifyState.registerDispatch(bootstrap:)(uint64_t result)
{
  if ((*(v1 + 44) & 1) == 0 && *(v1 + 40) == result)
  {
    return (*(v1 + 24))(v1);
  }

  return result;
}

uint64_t RegistryCrux.hasInternalDiagnostics.getter()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics);
  if (v2 == 2)
  {
    LOBYTE(v2) = os_variant_has_internal_diagnostics();
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

double RegistryCrux.minElapsedToFireMs.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs);
  if ((*(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs + 8) & 1) == 0)
  {
    return *v1;
  }

  result = COERCE_DOUBLE(specialized static InternalPreferences.double(key:domain:)(0xD000000000000012, 0x800000022DFAFEF0, 0xD000000000000016, 0x800000022DFAFEB0));
  if (v3)
  {
    result = 30.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

double RegistryCrux.maxElapsedToFireMs.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs);
  if ((*(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs + 8) & 1) == 0)
  {
    return *v1;
  }

  result = COERCE_DOUBLE(specialized static InternalPreferences.double(key:domain:)(0xD000000000000012, 0x800000022DFAFED0, 0xD000000000000016, 0x800000022DFAFEB0));
  if (v3)
  {
    result = 5000.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t RegistryCrux.tailspinsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled);
  if (v2 == 2)
  {
    LOBYTE(v2) = specialized static InternalPreferences.BOOLean(key:domain:)(0xD000000000000018, 0x800000022DFAFE90, 0xD000000000000016, 0x800000022DFAFEB0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in RegistryCrux.().init()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(a2 + 24);
  aBlock[4] = partial apply for closure #1 in closure #1 in RegistryCrux.().init();
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_169;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v9, v6, v10);
  _Block_release(v10);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v13);
}

uint64_t closure #1 in closure #1 in RegistryCrux.().init()(uint64_t a1)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v3 = refreshed - 8;
  v4 = *(refreshed - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](refreshed);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  static ContinuousClock.now.getter();
  v10 = *(v3 + 28);
  *&v9[v10] = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  v11 = objc_opt_self();
  outlined init with copy of RegistryCrux.RefreshTimings(v9, v7, type metadata accessor for RegistryCrux.RefreshTimings);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  outlined init with take of RegistryCrux.RefreshTimings(v7, v13 + v12);
  *(v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in closure #1 in RegistryCrux.().init();
  *(v14 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_179;
  v15 = _Block_copy(aBlock);

  [v11 initiateRefresh_];
  _Block_release(v15);
  outlined destroy of RegistryCrux.RefreshTimings(v9, type metadata accessor for RegistryCrux.RefreshTimings);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in RegistryCrux.().init()(uint64_t a1)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  MEMORY[0x28223BE20](refreshed);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logs.framework);
  outlined init with copy of RegistryCrux.RefreshTimings(a1, v4, type metadata accessor for RegistryCrux.RefreshTimings);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 33554688;
    v9 = *&v4[*(refreshed + 20)];
    outlined destroy of RegistryCrux.RefreshTimings(v4, type metadata accessor for RegistryCrux.RefreshTimings);
    *(v8 + 4) = v9;
    _os_log_impl(&dword_22DF91000, v6, v7, "#refresh_%hx Starting async refresh", v8, 6u);
    MEMORY[0x2318DFC30](v8, -1, -1);
  }

  else
  {
    outlined destroy of RegistryCrux.RefreshTimings(v4, type metadata accessor for RegistryCrux.RefreshTimings);
  }

  RegistryCrux.refresh(timings:)(a1);
}

uint64_t closure #2 in RegistryCrux.().init()()
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v1 = MEMORY[0x28223BE20](refreshed);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  static ContinuousClock.now.getter();
  v6 = *(refreshed + 20);
  *&v5[v6] = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logs.framework);
  outlined init with copy of RegistryCrux.RefreshTimings(v5, v3, type metadata accessor for RegistryCrux.RefreshTimings);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 33554688;
    v11 = *&v3[*(refreshed + 20)];
    outlined destroy of RegistryCrux.RefreshTimings(v3, type metadata accessor for RegistryCrux.RefreshTimings);
    *(v10 + 4) = v11;
    _os_log_impl(&dword_22DF91000, v8, v9, "#refresh_%hx Starting bootstrap sync refresh", v10, 6u);
    MEMORY[0x2318DFC30](v10, -1, -1);
  }

  else
  {
    outlined destroy of RegistryCrux.RefreshTimings(v3, type metadata accessor for RegistryCrux.RefreshTimings);
  }

  RegistryCrux.refresh(timings:)(v5);
  return outlined destroy of RegistryCrux.RefreshTimings(v5, type metadata accessor for RegistryCrux.RefreshTimings);
}

void RegistryCrux.refresh(timings:)(uint64_t a1)
{
  v4 = v1;
  v134 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v115 = &v109 - v10;
  MEMORY[0x28223BE20](v9);
  v120 = &v109 - v11;
  v121 = type metadata accessor for RegistryState.LoggingInfo(0);
  v124 = *(v121 - 8);
  v12 = MEMORY[0x28223BE20](v121);
  v119 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = (&v109 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v117 = &v109 - v17;
  MEMORY[0x28223BE20](v16);
  v126 = (&v109 - v18);
  v19 = type metadata accessor for ContinuousClock.Instant();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  MEMORY[0x28223BE20](refreshed);
  isEscapingClosureAtFileLocation = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v4[3];
  *v28 = v29;
  (*(v26 + 104))(v28, *MEMORY[0x277D85200], v25);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v28, v25);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v31 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  swift_beginAccess();
  v127 = v31;
  outlined assign with copy of RegistryCrux.RefreshTimings(a1, v31);
  swift_endAccess();
  v32 = mach_absolute_time();
  v33 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v34 = *(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v34 + 4);

  v35 = 0;
  v36 = v4[2];
  *&state64 = 0;
  if ((*(v36 + 44) & 1) == 0)
  {
    v37 = *(v36 + 40);

    if (notify_is_valid_token(v37))
    {
      if (*(v36 + 44))
      {
        __break(1u);
        goto LABEL_57;
      }

      notify_get_state(*(v36 + 40), &state64);
    }

    v35 = state64;
  }

  v38 = *(v4 + v33);

  os_unfair_lock_unlock(v38 + 4);

  if (((*(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16) ^ v35) & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    if (one-time initialization token for framework == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

  if (v35 > 0)
  {
    v110 = v32;
    outlined init with copy of RegistryCrux.RefreshTimings(v127, isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    static ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v39 = *(v20 + 1);
    v122 = v19;
    v123 = (v20 + 8);
    v114 = v39;
    v39(v22, v19);
    v19 = Duration.components.getter();
    v20 = v40;
    outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    if (RegistryCrux.hasInternalDiagnostics.getter() & 1) != 0 && (RegistryCrux.tailspinsEnabled.getter())
    {
      v41 = [objc_opt_self() instance];
      [v41 beginFetchIntervalTrace];
    }

    v113 = RegistryCrux.definitelyFetchRegistryState(oldToken:)(v35);
    v112 = v42;
    v111 = v43;
    outlined init with copy of RegistryCrux.RefreshTimings(v127, isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    static ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v114(v22, v122);
    v44 = Duration.components.getter();
    v46 = v45;
    outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    v47 = RegistryCrux.minElapsedToFireMs.getter();
    v48 = RegistryCrux.maxElapsedToFireMs.getter();
    if (v47 <= v48)
    {
      v49 = v48;
      v2 = 1.0e-15;
      v3 = v44 * 1000.0 + v46 * 1.0e-15 - (v19 * 1000.0 + v20 * 1.0e-15);
      v50 = [objc_opt_self() instance];
      v51 = v50;
      if (v47 > v3 || v3 > v49)
      {
        [v50 cancelFetchIntervalTrace];
      }

      else
      {
        [v50 endFetchIntervalTrace];

        RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000016, 0x800000022DFAFE70, &state64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
        swift_dynamicCast();
        [v128 xpcTriggerTailspinFrom:v110 forApp:0];
        swift_unknownObjectRelease();
      }

      v71 = v126;
      if ((*(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics) & 1) == 0)
      {
LABEL_45:
        if (one-time initialization token for framework == -1)
        {
LABEL_46:
          v93 = type metadata accessor for Logger();
          __swift_project_value_buffer(v93, static Logs.framework);

          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 33555200;
            v97 = v127;
            *(v96 + 4) = *(v127 + *(refreshed + 20));

            v19 = 2048;
            *(v96 + 6) = 2048;
            v20 = type metadata accessor for RegistryCrux.RefreshTimings;
            outlined init with copy of RegistryCrux.RefreshTimings(v97, isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
            static ContinuousClock.now.getter();
            ContinuousClock.Instant.duration(to:)();
            v114(v22, v122);
            v98 = Duration.components.getter();
            v100 = v99;
            outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
            *(v96 + 8) = v98 * 1000.0 + v100 * v2;
            *(v96 + 16) = 2048;
            *(v96 + 18) = v3;
            _os_log_impl(&dword_22DF91000, v94, v95, "#refresh_%hx %fms definitelyFetchRegistryState complete. %fms", v96, 0x1Au);
            MEMORY[0x2318DFC30](v96, -1, -1);
          }

          else
          {
          }

          v101 = objc_opt_self();
          v102 = swift_allocObject();
          v103 = v113;
          v102[2] = v4;
          v102[3] = v103;
          v104 = v112;
          v105 = v111;
          v102[4] = v112;
          v102[5] = v105;
          v106 = swift_allocObject();
          *(v106 + 16) = closure #1 in RegistryCrux.assignNewState(_:)partial apply;
          *(v106 + 24) = v102;
          v132 = thunk for @callee_guaranteed () -> ()partial apply;
          v133 = v106;
          *&state64 = MEMORY[0x277D85DD0];
          *(&state64 + 1) = 1107296256;
          v130 = thunk for @escaping @callee_guaranteed () -> ();
          v131 = &block_descriptor_68;
          v22 = _Block_copy(&state64);
          v107 = v104;

          v108 = v103;

          [v101 initiateAssignment_];
          _Block_release(v22);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_55:
          swift_once();
LABEL_20:
          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static Logs.framework);

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 33554944;
            v57 = v127;
            *(v56 + 4) = *(v127 + *(refreshed + 20));

            *(v56 + 6) = 2048;
            outlined init with copy of RegistryCrux.RefreshTimings(v57, isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
            static ContinuousClock.now.getter();
            ContinuousClock.Instant.duration(to:)();
            (*(v20 + 1))(v22, v19);
            v58 = Duration.components.getter();
            v60 = v59;
            outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
            *(v56 + 8) = v58 * 1000.0 + v60 * 1.0e-15;
            _os_log_impl(&dword_22DF91000, v54, v55, "#refresh_%hx %fms Refresh appears unnecessary", v56, 0x10u);
            MEMORY[0x2318DFC30](v56, -1, -1);
          }

          else
          {
          }

          return;
        }

LABEL_53:
        swift_once();
        goto LABEL_46;
      }

      v110 = isEscapingClosureAtFileLocation;
      v72 = v112;
      v73 = v112;
      v74 = v113;
      RegistryState.LoggingInfo.init(_:)(v74, v72, v111, v71);
      v63 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo;
      swift_beginAccess();
      v75 = v120;
      outlined init with copy of RegistryState.LoggingInfo?(v63 + v4, v120, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
      v20 = (v124 + 48);
      v19 = *(v124 + 48);
      v76 = v121;
      v77 = (v19)(v75, 1, v121);
      outlined destroy of UUID?(v75, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
      v78 = v77 == 1;
      v79 = v126;
      if (v78)
      {
        goto LABEL_39;
      }

      v80 = v115;
      outlined init with copy of RegistryState.LoggingInfo?(v63 + v4, v115, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
      if ((v19)(v80, 1, v76) != 1)
      {
        if (*v79 == *v80 && v79[1] == *(v80 + 8) && v79[2] == *(v80 + 16))
        {
          ContinuousClock.Instant.duration(to:)();
          v81 = static Duration.< infix(_:_:)();
          outlined destroy of RegistryCrux.RefreshTimings(v80, type metadata accessor for RegistryState.LoggingInfo);
          if ((v81 & 1) == 0)
          {
LABEL_44:
            outlined destroy of RegistryCrux.RefreshTimings(v79, type metadata accessor for RegistryState.LoggingInfo);
            isEscapingClosureAtFileLocation = v110;
            goto LABEL_45;
          }

LABEL_39:
          v84 = v116;
          outlined init with copy of RegistryCrux.RefreshTimings(v79, v116, type metadata accessor for RegistryState.LoggingInfo);
          (*(v124 + 56))(v84, 0, 1, v76);
          swift_beginAccess();
          outlined assign with take of RegistryState.LoggingInfo?(v84, v63 + v4, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
          swift_endAccess();
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          __swift_project_value_buffer(v85, static Logs.framework);
          v19 = v117;
          outlined init with copy of RegistryCrux.RefreshTimings(v79, v117, type metadata accessor for RegistryState.LoggingInfo);
          v20 = v118;
          outlined init with copy of RegistryCrux.RefreshTimings(v79, v118, type metadata accessor for RegistryState.LoggingInfo);
          v86 = v119;
          outlined init with copy of RegistryCrux.RefreshTimings(v79, v119, type metadata accessor for RegistryState.LoggingInfo);

          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 33555456;
            *(v89 + 4) = *(v127 + *(refreshed + 20));

            *(v89 + 6) = 2048;
            v90 = v19;
            v91 = *v19;
            outlined destroy of RegistryCrux.RefreshTimings(v90, type metadata accessor for RegistryState.LoggingInfo);
            *(v89 + 8) = v91;
            *(v89 + 16) = 2048;
            v19 = *(v20 + 1);
            outlined destroy of RegistryCrux.RefreshTimings(v20, type metadata accessor for RegistryState.LoggingInfo);
            *(v89 + 18) = v19;
            *(v89 + 26) = 2048;
            v20 = *(v86 + 16);
            outlined destroy of RegistryCrux.RefreshTimings(v86, type metadata accessor for RegistryState.LoggingInfo);
            *(v89 + 28) = v20;
            _os_log_impl(&dword_22DF91000, v87, v88, "#refresh_%hx Device collection info after definitelyFetchRegistryState: %ld total %ld paired %ld active", v89, 0x24u);
            v92 = v89;
            v79 = v126;
            MEMORY[0x2318DFC30](v92, -1, -1);
          }

          else
          {
            outlined destroy of RegistryCrux.RefreshTimings(v86, type metadata accessor for RegistryState.LoggingInfo);
            outlined destroy of RegistryCrux.RefreshTimings(v20, type metadata accessor for RegistryState.LoggingInfo);
            outlined destroy of RegistryCrux.RefreshTimings(v19, type metadata accessor for RegistryState.LoggingInfo);
          }

          goto LABEL_44;
        }

LABEL_38:
        outlined destroy of RegistryCrux.RefreshTimings(v80, type metadata accessor for RegistryState.LoggingInfo);
        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      return;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v123 = v20;
  v61 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logs.framework);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v122 = v19;
    v66 = v65;
    *v65 = 33554944;
    v67 = v127;
    *(v65 + 4) = *(v127 + *(refreshed + 20));

    *(v66 + 6) = 2048;
    outlined init with copy of RegistryCrux.RefreshTimings(v67, isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    static ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    (*(v123 + 1))(v22, v122);
    v68 = Duration.components.getter();
    v70 = v69;
    outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryCrux.RefreshTimings);
    *(v66 + 8) = v68 * 1000.0 + v70 * 1.0e-15;
    _os_log_impl(&dword_22DF91000, v63, v64, "#refresh_%hx %fms Daemon is idle, creating empty collection", v66, 0x10u);
    MEMORY[0x2318DFC30](v66, -1, -1);
  }

  else
  {
  }

  v82 = objc_opt_self();
  v83 = swift_allocObject();
  v83[2] = v4;
  v83[3] = v61;
  v83[4] = 0;
  v83[5] = v35;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for closure #1 in RegistryCrux.assignNewState(_:);
  *(v76 + 24) = v83;
  v132 = partial apply for thunk for @callee_guaranteed () -> ();
  v133 = v76;
  *&state64 = MEMORY[0x277D85DD0];
  *(&state64 + 1) = 1107296256;
  v130 = thunk for @escaping @callee_guaranteed () -> ();
  v131 = &block_descriptor_57;
  v22 = _Block_copy(&state64);
  v79 = v133;

  v4 = v61;

  [v82 initiateAssignment_];
  _Block_release(v22);
  v80 = swift_isEscapingClosureAtFileLocation();

  if (v80)
  {
    __break(1u);
    goto LABEL_38;
  }
}

void closure #1 in RegistryCrux.assignNewState(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v90 = type metadata accessor for ContinuousClock.Instant();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  MEMORY[0x28223BE20](refreshed);
  v87 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v12 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);
  v14 = *(v13 + 24);

  os_unfair_lock_lock(v14 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v13, aBlock);
  v15 = aBlock[0];
  v16 = *(v13 + 24);

  os_unfair_lock_unlock(v16 + 4);

  v17 = (a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v18 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v19 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
  v96 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  *v17 = a2;
  v17[1] = a3;
  v100 = a4;
  v17[2] = a4;
  v20 = *(a1 + v11);
  v98 = a3;
  v21 = a3;

  v22 = v18;
  v23 = v19;
  v24 = a2;
  os_unfair_lock_unlock(v20 + 4);

  if (one-time initialization token for framework != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static Logs.framework);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v99 = v15;
    v93 = v26;
    v86 = refreshed;
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 33554944;
      v31 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
      swift_beginAccess();
      *(v30 + 4) = *(v31 + refreshed[5]);

      *(v30 + 6) = 2048;
      v91 = a1;
      v95 = v22;
      v32 = v87;
      outlined init with copy of RegistryCrux.RefreshTimings(v31, v87, type metadata accessor for RegistryCrux.RefreshTimings);
      v97 = v23;
      v33 = v88;
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v34 = v24;
      (*(v89 + 8))(v33, v90);
      v35 = Duration.components.getter();
      v37 = v36;
      v38 = v32;
      v22 = v95;
      a1 = v91;
      outlined destroy of RegistryCrux.RefreshTimings(v38, type metadata accessor for RegistryCrux.RefreshTimings);
      v39 = v35;
      v23 = v97;
      v40 = v37;
      v24 = v34;
      *(v30 + 8) = v39 * 1000.0 + v40 * 1.0e-15;
      _os_log_impl(&dword_22DF91000, v27, v28, "#refresh_%hx %fms New collection swapped in", v30, 0x10u);
      v41 = v30;
      v15 = v99;
      MEMORY[0x2318DFC30](v41, -1, -1);
    }

    else
    {
    }

    v42 = v22;
    swift_retain_n();
    v43 = v42;
    v44 = v23;
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    v45 = v24;
    v46 = v21;
    refreshed = v45;
    v47 = v46;
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v92 = v44;
    v97 = v47;
    if (v50)
    {
      v51 = swift_slowAlloc();
      *v51 = 33555712;
      v52 = v43;
      v53 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
      swift_beginAccess();
      LOWORD(v53) = *(v53 + v86[5]);

      *(v51 + 4) = v53;

      *(v51 + 6) = 1040;
      *(v51 + 8) = 16;
      *(v51 + 12) = 2048;

      *(v51 + 14) = v96 & 0x3FFFFFFFFFFFFFFFLL;
      *(v51 + 22) = 1040;
      *(v51 + 24) = 16;
      *(v51 + 28) = 2048;
      v43 = v52;

      *(v51 + 30) = v100 & 0x3FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_22DF91000, v48, v49, "#refresh_%hx history %.*llx -> %.*llx", v51, 0x26u);
      MEMORY[0x2318DFC30](v51, -1, -1);
    }

    else
    {

      v48 = refreshed;
    }

    type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for NRMutableDeviceCollection, 0x277D2BCE8);
    v54 = [swift_getObjCClassFromMetadata() diffFrom:v43 to:refreshed];

    if (!v54)
    {

LABEL_25:
      v77 = v92;
      goto LABEL_26;
    }

    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (!v95)
    {

      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v96 = v54;
    v85 = v43;
    v91 = a1;
    v84 = v15 >> 62;
    if (v15 >> 62)
    {
      break;
    }

    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_19;
    }

LABEL_12:
    v94 = objc_opt_self();
    if (v21 < 1)
    {
      __break(1u);
      return;
    }

    a1 = 0;
    v55 = v15 & 0xC000000000000001;
    v22 = v102;
    while (1)
    {
      v56 = v55 ? MEMORY[0x2318DF260](a1, v15) : *(v15 + 8 * a1 + 32);
      v57 = v56;
      type metadata accessor for Registry_Impl();
      v58 = swift_dynamicCastClassUnconditional();
      v59 = swift_allocObject();
      v60 = v95;
      v59[2] = v58;
      v59[3] = v60;
      v61 = v98;
      v59[4] = refreshed;
      v59[5] = v61;
      v59[6] = v100;
      v24 = swift_allocObject();
      v24[2] = partial apply for closure #1 in Registry_Impl.notify(deviceColletionDiff:state:);
      v24[3] = v59;
      v102[2] = thunk for @callee_guaranteed () -> ()partial apply;
      v103 = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v102[0] = thunk for @escaping @callee_guaranteed () -> ();
      v102[1] = &block_descriptor_78;
      v23 = _Block_copy(aBlock);
      v15 = v103;
      v62 = v57;
      v63 = refreshed;
      v64 = v97;
      v65 = v62;
      swift_unknownObjectRetain();

      [v94 initiateNotifications_];

      _Block_release(v23);
      LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

      if (v65)
      {
        break;
      }

      ++a1;
      v15 = v99;
      if (v21 == a1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  if (v15 < 0)
  {
    v83 = v15;
  }

  else
  {
    v83 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = MEMORY[0x2318DF310](v83);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_19:
  v66 = v91;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v67, v68))
  {

    swift_unknownObjectRelease();

    swift_bridgeObjectRelease_n();
    v43 = v85;
    goto LABEL_25;
  }

  v69 = swift_slowAlloc();
  *v69 = 33555200;
  v70 = v66 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  swift_beginAccess();
  *(v69 + 4) = *(v70 + v86[5]);

  *(v69 + 6) = 2048;
  v71 = v87;
  outlined init with copy of RegistryCrux.RefreshTimings(v70, v87, type metadata accessor for RegistryCrux.RefreshTimings);
  v72 = v88;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  (*(v89 + 8))(v72, v90);
  v73 = Duration.components.getter();
  v75 = v74;
  outlined destroy of RegistryCrux.RefreshTimings(v71, type metadata accessor for RegistryCrux.RefreshTimings);
  *(v69 + 8) = v73 * 1000.0 + v75 * 1.0e-15;
  *(v69 + 16) = 2048;
  if (v84)
  {
    if (v15 < 0)
    {
      v81 = v15;
    }

    else
    {
      v81 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v76 = MEMORY[0x2318DF310](v81);
  }

  else
  {
    v76 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = v85;
  v77 = v92;

  *(v69 + 18) = v76;

  _os_log_impl(&dword_22DF91000, v67, v68, "#refresh_%hx %fms %ld Registries informed", v69, 0x1Au);
  MEMORY[0x2318DFC30](v69, -1, -1);

  swift_unknownObjectRelease();
  v43 = v82;
LABEL_26:
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_22DF91000, v78, v79, "assignNewState complete", v80, 2u);
    MEMORY[0x2318DFC30](v80, -1, -1);
  }
}

id RegistryCrux.definitelyFetchRegistryState(oldToken:)(uint64_t a1)
{
  v2 = v1;
  v49 = type metadata accessor for ContinuousClock.Instant();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  MEMORY[0x28223BE20](refreshed);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  v10 = "ed";
  swift_beginAccess();
  swift_beginAccess();
  v45 = v9;
  swift_beginAccess();
  v54 = v56;
  v43 = (v4 + 8);
  *&v11 = 33555200;
  v42 = v11;
  v50 = a1;
  v44 = "ed";
  while (1)
  {
    while (1)
    {
      RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000027, v10 | 0x8000000000000000, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
      swift_dynamicCast();
      v13 = v56[4];
      v14 = swift_allocObject();
      v14[2] = v7;
      v14[3] = v2;
      v14[4] = a1;
      v56[2] = partial apply for closure #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:);
      v56[3] = v14;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v56[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NRMutableDeviceCollection?, @guaranteed NRSecureDevicePropertyStore?, @unowned UInt64, @unowned Bool) -> ();
      v56[1] = &block_descriptor_0;
      v15 = _Block_copy(&aBlock);

      [v13 xpcGetDeviceCollectionWithBlock_];
      _Block_release(v15);
      if (!*(v7 + 16))
      {
        break;
      }

      swift_unknownObjectRelease();
      v12 = *v8;
      if (*v8)
      {
        goto LABEL_15;
      }
    }

    v16 = specialized getter of sleeper #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(&v57);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    result = [objc_opt_self() sleepForTimeInterval_];
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v25 = v22 * 2.37137;
    if (v22 * 2.37137 > 0.01)
    {
      v25 = 0.01;
    }

    *&v58 = v20 + v22;
    *(&v58 + 1) = v25;
    v59 = 0;
    *&v57 = v16 + 1;
    *(&v57 + 1) = v18 << (v24 >= v18);
    if (v24 < v18)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logs.framework);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = v42;
        v30 = *(refreshed + 20);
        v53 = v27;
        v31 = v45;
        *(v29 + 4) = *(v45 + v30);

        *(v29 + 6) = 2048;
        v51 = type metadata accessor for RegistryCrux.RefreshTimings;
        v32 = v31;
        v33 = v46;
        outlined init with copy of RegistryCrux.RefreshTimings(v32, v46, type metadata accessor for RegistryCrux.RefreshTimings);
        v34 = v48;
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        v52 = v28;
        (*v43)(v34, v49);
        v10 = v44;
        v35 = Duration.components.getter();
        v37 = v36;
        outlined destroy of RegistryCrux.RefreshTimings(v33, v51);
        *(v29 + 8) = v35 * 1000.0 + v37 * 1.0e-15;
        *(v29 + 16) = 2048;
        *(v29 + 18) = v24;
        v38 = v53;
        _os_log_impl(&dword_22DF91000, v53, v52, "#refresh_%hx %fms definitelyFetchRegistryState at %ld retries", v29, 0x1Au);
        v39 = v29;
        a1 = v50;
        MEMORY[0x2318DFC30](v39, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v12 = *v8;
    if (*v8)
    {
LABEL_15:
      v40 = *(v7 + 24);
      v41 = v12;

      return v41;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of sleeper #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return *a1;
  }

  swift_beginAccess();
  result = 0;
  *a1 = xmmword_22DFAE880;
  *(a1 + 16) = xmmword_22DFAE890;
  *(a1 + 32) = 0;
  return result;
}

void closure #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(void *result, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 1) == 0)
  {
    RegistryCrux.warnAboutMissingEntitlement()();
    v18 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
    swift_beginAccess();
    v15 = a5[2];
    v16 = a5[3];
    a5[2] = v18;
    a5[3] = 0;
    a5[4] = a7;
    goto LABEL_5;
  }

  if (result)
  {
    swift_beginAccess();
    v11 = a5[2];
    v12 = a5[3];
    a5[2] = result;
    a5[3] = a2;
    a5[4] = a3;
    v13 = a2;
    v14 = result;
    v15 = v11;
    v16 = v12;
LABEL_5:
    outlined consume of RegistryState?(v15, v16);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall RegistryCrux.warnAboutMissingEntitlement()()
{
  if (RegistryCrux.hasInternalDiagnostics.getter())
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logs.framework);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_22DF91000, oslog, v1, "Process is not entitled to access PairedDeviceRegistry. Please add the entitlement com.apple.nano.nanoregistry.generalaccess", v2, 2u);
      MEMORY[0x2318DFC30](v2, -1, -1);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NRMutableDeviceCollection?, @guaranteed NRSecureDevicePropertyStore?, @unowned UInt64, @unowned Bool) -> ()(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a3;
  v9(a2, a3, a4, a5);
}

uint64_t RegistryCrux.deinit()
{

  outlined destroy of RegistryCrux.RefreshTimings(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings, type metadata accessor for RegistryCrux.RefreshTimings);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);

  v1 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t RegistryCrux.__deallocating_deinit()
{
  RegistryCrux.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id one-time initialization function for unifiedRemoteObjectInterface()
{
  result = closure #1 in variable initialization expression of static RegistryCrux.unifiedRemoteObjectInterface();
  static RegistryCrux.unifiedRemoteObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static RegistryCrux.unifiedRemoteObjectInterface()
{
  [objc_opt_self() interfaceWithProtocol_];
  result = [objc_opt_self() enclosedClassTypes];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v2 + 16), 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v4 + 4), v3, v2);
    outlined consume of Set<AnyHashable>.Iterator._Variant(v10);
    if (v5 == v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_6:
  v10 = v4;
  result = [objc_opt_self() enclosedClassTypes];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v7);
  specialized _arrayForceCast<A, B>(_:)(v10);
  v8 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
LABEL_10:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = specialized Sequence._copySequenceContents(initializing:)(&v47, &v4[40 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v4 + 2) = v16;
  }

  if (result != v12)
  {
    result = outlined consume of Set<AnyHashable>.Iterator._Variant(v47);
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = *(v4 + 2);
  v13 = v48;
  v36 = v48;
  v37 = v47;
  v3 = v49;
  v16 = v50;
  v17 = v51;
  if (v51)
  {
    v18 = v50;
LABEL_27:
    v22 = (v17 - 1) & v17;
    outlined init with copy of AnyHashable(*(v37 + 48) + 40 * (__clz(__rbit64(v17)) | (v18 << 6)), &v44);
    v21 = v18;
    while (1)
    {
      outlined init with copy of RegistryState.LoggingInfo?(&v44, &v41, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      if (!*(&v42 + 1))
      {
        break;
      }

      v3 = (v3 + 64) >> 6;
      v23 = &_ss11AnyHashableVSgMd;
      while (1)
      {
        outlined destroy of UUID?(&v41, v23, &_ss11AnyHashableVSgMR);
        v24 = *(v4 + 3);
        v25 = v24 >> 1;
        if ((v24 >> 1) < v2 + 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v2 + 1, 1, v4);
          v25 = *(v4 + 3) >> 1;
        }

        outlined init with copy of RegistryState.LoggingInfo?(&v44, &v38, v23, &_ss11AnyHashableVSgMR);
        if (*(&v39 + 1))
        {
          break;
        }

        v34 = v21;
LABEL_52:
        outlined destroy of UUID?(&v38, v23, &_ss11AnyHashableVSgMR);
        v27 = v2;
        v21 = v34;
LABEL_31:
        *(v4 + 2) = v27;
        outlined init with copy of RegistryState.LoggingInfo?(&v44, &v41, v23, &_ss11AnyHashableVSgMR);
        if (!*(&v42 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v2;
      }

      while (1)
      {
        v41 = v38;
        v42 = v39;
        v43 = v40;
        v27 = v26;
        if (v2 == v26)
        {
          outlined destroy of AnyHashable(&v41);
          v2 = v27;
          goto LABEL_31;
        }

        v28 = v23;
        outlined destroy of UUID?(&v44, v23, &_ss11AnyHashableVSgMR);
        v29 = &v4[40 * v2 + 32];
        v30 = v43;
        v31 = v42;
        *v29 = v41;
        *(v29 + 16) = v31;
        *(v29 + 32) = v30;
        if (!v22)
        {
          break;
        }

        v32 = v21;
LABEL_50:
        v35 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        outlined init with copy of AnyHashable(*(v37 + 48) + 40 * (v35 | (v32 << 6)), &v44);
        v34 = v32;
LABEL_39:
        ++v2;
        v23 = v28;
        outlined init with copy of RegistryState.LoggingInfo?(&v44, &v38, v28, &_ss11AnyHashableVSgMR);
        v21 = v34;
        v26 = v27;
        if (!*(&v39 + 1))
        {
          goto LABEL_52;
        }
      }

      if (v3 <= (v21 + 1))
      {
        v33 = v21 + 1;
      }

      else
      {
        v33 = v3;
      }

      v34 = v33 - 1;
      while (1)
      {
        v32 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v32 >= v3)
        {
          v22 = 0;
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
          goto LABEL_39;
        }

        v22 = *(v36 + 8 * v32);
        ++v21;
        if (v22)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v22 = 0;
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }

LABEL_53:
    outlined destroy of UUID?(&v44, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    outlined consume of Set<AnyHashable>.Iterator._Variant(v37);
    result = outlined destroy of UUID?(&v41, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v3 + 64) >> 6;
  if (v19 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = (v3 + 64) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_55;
    }

    v17 = *(v13 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

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

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of AnyHashable(v4, &v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id RegistryCrux.connectionLocked()()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_);
LABEL_15:
    v22 = v2;
    return v3;
  }

  v4 = v0;
  v24 = 0u;
  v25 = 0u;
  v5 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined assign with take of RegistryState.LoggingInfo?(&v24, v4 + v5, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  v6 = RegistryCrux.connectionSleeper_.modify(&v24);
  if (*(v7 + 32))
  {
    (v6)(&v24, 0);
LABEL_12:
    v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v15 = MEMORY[0x2318DF040](0xD000000000000030, 0x800000022DFB0190);
    v16 = [v14 initWithMachServiceName:v15 options:{4096, v24, v25}];

    if (one-time initialization token for unifiedRemoteObjectInterface != -1)
    {
      swift_once();
    }

    [v16 setRemoteObjectInterface_];
    v17 = [objc_opt_self() interfaceWithProtocol_];
    [v16 setExportedInterface_];

    [v16 setExportedObject_];
    v26 = partial apply for closure #1 in RegistryCrux.connectionLocked();
    v27 = v4;
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 1107296256;
    *&v25 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v25 + 1) = &block_descriptor_152;
    v18 = _Block_copy(&v24);

    [v16 setInvalidationHandler_];
    _Block_release(v18);
    v26 = closure #2 in RegistryCrux.connectionLocked();
    v27 = 0;
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 1107296256;
    *&v25 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v25 + 1) = &block_descriptor_155;
    v19 = _Block_copy(&v24);
    [v16 setInterruptionHandler_];
    _Block_release(v19);
    v20 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
    swift_beginAccess();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 1;
    v21 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    [v3 activate];
    v2 = 0;
    goto LABEL_15;
  }

  v8 = RetrySleeper.sleep()();
  (v6)(&v24, 0);
  if (!v8)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logs.framework);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_12;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  v13 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  swift_beginAccess();
  if ((*(v13 + 32) & 1) == 0)
  {
    *(v12 + 4) = *v13;

    _os_log_impl(&dword_22DF91000, v10, v11, "Slept %ld times on XPC connection construction", v12, 0xCu);
    MEMORY[0x2318DFC30](v12, -1, -1);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RegistryCrux.connectionLocked()(uint64_t a1)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logs.framework);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22DF91000, v3, v4, "XPC connection is invalid. Retrying eventually.", v5, 2u);
    MEMORY[0x2318DFC30](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v7 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v7 + 4);

  memset(v16, 0, sizeof(v16));
  v8 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined assign with take of RegistryState.LoggingInfo?(v16, a1 + v8, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_;
  [*(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_) invalidate];
  v10 = *(a1 + v9);
  *(a1 + v9) = 0;

  v11 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  swift_beginAccess();
  if (*(v11 + 32))
  {
    v12 = xmmword_22DFAE890;
    v13 = xmmword_22DFAE880;
  }

  else
  {
    v13 = *v11;
    v12 = *(v11 + 16);
  }

  *v11 = v13;
  *(v11 + 16) = v12;
  *(v11 + 32) = 0;
  v14 = *(a1 + v6);

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t RegistryCrux.synchronousUntypedService(tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v8 = *(v3 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined init with copy of RegistryState.LoggingInfo?(v3 + v9, &aBlock, &_sypSgMd, &_sypSgMR);
  if (*(&v22 + 1))
  {
    outlined init with take of Any(&aBlock, a3);
LABEL_7:
    v17 = *(v3 + v7);

    os_unfair_lock_unlock(v17 + 4);
  }

  v19 = v7;
  v20 = v9;
  v18 = a3;
  outlined destroy of UUID?(&aBlock, &_sypSgMd, &_sypSgMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = 0u;
  v26 = 0u;
  swift_beginAccess();
  do
  {
    *(v11 + 16) = 0;
    v12 = RegistryCrux.connectionLocked()();
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v10;
    v13[4] = a1;
    v13[5] = a2;
    v23 = partial apply for closure #1 in RegistryCrux.synchronousUntypedService(tag:);
    v24 = v13;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    *(&v22 + 1) = &block_descriptor_149;
    v14 = _Block_copy(&aBlock);

    v15 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v14);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of UUID?(&v25, &_sypSgMd, &_sypSgMR);
    v25 = aBlock;
    v26 = v22;
  }

  while ((*(v11 + 16) & 1) != 0);
  swift_beginAccess();
  outlined assign with copy of UUID?(&v25, v3 + v20, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  result = outlined init with copy of RegistryState.LoggingInfo?(&v25, &aBlock, &_sypSgMd, &_sypSgMR);
  if (*(&v22 + 1))
  {
    outlined destroy of UUID?(&v25, &_sypSgMd, &_sypSgMR);
    outlined init with take of Any(&aBlock, v18);

    v7 = v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t getter of sleeper #1 in RegistryCrux.synchronousUntypedService(tag:)(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    return *(a1 + 16);
  }

  swift_beginAccess();
  result = 0;
  *(a1 + 16) = xmmword_22DFAE880;
  *(a1 + 32) = xmmword_22DFAE890;
  *(a1 + 48) = 0;
  return result;
}

void closure #1 in RegistryCrux.synchronousUntypedService(tag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v40 = _convertErrorToNSError(_:)();
  if ([v40 code] != 4097)
  {
    goto LABEL_7;
  }

  v10 = [v40 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_15:
    swift_beginAccess();
    *(a2 + 16) = 1;
    v25 = getter of sleeper #1 in RegistryCrux.synchronousUntypedService(tag:)(a3);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [objc_opt_self() sleepForTimeInterval_];
    v32 = __OFADD__(v25, 1);
    v33 = v25 + 1;
    if (v32)
    {
      __break(1u);
    }

    else
    {
      if (v31 * 2.37137 <= 0.01)
      {
        v34 = v31 * 2.37137;
      }

      else
      {
        v34 = 0.01;
      }

      swift_beginAccess();
      *(a3 + 32) = v29 + v31;
      *(a3 + 40) = v34;
      *(a3 + 48) = 0;
      *(a3 + 16) = v33;
      *(a3 + 24) = v27 << (v33 >= v27);
      if (v33 < v27)
      {
        goto LABEL_23;
      }

      if (one-time initialization token for framework == -1)
      {
LABEL_21:
        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logs.framework);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v36, v37))
        {

          return;
        }

        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v38 = 136315650;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v41);
        *(v38 + 12) = 2048;
        *(v38 + 14) = *(a3 + 16);

        *(v38 + 22) = 2048;
        *(v38 + 24) = *(a3 + 32);
        _os_log_impl(&dword_22DF91000, v36, v37, "Service fetch for %s retried %ld times, %f seconds", v38, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x2318DFC30](v39, -1, -1);
        MEMORY[0x2318DFC30](v38, -1, -1);

LABEL_23:
        return;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logs.framework);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_22DF91000, v19, v20, "Failed to get service: %@", v21, 0xCu);
    outlined destroy of UUID?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318DFC30](v22, -1, -1);
    MEMORY[0x2318DFC30](v21, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Int __swiftcall RegistryCrux.switchIndex()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v3 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v5 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v6 = *(v0 + v2);
  v7 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  v8 = v4;
  os_unfair_lock_unlock(v6 + 4);

  if (v5 < 0)
  {
  }

  else
  {
    RegistryCrux.synchronousUntypedService(tag:)(0x6E49686374697773, 0xED00002928786564, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
    swift_dynamicCast();
    v9 = v18;
    v16 = partial apply for closure #1 in RegistryCrux.switchIndex();
    v17 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ();
    v15 = &block_descriptor_159;
    v10 = _Block_copy(&aBlock);

    [v9 xpcSwitchIndex_];

    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = *(v1 + 16);

  return v11;
}

void closure #1 in RegistryCrux.switchIndex()(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logs.framework);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_22DF91000, v5, v6, "Fetched new switchIndex: %ld", v7, 0xCu);
    MEMORY[0x2318DFC30](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_projectBox();
  v7 = swift_projectBox();
  swift_beginAccess();
  outlined assign with copy of UUID?(a1, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  return outlined assign with copy of UUID?(a2, v7, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

void *RegistryCrux.unpair(pairingID:options:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ALL, 0x800000022DFB0170, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v13;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = partial apply for closure #1 in RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:);
  v12 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v9 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v10 = &block_descriptor_139;
  v4 = _Block_copy(&aBlock);

  [v1 xpcUnpairWithDeviceID:isa withOptions:v3 operationHasBegun:v4];
  swift_unknownObjectRelease();
  _Block_release(v4);

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = v5;

  return v5;
}

void *RegistryCrux.failsafeUnpair(options:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000018, 0x800000022DFB0150, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v12;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = partial apply for closure #1 in RegistryCrux.failsafeUnpair(options:);
  v11 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v8 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v9 = &block_descriptor_135;
  v3 = _Block_copy(&aBlock);

  [v1 xpcUnpairWithDeviceID:0 withOptions:isa operationHasBegun:v3];
  swift_unknownObjectRelease();
  _Block_release(v3);

  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = v4;

  return v4;
}

uint64_t RegistryCrux.setActive(device:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000012, 0x800000022DFB0110, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v7 = v18[1];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v22 = partial apply for closure #1 in RegistryCrux.setActive(device:);
  v23 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@guaranteed Error?, @guaranteed String?) -> ();
  v21 = &block_descriptor_131;
  v13 = _Block_copy(&aBlock);

  [v7 xpcSwitchActiveDeviceWithDeviceID:isa withAssertionHandler:v13];
  swift_unknownObjectRelease();
  _Block_release(v13);

  swift_beginAccess();
  v14 = *(v8 + 16);
  swift_beginAccess();
  v15 = *(v9 + 16);

  v16 = v15;

  return v14;
}

void closure #1 in RegistryCrux.setActive(device:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    *(a4 + 16) = a1;
    v8 = a1;
  }

  else
  {
    if (a3)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    swift_beginAccess();
    *(a5 + 16) = v9;
    *(a5 + 24) = v10;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Error?, @guaranteed String?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a2;
  v4(a2, v5, v7);
}

Swift::Bool __swiftcall RegistryCrux.isAssertionActive(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ELL, 0x800000022DFAFF90, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v3 = v14;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MEMORY[0x2318DF040](countAndFlagsBits, object);
  v12 = partial apply for closure #1 in RegistryCrux.isAssertionActive(identifier:);
  v13 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v11 = &block_descriptor_87;
  v6 = _Block_copy(&aBlock);

  [v3 xpcIsAssertionActive:v5 withCompletion:v6];
  swift_unknownObjectRelease();
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v4 + 16);

  return v7;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(a1, a2, a3);
}

{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall RegistryCrux.invalidateSwitchAssertion(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000026, 0x800000022DFAFF40, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v3 = v11;
  v4 = MEMORY[0x2318DF040](countAndFlagsBits, object);
  v9 = closure #1 in RegistryCrux.invalidateSwitchAssertion(identifier:);
  v10 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v8 = &block_descriptor_81;
  v5 = _Block_copy(&aBlock);
  [v3 xpcInvalidateSwitchAssertionWithIdentifier:v4 block:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

void closure #1 in RegistryCrux.invalidateSwitchAssertion(identifier:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logs.framework);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22DF91000, oslog, v5, "Invalidation failed (daemon crashed?): %@", v6, 0xCu);
      outlined destroy of UUID?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318DFC30](v7, -1, -1);
      MEMORY[0x2318DFC30](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

Swift::Int __swiftcall RegistryCrux.lastSyncSwitchIndex()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v4 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v6 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  v9 = v5;
  os_unfair_lock_unlock(v7 + 4);

  if (v6 < 0)
  {
  }

  else
  {
    v25 = v8;
    RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000015, 0x800000022DFB00F0, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
    swift_dynamicCast();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v2;
    v30 = partial apply for closure #1 in RegistryCrux.lastSyncSwitchIndex();
    v31 = v10;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ();
    v29 = &block_descriptor_121;
    v11 = _Block_copy(&aBlock);

    [v26 xpcGetLastSwitchIndex_];
    _Block_release(v11);
    swift_beginAccess();
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = one-time initialization token for framework;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logs.framework);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v24 = v9;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v12;
        v21 = v16;
        _os_log_impl(&dword_22DF91000, v17, v18, "Failed to get switchIndex value from CFPrefs: %@", v19, 0xCu);
        outlined destroy of UUID?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2318DFC30](v20, -1, -1);
        MEMORY[0x2318DFC30](v19, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v22 = *(v1 + 16);

  return v22;
}

void closure #1 in RegistryCrux.lastSyncSwitchIndex()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a2 = v14;
    }

    else
    {
      a2 = 0;
    }
  }

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logs.framework);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    swift_beginAccess();
    *(v13 + 4) = *(a3 + 16);

    _os_log_impl(&dword_22DF91000, v11, v12, "Fetched lastSyncSwitchIndex: %ld", v13, 0xCu);
    MEMORY[0x2318DFC30](v13, -1, -1);
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t RegistryCrux.migrationCount(pairingID:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ALL, 0x800000022DFB00B0, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = partial apply for closure #1 in RegistryCrux.migrationCount(pairingID:);
  v10 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ();
  v8 = &block_descriptor_111;
  v3 = _Block_copy(&aBlock);

  [v1 xpcGetMigrationCountForPairingID:isa completion:v3];
  swift_unknownObjectRelease();
  _Block_release(v3);

  swift_beginAccess();
  v4 = *(v0 + 16);

  return v4;
}

uint64_t RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000034, 0x800000022DFB0040, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v5 = v16;
  v6 = MEMORY[0x2318DF040](a1, a2);
  v14 = partial apply for closure #1 in RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:);
  v15 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed NRWatchPairingExtendedMetadata?) -> ();
  v13 = &block_descriptor_105;
  v7 = _Block_copy(&aBlock);

  [v5 xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v6 completion:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  return v8;
}

void closure #1 in RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  v6 = *(a3 + 24);
  *(a3 + 24) = a2;
  v7 = a2;
}

uint64_t RegistryCrux.completeRTCPairingMetric(metricID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000023, 0x800000022DFB0010, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v5 = v16;
  v6 = MEMORY[0x2318DF040](a1, a2);
  v14 = partial apply for closure #1 in RegistryCrux.completeRTCPairingMetric(metricID:);
  v15 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13 = &block_descriptor_99;
  v7 = _Block_copy(&aBlock);

  [v5 xpcSubmitRTCPairingMetricForMetricID:v6 withSuccess:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  return v8;
}

void closure #1 in RegistryCrux.completeRTCPairingMetric(metricID:)(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  v6 = *(a3 + 24);
  *(a3 + 24) = a2;
  v7 = a2;
}

void *RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a4;
  v24 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000030, 0x800000022DFAFFD0, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v13 = v30;
  v14 = MEMORY[0x2318DF040](a1, a2);
  v15 = MEMORY[0x2318DF040](a3, v23);
  v16 = [v24 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  v28 = partial apply for closure #1 in RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:);
  v29 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v27 = &block_descriptor_93;
  v18 = _Block_copy(&aBlock);

  [v13 xpcPairingClientSetAltAccountName:v14 altDSID:v15 forPairingID:isa completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);

  swift_beginAccess();
  v19 = *(v12 + 16);
  v20 = v19;

  return v19;
}

void closure #1 in RegistryCrux.unpair(pairingID:options:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall RegistryCrux.remove(registry:)(PDRRegistry *registry)
{
  v3 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v4 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);
  v10 = 0;
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6 + 4);

  v7 = registry;
  specialized WeakCollection.sweep(action:)(v5, v7, &v10, v5, &v11);

  v8 = *(v5 + 24);

  os_unfair_lock_unlock(v8 + 4);

  if (v10)
  {
  }

  v9 = *(v1 + v3);

  os_unfair_lock_unlock(v9 + 4);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
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
    return MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(uint64_t result)
{
  if (result)
  {
    v7[3] = v1;
    v7[4] = v2;
    v3 = result;
    v7[0] = 0;
    MEMORY[0x2318DFC40](v7, 8);
    v4 = v3;
    v5 = LOWORD(v7[0]) * v3;
    if (v3 > (LOWORD(v7[0]) * v3) && -v3 % v3 > (LOWORD(v7[0]) * v3))
    {
      v6 = (-v3 % v3);
      do
      {
        v7[0] = 0;
        MEMORY[0x2318DFC40](v7, 8);
        v5 = LOWORD(v7[0]) * v4;
      }

      while (v6 > (LOWORD(v7[0]) * v4));
    }

    return HIWORD(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of AnyHashable(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void specialized RegistryCrux.xpcDeviceID(_:needsPasscode:)()
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logs.framework);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22DF91000, oslog, v1, "RegistryCrux: xpcDeviceID", v2, 2u);
    MEMORY[0x2318DFC30](v2, -1, -1);
  }
}

void closure #2 in RegistryCrux.connectionLocked()(const char *a1)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logs.framework);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DF91000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2318DFC30](v4, -1, -1);
  }
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

void outlined consume of RegistryState?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t outlined assign with copy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  (*(*(refreshed - 8) + 24))(a2, a1, refreshed);
  return a2;
}

uint64_t objectdestroy_50Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void partial apply for closure #1 in RegistryCrux.isAssertionActive(identifier:)(char a1, uint64_t a2)
{
  v3 = (a2 != 0) & a1;
  swift_beginAccess();
  *(v2 + 16) = v3;
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of RegistryState.LoggingInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
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

uint64_t outlined init with take of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in RegistryCrux.().init()()
{
  v1 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #1 in closure #1 in closure #1 in RegistryCrux.().init()(v2);
}

id Registry_Stub.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Registry_Stub.init()()
{
  v1 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR___PDRRegistry_Stub_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMd, _s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 24) = v5;
  *&v0[v3] = v4;
  *&v0[OBJC_IVAR___PDRRegistry_Stub_lastCompatibilityState] = 0;
  v0[OBJC_IVAR___PDRRegistry_Stub_started_] = 0;
  *&v0[OBJC_IVAR___PDRRegistry_Stub_status_] = 0;
  v0[OBJC_IVAR___PDRRegistry_Stub_amSingleton] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for Registry_Stub();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall Registry_Stub.stop()()
{
  if (*(v0 + OBJC_IVAR___PDRRegistry_Stub_started_) != 1 || (*(v0 + OBJC_IVAR___PDRRegistry_Stub_amSingleton) & 1) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___PDRRegistry_Stub_started_) = 0;
  }
}

uint64_t Registry_Stub.add(delegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  v5 = *(v2 + OBJC_IVAR___PDRRegistry_Stub_unfairLock);

  os_unfair_lock_lock(v5 + 4);

  specialized WeakCollection.append(_:)(a1);

  v6 = *(v2 + v4);

  os_unfair_lock_unlock(v6 + 4);
}

uint64_t Registry_Stub.remove(delegate:)(void *a1)
{
  v3 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRRegistry_Stub_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR___PDRRegistry_Stub_delegates);
  v12 = 0;
  v11 = 0;
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_unknownObjectRetain();
  specialized WeakCollection.sweep(action:)(v5, a1, &v11, v5, &v12);
  swift_unknownObjectRelease();

  v7 = *(v5 + 24);

  os_unfair_lock_unlock(v7 + 4);

  if (v11)
  {
    swift_unknownObjectRelease();
  }

  v8 = v12;
  v9 = *(v1 + v3);

  os_unfair_lock_unlock(v9 + 4);

  return v8;
}

id @objc Registry_Stub.device(forBluetoothID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  outlined destroy of UUID?(v6);

  return 0;
}

id Registry_Stub.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Registry_Stub();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc Registry_Stub.waitForPairingExtendedMetadata(advertisedName:results:)(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RetrySleeper(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RetrySleeper(uint64_t result, int a2, int a3)
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

Swift::Bool __swiftcall RetrySleeper.sleep()()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 24);
  result = [v1 sleepForTimeInterval_];
  v4 = v2 * 2.37137;
  if (v2 * 2.37137 > 0.01)
  {
    v4 = 0.01;
  }

  *(v0 + 16) = v2 + *(v0 + 16);
  *(v0 + 24) = v4;
  v5 = *v0 + 1;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    *v0 = v5;
    v6 = *(v0 + 8);
    if (v5 >= v6)
    {
      *(v0 + 8) = 2 * v6;
    }

    return v5 >= v6;
  }

  return result;
}

char *one-time initialization function for notify()
{
  type metadata accessor for NotifyState();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  v1 = MEMORY[0x2318DF040](0xD000000000000025, 0x800000022DFB04F0);
  v2 = [v1 UTF8String];
  v3 = v1;
  result = strdup(v2);
  if (result)
  {
    *(v0 + 16) = result;
    *(v0 + 24) = closure #1 in default argument 1 of NotifyState.init(name:_:);
    *(v0 + 32) = 0;
    result = NotifyState.registerDispatch(bootstrap:)(0);
    static ConnectivityStatus_Impl.notify = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ConnectivityStatus_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConnectivityStatus_Impl.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectivityStatus_Impl();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConnectivityStatus_Impl.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConnectivityStatus_Impl();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static ConnectivityStatus_Impl.currentConnectivity()()
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for notify != -1)
  {
    swift_once();
  }

  result = 0;
  v1 = static ConnectivityStatus_Impl.notify;
  v3[0] = 0;
  if ((*(static ConnectivityStatus_Impl.notify + 44) & 1) == 0)
  {
    v2 = *(static ConnectivityStatus_Impl.notify + 10);

    result = notify_is_valid_token(v2);
    if (result)
    {
      if (v1[11])
      {
        __break(1u);
      }

      else
      {
        notify_get_state(v1[10], v3);

        return v3[0];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RegistryState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RegistryState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void RegistryState.LoggingInfo.init(_:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a2;
  v54 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v53 - v11;
  v61 = a1;
  v13 = [v61 allPairingIDs];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);
  if (v15)
  {
    v64 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = v12;
    v58 = v10;
    v16 = v7 + 16;
    v59 = *(v7 + 16);
    v60 = v7 + 16;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v53[1] = v14;
    v18 = v14 + v17;
    v19 = *(v16 + 56);
    v55 = (v16 - 8);
    v56 = v19;
    v20 = v59;
    do
    {
      v21 = v57;
      v20(v57, v18, v6);
      v22 = v58;
      v20(v58, v21, v6);
      v23 = type metadata accessor for Device_Impl(0);
      v24 = objc_allocWithZone(v23);
      v20(&v24[OBJC_IVAR___PDRDevice_Impl_uuid_], v22, v6);
      v25 = &v24[OBJC_IVAR___PDRDevice_Impl_registryState];
      v26 = v61;
      v27 = v62;
      *v25 = v61;
      *(v25 + 1) = v27;
      *(v25 + 2) = a3;
      v63.receiver = v24;
      v63.super_class = v23;
      v28 = v26;
      v29 = v27;
      objc_msgSendSuper2(&v63, sel_init);
      v30 = a3;
      v31 = *v55;
      (*v55)(v22, v6);
      v31(v21, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a3 = v30;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v56;
      --v15;
    }

    while (v15);

    v32 = v64;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v60 = v32 >> 62;
  if (v32 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2318DF310](v48))
  {
    v34 = 0;
    v35 = 0;
    v36 = v32 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = MEMORY[0x2318DF260](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v37 = *(v32 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v40 = [v37 isPaired];

      if (v40)
      {
        v41 = __OFADD__(v35++, 1);
        if (v41)
        {
          goto LABEL_34;
        }
      }

      ++v34;
    }

    while (v39 != i);
    v42 = 0;
    v43 = 0;
    v54[1] = v35;
    while (1)
    {
      if (v36)
      {
        v44 = MEMORY[0x2318DF260](v42, v32);
      }

      else
      {
        if (v42 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v44 = *(v32 + 8 * v42 + 32);
      }

      v45 = v44;
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v47 = [v44 isActive];

      if (v47)
      {
        v41 = __OFADD__(v43++, 1);
        if (v41)
        {
          goto LABEL_35;
        }
      }

      ++v42;
      if (v46 == i)
      {
        goto LABEL_41;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (v32 < 0)
    {
      v48 = v32;
    }

    else
    {
      v48 = v32 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v43 = 0;
  v54[1] = 0;
LABEL_41:
  v54[2] = v43;
  if (v60)
  {
    if (v32 < 0)
    {
      v50 = v32;
    }

    else
    {
      v50 = v32 & 0xFFFFFFFFFFFFFF8;
    }

    v49 = MEMORY[0x2318DF310](v50);
  }

  else
  {
    v49 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v61;
  v51 = v62;

  *v54 = v49;
  type metadata accessor for RegistryState.LoggingInfo(0);
  static ContinuousClock.now.getter();
}

char *specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(char *a1, SEL *a2)
{
  v3 = a1;
  v4 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v5 = *&a1[OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v7 = *(v3 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v19 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v15))
  {

    if (!i)
    {
      break;
    }

    v16 = v6;
    v17 = v4;
    v18 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2318DF260](v3, v7);
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v3 + 32);
      }

      v4 = v9;
      v10 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v9 *a2])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v10 == i)
      {
        v3 = v18;
        v11 = v19;
        v6 = v16;
        v4 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 < 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  *(v6 + v3) = v11;

  v12 = *&v4[v3];
  v13 = v3;

  os_unfair_lock_unlock(v12 + 4);

  return v13;
}

{
  v3 = a1;
  v4 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v5 = *&a1[OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v7 = *(v3 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v19 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v15))
  {

    if (!i)
    {
      break;
    }

    v16 = v6;
    v17 = v4;
    v18 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2318DF260](v3, v7);
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v3 + 32);
      }

      v4 = v9;
      v10 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v9 *a2])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v10 == i)
      {
        v3 = v18;
        v11 = v19;
        v6 = v16;
        v4 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 < 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  *(v6 + v3) = v11;

  v12 = *&v4[v3];
  v13 = v3;

  os_unfair_lock_unlock(v12 + 4);

  return v13;
}

id DeviceCollectionFilter_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceCollectionFilter_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceCollectionFilter_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *DeviceCollectionFilter_Impl.active.getter(SEL *a1)
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v6 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v18 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v14))
  {

    if (!i)
    {
      break;
    }

    v15 = v5;
    v16 = v3;
    v17 = v1;
    v3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318DF260](v3, v6);
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v3 + 32);
      }

      v5 = v8;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 *a1])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v18;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v9 == i)
      {
        v1 = v17;
        v10 = v18;
        v5 = v15;
        v3 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 < 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:

  *&v5[v1] = v10;

  v11 = *(v1 + v3);
  v12 = v1;

  os_unfair_lock_unlock(v11 + 4);

  return v12;
}

uint64_t *DeviceCollectionFilter_Impl.notActive.getter(SEL *a1)
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v6 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v18 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v14))
  {

    if (!i)
    {
      break;
    }

    v15 = v5;
    v16 = v3;
    v17 = v1;
    v3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318DF260](v3, v6);
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v3 + 32);
      }

      v5 = v8;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 *a1])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v18;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v9 == i)
      {
        v1 = v17;
        v10 = v18;
        v5 = v15;
        v3 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 < 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:

  *&v5[v1] = v10;

  v11 = *(v1 + v3);
  v12 = v1;

  os_unfair_lock_unlock(v11 + 4);

  return v12;
}

id DeviceCollectionFilter_Impl.final.getter()
{
  v1 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v2 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v4 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2318DF310](v8) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_17;
  }

  v5 = *(v0 + v3);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (v5 < 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v9);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x2318DF260](0, v5);

    goto LABEL_18;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_18:
    v10 = *(v0 + v1);

    os_unfair_lock_unlock(v10 + 4);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t DeviceCollectionFilter_Impl.all.getter()
{
  v1 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v2 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3;
}

id Migrator_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Migrator_Impl.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Migrator_Impl();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Migrator_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Migrator_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @in_guaranteed Date?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v8, v15, 1, v16);

  v12(v11, v8);

  outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  return outlined destroy of UUID?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

id Registry_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static Registry_Impl.supportsWatch()()
{
  if (one-time initialization token for supportWatch != -1)
  {
    swift_once();
  }

  return static RegistryCrux.supportWatch;
}

uint64_t Registry_Impl.computeCompatibilityState()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v1 = static RegistryCrux.instance;
  v2 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v3 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v4 < 0)
  {
    return 0;
  }

  v6 = [v0 getDevicesExcluding_];
  type metadata accessor for PDRDevice();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (v7 < 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v12);
  if (!result)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2318DF260](0, v7);
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_9:
    v10 = v9;

    if (([v10 isArchived] & 1) == 0)
    {
      v11 = PDRDevice.compatibilityState.getter();

      return v11;
    }

    return 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Registry_Impl.stop()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_started_;
  if (*(&v0->super.isa + OBJC_IVAR___PDRRegistry_Impl_started_) != 1 || (*(&v0->super.isa + OBJC_IVAR___PDRRegistry_Impl_amSingleton) & 1) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    RegistryCrux.remove(registry:)(v0);

    *(&v0->super.isa + v1) = 0;
  }
}

uint64_t Registry_Impl.remove(delegate:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PDRRegistry_Impl_delegates);
  v8 = 0;
  v7 = 0;
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4 + 4);

  swift_unknownObjectRetain();
  specialized WeakCollection.sweep(action:)(v3, a1, &v7, v3, &v8);
  swift_unknownObjectRelease();

  v5 = *(v3 + 24);

  os_unfair_lock_unlock(v5 + 4);

  if (v7)
  {
    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t closure #1 in Registry_Impl.device(forBluetoothID:)(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (([v7 isActive] & 1) != 0 || objc_msgSend(v7, sel_isPaired))
  {
    v8 = [v7 bluetoothIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static UUID.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2318DF310](v11, a2))
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318DF260](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v14 = v7;
      v10 = a1(&v14);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = a3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return 0;
}

void *Registry_Impl.device(forBluetoothID:)(uint64_t a1, uint64_t (*a2)(id *), const char *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of RegistryState.LoggingInfo?(a1, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UUID?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logs.framework);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22DF91000, v15, v16, a3, v17, 2u);
      MEMORY[0x2318DFC30](v17, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v19 = [v3 getDevicesExcluding_];
    type metadata accessor for PDRDevice();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x28223BE20](v21);
    *&v23[-16] = v13;
    v22 = specialized Sequence.first(where:)(a2, &v23[-32], v20);

    (*(v11 + 8))(v13, v10);
    return v22;
  }
}

uint64_t closure #1 in Registry_Impl.device(forPairingID:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

id @objc Registry_Impl.device(forBluetoothID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), const char *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a1;
  v15 = Registry_Impl.device(forBluetoothID:)(v11, a4, a5);

  outlined destroy of UUID?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v15;
}

id Registry_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Registry_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(char *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v33 = a5;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 compatibilityState];
  v12 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  v13 = *&a1[OBJC_IVAR___PDRRegistry_Impl_unfairLock];

  os_unfair_lock_lock(v13 + 4);

  v14 = *&a1[OBJC_IVAR___PDRRegistry_Impl_delegates];
  v15 = *(v14 + 24);

  os_unfair_lock_lock(v15 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v14, aBlock);
  v16 = aBlock[0];
  v17 = *(v14 + 24);

  os_unfair_lock_unlock(v17 + 4);

  v18 = *&a1[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState];
  if (v11 != v18)
  {
    *&a1[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState] = v11;
  }

  v19 = v11 != v18;
  v20 = *&a1[v12];

  os_unfair_lock_unlock(v20 + 4);

  v21 = [a1 callbackQueue];
  v22 = swift_allocObject();
  v24 = v36;
  v23 = v37;
  *(v22 + 16) = v36;
  *(v22 + 24) = v23;
  v25 = v35;
  v26 = v33;
  *(v22 + 32) = v35;
  *(v22 + 40) = v26;
  *(v22 + 48) = v16;
  *(v22 + 56) = a1;
  *(v22 + 64) = v19;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  v29 = a1;
  v30 = v24;
  v31 = v23;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v10, v8, v27);
  _Block_release(v27);

  (*(v39 + 8))(v8, v6);
  (*(v34 + 8))(v10, v38);
}

uint64_t specialized closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v99 = a7;
  v103 = a5;
  v89 = a3;
  v90 = a4;
  v88 = a2;
  v9 = type metadata accessor for UUID();
  v92 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v77 - v12;
  v91 = a1;
  v14 = [a1 allPairingIDs];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v15;
  v86 = *(v15 + 16);
  if (!v86)
  {
  }

  v17 = 0;
  v95 = (v92 + 8);
  v18 = v103 & 0xFFFFFFFFFFFFFF8;
  v98 = v103 & 0xFFFFFFFFFFFFFF8;
  if (v103 < 0)
  {
    v18 = v103;
  }

  v77 = v18;
  v102 = v103 & 0xC000000000000001;
  v82 = @"com.apple.watch.paireddeviceregistry.didsetup";
  v81 = @"com.apple.watch.paireddeviceregistry.didunpair";
  v80 = @"com.apple.watch.paireddeviceregistry.didpair";
  v79 = @"com.apple.watch.paireddeviceregistry.didactivate";
  v78 = @"com.apple.watch.paireddeviceregistry.diddeactivate";
  v85 = v9;
  v96 = v13;
  v84 = v15;
  v83 = v92 + 16;
  while (1)
  {
    if (v17 >= *(v16 + 16))
    {
      goto LABEL_79;
    }

    v19 = v16 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v20 = *(v92 + 72);
    v94 = v17;
    v21 = *(v92 + 16);
    v21(v13, v19 + v20 * v17, v9);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v23 = [v91 objectForKeyedSubscript_];

    if (!v23)
    {
      break;
    }

    v24 = v87;
    v21(v87, v13, v9);
    v25 = type metadata accessor for Device_Impl(0);
    v26 = objc_allocWithZone(v25);
    v21(&v26[OBJC_IVAR___PDRDevice_Impl_uuid_], v24, v9);
    v27 = &v26[OBJC_IVAR___PDRDevice_Impl_registryState];
    v28 = v88;
    v29 = v89;
    *v27 = v88;
    *(v27 + 1) = v29;
    *(v27 + 2) = v90;
    v104.receiver = v26;
    v104.super_class = v25;
    v30 = v28;
    v31 = v29;
    v32 = objc_msgSendSuper2(&v104, sel_init);
    v93 = *v95;
    v93(v24, v9);
    v100 = v23;
    closure #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v23, v32);
    v97 = v33;
    v35 = v34;
    if (v103 >> 62)
    {
      v36 = MEMORY[0x2318DF310](v77);
      v37 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      if (!v36)
      {
        goto LABEL_65;
      }

LABEL_11:
      v38 = 0;
      v101 = v32;
LABEL_14:
      if (v102)
      {
        v39 = MEMORY[0x2318DF260](v38, v103);
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v38 >= *(v98 + 16))
        {
          goto LABEL_78;
        }

        v39 = *(v103 + 8 * v38 + 32);
        swift_unknownObjectRetain();
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          break;
        }
      }

      if ([v39 respondsToSelector_])
      {
        [v39 v37[46]];
      }

      else
      {
        if (v99)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static Logs.framework);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_22DF91000, v42, v43, "Informing delegate about compatibility state change (N/A)", v44, 2u);
            MEMORY[0x2318DFC30](v44, -1, -1);
          }
        }

        v45 = [v100 changeType];
        if (v45 == 2)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          __swift_project_value_buffer(v51, static Logs.framework);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_22DF91000, v52, v53, "Informing delegate about device removal", v54, 2u);
            MEMORY[0x2318DFC30](v54, -1, -1);
          }

          if ([v39 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v50.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            [v39 registry:a6 removed:v50.super.isa];
LABEL_41:
            swift_unknownObjectRelease();
          }
        }

        else if (v45 == 1)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static Logs.framework);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_22DF91000, v47, v48, "Informing delegate about property changes", v49, 2u);
            MEMORY[0x2318DFC30](v49, -1, -1);
          }

          if ([v39 respondsToSelector_])
          {
            type metadata accessor for PDRDevicePropertyKey(0);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
            swift_unknownObjectRetain();

            v50.super.isa = Set._bridgeToObjectiveC()().super.isa;

            [v39 registry:a6 changed:v101 properties:v50.super.isa];
            goto LABEL_41;
          }
        }

        else
        {
          if (v45)
          {
            goto LABEL_81;
          }

          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          __swift_project_value_buffer(v55, static Logs.framework);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_22DF91000, v56, v57, "Informing delegate about device creation", v58, 2u);
            MEMORY[0x2318DFC30](v58, -1, -1);
          }

          if ([v39 respondsToSelector_])
          {
            [v39 registry:a6 added:v101];
          }
        }

        v32 = v101;
        if (v35 & 1) != 0 && ([v39 respondsToSelector_])
        {
          [v39 registry:a6 didSetup:v32];
        }

        v37 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
        if (v35 & 0x100) != 0 && ([v39 respondsToSelector_])
        {
          [v39 registry:a6 didPair:v32];
        }

        if (v35 & 0x10000) != 0 && ([v39 respondsToSelector_])
        {
          [v39 registry:a6 didUnpair:v32];
        }

        if (v35 & 0x1000000) != 0 && ([v39 respondsToSelector_])
        {
          [v39 registry:a6 didActivate:v32];
        }

        if (v35 & 0x100000000) != 0 && ([v39 respondsToSelector_])
        {
          [v39 registry:a6 didDeactivate:v32];
        }
      }

      swift_unknownObjectRelease();
      ++v38;
      if (v40 == v36)
      {
        goto LABEL_65;
      }

      goto LABEL_14;
    }

    v36 = *(v98 + 16);
    v37 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
    if (v36)
    {
      goto LABEL_11;
    }

LABEL_65:
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    if (v35)
    {
      v60 = [objc_opt_self() defaultCenter];
      v61 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v59, v32);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v61);

      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v60 postNotificationName:v82 object:a6 userInfo:v62];

      if ((v35 & 0x10000) == 0)
      {
LABEL_67:
        if ((v35 & 0x100) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }
    }

    else if ((v35 & 0x10000) == 0)
    {
      goto LABEL_67;
    }

    v63 = [objc_opt_self() defaultCenter];
    v64 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v59, v32);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);

    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v63 postNotificationName:v81 object:a6 userInfo:v65];

    if ((v35 & 0x100) == 0)
    {
LABEL_68:
      if ((v35 & 0x1000000) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

LABEL_72:
    v66 = [objc_opt_self() defaultCenter];
    v67 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v59, v32);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v67);

    v68 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v66 postNotificationName:v80 object:a6 userInfo:v68];

    if ((v35 & 0x1000000) != 0)
    {
LABEL_73:
      v69 = [objc_opt_self() defaultCenter];
      v70 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v59, v32);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v70);

      v71 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v69 postNotificationName:v79 object:a6 userInfo:v71];

      goto LABEL_74;
    }

LABEL_69:

LABEL_74:
    v72 = v32;
    v13 = v96;
    if ((v35 & 0x100000000) != 0)
    {
      v73 = [objc_opt_self() defaultCenter];
      v74 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v59, v72);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v74);

      v75 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v73 postNotificationName:v78 object:a6 userInfo:v75];

      v9 = v85;
      v93(v13, v85);
    }

    else
    {
      v9 = v85;
      v93(v96, v85);
    }

    v16 = v84;
    v17 = v94 + 1;
    if (v94 + 1 == v86)
    {
    }
  }

  __break(1u);
LABEL_81:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(void *a1, void *a2)
{
  v3 = [a1 diff];
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v3 allPropertyNames];

  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_12:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v4;
  v10 = (v7 + 40);
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;

    v13 = MEMORY[0x2318DF040](v11, v12);

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v9 + 16) = v15 + 1;
    *(v9 + 8 * v15 + 32) = v13;
    v10 += 2;
    --v8;
  }

  while (v8);

LABEL_13:
  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20PDRDevicePropertyKeya_SayAEGTt0g5Tf4g_n(v9);

  specialized Registry_Impl.NotifyWorthies.init(mutatedProperties:device:)(v16, a2);
}

unint64_t getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DFAEC40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    *(inited + 72) = type metadata accessor for Device_Impl(0);
    *(inited + 48) = a2;
    v8 = a2;
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UUID?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    swift_beginAccess();
    *v3 = v4;
  }

  return v4;
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
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

void *Registry_Impl.unpair(device:options:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v7 = [a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = RegistryCrux.unpair(pairingID:options:)();

  (*(v4 + 8))(v6, v3);
  return v8;
}

void *Registry_Impl.failsafeUnpair(options:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.failsafeUnpair(options:)();

  return v0;
}

void Registry_Impl.setActive(device:results:)(void *a1, void (*a2)(void *, id))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v5 = RegistryCrux.setActive(device:)(a1, v4);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v10 = v9;
    v11 = v9;
    a2(v9, 0);
  }

  else
  {
    active = type metadata accessor for ActiveDeviceAssertion_Impl();
    v13 = objc_allocWithZone(active);
    v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid] = 1;
    *&v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_device_] = a1;
    v14 = &v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_];
    *v14 = v5;
    v14[1] = v7;
    v17.receiver = v13;
    v17.super_class = active;

    v15 = a1;
    v16 = objc_msgSendSuper2(&v17, sel_init);
    a2(0, v16);
  }
}

Swift::Int __swiftcall Registry_Impl.lastSyncSwitchIndex()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.lastSyncSwitchIndex()();

  return v0;
}

uint64_t Registry_Impl.migrationCount(pairingID:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.migrationCount(pairingID:)();

  return v0;
}

void Registry_Impl.waitForPairingExtendedMetadata(advertisedName:results:)(uint64_t a1, uint64_t a2, void (*a3)(void, id))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(a1, a2);
  v8 = v7;

  if (v8)
  {
    v9 = objc_allocWithZone(PDRPairingExtendedMetadata);
    v13 = v8;
    v10 = [v9 init];
    [v10 setChipID_];
    [v10 setPairingVersion_];
    v11 = [v13 productType];
    [v10 setProductType_];

    [v10 setPostFailsafeObliteration_];
    [v10 setIsCellularEnabled_];
    [v10 setEncodedSystemVersion_];
    v12 = v10;
    a3(v6 & 1, v10);
  }

  else
  {
    a3(v6 & 1, 0);
  }
}

void Registry_Impl.completeRTCPairingMetric(metricID:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.completeRTCPairingMetric(metricID:)(a1, a2);
  v8 = v7;

  a3(v6 & 1, v8);
}

void Registry_Impl.pairingClientSetAltAccount(name:altDSID:device:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v12 = RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:)(a1, a2, a3, a4, a5);

  a6(v12);
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

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for PDRDevicePropertyKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
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
      outlined init with copy of RegistryState.LoggingInfo?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

unint64_t specialized Registry_Impl.getSwitchEvents(after:process:)(int a1, Class a2, uint64_t a3)
{
  v63 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = MEMORY[0x28223BE20](v69);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v60 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v11 = MEMORY[0x28223BE20](v68);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = (&v60 - v14);
  MEMORY[0x28223BE20](v13);
  v85 = &v60 - v15;
  v16 = __CFADD__(a1, 1);
  LODWORD(v17) = a1 + 1;
  if (v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v3 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
  v18 = [(objc_class *)a2 switchIndex];
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = v18;
  if (!HIDWORD(v18))
  {
    if (one-time initialization token for instance == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_5:
  v67 = "stry/Registry.swift";
  v66 = v87;
  v61 = v63 + 16;
  v19 = &_s10Foundation4DateVSgMd;
  v60 = a2;
  v62 = v9;
  while (v4 < v17)
  {
LABEL_21:
    result = [a2 v3[31]];
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (HIDWORD(result))
    {
      goto LABEL_28;
    }

    LODWORD(v17) = v4 + 1;
    v16 = v4 >= result;
    v4 = result;
    if (v16)
    {
      return result;
    }
  }

  v20 = static RegistryCrux.instance;
  v73 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v72 = static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_;
  v9 = type metadata accessor for Date();
  v21 = *(v9 - 1);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = (v21 + 48);
  v64 = (v21 + 8);
  v24 = v17;
  v75 = v20;

  v3 = _s10Foundation4DateVSgMR;
  v71 = v22;
  v70 = v23;
  v74 = v4;
  v78 = v9;
  while (1)
  {
    v25 = v85;
    v22(v85, 1, 1, v9);
    outlined destroy of UUID?(v25, v19, v3);
    v22(v25, 1, 1, v9);
    v81 = swift_allocBox();
    v26 = v19;
    v28 = v27;
    v29 = type metadata accessor for UUID();
    v79 = *(v29 - 8);
    v30 = *(v79 + 56);
    v82 = v28;
    v80 = v29;
    v30(v28, 1, 1);
    v31 = v75;
    v32 = v73;
    v33 = *(v75 + v73);

    os_unfair_lock_lock(v33 + 4);

    v34 = *v72;
    v35 = v3;
    v36 = *(v72 + 16);
    v37 = *(v31 + v32);
    v38 = *(v72 + 8);

    v39 = v34;
    os_unfair_lock_unlock(v37 + 4);

    if (v36 < 0)
    {

      v3 = v35;
      v19 = v26;
    }

    else
    {
      v40 = v85;
      outlined destroy of UUID?(v85, v26, v35);
      RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001BLL, v67 | 0x8000000000000000, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
      swift_dynamicCast();
      v41 = v87[4];
      v42 = swift_allocBox();
      v76 = v38;
      v44 = v43;
      v22(v43, 1, 1, v78);
      v45 = swift_allocObject();
      *(v45 + 16) = v81;
      *(v45 + 24) = v42;
      v87[2] = closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)partial apply;
      v87[3] = v45;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v87[0] = thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @in_guaranteed Date?) -> ();
      v87[1] = &block_descriptor_25;
      v46 = _Block_copy(&aBlock);

      [v41 xpcDeviceIDAtSwitchIndex:v24 withBlock:v46];

      swift_unknownObjectRelease();
      _Block_release(v46);
      swift_beginAccess();
      outlined init with copy of RegistryState.LoggingInfo?(v44, v40, &_s10Foundation4DateVSgMd, v35);

      v3 = v35;
      v19 = &_s10Foundation4DateVSgMd;
    }

    v47 = v82;
    swift_beginAccess();
    outlined init with copy of RegistryState.LoggingInfo?(v47, v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    a2 = v83;
    outlined init with copy of RegistryState.LoggingInfo?(v85, v83, v19, v3);
    v17 = *v77;
    v9 = v78;
    v48 = (*v77)(a2, 1, v78);
    v4 = v74;
    if (v48 == 1)
    {
      outlined destroy of UUID?(v85, v19, v3);
      outlined destroy of UUID?(v83, v19, v3);
      goto LABEL_18;
    }

    v49 = v9;
    outlined destroy of UUID?(v83, v19, v3);
    a2 = (v79 + 48);
    v50 = *(v79 + 48);
    if (v50(v84, 1, v80) == 1)
    {
      outlined destroy of UUID?(v85, v19, v3);
      v9 = v49;
      goto LABEL_18;
    }

    v51 = v3;
    v52 = v65;
    outlined init with copy of RegistryState.LoggingInfo?(v85, v65, v19, v51);
    result = (v17)(v52, 1, v49);
    if (result == 1)
    {
      goto LABEL_34;
    }

    v54 = v62;
    outlined init with copy of RegistryState.LoggingInfo?(v84, v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v80;
    result = (v50)(v54, 1, v80);
    if (result == 1)
    {
      break;
    }

    v56 = v65;
    isa = Date._bridgeToObjectiveC()().super.isa;
    a2 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v63 + 16))(v63, v24, isa, a2);

    v17 = _s10Foundation4DateVSgMR;
    outlined destroy of UUID?(v85, v19, _s10Foundation4DateVSgMR);
    v58 = v54;
    v3 = _s10Foundation4DateVSgMR;
    (*(v79 + 8))(v58, v55);
    v59 = v56;
    v9 = v49;
    (*v64)(v59, v49);
LABEL_18:
    v22 = v71;
    if (v24 == 0xFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_27;
    }

    ++v24;
    outlined destroy of UUID?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v4 < v24)
    {

      a2 = v60;
      v3 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void specialized Registry_Impl.NotifyWorthies.init(mutatedProperties:device:)(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * v10)));
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
      v30 = v11;

LABEL_23:
      [a2 isSetup];
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v11;

      if (v17)
      {
        goto LABEL_23;
      }

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_25:
        [a2 isPaired];
        [a2 isPaired];
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_25;
        }

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
        {

LABEL_27:
          [a2 isActive];
          [a2 isActive];
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20PDRDevicePropertyKeya_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PDRDevicePropertyKey(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey, &protocol conformance descriptor for PDRDevicePropertyKey);
  result = MEMORY[0x2318DF160](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void specialized Registry_Impl.setActive(device:results:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v5 = RegistryCrux.setActive(device:)(a1, v4);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v10 = v9;
    v11 = v9;
    v12 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v12, 0);
  }

  else
  {
    active = type metadata accessor for ActiveDeviceAssertion_Impl();
    v14 = objc_allocWithZone(active);
    v14[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid] = 1;
    *&v14[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_device_] = a1;
    v15 = &v14[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_];
    *v15 = v5;
    v15[1] = v7;
    v18.receiver = v14;
    v18.super_class = active;

    v16 = a1;
    v17 = objc_msgSendSuper2(&v18, sel_init);
    (*(a2 + 16))(a2, 0, v17);
  }
}

void specialized Registry_Impl.waitForPairingExtendedMetadata(advertisedName:results:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(a1, a2);
  v8 = v7;

  if (v8)
  {
    v9 = objc_allocWithZone(PDRPairingExtendedMetadata);
    v15 = v8;
    v10 = [v9 init];
    [v10 setChipID_];
    [v10 setPairingVersion_];
    v11 = [v15 productType];
    [v10 setProductType_];

    [v10 setPostFailsafeObliteration_];
    [v10 setIsCellularEnabled_];
    [v10 setEncodedSystemVersion_];
    v12 = *(a3 + 16);
    v13 = v10;
    v12(a3, v6 & 1, v13);
  }

  else
  {
    v14 = *(a3 + 16);

    v14(a3, v6 & 1, 0);
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL static WeakCollection.Weak.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t WeakCollection.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for WeakCollection.Weak(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeakCollection.Weak(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2, void **a3, uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (!*(v8 + 16))
  {
    return;
  }

  v9 = 0;
  while (1)
  {
    outlined init with copy of RegistryState.LoggingInfo?(v8 + 8 * v9 + 32, v20, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of UUID?(v20, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    if (Strong)
    {
      break;
    }

    swift_beginAccess();
    v11 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      *(a1 + 16) = v11;
    }

    v13 = v11[2];
    if (v9 >= v13)
    {
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13 - 1;
    outlined destroy of UUID?(&v11[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    swift_arrayInitWithTakeFrontToBack();
    v11[2] = v14;
    *(a1 + 16) = v11;
    swift_endAccess();
LABEL_8:
    v8 = *(a1 + 16);
    if (v9 >= *(v8 + 16))
    {
      return;
    }
  }

  if (Strong != a2)
  {

    ++v9;
    goto LABEL_8;
  }

  v15 = *a3;
  *a3 = a2;
  a3 = Strong;

  swift_beginAccess();
  a2 = *(a4 + 16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_17:
  a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
LABEL_13:
  v16 = a2[2];
  if (v9 >= v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 - 1;
    outlined destroy of UUID?(&a2[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    swift_arrayInitWithTakeFrontToBack();
    a2[2] = v17;
    *(a4 + 16) = a2;
    swift_endAccess();
    *a5 = 1;
  }
}

void specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (!*(v8 + 16))
  {
    return;
  }

  v9 = 0;
  while (1)
  {
    outlined init with copy of RegistryState.LoggingInfo?(v8 + 8 * v9 + 32, v19, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of UUID?(v19, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    if (Strong)
    {
      break;
    }

    swift_beginAccess();
    v11 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      *(a1 + 16) = v11;
    }

    v13 = v11[2];
    if (v9 >= v13)
    {
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13 - 1;
    outlined destroy of UUID?(&v11[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithTakeFrontToBack();
    v11[2] = v14;
    *(a1 + 16) = v11;
    swift_endAccess();
LABEL_8:
    v8 = *(a1 + 16);
    if (v9 >= *(v8 + 16))
    {
      return;
    }
  }

  if (Strong != a2)
  {
    swift_unknownObjectRelease();
    ++v9;
    goto LABEL_8;
  }

  *a3 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  a3 = *(a4 + 16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_17:
  a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
LABEL_13:
  v15 = a3[2];
  if (v9 >= v15)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 - 1;
    outlined destroy of UUID?(&a3[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithTakeFrontToBack();
    a3[2] = v16;
    *(a4 + 16) = a3;
    swift_endAccess();
    *a5 = 1;
    swift_unknownObjectRelease();
  }
}

id ActiveDeviceAssertion_Impl.__deallocating_deinit()
{
  [v0 invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActiveDeviceAssertion_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ActiveDeviceAssertion_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PDRDevice.compatibilityState.getter()
{
  if ([v0 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    outlined destroy of UUID?(v5, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t Device_Impl.propertyNames()()
{
  v1 = *(v0 + OBJC_IVAR___PDRDevice_Impl_registryState);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 deviceForPairingID_];

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = [v3 allPropertyNames];

    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = *(v6 + 16);
    if (v7)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = (v6 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        v11 = MEMORY[0x2318DF040](v9, v10);

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v4 + 16) = v13 + 1;
        *(v4 + 8 * v13 + 32) = v11;
        v8 += 2;
        --v7;
      }

      while (v7);
    }
  }

  return v4;
}

uint64_t Device_Impl.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x6369766544524450;
  v25 = 0xEB00000000203A65;
  v8 = [v2 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318DF0A0](v9);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x2318DF0A0](10, 0xE100000000000000);
  v10 = [v3 propertyNames];
  type metadata accessor for PDRDevicePropertyKey(0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v11;

  specialized MutableCollection<>.sort(by:)(&v22);

  v21 = v22;
  v12 = *(v22 + 16);
  if (v12)
  {
    v13 = (v21 + 32);
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = Device_Impl.valueDescriptionFor(property:)(v15);
      v18 = v17;
      v22 = 538976288;
      v23 = 0xE400000000000000;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x2318DF0A0](v19);

      MEMORY[0x2318DF0A0](8250, 0xE200000000000000);
      MEMORY[0x2318DF0A0](v16, v18);

      MEMORY[0x2318DF0A0](10, 0xE100000000000000);
      MEMORY[0x2318DF0A0](v22, v23);

      --v12;
    }

    while (v12);
  }

  return v24;
}

uint64_t Device_Impl.valueDescriptionFor(property:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 valueForProperty_])
  {
    return 0x3E6C696E3CLL;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v19, v20);
  outlined init with copy of Any(v20, v19);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = MEMORY[0x2318DF040](0xD000000000000017, 0x800000022DFB09C0);
    [v13 setDateFormat_];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = [v13 stringFromDate_];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12(v6, 1, 1, v7);
    outlined destroy of UUID?(v6, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    outlined init with copy of Any(v20, v19);
    v17 = String.init<A>(describing:)();
  }

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v17;
}