int main(int argc, const char **argv, const char **envp)
{
  delegate = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  listener.super.isa = [objc_opt_self() serviceListener];
  [(objc_class *)listener.super.isa setDelegate:delegate];
  [(objc_class *)listener.super.isa resume];
  return 0;
}

id ServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WOPersistencePermissionState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized ServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  if ([a1 valueForEntitlement:WorkoutKitPrivateEntitlementName])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    outlined destroy of Any?(v13);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  v2 = v9;
LABEL_9:
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WorkoutKitXPCServiceProtocol];
  [a1 setExportedInterface:v3];

  LODWORD(v3) = [a1 processIdentifier];
  v4 = type metadata accessor for WorkoutKitXPCService();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___healthStore] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___queryClient] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___nanoSyncControl] = 0;
  v6 = &v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_requestingProcessIdentifier] = v3;
  v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements] = v2;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = objc_msgSendSuper2(&v10, "init");
  [a1 setExportedObject:v7];
  [a1 resume];

  return 1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void type metadata accessor for WOPersistencePermissionState()
{
  if (!lazy cache variable for type metadata for WOPersistencePermissionState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for WOPersistencePermissionState);
    }
  }
}

id WorkoutKitXPCService.healthStore.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    type metadata accessor for WorkoutCoreInjector();
    v8 = static WorkoutCoreInjector.shared.getter();
    v9 = a2();

    v10 = *(v7 + v3);
    *(v7 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id WorkoutKitXPCService.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutKitXPCService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void @objc WorkoutKitXPCService.presentWorkoutConfigurationData(_:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = _Block_copy(aBlock);
  v14 = a3;
  v15 = a1;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[4] = a6;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v22[3] = a7;
  v21 = _Block_copy(v22);

  [v15 *a8];

  outlined consume of Data._Representation(v16, v18);
  _Block_release(v21);
}

uint64_t WorkoutKitXPC_ActivityType.openGoalPlan.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v16[0] = type metadata accessor for WorkoutPlan.Workout();
  v4 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutGoal();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SingleGoalWorkout();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    (*(v8 + 104))(v10, enum case for WorkoutGoal.open(_:), v7);
    SingleGoalWorkout.init(activity:location:swimmingLocation:goal:)();
    (*(v12 + 16))(v6, v14, v11);
    (*(v4 + 104))(v6, enum case for WorkoutPlan.Workout.goal(_:), v16[0]);
    UUID.init()();
    WorkoutPlan.init(_:id:)();
    return (*(v12 + 8))(v14, v11);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(char a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a1)
  {
    WorkoutPlan.id.getter();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    a2 = 0;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  a3(v8, a2);
  return outlined destroy of Date?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  outlined init with copy of UUID?(a1, &v13 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

void closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v49[1] = a4;
  v11 = type metadata accessor for UUID();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Logger();
  v14 = *(v54 - 8);
  v15 = __chkstk_darwin(v54);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v49 - v18;
  if (a1)
  {
    v52 = a6;
    v53 = a2;
    static WOLog.xpcService.getter();
    v20 = a3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51 = a5;
      v25 = v24;
      aBlock[0] = v24;
      *v23 = 136315138;
      WorkoutConfiguration.id.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v50 + 8))(v13, v11);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, aBlock);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "WorkoutKitXPCService: saved configuration: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      a5 = v51;
    }

    (*(v14 + 8))(v19, v54);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v52;
    if (Strong)
    {
      v32 = Strong;
      v33 = WorkoutKitXPCService.nanoSyncControl.getter();

      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      *(v34 + 24) = v31;
      *(v34 + 32) = 1;
      *(v34 + 40) = v53;
      aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:);
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_195;
      v35 = _Block_copy(aBlock);

      swift_errorRetain();

      [v33 forceNanoSyncWithOptions:0 completion:v35];

      _Block_release(v35);
    }
  }

  else
  {
    v51 = a5;
    static WOLog.xpcService.getter();
    v36 = a3;
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = a6;
      v40 = v39;
      v41 = swift_slowAlloc();
      v53 = a2;
      aBlock[0] = v41;
      *v40 = 136315394;
      WorkoutConfiguration.id.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v50 + 8))(v13, v11);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, aBlock);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      aBlock[6] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v46 = Optional.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, aBlock);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "WorkoutKitXPCService: failed to save configuration: %s, error=%s", v40, 0x16u);
      swift_arrayDestroy();
      a2 = v53;
    }

    (*(v14 + 8))(v17, v54);
    v51(0, a2);
  }
}

uint64_t @objc WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, const char *a6, void (*a7)(unint64_t *, uint64_t, uint64_t, uint64_t, const void *), uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v12);
  v17 = a1;
  specialized WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(v13, v14, v16, v17, v12, a6, a7, a8);
  _Block_release(v12);
  _Block_release(v12);
}

uint64_t closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || a2)
  {
    return (a3)(0, a2);
  }

  if (*(a5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    *(inited + 32) = a7;
    *(inited + 40) = a8;

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);

    v18 = a6;
    specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(v17, v18, a3, a4, a5, v18, a1);
  }

  else
  {
    v19 = type metadata accessor for WorkoutPlanValidationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError, &type metadata accessor for WorkoutPlanValidationError, &protocol conformance descriptor for WorkoutPlanValidationError);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, enum case for WorkoutPlanValidationError.emptyPlan(_:), v19);

    (a3)(0, v20);
  }
}

void WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  if (dispatch thunk of QueriedExternalProvider.permissionState.getter() == 2)
  {
    v24 = v4;
    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    v10 = dispatch thunk of ExternalProvider.sourceBundleIdentifier.getter();
    v12 = v11;

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LSBundleRecord, LSBundleRecord_ptr);

    v13 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v10, v12, 1);
    if (v5)
    {
    }

    else
    {
      v17 = v13;
      v22 = String._bridgeToObjectiveC()();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v10;
      v19[3] = v12;
      v19[4] = a3;
      v19[5] = a4;
      v19[6] = a2;
      v19[7] = v17;
      v19[8] = a1;
      v19[9] = v18;
      aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:);
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_137;
      v20 = _Block_copy(aBlock);

      v21 = v17;

      [v24 iconForBundleId:v22 completion:v20];
      _Block_release(v20);
    }
  }

  else
  {
    v14 = type metadata accessor for AuthorizationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError, &type metadata accessor for AuthorizationError, &protocol conformance descriptor for AuthorizationError);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, enum case for AuthorizationError.notAuthorized(_:), v14);
    a3(0, v15);
  }
}

uint64_t closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v22[1] = a4;
      v17 = v16;
      v25 = v16;
      *v15 = 136315138;
      v24 = a2;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "WorkoutKitXPCService: retrieve suggested plans error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);

      a3 = v23;
    }

    (*(v9 + 8))(v11, v8);
    swift_errorRetain();
    (a3)(&_swiftEmptyArrayStorage, a2);
  }

  else
  {
    v25 = &_swiftEmptyArrayStorage;
    specialized Sequence.forEach(_:)(a1, &v25);
    a3();
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t a1, char **a2)
{
  v35 = a2;
  v2 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPlan();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ScheduledWorkoutPlan();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  dispatch thunk of WorkoutConfiguration.scheduledDate.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of Date?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(v13 + 32))(v18, v11, v12);
  v20 = v41;
  WorkoutConfiguration.workoutPlanRepresentation()();
  if (v20)
  {
    return (*(v13 + 8))(v18, v12);
  }

  (*(v13 + 16))(v16, v18, v12);
  dispatch thunk of WorkoutConfiguration.lastCompletedDate.getter();
  ScheduledWorkoutPlan.init(_:scheduledDate:lastCompletedDate:)();
  v21 = v38;
  v22 = v39;
  v23 = v40;
  (*(v39 + 104))(v38, enum case for WorkoutPlan.SerializationFormat.binary(_:), v40);
  v24 = ScheduledWorkoutPlan.dataRepresentation(as:)();
  v41 = v25;
  (*(v22 + 8))(v21, v23);
  (*(v36 + 8))(v7, v37);
  v26 = v35;
  v27 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    *v35 = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
    *v35 = v34;
  }

  result = (*(v13 + 8))(v18, v12);
  v31 = *v35;
  *(v31 + 2) = v30 + 1;
  v32 = &v31[16 * v30];
  v33 = v41;
  *(v32 + 4) = v24;
  *(v32 + 5) = v33;
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      closure #1 in closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);
}

void @objc WorkoutKitXPCService.presentWorkoutCompositionData(_:completion:)(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  outlined consume of Data._Representation(v10, v12);
}

void WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = [v9 predicateForObjectWithUUID:isa];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKSampleType, HKSampleType_ptr);
  v12 = [swift_getObjCClassFromMetadata() workoutType];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);

  v17 = [v15 initWithSampleType:v12 predicate:v11 limit:1 sortDescriptors:0 resultsHandler:v16];

  _Block_release(v16);

  v18 = WorkoutKitXPCService.healthStore.getter();
  [v18 executeQuery:v17];
}

uint64_t closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v75 = a6;
  v76 = a2;
  v79 = a5;
  v80 = a4;
  v7 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v74 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlan();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v24 = v71 - v23;
  if (a3)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v82 = v28;
      *v27 = 136315138;
      v81 = a3;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v82);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "WorkoutKitXPCService: failed to retrieve workout due to: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    (*(v77 + 8))(v24, v78);
    swift_errorRetain();
    v80(0, 0xF000000000000000, a3);
  }

  v72 = v9;
  v73 = v13;
  v33 = v74;
  v32 = v75;
  v34 = v76;
  if (!v76)
  {
    goto LABEL_19;
  }

  v35 = v11;
  v36 = v76 & 0xFFFFFFFFFFFFFF8;
  if (!(v76 >> 62))
  {
    result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_19:
    v59 = v21;
    static WOLog.xpcService.getter();
    (*(v15 + 16))(v17, v32, v14);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82 = v63;
      *v62 = 136315138;
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v15 + 8))(v17, v14);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v82);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "WorkoutKitXPCService: failed to retrieve workout with uuid: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    (*(v77 + 8))(v59, v78);
    Error = type metadata accessor for QueryError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type QueryError and conformance QueryError, &type metadata accessor for QueryError, &protocol conformance descriptor for QueryError);
    v69 = swift_allocError();
    (*(*(Error - 8) + 104))(v70, enum case for QueryError.failedToRetrieveWorkout(_:), Error);
    v80(0, 0xF000000000000000, v69);
  }

  v71[1] = v22;
  v58 = v21;
  result = _CocoaArrayWrapper.endIndex.getter();
  v34 = v76;
  v21 = v58;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v38 = v33;
  }

  else
  {
    if (!*(v36 + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v33;
    v39 = *(v34 + 32);
  }

  v40 = v39;
  v41 = v10;
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v42 = [v40 metadata];
  v43 = v35;
  if (v42)
  {
    v44 = v42;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v45 = static WorkoutConfiguration.deserialize(from:validator:)();

  if (v45)
  {
    v46 = v73;
    v76 = v45;
    WorkoutConfiguration.workoutPlanRepresentation()();
    v47 = v46;
    v48 = v7;
    v49 = v72;
    (*(v38 + 104))();
    v50 = WorkoutPlan.dataRepresentation(as:)();
    v54 = v48;
    v55 = v50;
    v57 = v56;
    (*(v38 + 8))(v49, v54);
    (*(v43 + 8))(v47, v41);
    outlined copy of Data._Representation(v55, v57);
    v80(v55, v57, 0);

    outlined consume of Data._Representation(v55, v57);
    return outlined consume of Data._Representation(v55, v57);
  }

  else
  {
    v51 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    v52 = swift_allocError();
    (*(*(v51 - 8) + 104))(v53, enum case for ImportError.unrecognizedDataFormat(_:), v51);
    v80(0, 0xF000000000000000, v52);
  }
}

void closure #1 in WorkoutKitXPCService.retrieveAuthorizationState(forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = objc_allocWithZone(NSNumber);
    swift_errorRetain();
    v6 = [v5 initWithUnsignedInteger:0];
    swift_errorRetain();
    a3(v6, a2);
  }

  else
  {
    if (a1)
    {

      v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:dispatch thunk of QueriedExternalProvider.permissionState.getter()];
      a3(v7, 0);
    }

    else
    {
      v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:0];
      a3(v7, 0);
    }
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else if (a1)
  {

    if (dispatch thunk of QueriedExternalProvider.permissionState.getter())
    {
      v33 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:dispatch thunk of QueriedExternalProvider.permissionState.getter()];
      a3(v33, 0);

      v19 = v33;
    }

    else
    {
      WorkoutKitXPCService._showAuthorization(forProvider:completion:)(a1, a3, a4);
    }
  }

  else
  {
    v33 = v16;
    static WOLog.xpcService.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a5;
      v23 = v22;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, aBlock);
      _os_log_impl(&_mh_execute_header, v20, v21, "WorkoutKitXPCService: creating new provider entry for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      a5 = v32;
    }

    (*(v15 + 8))(v18, v33);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LSBundleRecord, LSBundleRecord_ptr);

    v25 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a6, a7, 1);
    v26 = String._bridgeToObjectiveC()();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = a6;
    v28[3] = a7;
    v28[4] = a3;
    v28[5] = a4;
    v28[6] = v25;
    v28[7] = v27;
    aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:);
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_43;
    v29 = _Block_copy(aBlock);

    v30 = v25;

    [a5 iconForBundleId:v26 completion:v29];
    _Block_release(v29);
  }
}

uint64_t WorkoutKitXPCService._showAuthorization(forProvider:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v8 = dispatch thunk of ExternalProvider.sourceName.getter();
  v10 = v9;

  v11 = specialized static PermissionAlert.present(appName:)(v8, v10);

  static WOLog.xpcService.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v14 = 136315138;
    v15 = NSStringForWOPersistencePermissionState();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v11;
    v29 = a3;
    v17 = v16;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);
    a3 = v29;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "WorkoutKitXPCService: selected permission: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);

    v21 = v7;
    v22 = v28;
    (*(v30 + 8))(v21, v31);
  }

  else
  {

    (*(v30 + 8))(v7, v31);
    v22 = v11;
  }

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v22;

  v24 = WorkoutKitXPCService.queryClient.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in WorkoutKitXPCService._showAuthorization(forProvider:completion:);
  *(v25 + 24) = v23;

  dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, void *a8, uint64_t a9)
{
  v30 = a6;
  v31 = a7;
  v29 = a3;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for Date();
  __chkstk_darwin(v19 - 8);
  if (a2 >> 60 == 15)
  {
    static WOLog.xpcService.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v32);
      _os_log_impl(&_mh_execute_header, v20, v21, "WorkoutKitXPCService: unable to retrieve icon image for: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    (*(v15 + 8))(v17, v14);
    return v30(0, v29);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    v25 = [a8 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined copy of Data?(a1, a2);

    Date.init()();
    UUID.init()();
    type metadata accessor for ExternalProvider();
    swift_allocObject();
    ExternalProvider.init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)();
    type metadata accessor for QueriedExternalProvider();
    swift_allocObject();
    v26 = QueriedExternalProvider.init(externalProvider:)();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      WorkoutKitXPCService._showAuthorization(forProvider:completion:)(v26, v30, v31);
      outlined consume of Data?(a1, a2);
    }

    else
    {
      outlined consume of Data?(a1, a2);
    }
  }
}

uint64_t @objc WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = a2;
    swift_errorRetain();
LABEL_3:
    a3(0, v8);
  }

  if (!a1)
  {
    v13 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    v8 = swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for ImportError.unknownType(_:), v13);
    goto LABEL_3;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v11 = WorkoutKitXPCService.queryClient.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:);
  *(v12 + 24) = v10;

  dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
}

void closure #1 in closure #1 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = a2;
    swift_errorRetain();
  }

  else
  {
    static WOLog.xpcService.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "WorkoutKitXPCService: successfully removed provider for bundleId: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    (*(v12 + 8))(v14, v11);
  }

  dispatch_group_leave(a6);
}

void closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = WorkoutKitXPCService.nanoSyncControl.getter();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = partial apply for closure #1 in closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:);
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [v7 forceNanoSyncWithOptions:0 completion:v9];

  _Block_release(v9);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void closure #1 in closure #1 in WorkoutKitXPCService._deleteConfigurations(from:completion:)(int a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = a2;
    swift_errorRetain();
  }

  dispatch_group_leave(group);
}

void closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = WorkoutKitXPCService.nanoSyncControl.getter();

    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    aBlock[4] = partial apply for closure #1 in closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:);
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_98;
    v11 = _Block_copy(aBlock);

    [v9 forceNanoSyncWithOptions:0 completion:v11];

    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = v9;
      v15 = v14;
      v23 = swift_slowAlloc();
      v26 = a2;
      v27[0] = v23;
      *v15 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(describing:)();
      v24 = v8;
      v18 = a3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v27);

      *(v15 + 4) = v19;
      a3 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "WorkoutKitXPCService: nano sync error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);

      (*(v25 + 8))(v11, v24);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  swift_beginAccess();
  v20 = *(a5 + 16);
  swift_errorRetain();
  a3(v20 == 0, v20);
}

void closure #1 in WorkoutKitXPCService._showAuthorization(forProvider:completion:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    a2(0, a1);
  }

  else
  {
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a4];
    a2(v6, 0);
  }
}

uint64_t closure #1 in WorkoutKitXPCService._updateProvider(_:permissionState:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = v5;
      v12 = v11;
      v18 = swift_slowAlloc();
      v20 = a2;
      v21 = v18;
      *v12 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(describing:)();
      v15 = a3;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

      *(v12 + 4) = v16;
      a3 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "WorkoutKitXPCService: update external provider error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);

      (*(v6 + 8))(v8, v19);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return a3(a2);
}

uint64_t closure #1 in WorkoutKitXPCService._retrieveAuthorizedExternalProviderWithChecks(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    swift_errorRetain();
  }

  else
  {
    if (a1)
    {

      if (dispatch thunk of QueriedExternalProvider.permissionState.getter() == 2)
      {

        a3(v5, 0);
      }
    }

    v7 = type metadata accessor for AuthorizationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError, &type metadata accessor for AuthorizationError, &protocol conformance descriptor for AuthorizationError);
    v4 = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for AuthorizationError.notAuthorized(_:), v7);
  }

  a3(0, v4);
}

uint64_t closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  __chkstk_darwin(v11);
  if (!a1 || a2)
  {
    return (a3)(0, a2);
  }

  WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(a6, a1, a3, a4);
}

void *closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v66 = a6;
  v67 = type metadata accessor for Logger();
  v17 = *(v67 - 8);
  v18 = __chkstk_darwin(v67);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v23 = &v61 - v22;
  if (v21 >> 60 == 15)
  {
    static WOLog.xpcService.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = a3;
      v28 = swift_slowAlloc();
      v68[0] = v28;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v68);
      _os_log_impl(&_mh_execute_header, v24, v25, "WorkoutKitXPCService: unable to retrieve icon image for: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      a3 = v27;
    }

    (*(v17 + 8))(v20, v67);
    return v66(0, a3);
  }

  v62 = a3;
  v63 = a7;
  v64 = v21;
  v65 = a1;
  outlined copy of Data._Representation(a1, v21);
  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v30 = dispatch thunk of ExternalProvider.sourceName.getter();
  v32 = v31;

  v33 = [a9 localizedName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {

    v39 = v64;
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v39 = v64;
    if ((v38 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v40 = dispatch thunk of ExternalProvider.sourceImageData.getter();
  v42 = v41;

  v43 = specialized static Data.== infix(_:_:)(v40, v42, v65, v39);
  result = outlined consume of Data._Representation(v40, v42);
  if (!v43)
  {
LABEL_14:
    static WOLog.xpcService.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "WorkoutKitXPCService: updating external provider", v47, 2u);
    }

    (*(v17 + 8))(v23, v67);
    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    v48 = [a9 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of ExternalProvider.sourceName.setter();

    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    outlined copy of Data?(v65, v39);
    dispatch thunk of ExternalProvider.sourceImageData.setter();

    v44 = 1;
    goto LABEL_17;
  }

  v44 = 0;
LABEL_17:
  v68[0] = &_swiftEmptyArrayStorage;
  v49 = *(a10 + 16);
  if (v49)
  {
    v50 = 0;
    do
    {
      v51 = v50;
      while (1)
      {
        if (v51 >= v49)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v52 = type metadata accessor for ScheduledWorkoutPlan();
        v54 = *(v52 - 8);
        result = (v52 - 8);
        v53 = v54;
        v50 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_33;
        }

        result = closure #1 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(a10 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51, a8, &v69);
        if (v69)
        {
          break;
        }

        ++v51;
        if (v50 == v49)
        {
          goto LABEL_28;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v50 != v49);
  }

LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = WorkoutKitXPCService.queryClient.getter();

    v58 = swift_allocObject();
    *(v58 + 16) = a11;
    *(v58 + 24) = v44;
    v59 = v66;
    *(v58 + 32) = a8;
    *(v58 + 40) = v59;
    v60 = v62;
    *(v58 + 48) = v63;
    *(v58 + 56) = v60;

    swift_errorRetain();
    dispatch thunk of QueryClient.addManagedConfigurations(managedConfigurations:completion:)();
    outlined consume of Data?(v65, v64);
  }

  else
  {
    outlined consume of Data?(v65, v64);
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v64 = a2;
  v73 = a3;
  v5 = type metadata accessor for UUID();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfigurationType();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v9 - 8);
  v63 = &v59 - v10;
  v11 = type metadata accessor for ScheduledWorkoutPlan();
  v74 = *(v11 - 8);
  v75 = v11;
  __chkstk_darwin(v11);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v59 - v17;
  v76 = type metadata accessor for WorkoutPlan();
  v18 = *(v76 - 8);
  v19 = __chkstk_darwin(v76);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  ScheduledWorkoutPlan.plan.getter();
  type metadata accessor for Occurrence();
  v24 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v25 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();
  if (v3)
  {
    v72 = 0;

    v26 = *(v18 + 8);
    v26(v23, v76);
    v27 = v68;
    static WOLog.xpcService.getter();
    v28 = v71;
    (*(v74 + 16))(v71, a1, v75);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77 = v64;
      *v31 = 136315138;
      LODWORD(v63) = v30;
      ScheduledWorkoutPlan.plan.getter();
      v32 = v65;
      WorkoutPlan.id.getter();
      v26(v21, v76);
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = v67;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v66 + 8))(v32, v33);
      (*(v74 + 8))(v71, v75);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v77);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v63, "WorkoutKitXPCService: failed to deserialize %s - skipping scheduling", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
    }

    else
    {

      (*(v74 + 8))(v28, v75);
    }

    result = (*(v69 + 8))(v27, v70);
    goto LABEL_8;
  }

  v38 = v25;
  v72 = 0;
  (*(v18 + 8))(v23, v76);

  if ((dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter() & 1) == 0)
  {
    v42 = v16;
    static WOLog.xpcService.getter();
    v43 = v38;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v76 = v42;
      v47 = v46;
      v77 = swift_slowAlloc();
      *v47 = 136315394;
      v48 = v60;
      dispatch thunk of WorkoutConfiguration.type.getter();
      v49 = ConfigurationType.description.getter();
      v51 = v50;
      (*(v61 + 8))(v48, v62);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v77);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = v65;
      dispatch thunk of WorkoutConfiguration.uuid.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = v67;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v66 + 8))(v53, v54);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v77);

      *(v47 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v44, v45, "WorkoutKitXPCService: invalid %s configuration for %s - skipping scheduling", v47, 0x16u);
      swift_arrayDestroy();

      result = (*(v69 + 8))(v76, v70);
    }

    else
    {

      result = (*(v69 + 8))(v42, v70);
    }

LABEL_8:
    v38 = 0;
    goto LABEL_9;
  }

  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  dispatch thunk of WorkoutConfiguration.externalProvider.setter();
  v39 = v63;
  ScheduledWorkoutPlan.scheduledDate.getter();
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  dispatch thunk of WorkoutConfiguration.scheduledDate.setter();
  ScheduledWorkoutPlan.lastCompletedDate.getter();
  result = dispatch thunk of WorkoutConfiguration.lastCompletedDate.setter();
LABEL_9:
  *v73 = v38;
  return result;
}

void closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v12 = a4;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = WorkoutKitXPCService.nanoSyncControl.getter();

      v17 = swift_allocObject();
      *(v17 + 16) = v12 & 1;
      *(v17 + 24) = a3;
      *(v17 + 32) = a5;
      *(v17 + 40) = a6;
      *(v17 + 48) = a7;
      *(v17 + 56) = 1;
      *(v17 + 64) = a8;
      aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:);
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_146;
      v18 = _Block_copy(aBlock);

      swift_errorRetain();

      [v16 forceNanoSyncWithOptions:0 completion:v18];

      _Block_release(v18);
    }
  }

  else
  {
    (a6)(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

void *closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, char a8, uint64_t a9)
{
  v38 = a5;
  v15 = type metadata accessor for Logger();
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = v16;
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v36 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a4;
      v22 = v21;
      v33 = swift_slowAlloc();
      v39 = a2;
      v40[0] = v33;
      *v22 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v23 = String.init<A>(describing:)();
      v34 = v15;
      v25 = a8;
      v26 = a7;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v40);

      *(v22 + 4) = v27;
      a7 = v26;
      a8 = v25;
      _os_log_impl(&_mh_execute_header, v19, v36, "WorkoutKitXPCService: nano sync error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);

      (*(v37 + 8))(v18, v34);
    }

    else
    {

      (*(v37 + 8))(v18, v15);
    }
  }

  if ((a3 & 1) == 0)
  {
    return a6(a8 & 1, a9);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = a6;
    v31 = WorkoutKitXPCService.queryClient.getter();

    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = a7;
    *(v32 + 32) = a8 & 1;
    *(v32 + 40) = a9;

    swift_errorRetain();
    dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
  }

  return result;
}

uint64_t closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v12 - 8);
  v41 = &v37 - v13;
  v14 = type metadata accessor for WorkoutPlan();
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ScheduledWorkoutPlan();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if (!a1 || a2)
  {
    return a3(0, a2);
  }

  v37 = a3;
  v38 = a4;
  v39 = a6;
  v51[0] = &_swiftEmptyArrayStorage;
  v22 = *(a5 + 16);
  if (v22)
  {
    v48 = type metadata accessor for Occurrence();
    v23 = type metadata accessor for WorkoutConfigurationValidator();
    v24 = v18 + 16;
    v46 = *(v18 + 16);
    v47 = v23;
    v25 = a5 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v26 = *(v24 + 56);
    v44 = (v49 + 8);
    v45 = v26;
    v49 = v24;
    v43 = (v24 - 8);

    v40 = &_swiftEmptyArrayStorage;
    do
    {
      v46(v20, v25, v17);
      ScheduledWorkoutPlan.plan.getter();
      v27 = Occurrence.__allocating_init(count:)();
      static WorkoutConfigurationValidator.shared.getter();
      WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();
      (*v44)(v16, v50);

      dispatch thunk of QueriedExternalProvider.externalProvider.getter();
      dispatch thunk of WorkoutConfiguration.externalProvider.setter();
      v28 = v41;
      ScheduledWorkoutPlan.scheduledDate.getter();
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      dispatch thunk of WorkoutConfiguration.scheduledDate.setter();
      ScheduledWorkoutPlan.lastCompletedDate.getter();
      dispatch thunk of WorkoutConfiguration.lastCompletedDate.setter();
      (*v43)(v20, v17);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v40 = v51[0];
      v25 += v45;
      --v22;
    }

    while (v22);
  }

  else
  {

    v40 = &_swiftEmptyArrayStorage;
  }

  v30 = v39;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = WorkoutKitXPCService.queryClient.getter();

    v34 = swift_allocObject();
    v35 = v37;
    v36 = v38;
    v34[2] = v30;
    v34[3] = v35;
    v34[4] = v36;
    v34[5] = 0;

    swift_errorRetain();
    dispatch thunk of QueryClient.removeManagedConfigurations(managedConfigurations:completion:)();
  }
}

void closure #2 in closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = WorkoutKitXPCService.nanoSyncControl.getter();

      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      *(v12 + 24) = a5;
      *(v12 + 32) = 1;
      *(v12 + 40) = a6;
      aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:);
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_170;
      v13 = _Block_copy(aBlock);

      swift_errorRetain();

      [v11 forceNanoSyncWithOptions:0 completion:v13];

      _Block_release(v13);
    }
  }

  else
  {
    (a4)(0, a2, a3, a4, a5, a6);
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, char a5, uint64_t a6, const char *a7)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v31 = a7;
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v13;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = a6;
      v27 = v20;
      v32 = a2;
      v33 = v20;
      *v19 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(describing:)();
      v28 = v12;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v33);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, v31, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v24 = v30;

      (*(v29 + 8))(v15, v28);
      return a3(a5 & 1, v24);
    }

    (*(v13 + 8))(v15, v12);
  }

  return a3(a5 & 1, a6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKSample, HKSample_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    v10 = &_swiftEmptyArrayStorage;
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
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR);
  v10 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t specialized WorkoutKitXPCService._showAlert(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v13[1] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for ImportError();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  if (v6)
  {
    v8 = *(v5 - 8);
    v7(v4, 0, 1, v5);
    (*(v8 + 88))(v4, v5);
    (*(v8 + 8))(v4, v5);
  }

  else
  {
    v7(v4, 1, 1, v5);
    outlined destroy of Date?(v4, &_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  }

  v9 = String.workoutKitLocalized()();
  v10 = String.workoutKitLocalized()();
  v11 = String.workoutKitLocalized()();
  specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(v10._countAndFlagsBits, v10._object, v9._countAndFlagsBits, v9._object, v11._countAndFlagsBits, v11._object, 0, 0);
}

void specialized WorkoutKitXPCService.presentWorkoutCompositionData(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (WorkoutKitXPCService.processIsForegrounded()())
  {
    type metadata accessor for WorkoutConfiguration();
    type metadata accessor for Occurrence();
    v9 = Occurrence.__allocating_init(count:)();
    type metadata accessor for WorkoutConfigurationValidator();
    static WorkoutConfigurationValidator.shared.getter();
    v10 = static WorkoutConfiguration.importFromData(_:with:validator:)();

    v14 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:WorkoutRemoteAlertServiceName viewControllerClassName:WorkoutRemoteAlertServiceViewControllerName];
    v15 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    outlined copy of Data._Representation(a1, a2);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Date?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setUserInfo:{isa, v24, v25}];

    v19 = (a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
    v20 = *(a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
    v21 = *(a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler + 8);
    *v19 = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    v19[1] = v8;

    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v20, v21);
    v22 = [objc_opt_self() newHandleWithDefinition:v14 configurationContext:v15];
    v23 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v22 registerObserver:a3];
    [v22 activateWithContext:v23];
  }

  else
  {
    v11 = type metadata accessor for AppError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError, &protocol conformance descriptor for AppError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppError.applicationNotInForeground(_:), v11);
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v13);
  }
}

void specialized WorkoutKitXPCService.openWorkoutApp(withWorkoutPlan:autostartWorkoutPlan:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v8 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    v10 = v9;
    v11 = &enum case for StateError.watchNotPaired(_:);
LABEL_6:
    (*(*(v8 - 8) + 104))(v10, *v11, v8);
    swift_willThrow();
    swift_errorRetain();
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v13);

    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v8 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    v10 = v12;
    v11 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_6;
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v6 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v7 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  if (WorkoutKitXPCService.processIsForegrounded()())
  {
    v14 = WorkoutKitXPCService.healthStore.getter();
    isa = Data._bridgeToObjectiveC()().super.isa;
    aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_225;
    v16 = _Block_copy(aBlock);

    [v14 _startWatchAppWithWorkoutPlanData:isa completion:v16];
    _Block_release(v16);

    return;
  }

  v17 = type metadata accessor for AppError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError, &protocol conformance descriptor for AppError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for AppError.applicationNotInForeground(_:), v17);
  v19 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v19);

LABEL_7:
}

void specialized WorkoutKitXPCService.openWorkoutApp(withMirroredStart:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for MirroredStart();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = swift_allocObject();
  *(v39 + 16) = a4;
  _Block_copy(a4);
  static WOLog.xpcService.getter();
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    outlined consume of Data._Representation(a1, a2);
    goto LABEL_14;
  }

  v36[1] = a3;
  v17 = swift_slowAlloc();
  v18 = v17;
  *v17 = 134217984;
  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v20) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v20 = v20;
    goto LABEL_13;
  }

  if (v19)
  {
    goto LABEL_10;
  }

  v20 = BYTE6(a2);
LABEL_13:
  *(v17 + 4) = v20;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&_mh_execute_header, v15, v16, "WorkoutKitXPCService: openWorkoutApp with MirroredStart data (%ld bytes)", v18, 0xCu);

LABEL_14:

  (*(v12 + 8))(v14, v11);
  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      static MirroredStart.deserialize(from:)();
      (*(v37 + 8))(v10, v38);
      if (WorkoutKitXPCService.processIsForegrounded()())
      {
        v30 = WorkoutKitXPCService.healthStore.getter();
        isa = Data._bridgeToObjectiveC()().super.isa;
        aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_218;
        v32 = _Block_copy(aBlock);

        [v30 _startWatchAppWithMirroredStartData:isa completion:v32];
        _Block_release(v32);

        return;
      }

      v33 = type metadata accessor for AppError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError, &protocol conformance descriptor for AppError);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, enum case for AppError.applicationNotInForeground(_:), v33);
      v35 = _convertErrorToNSError(_:)();
      (a4)[2](a4, 0, v35);

      goto LABEL_20;
    }

    v24 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    v26 = v28;
    v27 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {
    v24 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    v26 = v25;
    v27 = &enum case for StateError.watchNotPaired(_:);
  }

  (*(*(v24 - 8) + 104))(v26, *v27, v24);
  swift_willThrow();
  swift_errorRetain();
  v29 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v29);

LABEL_20:
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(uint64_t a1, int a2, void *a3, const void *a4)
{
  v26 = a3;
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for WorkoutPlan();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v24[-v13];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  _Block_copy(a4);
  WorkoutKitXPC_ActivityType.openGoalPlan.getter(a1, v14);
  v16 = WorkoutPlan.dataRepresentation.getter();
  v18 = v17;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(v12, v14, v8);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ();
  *(v21 + 24) = v15;
  (*(v9 + 32))(v21 + v20, v12, v8);
  aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_204;
  v22 = _Block_copy(aBlock);

  [v26 openWorkoutAppWithWorkoutPlanData:isa autostartWorkoutPlan:v25 & 1 completion:v22];
  outlined consume of Data._Representation(v16, v18);
  _Block_release(v22);

  (*(v9 + 8))(v14, v8);
}

uint64_t specialized WorkoutKitXPCService.endActiveWorkoutPlan(withIdentifier:completion:)(uint64_t a1, uint64_t a2)
{
  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      v3 = type metadata accessor for ImportError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
      swift_allocError();
      (*(*(v3 - 8) + 104))(v4, enum case for ImportError.unsupportedPlatform(_:), v3);
      v5 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v5);

      goto LABEL_7;
    }

    v6 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {
    v6 = &enum case for StateError.watchNotPaired(_:);
  }

  v7 = type metadata accessor for StateError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *v6, v7);
  swift_willThrow();
  swift_errorRetain();
  v9 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v9);

LABEL_7:
}

uint64_t specialized WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for WorkoutPlan();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for StateError.watchNotPaired(_:), v15);
LABEL_6:
    swift_willThrow();
    swift_errorRetain();
    v19 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v19);
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v17 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for StateError.workoutApplicationNotInstalled(_:), v17);
    goto LABEL_6;
  }

  v31 = v9;
  v32 = v11;
  v29 = a3;
  v30 = v8;
  v33 = v12;
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v13 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v14 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  outlined copy of Data._Representation(a1, a2);
  v21 = v32;
  WorkoutPlan.init(from:)();
  v22 = Occurrence.__allocating_init(count:)();
  static WorkoutConfigurationValidator.shared.getter();
  v23 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();

  v24 = WorkoutKitXPCService.queryClient.getter();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v25;
  v27 = v33;
  v26[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v26[5] = v27;
  v28 = v23;

  dispatch thunk of QueryClient.save(_:completion:)();

  (*(v31 + 8))(v21, v30);
}

uint64_t specialized WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = swift_allocObject();
  v11[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v11[3] = v10;
  v11[4] = a4;
  v11[5] = a1;
  _Block_copy(a5);

  a4;

  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
LABEL_8:
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3) & 1) == 0)
  {
    v19 = WorkoutKitXPCService.queryClient.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:);
    *(v20 + 24) = v11;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

    goto LABEL_8;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v14);
}

uint64_t specialized WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v11[3] = v9;
  v11[4] = a1;
  v11[5] = v10;
  _Block_copy(a5);

  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3) & 1) == 0)
  {
    v19 = WorkoutKitXPCService.queryClient.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:);
    *(v20 + 24) = v11;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

    goto LABEL_9;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v14);

LABEL_8:

LABEL_9:
}

void specialized WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const void *a5, const char *a6, void (*a7)(unint64_t *, uint64_t, uint64_t, uint64_t, const void *), uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v45 = a6;
  v48 = a1;
  v12 = type metadata accessor for ScheduledWorkoutPlan();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v49 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v39 - v20;
  _Block_copy(a5);
  v42 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a2, a3);
  v43 = a4;
  v44 = v17;
  v40 = a5;
  v23 = v22;
  static WOLog.xpcService.getter();
  v24 = v48;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v41 = v16;
  v39 = v23;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 134218242;
    *(v28 + 4) = *(v48 + 16);

    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v23, &v50);
    _os_log_impl(&_mh_execute_header, v25, v26, v45, v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v24 = v48;

    v16 = v41;
  }

  else
  {
  }

  (*(v44 + 8))(v21, v16);
  v30 = v43;
  v31 = *(v24 + 16);
  v32 = &_swiftEmptyArrayStorage;
  if (v31)
  {
    v50 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v50;
    v33 = (v24 + 40);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      outlined copy of Data._Representation(v34, *v33);
      static ScheduledWorkoutPlan.importFromData(_:)();
      outlined consume of Data._Representation(v34, v35);
      v50 = v32;
      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v32 = v50;
      }

      v33 += 2;
      v32[2] = v37 + 1;
      (*(v13 + 32))(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v37, v15, v12);
      --v31;
    }

    while (v31);
    v30 = v43;
  }

  v38 = v40;
  _Block_copy(v40);
  v46(v32, v42, v39, v30, v38);
  _Block_release(v38);

  _Block_release(v38);
}

uint64_t specialized WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = type metadata accessor for Logger();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  _Block_copy(a5);
  v14 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a2, a3);
  v41 = v13;
  v15 = v14;
  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v18[3] = v13;
  v18[4] = a1;
  v18[5] = a4;
  v18[6] = v15;
  v18[7] = v17;

  a4;

  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v15, v17))
      {
        v19 = type metadata accessor for ImportError();
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v20, enum case for ImportError.unsupportedPlatform(_:), v19);

        v21 = _convertErrorToNSError(_:)();
        (a5)[2](a5, 0, v21);
      }

      else
      {
        v37 = WorkoutKitXPCService.queryClient.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = partial apply for closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:);
        *(v38 + 24) = v18;

        dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();
      }
    }

    v22 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    v23 = swift_allocError();
    v25 = v27;
    v26 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {

    v22 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    v23 = swift_allocError();
    v25 = v24;
    v26 = &enum case for StateError.watchNotPaired(_:);
  }

  (*(*(v22 - 8) + 104))(v25, *v26, v22);
  swift_willThrow();

  static WOLog.xpcService.getter();
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v23;
    v43 = v31;
    *v30 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v43);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "WorkoutKitXPCService: failed to store workout plans due to %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  (*(v39 + 8))(v12, v40);
  swift_errorRetain();
  v35 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v35);
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

uint64_t specialized closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScheduledWorkoutPlan();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    a2(0, a1);
  }

  else
  {
    v31 = a5;
    v32 = v11;
    v33 = v10;
    v34 = v13;
    v19 = v36;
    v20 = *(v36 + 16);
    v21 = &_swiftEmptyArrayStorage;
    if (v20)
    {
      v29 = a3;
      v30 = a2;
      v38 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = v38;
      v37 = v15 + 32;
      v22 = (v19 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        outlined copy of Data._Representation(v23, *v22);
        static ScheduledWorkoutPlan.importFromData(_:)();
        outlined consume of Data._Representation(v23, v24);
        v38 = v21;
        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v21 = v38;
        }

        v22 += 2;
        v21[2] = v26 + 1;
        (*(v15 + 32))(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, v17, v14);
        --v20;
      }

      while (v20);
      v28 = v29;
      v27 = v30;
    }

    else
    {
      v27 = a2;
      v28 = a3;
    }

    WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(v21, v35, v27, v28);
  }
}

uint64_t specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v58 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v52 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v50 = *(v17 - 8);
  v51 = v17;
  __chkstk_darwin(v17);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v20 = *(a1 + 16);

  v21 = a6;

  if (v20)
  {
    v57 = v19;
    v47 = v15;
    v48 = v13;
    v22 = dispatch_group_create();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;

    v28 = 0;
    v29 = v57;
    if (v25)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
        v35 = v49;
        v34 = v50;
        v36 = v51;
        (*(v50 + 104))(v49, enum case for DispatchQoS.QoSClass.default(_:), v51);
        v46 = static OS_dispatch_queue.global(qos:)();
        (*(v34 + 8))(v35, v36);
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = swift_allocObject();
        v38[2] = v37;
        v38[3] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:);
        v39 = v56;
        v38[4] = v29;
        v38[5] = v39;
        aBlock[4] = closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:)partial apply;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_130;
        v40 = _Block_copy(aBlock);

        v41 = v52;
        static DispatchQoS.unspecified.getter();
        v59 = &_swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v42 = v54;
        v43 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v44 = v46;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v40);

        (*(v55 + 8))(v42, v43);
        (*(v53 + 8))(v41, v47);
      }

      v25 = *(a1 + 56 + 8 * v30);
      ++v28;
      if (v25)
      {
        v28 = v30;
        do
        {
LABEL_10:
          v25 &= v25 - 1;

          dispatch_group_enter(v22);
          v31 = WorkoutKitXPCService.queryClient.getter();
          v32 = swift_allocObject();
          *(v32 + 16) = v56;
          *(v32 + 24) = v22;

          v33 = v22;
          dispatch thunk of QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)();

          v29 = v57;
        }

        while (v25);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
    specialized closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(0, a3, a4, a5, v21, a7);
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v52 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = *(a1 + 16);
  _Block_copy(a3);
  if (v16)
  {
    v41 = v15;
    v42 = v12;
    v43 = v10;
    v44 = v8;
    v45 = v9;
    v46 = v6;
    v47 = v5;
    v17 = dispatch_group_create();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;

    v23 = 0;
    if (v20)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
        v29 = v48;
        v28 = v49;
        v30 = v50;
        (*(v49 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v50);
        v40 = static OS_dispatch_queue.global(qos:)();
        (*(v28 + 8))(v29, v30);
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
        v33 = v51;
        v32[4] = v41;
        v32[5] = v33;
        aBlock[4] = partial apply for closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:);
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_92;
        v34 = _Block_copy(aBlock);

        v35 = v42;
        static DispatchQoS.unspecified.getter();
        v53 = &_swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v36 = v44;
        v37 = v47;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v40;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v34);

        (*(v46 + 8))(v36, v37);
        (*(v43 + 8))(v35, v45);
      }

      v20 = *(a1 + 56 + 8 * v24);
      ++v23;
      if (v20)
      {
        v23 = v24;
        do
        {
LABEL_10:
          v20 &= v20 - 1;

          dispatch_group_enter(v17);
          v25 = WorkoutKitXPCService.queryClient.getter();
          v26 = swift_allocObject();
          *(v26 + 16) = v51;
          *(v26 + 24) = v17;

          v27 = v17;
          dispatch thunk of QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)();
        }

        while (v20);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
    a3[2](a3, 1, 0);
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v14 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v15 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *v14, v15);
    swift_willThrow();
    swift_errorRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v18);

    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v14 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9))
  {

    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = Array._bridgeToObjectiveC()().super.isa;
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v12, v13);

LABEL_8:

    goto LABEL_9;
  }

  v20 = WorkoutKitXPCService.queryClient.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ();
  *(v21 + 24) = v7;

  dispatch thunk of QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)();

LABEL_9:
}

void specialized WorkoutKitXPCService.deleteScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    (*(aBlock + 2))(aBlock, 0, v18);

    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  v10 = v9;
  v11 = v8;
  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    *(inited + 32) = v11;
    v20 = inited + 32;
    *(inited + 40) = v10;
    v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v20);
    _Block_copy(aBlock);
    specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(v21, a3, aBlock);
    _Block_release(aBlock);

    _Block_release(aBlock);
    return;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (*(aBlock + 2))(aBlock, 0, v14);

LABEL_8:

  _Block_release(aBlock);
}

uint64_t specialized WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkout:completion:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(const void *, void, void *))
{
  v30 = a3;
  v5 = type metadata accessor for Logger();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for UUID();
  v29 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKWorkout, HKWorkout_ptr);
  v31 = a4;
  _Block_copy(a4);
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v17 = v29;
  v16 = v30;
  if (v15)
  {
    v18 = v15;
    v19 = [v15 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v17 + 32))(v14, v12, v9);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()partial apply;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_73;
    v21 = _Block_copy(aBlock);

    [v16 retrieveWorkoutCompositionFromWorkoutUUID:isa completion:v21];
    _Block_release(v21);

    (*(v17 + 8))(v14, v9);
  }

  else
  {
    static WOLog.xpcService.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "WorkoutKitXPCService: failed to unarchive HKWorkout", v25, 2u);
    }

    (*(v32 + 8))(v8, v33);
    v26 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for ImportError.unrecognizedDataFormat(_:), v26);
    v28 = _convertErrorToNSError(_:)();
    v31[2](v31, 0, v28);
  }
}

uint64_t specialized WorkoutKitXPCService.retrieveAuthorizationState(forBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9))
  {

    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v12);
  }

  else
  {
    v14 = WorkoutKitXPCService.queryClient.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ()partial apply;
    *(v15 + 24) = v7;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();
  }
}

void specialized WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v13 = &enum case for StateError.watchNotPaired(_:);
LABEL_11:
    v14 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError, &protocol conformance descriptor for StateError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *v13, v14);
    swift_willThrow();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v17);

    goto LABEL_12;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v13 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_11;
  }

  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a1, a2))
  {
LABEL_6:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v21 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v21, v12);

    return;
  }

  v9 = specialized WorkoutKitXPCService.extensionRecord(for:)(a1, a2);
  if (v9)
  {

    goto LABEL_6;
  }

  v18 = WorkoutKitXPCService.queryClient.getter();
  v19 = swift_allocObject();
  v19[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ();
  v19[3] = v8;
  v19[4] = a3;
  v19[5] = a1;
  v19[6] = a2;

  v20 = a3;

  dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

LABEL_12:
}

uint64_t specialized WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3))
  {
    v11 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    swift_allocError();
    v13 = v12;
    v14 = &enum case for ImportError.unsupportedPlatform(_:);
  }

  else
  {
    if (*(a4 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements) == 1)
    {
      v15 = [a1 unsignedIntegerValue];
      v16 = WorkoutKitXPCService.queryClient.getter();
      v17 = swift_allocObject();
      v17[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
      v17[3] = v10;
      v17[4] = a4;
      v17[5] = v15;

      v18 = a4;
      dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

      goto LABEL_7;
    }

    v11 = type metadata accessor for XPCServiceError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, &type metadata accessor for XPCServiceError, &protocol conformance descriptor for XPCServiceError);
    swift_allocError();
    v13 = v19;
    v14 = &enum case for XPCServiceError.notEntitled(_:);
  }

  (*(*(v11 - 8) + 104))(v13, *v14, v11);
  v20 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v20);

LABEL_7:
}

uint64_t specialized WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, _BYTE *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for Logger();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v64 = a2;
  if (a2[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements] == 1)
  {
    v56 = v15;
    v19 = *(a1 + 16);
    _Block_copy(a3);
    if (v19)
    {
      v50 = v13;
      v51 = v11;
      v52 = v12;
      v53 = v9;
      v54 = v8;
      v55 = v18;
      v20 = dispatch_group_create();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = v61;
      ++v62;
      v23 = (a1 + 40);
      *&v24 = 136315138;
      v60 = v24;
      do
      {
        v28 = *(v23 - 1);
        v29 = *v23;

        dispatch_group_enter(v20);
        static WOLog.xpcService.getter();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v21;
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v32 = v60;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, aBlock);
          _os_log_impl(&_mh_execute_header, v30, v31, "WorkoutKitXPCService: removing provider for bundleId: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          v21 = v33;
          v22 = v61;
        }

        (*v62)(v22, v63);
        v25 = WorkoutKitXPCService.queryClient.getter();
        v26 = swift_allocObject();
        v26[2] = v21;
        v26[3] = v28;
        v26[4] = v29;
        v26[5] = v20;

        v27 = v20;
        dispatch thunk of QueryClient.deleteExternalProvider(sourceIdentifier:completion:)();

        v23 += 2;
        --v19;
      }

      while (v19);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v39 = v57;
      v38 = v58;
      v40 = v59;
      (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.default(_:), v59);
      v41 = static OS_dispatch_queue.global(qos:)();
      (*(v38 + 8))(v39, v40);
      v42 = swift_allocObject();
      v43 = v64;
      v42[2] = v64;
      v42[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
      v42[4] = v55;
      v42[5] = v21;
      aBlock[4] = partial apply for closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:);
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor;
      v44 = _Block_copy(aBlock);
      v45 = v43;

      v46 = v56;
      static DispatchQoS.unspecified.getter();
      v65 = &_swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v47 = v51;
      v48 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();

      _Block_release(v44);
      (*(v53 + 8))(v47, v48);
      (*(v50 + 8))(v46, v52);
    }

    a3[2](a3, 1, 0);
  }

  else
  {
    v35 = type metadata accessor for XPCServiceError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, &type metadata accessor for XPCServiceError, &protocol conformance descriptor for XPCServiceError);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for XPCServiceError.notEntitled(_:), v35);
    _Block_copy(a3);
    v37 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v37);
  }
}

uint64_t sub_10000FD60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDD8()
{

  return _swift_deallocObject(v0, 48, 7);
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

uint64_t sub_10000FE78()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_10000FF94()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010024()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001007C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000100B4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100010134()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
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

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_11Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010414()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010458()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000104C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t objectdestroy_84Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010580()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001061C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100010680()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100010738()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_88Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100010808()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001085C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_148Tm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_62Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(char a1, uint64_t a2)
{
  type metadata accessor for WorkoutPlan();
  v5 = *(v2 + 16);

  return closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(a1, a2, v5);
}

uint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 56) + 16 * v12);
        v14 = v13[1];
        if (v14)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v32 = v2;
      v16 = *(*(a1 + 48) + 8 * v12);
      v31 = *v13;
      v17 = *(&_swiftEmptyDictionarySingleton + 2);
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v17)
      {

        v19 = v16;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
      }

      else
      {

        v18 = v16;
      }

      v33 = v16;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptyDictionarySingleton + 5));
      v20 = &_swiftEmptyDictionarySingleton + 64;
      v21 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8)) == 0)
      {
        break;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v2 = v32;
      v25 = v33;
LABEL_24:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v24) = v25;
      v30 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v24);
      *v30 = v31;
      v30[1] = v14;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v26 = 0;
    v27 = (63 - v21) >> 6;
    v2 = v32;
    v25 = v33;
    while (++v23 != v27 || (v26 & 1) == 0)
    {
      v28 = v23 == v27;
      if (v23 == v27)
      {
        v23 = 0;
      }

      v26 |= v28;
      v29 = *&v20[8 * v23];
      if (v29 != -1)
      {
        v24 = __clz(__rbit64(~v29)) + (v23 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v8)
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v7 = *(v4 + 8 * v15);
      ++v10;
      if (v7)
      {
        v10 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NSString();
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

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCSSGMd, &_ss18_DictionaryStorageCySo8NSStringCSSGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSStringC_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCSSSgGMd, &_ss18_DictionaryStorageCySo8NSStringCSSSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v57 = type metadata accessor for Logger();
  v56 = *(v57 - 8);
  v15 = __chkstk_darwin(v57);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v53 = &v53 - v18;
  __chkstk_darwin(v17);
  v54 = &v53 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSStringC_SSSgtGMd, &_ss23_ContiguousArrayStorageCySo8NSStringC_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100016B60;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_24;
  }

  v21 = inited;
  type metadata accessor for NSString();
  v21[4] = NSString.init(string:)();
  v21[5] = a1;
  v21[6] = a2;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21[7] = NSString.init(string:)();
  v21[8] = a3;
  v21[9] = a4;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v21[10] = NSString.init(string:)();
  v21[11] = a5;
  v21[12] = a6;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_26;
  }

  v22 = NSString.init(string:)();
  v23 = v58;
  v21[13] = v22;
  v21[14] = v23;
  v21[15] = a8;

  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSStringC_SSSgTt0g5Tf4g_n(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringC_SSSgtMd, &_sSo8NSStringC_SSSgtMR);
  swift_arrayDestroy();
  specialized Dictionary.compactMapValues<A>(_:)(v24);

  error[0] = -1;
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, error, isa);

  if (!v26)
  {
    v29 = v55;
    static WOLog.xpcService.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136315138;
      swift_beginAccess();
      v59 = error[0];
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v62);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "SystemAlertPresenter: Failed to create alert notification due to %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    (*(v56 + 8))(v29, v57);
    return 2;
  }

  v27 = error[0];
  if (v27 != noErr.getter())
  {
    v37 = v54;
    static WOLog.xpcService.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136315138;
      swift_beginAccess();
      v59 = error[0];
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v62);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "SystemAlertPresenter: Failed to create alert notification due to %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    else
    {
    }

    (*(v56 + 8))(v37, v57);
    return 2;
  }

  responseFlags[0] = 0;
  v28 = CFUserNotificationReceiveResponse(v26, 0.0, responseFlags);
  if (v28 == noErr.getter())
  {
  }

  else
  {
    v45 = v53;
    static WOLog.xpcService.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 67109120;
      *(v48 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v46, v47, "SystemAlertPresenter: Failed to interpret overload notification user alert response: %d", v48, 8u);

      v49 = v26;
    }

    else
    {
      v49 = v46;
      v46 = v26;
    }

    v51 = v57;
    v52 = v56;

    (*(v52 + 8))(v45, v51);
  }

  return (responseFlags[0] & 3) != 0;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for NSString();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Bool __swiftcall WorkoutKitXPCService.processIsForegrounded()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(BKSApplicationStateMonitor) init];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mostElevatedApplicationStateForPID:*(v0 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_requestingProcessIdentifier)];
    [v6 invalidate];

    return v7 == 8;
  }

  else
  {
    static WOLog.xpcService.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "WorkoutKitXPCService: failed to instantiate BKSApplicationStateMonitor", v11, 2u);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v8];

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

id specialized WorkoutKitXPCService.hasPairedWatch.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getPairedDevices];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for NRDevice();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = &_swiftEmptyArrayStorage;
      if (v4 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v13 = v1;
        v6 = 0;
        v1 = (v4 & 0xFFFFFFFFFFFFFF8);
        v7 = NRDevicePropertyIsAltAccount;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v8;
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v8 valueForProperty:v7])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v15 = 0u;
            v16 = 0u;
          }

          v17[0] = v15;
          v17[1] = v16;
          if (*(&v16 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (v14)
            {

              goto LABEL_8;
            }
          }

          else
          {
            outlined destroy of Any?(v17);
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_8:
          ++v6;
          if (v10 == i)
          {
            v11 = v18;
            v1 = v13;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

      v11 = &_swiftEmptyArrayStorage;
LABEL_27:

      if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *(v11 + 16);
      }

      return (v12 != 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService.workoutAppIsInstalled.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[0] = 0;
  v4 = [objc_opt_self() sharedDeviceConnection];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v20 = 0;
  v6 = [v4 getApplicationIsInstalled:v19 onAnyPairedDeviceWithBundleID:FIWorkoutBundleIdentifier error:&v20];

  if (v6)
  {
    v7 = v19[0];
    v8 = v20;
  }

  else
  {
    v9 = v20;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *v19 = v10;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "WorkoutKitXPCService: failed to check if workout app is installed, %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v7;
}

id specialized WorkoutKitXPCService.extensionRecord(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v5 = objc_allocWithZone(LSApplicationExtensionRecord);

  return @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(a1, a2);
}

char *specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = specialized WorkoutKitXPCService.extensionRecord(for:)(a1, a2);
  if (v11)
  {
    v12 = v11;
    v33 = v4;
    v13 = [v11 containingBundleRecord];
    if (v13 && (v14 = v13, v15 = [v13 bundleIdentifier], v14, v15))
    {
      v32 = v5;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      static WOLog.xpcService.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v31 = v19;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = v18;
        v21 = v20;
        v34 = swift_slowAlloc();
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
        *(v21 + 12) = 2080;
        *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v17, &v34);
        v22 = v30;
        _os_log_impl(&_mh_execute_header, v30, v31, "WorkoutKitXPCService: remapped extension bundleId: %s to container bundleId: %s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v32 + 8))(v10, v33);
    }

    else
    {
      static WOLog.xpcService.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34 = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
        _os_log_impl(&_mh_execute_header, v23, v24, "WorkoutKitXPCService: failed to retrieve container bundleId from extension bundleId: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      (*(v5 + 8))(v8, v33);
      v27 = type metadata accessor for XPCServiceError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, enum case for XPCServiceError.unableToRetrieveContainerBundleIdentifier(_:), v27);
      swift_willThrow();
    }
  }

  else
  {

    return a1;
  }

  return v8;
}

uint64_t specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v5 = objc_allocWithZone(LSApplicationRecord);

  v6 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v7 = [v6 appClipMetadata];

  if (!v7)
  {
    return 0;
  }

  return 1;
}

unint64_t type metadata accessor for NRDevice()
{
  result = lazy cache variable for type metadata for NRDevice;
  if (!lazy cache variable for type metadata for NRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRDevice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError()
{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    type metadata accessor for XPCServiceError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

uint64_t one-time initialization function for iconRetrievalQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AppIconRetrieval.iconRetrievalQueue = result;
  return result;
}

void closure #1 in static AppIconRetrieval.icon(forBundleId:completion:)(void *a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100016BA0;
  *(v6 + 32) = a2;
  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for ISImageDescriptor, ISImageDescriptor_ptr);
  v7 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 prepareImagesForImageDescriptors:isa];

  v9 = [a1 CGImageForDescriptor:v7];
  image = [objc_allocWithZone(UIImage) initWithCGImage:v9];

  v10 = UIImagePNGRepresentation(image);
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    outlined copy of Data._Representation(v12, v14);
    a3(v12, v14, 0);
    outlined consume of Data._Representation(v12, v14);
    outlined consume of Data._Representation(v12, v14);
  }

  else
  {
    v15 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError, &protocol conformance descriptor for ImportError);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, enum case for ImportError.unknownType(_:), v15);
    a3(0, 0xF000000000000000, v16);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t specialized static AppIconRetrieval.icon(forBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(ISIcon);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithBundleIdentifier:v13];

  v15 = [objc_allocWithZone(ISImageDescriptor) initWithSize:40.0 scale:{40.0, 2.0}];
  [v15 setShape:0];
  if (one-time initialization token for iconRetrievalQueue != -1)
  {
    swift_once();
  }

  v21[1] = static AppIconRetrieval.iconRetrievalQueue;
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = partial apply for closure #1 in static AppIconRetrieval.icon(forBundleId:completion:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_1000138F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ISImageDescriptor(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t specialized static PermissionAlert.present(appName:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100016AF0;
  *(v6 + 56) = &type metadata for String;
  v7 = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 64) = v7;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v8 = String.init(format:_:)();
  v10 = v9;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100016AF0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v7;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = String.init(format:_:)();
  v14 = v13;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(v8, v10, v12, v14, v15, v17, v18, v19);

  return 2 - v20;
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
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized WorkoutKitXPCService.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.xpcService.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = a1;
    v25 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = Optional.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "WorkoutKitXPCService: remote alert invalidated with error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v2 = v23;
  }

  (*(v5 + 8))(v7, v4);
  v16 = (v2 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  v17 = *(v2 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  if (v17)
  {
    v18 = v16[1];

    v17(0, a1);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v17, v18);
    v19 = *v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v19, v20);
}

uint64_t specialized WorkoutKitXPCService.remoteAlertHandleDidActivate(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.xpcService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "WorkoutKitXPCService: remote alert did activate", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = (v1 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  v10 = *(v1 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  if (v10)
  {
    v11 = v9[1];

    v10(1, 0);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v10, v11);
    v12 = *v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v12, v13);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::String __swiftcall String.workoutKitLocalized()()
{
  v0 = String.workoutKitLocalized()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}