uint64_t variable initialization expression of MLServerDelegate.mediaML()
{
  v2 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  return OSAllocatedUnfairLock<A>.init(initialState:)(&v2, v0);
}

uint64_t OSAllocatedUnfairLock<A>.init(initialState:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = OSAllocatedUnfairLock.init(uncheckedState:)(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void key path getter for MLServerDelegate.mediaML : MLServerDelegate(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = _objc_retain(*a1);
  *a2 = (*((*v3 & swift_isaMask) + 0x58))(v2);
}

void key path setter for MLServerDelegate.mediaML : MLServerDelegate(uint64_t *a1, id *a2)
{
  outlined init with copy of OSAllocatedUnfairLock<MediaML?>(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  (*((*v3 & swift_isaMask) + 0x60))(v4);
}

uint64_t MLServerDelegate.mediaML.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t MLServerDelegate.mediaML.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MLServerDelegate.logger);
  __swift_project_value_buffer(v1, static MLServerDelegate.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLServerDelegate", 0x10uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MLServer.logger);
  __swift_project_value_buffer(v1, static MLServer.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mediamlxpc", 0x14uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLServer", 8uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t MLServerDelegate.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MLServerDelegate.logger);
}

uint64_t static MLServerDelegate.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MLServerDelegate.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall MLServerDelegate.ensureMediaML()()
{
  v12 = &async function pointer to partial apply for closure #1 in MLServerDelegate.ensureMediaML();
  ObjectType = swift_getObjectType();
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v9 - v9;
  v14 = v0;
  v10 = 0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v11, 1);
  _objc_retain(v0);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v3;
  v8 = ObjectType;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v4, v4, v5, v6, v7, &type metadata for () + 8);
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[3] = a4;
  type metadata accessor for MediaML();
  v6 = swift_task_alloc();
  *(v9 + 80) = v6;
  *v6 = *(v9 + 16);
  v6[1] = closure #1 in MLServerDelegate.ensureMediaML();

  return MediaML.__allocating_init()();
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1)
{
  v5 = *v2;
  v5[2] = *v2;
  v5[11] = a1;
  v5[12] = v1;

  if (v1)
  {
    v3 = closure #1 in MLServerDelegate.ensureMediaML();
  }

  else
  {
    v3 = closure #1 in MLServerDelegate.ensureMediaML();
  }

  return _swift_task_switch(v3, 0);
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()()
{
  v1 = v0[12];
  v7 = v0[11];
  v2 = v0[6];
  v0[2] = v0;
  v0[5] = v7;
  v8 = (*((*v2 & swift_isaMask) + 0x58))();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(partial apply for closure #1 in closure #1 in MLServerDelegate.ensureMediaML(), v7, v8, v3, &type metadata for () + 8);
  if (v1)
  {
  }

  v4 = *(*(v6 + 16) + 8);

  return v4();
}

{
  v31 = v0;
  v16 = v0[12];
  v1 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v0[2] = v0;
  swift_errorRetain();
  v0[4] = v16;
  v2 = MLServerDelegate.logger.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  swift_errorRetain();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #1 in closure #1 in MLServerDelegate.ensureMediaML();
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = partial apply for closure #1 in OSLogArguments.append(_:);
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v24, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to init MediaML due to error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[9];
  v8 = v13[7];
  v6 = v13[8];

  (*(v6 + 8))(v7, v8);

  v4 = *(v13[2] + 8);

  return v4();
}

uint64_t sub_100002784()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServerDelegate.ensureMediaML();

  return closure #1 in MLServerDelegate.ensureMediaML()(a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MLServerDelegate.ensureMediaML()()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in MLServerDelegate.ensureMediaML()(uint64_t *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  outlined init with copy of TaskPriority?(v54, v57);
  v58 = type metadata accessor for TaskPriority();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    outlined destroy of TaskPriority?(v57);
    v44 = 0;
  }

  else
  {
    v43 = TaskPriority.rawValue.getter();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = String.utf8CString.getter();

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    outlined destroy of TaskPriority?(v54);

    v18 = v16;
  }

  else
  {

    outlined destroy of TaskPriority?(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

void *MLServerDelegate.init()()
{
  v6 = 0;
  v2 = OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML;
  v5 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  *v2 = OSAllocatedUnfairLock<A>.init(initialState:)(&v5, v0);
  v4.receiver = v6;
  v4.super_class = type metadata accessor for MLServerDelegate();
  v3 = objc_msgSendSuper2(&v4, "init");
  _objc_retain(v3);
  v6 = v3;
  (*((*v3 & swift_isaMask) + 0x70))();

  return v3;
}

Swift::Bool __swiftcall MLServerDelegate.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v10 = (*((*v2 & swift_isaMask) + 0x58))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MLServerDelegate.listener(_:shouldAcceptNewConnection:), 0, v10, v3, v3);

  if (v12)
  {
    type metadata accessor for MLServer();

    v11 = MLServer.__allocating_init(mediaML:)(v12);
    type metadata accessor for NSXPCInterface();
    _objc_retain(&OBJC_PROTOCOL____TtP10mediamlxpc16MLServerProtocol_);
    v6 = @nonobjc NSXPCInterface.__allocating_init(with:)(&OBJC_PROTOCOL____TtP10mediamlxpc16MLServerProtocol_);
    [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:?];

    _objc_retain(v11);
    [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v11];
    swift_unknownObjectRelease();
    [(objc_class *)shouldAcceptNewConnection.super.isa activate];

    return 1;
  }

  else
  {
    (*((*v9 & swift_isaMask) + 0x70))(v4);
    return 0;
  }
}

unint64_t type metadata accessor for NSXPCInterface()
{
  v2 = lazy cache variable for type metadata for NSXPCInterface;
  if (!lazy cache variable for type metadata for NSXPCInterface)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSXPCInterface);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSXPCInterface.__allocating_init(with:)(void *a1)
{
  v3 = [swift_getObjCClassFromMetadata() interfaceWithProtocol:a1];

  return v3;
}

id MLServerDelegate.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLServerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *outlined init with copy of OSAllocatedUnfairLock<MediaML?>(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  v5 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  partial apply for closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(a3 + *(*a3 + class metadata base offset for ManagedBuffer + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void *implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

void closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

void *outlined init with copy of MediaML?(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11TQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

void closure #1 in OSLogArguments.append(_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (a4)(a1, a2, a3);
  v7 = *a1;
  _objc_retain(v8);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v8)
  {
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;

    *a2 = v4 + 1;
  }

  else
  {
  }
}

unint64_t type metadata accessor for os_unfair_lock_s(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for os_unfair_lock_s;
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
      return v2;
    }
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t one-time initialization function for semaphoreTimeoutValue()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v1, semaphoreTimeoutValue);
  *__swift_project_value_buffer(v1, semaphoreTimeoutValue) = 1;
  return (*(*(v1 - 8) + 104))();
}

uint64_t semaphoreTimeoutValue.unsafeMutableAddressor()
{
  if (one-time initialization token for semaphoreTimeoutValue != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();
  return __swift_project_value_buffer(v0, semaphoreTimeoutValue);
}

uint64_t one-time initialization function for priority()
{
  v1 = type metadata accessor for TaskPriority();
  __swift_allocate_value_buffer(v1, priority);
  __swift_project_value_buffer(v1, priority);
  return static TaskPriority.high.getter();
}

uint64_t priority.unsafeMutableAddressor()
{
  if (one-time initialization token for priority != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TaskPriority();
  return __swift_project_value_buffer(v0, priority);
}

uint64_t MLServer.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MLServer.logger);
}

uint64_t static MLServer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MLServer.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t MLServer.mediaML.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  return v2;
}

id MLServer.init(mediaML:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;

  *OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for MLServer();
  v3 = objc_msgSendSuper2(&v4, "init");
  _objc_retain(v3);
  v6 = v3;

  return v3;
}

void MLServer.getPrediction(inputFeatures:with:)(uint64_t a1, void (*a2)(void, double), uint64_t a3)
{
  v111 = a3;
  v113 = a2;
  v125 = a1;
  ObjectType = swift_getObjectType();
  v108 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v96 = 0;
  v97 = type metadata accessor for DispatchTimeInterval();
  v98 = *(v97 - 8);
  v99 = v98;
  __chkstk_darwin(0);
  v100 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchTime();
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  __chkstk_darwin(v101 - 8);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v44 - v106;
  __chkstk_darwin(&v44 - v106);
  v107 = &v44 - v106;
  v109 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v108);
  v110 = &v44 - v109;
  v122 = type metadata accessor for Logger();
  v114 = v122;
  v115 = *(v122 - 8);
  v121 = v115;
  v116 = v115;
  v117 = *(v115 + 64);
  v4 = __chkstk_darwin(v125);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v44 - v119;
  v5 = __chkstk_darwin(v4);
  v6 = &v44 - v119;
  v120 = &v44 - v119;
  v160 = v5;
  v158 = v7;
  v159 = v8;
  v157 = v9;
  v10 = MLServer.logger.unsafeMutableAddressor();
  v123 = *(v121 + 16);
  v124 = (v121 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v123(v6, v10, v122);

  v134 = 7;
  v126 = swift_allocObject();
  *(v126 + 16) = v125;

  v129 = 32;
  v133 = 32;
  v11 = swift_allocObject();
  v12 = v126;
  v135 = v11;
  *(v11 + 16) = partial apply for implicit closure #1 in MLServer.getPrediction(inputFeatures:with:);
  *(v11 + 24) = v12;

  v146 = Logger.logObject.getter();
  v127 = v146;
  v145 = static os_log_type_t.debug.getter();
  v128 = v145;
  v130 = 17;
  v139 = swift_allocObject();
  v131 = v139;
  *(v139 + 16) = v129;
  v140 = swift_allocObject();
  v132 = v140;
  *(v140 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v135;
  v136 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v136;
  v143 = v15;
  v137 = v15;
  *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v15 + 24) = v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v138 = v144;
  v141 = _allocateUninitializedArray<A>(_:)();
  v142 = v17;

  v18 = v139;
  v19 = v142;
  *v142 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v19[1] = v18;

  v20 = v140;
  v21 = v142;
  v142[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v21[3] = v20;

  v22 = v142;
  v23 = v143;
  v142[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v22[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v146, v145))
  {
    v24 = v96;
    v88 = static UnsafeMutablePointer.allocate(capacity:)();
    v85 = v88;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v89 = createStorage<A>(capacity:type:)(0, v86, v86);
    v87 = v89;
    v91 = 1;
    v90 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v151[0] = v88;
    v150 = v89;
    v149 = v90;
    v92 = v151;
    serialize(_:at:)(2, v151);
    serialize(_:at:)(v91, v92);
    v147 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v148 = v131;
    closure #1 in osLogInternal(_:log:type:)(&v147, v92, &v150, &v149);
    v93 = v24;
    v94 = v24;
    if (v24)
    {
      v83 = 0;

      __break(1u);
    }

    else
    {
      v147 = closure #1 in OSLogArguments.append(_:)partial apply;
      v148 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v147, v151, &v150, &v149);
      v81 = 0;
      v82 = 0;
      v147 = partial apply for closure #1 in OSLogArguments.append(_:);
      v148 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v147, v151, &v150, &v149);
      v79 = 0;
      v80 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Called into getPrediction with inputFeatures: %s", v85, 0xCu);
      destroyStorage<A>(_:count:)(v87, 0);
      destroyStorage<A>(_:count:)(v90, 1);
      UnsafeMutablePointer.deallocate()();

      v84 = v79;
    }
  }

  else
  {
    v25 = v96;

    v84 = v25;
  }

  v66 = v84;

  v67 = *(v116 + 8);
  v68 = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v120, v114);
  v73 = 0;
  v26 = dispatch_semaphore_create(0);
  v69 = v26;
  v156 = v26;
  v70 = priority.unsafeMutableAddressor();
  v72 = type metadata accessor for TaskPriority();
  v71 = *(v72 - 8);
  (*(v71 + 16))(v110, v70);
  v27 = *(v71 + 56);
  v78 = 1;
  v27(v110, 0);
  v28 = v112;

  v29 = v26;
  v30 = swift_allocObject();
  v31 = v112;
  v32 = v125;
  v33 = v113;
  v34 = v111;
  v35 = ObjectType;
  v36 = v73;
  v37 = v110;
  v74 = v30;
  v30[2] = v73;
  v30[3] = v36;
  v30[4] = v31;
  v30[5] = v32;
  v30[6] = v33;
  v30[7] = v34;
  v30[8] = v26;
  v30[9] = v36;
  v30[10] = v35;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v36, v36, v37, &async function pointer to partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:), v30, &type metadata for () + 8);

  static DispatchTime.now()();
  v38 = semaphoreTimeoutValue.unsafeMutableAddressor();
  (*(v99 + 16))(v100, v38, v97);
  + infix(_:_:)();
  (*(v99 + 8))(v100, v97);
  v76 = *(v103 + 8);
  v75 = v103 + 8;
  v76(v105, v101);
  v77 = OS_dispatch_semaphore.wait(timeout:)();
  v76(v107, v101);
  v155 = v77 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v39 = v118;
    v40 = MLServer.logger.unsafeMutableAddressor();
    v123(v39, v40, v114);
    v64 = Logger.logObject.getter();
    v61 = v64;
    v63 = static os_log_type_t.error.getter();
    v62 = v63;
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v64, v63))
    {
      v41 = v66;
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = v52;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = 0;
      v53 = createStorage<A>(capacity:type:)(0, v49, v49);
      v51 = v53;
      v54 = createStorage<A>(capacity:type:)(v50, &type metadata for Any + 8, &type metadata for Any + 8);
      v154 = v52;
      v153 = v53;
      v152 = v54;
      v55 = 0;
      v56 = &v154;
      serialize(_:at:)(0, &v154);
      serialize(_:at:)(v55, v56);
      v151[2] = v65;
      v57 = &v44;
      __chkstk_darwin(&v44);
      v58 = &v44 - 6;
      *(&v44 - 4) = v42;
      *(&v44 - 3) = &v153;
      *(&v44 - 2) = &v152;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v60 = v41;
      if (v41)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v61, v62, "getPrediction timed-out", v48, 2u);
        v46 = 0;
        destroyStorage<A>(_:count:)(v51, 0);
        destroyStorage<A>(_:count:)(v54, v46);
        UnsafeMutablePointer.deallocate()();

        v47 = v60;
      }
    }

    else
    {

      v47 = v66;
    }

    v44 = v47;

    v67(v118, v114);

    v113(v43, 0.0);

    v45 = v44;
  }

  else
  {
    v45 = v66;
  }
}

uint64_t implicit closure #1 in MLServer.getPrediction(inputFeatures:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 128) = a1;
  *(v9 + 120) = a9;
  *(v9 + 112) = a8;
  *(v9 + 104) = a7;
  *(v9 + 96) = a6;
  *(v9 + 88) = a5;
  *(v9 + 32) = v9;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  v10 = type metadata accessor for Logger();
  *(v9 + 136) = v10;
  *(v9 + 144) = *(v10 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 16) = a7;
  *(v9 + 24) = a8;
  *(v9 + 56) = a9;
  *(v9 + 64) = a1;

  return _swift_task_switch(closure #1 in MLServer.getPrediction(inputFeatures:with:), 0);
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)()
{
  v1 = v0[11];
  v0[4] = v0;
  v0[20] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = swift_task_alloc();
  v5[21] = v2;
  *v2 = v5[4];
  v2[1] = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  v3 = v5[12];

  return MediaML.getPrediction(data:)(v3);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  *(v0 + 32) = v0;
  if (v1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  v6 = *(v8 + 13);
  v8[10] = v7;

  v6(v3, v7);

  OS_dispatch_semaphore.signal()();

  v4 = *(*(v8 + 4) + 8);

  return v4();
}

{
  v34 = v0;
  v19 = v0[22];
  v1 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v0[4] = v0;

  swift_errorRetain();
  v0[9] = v19;
  v2 = MLServer.logger.unsafeMutableAddressor();
  (*(v17 + 16))(v1, v2, v18);
  swift_errorRetain();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #2 in closure #1 in MLServer.getPrediction(inputFeatures:with:);
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v3;

  *v26 = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[1] = v23;

  v26[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[3] = v24;

  v26[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(1, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get prediction with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 1);
    destroyStorage<A>(_:count:)(v15, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v16 + 19);
  v9 = *(v16 + 17);
  v10 = v16[16];
  v11 = *(v16 + 13);
  v7 = *(v16 + 18);

  (*(v7 + 8))(v8, v9);

  v11(v4, v10);

  v5 = *(*(v16 + 4) + 8);

  return v5();
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)(uint64_t a1, char a2)
{
  v6 = *v3;
  *(v6 + 32) = *v3;
  *(v6 + 176) = v2;
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;

  if (v2)
  {
    v4 = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  }

  else
  {

    v4 = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  }

  return _swift_task_switch(v4, 0);
}

void MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v123 = a3;
  v125 = a2;
  v137 = a1;
  ObjectType = swift_getObjectType();
  v120 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v108 = 0;
  v109 = type metadata accessor for DispatchTimeInterval();
  v110 = *(v109 - 8);
  v111 = v110;
  __chkstk_darwin(0);
  v112 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchTime();
  v114 = *(v113 - 8);
  v115 = v114;
  v116 = *(v114 + 64);
  __chkstk_darwin(v113 - 8);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v49 - v118;
  __chkstk_darwin(&v49 - v118);
  v119 = &v49 - v118;
  v121 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v122 = &v49 - v121;
  v134 = type metadata accessor for Logger();
  v126 = v134;
  v127 = *(v134 - 8);
  v133 = v127;
  v128 = v127;
  v129 = *(v127 + 64);
  v4 = __chkstk_darwin(v137);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = &v49 - v131;
  v5 = __chkstk_darwin(v4);
  v6 = &v49 - v131;
  v132 = &v49 - v131;
  v173 = v5;
  v171 = v7;
  v172 = v8;
  v170 = v9;
  v10 = MLServer.logger.unsafeMutableAddressor();
  v135 = *(v133 + 16);
  v136 = (v133 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v135(v6, v10, v134);

  v146 = 7;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;

  v141 = 32;
  v145 = 32;
  v11 = swift_allocObject();
  v12 = v138;
  v147 = v11;
  *(v11 + 16) = partial apply for implicit closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  *(v11 + 24) = v12;

  v158 = Logger.logObject.getter();
  v139 = v158;
  v157 = static os_log_type_t.debug.getter();
  v140 = v157;
  v142 = 17;
  v151 = swift_allocObject();
  v143 = v151;
  *(v151 + 16) = v141;
  v152 = swift_allocObject();
  v144 = v152;
  *(v152 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v147;
  v148 = v13;
  *(v13 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v148;
  v155 = v15;
  v149 = v15;
  *(v15 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v15 + 24) = v16;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v150 = v156;
  v153 = _allocateUninitializedArray<A>(_:)();
  v154 = v17;

  v18 = v151;
  v19 = v154;
  *v154 = closure #1 in OSLogArguments.append(_:)partial apply;
  v19[1] = v18;

  v20 = v152;
  v21 = v154;
  v154[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v21[3] = v20;

  v22 = v154;
  v23 = v155;
  v154[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v22[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v158, v157))
  {
    v24 = v108;
    v100 = static UnsafeMutablePointer.allocate(capacity:)();
    v97 = v100;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v101 = createStorage<A>(capacity:type:)(0, v98, v98);
    v99 = v101;
    v103 = 1;
    v102 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v163[0] = v100;
    v162 = v101;
    v161 = v102;
    v104 = v163;
    serialize(_:at:)(2, v163);
    serialize(_:at:)(v103, v104);
    v159 = closure #1 in OSLogArguments.append(_:)partial apply;
    v160 = v143;
    closure #1 in osLogInternal(_:log:type:)(&v159, v104, &v162, &v161);
    v105 = v24;
    v106 = v24;
    if (v24)
    {
      v95 = 0;

      __break(1u);
    }

    else
    {
      v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v160 = v144;
      closure #1 in osLogInternal(_:log:type:)(&v159, v163, &v162, &v161);
      v93 = 0;
      v94 = 0;
      v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v160 = v149;
      closure #1 in osLogInternal(_:log:type:)(&v159, v163, &v162, &v161);
      v91 = 0;
      v92 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Called into getPredictionDictionary with inputFeatures: %s", v97, 0xCu);
      destroyStorage<A>(_:count:)(v99, 0);
      destroyStorage<A>(_:count:)(v102, 1);
      UnsafeMutablePointer.deallocate()();

      v96 = v91;
    }
  }

  else
  {
    v25 = v108;

    v96 = v25;
  }

  v72 = v96;

  v73 = *(v128 + 8);
  v74 = (v128 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v132, v126);
  v84 = 0;
  v26 = dispatch_semaphore_create(0);
  v75 = v26;
  v169 = v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  v79 = _allocateUninitializedArray<A>(_:)();
  v77 = v27;
  v28 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v28, v77);
  v29 = v77;
  v77[2] = v84;
  v76 = v29 + 3;
  v30 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v30, v76);
  v77[5] = v84;
  _finalizeUninitializedArray<A>(_:)();
  v85 = Dictionary.init(dictionaryLiteral:)();
  v80 = v85;
  v168 = v85;
  v81 = priority.unsafeMutableAddressor();
  v83 = type metadata accessor for TaskPriority();
  v82 = *(v83 - 8);
  (*(v82 + 16))(v122, v81);
  v31 = *(v82 + 56);
  v90 = 1;
  v31(v122, 0);
  v32 = v124;

  v33 = v26;
  v34 = swift_allocObject();
  v35 = v124;
  v36 = v137;
  v37 = v125;
  v38 = v123;
  v39 = ObjectType;
  v40 = v84;
  v41 = v122;
  v42 = v34;
  v43 = v85;
  v86 = v42;
  v42[2] = v84;
  v42[3] = v40;
  v42[4] = v35;
  v42[5] = v36;
  v42[6] = v43;
  v42[7] = v37;
  v42[8] = v38;
  v42[9] = v26;
  v42[10] = v39;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v40, v40, v41, &async function pointer to partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:), v42, &type metadata for () + 8);

  static DispatchTime.now()();
  v44 = semaphoreTimeoutValue.unsafeMutableAddressor();
  (*(v111 + 16))(v112, v44, v109);
  + infix(_:_:)();
  (*(v111 + 8))(v112, v109);
  v88 = *(v115 + 8);
  v87 = v115 + 8;
  v88(v117, v113);
  v89 = OS_dispatch_semaphore.wait(timeout:)();
  v88(v119, v113);
  v167 = v89 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v45 = v130;
    v46 = MLServer.logger.unsafeMutableAddressor();
    v135(v45, v46, v126);
    v70 = Logger.logObject.getter();
    v67 = v70;
    v69 = static os_log_type_t.error.getter();
    v68 = v69;
    v71 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v70, v69))
    {
      v47 = v72;
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = 0;
      v59 = createStorage<A>(capacity:type:)(0, v55, v55);
      v57 = v59;
      v60 = createStorage<A>(capacity:type:)(v56, &type metadata for Any + 8, &type metadata for Any + 8);
      v166 = v58;
      v165 = v59;
      v164 = v60;
      v61 = 0;
      v62 = &v166;
      serialize(_:at:)(0, &v166);
      serialize(_:at:)(v61, v62);
      v163[2] = v71;
      v63 = &v49;
      __chkstk_darwin(&v49);
      v64 = &v49 - 6;
      *(&v49 - 4) = v48;
      *(&v49 - 3) = &v165;
      *(&v49 - 2) = &v164;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v66 = v47;
      if (v47)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v67, v68, "getPredictionDictionary timed-out", v54, 2u);
        v52 = 0;
        destroyStorage<A>(_:count:)(v57, 0);
        destroyStorage<A>(_:count:)(v60, v52);
        UnsafeMutablePointer.deallocate()();

        v53 = v66;
      }
    }

    else
    {

      v53 = v72;
    }

    v50 = v53;

    v73(v130, v126);

    v49 = _dictionaryUpCast<A, B, C, D>(_:)();
    (v125)(v49);

    v51 = v50;
  }

  else
  {
    v51 = v72;
  }
}

uint64_t implicit closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v17;
  v8[17] = a8;
  v8[16] = a7;
  v8[15] = a6;
  v8[14] = a5;
  v8[13] = a4;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[8] = 0;
  v8[10] = 0;
  v8[12] = 0;
  v9 = type metadata accessor for Logger();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[2] = a7;
  v8[3] = a8;
  v8[8] = v17;

  return _swift_task_switch(closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:), 0);
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)()
{
  v1 = v0[13];
  v0[4] = v0;
  v0[22] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = swift_task_alloc();
  v5[23] = v2;
  *v2 = v5[4];
  v2[1] = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  v3 = v5[14];

  return MediaML.getPredictionDictionary(data:)(v3);
}

{
  v1 = v0[24];
  v0[4] = v0;
  v0[11] = v1;

  if (v0[11])
  {
    v6[9] = v6[11];
  }

  else
  {

    v6[9] = _dictionaryUpCast<A, B, C, D>(_:)();

    if (v6[11])
    {
      outlined destroy of [String : Any]?(v6 + 11);
    }
  }

  v4 = v6[16];

  v5 = v6[9];
  v6[12] = v5;

  v4(v5);

  OS_dispatch_semaphore.signal()();

  v2 = *(v6[4] + 8);

  return v2();
}

{
  v32 = v0;
  v17 = v0[25];
  v1 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v0[4] = v0;

  swift_errorRetain();
  v0[10] = v17;
  v2 = MLServer.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  swift_errorRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #2 in closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v3;

  *v24 = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[1] = v21;

  v24[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[3] = v22;

  v24[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v25, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(1, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v27 = buf;
    v28 = v12;
    v29 = v13;
    serialize(_:at:)(2, &v27);
    serialize(_:at:)(1, &v27);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
    v31 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get prediction with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 1);
    destroyStorage<A>(_:count:)(v13, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v14[21];
  v8 = v14[19];
  v9 = v14[16];
  v6 = v14[20];

  (*(v6 + 8))(v7, v8);

  _dictionaryUpCast<A, B, C, D>(_:)();
  v9();

  v4 = *(v14[4] + 8);

  return v4();
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[24] = a1;
  v5[25] = v1;

  if (v1)
  {
    v3 = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  }

  else
  {

    v3 = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  }

  return _swift_task_switch(v3, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary) -> ()(uint64_t a1, uint64_t a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))();
}

uint64_t MLServer.write(data:with:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v43 = a3;
  v46 = a2;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v56 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v40 = 0;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = &v21 - v41;
  v53 = type metadata accessor for Logger();
  v47 = v53;
  v48 = *(v53 - 8);
  v52 = v48;
  v49 = v48;
  v50 = *(v48 + 64);
  v3 = __chkstk_darwin(v45);
  v4 = &v21 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v4;
  v67 = v3;
  v65 = v5;
  v66 = v6;
  v64 = v7;
  v8 = MLServer.logger.unsafeMutableAddressor();
  (*(v52 + 16))(v4, v8, v53);
  v58 = Logger.logObject.getter();
  v54 = v58;
  v57 = static os_log_type_t.debug.getter();
  v55 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v58, v57))
  {
    v9 = v40;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = 0;
    v31 = createStorage<A>(capacity:type:)(0, v27, v27);
    v29 = v31;
    v32 = createStorage<A>(capacity:type:)(v28, &type metadata for Any + 8, &type metadata for Any + 8);
    v63 = v30;
    v62 = v31;
    v61 = v32;
    v33 = 0;
    v34 = &v63;
    serialize(_:at:)(0, &v63);
    serialize(_:at:)(v33, v34);
    v60 = v59;
    v35 = &v21;
    __chkstk_darwin(&v21);
    v36 = &v21 - 6;
    *(&v21 - 4) = v10;
    *(&v21 - 3) = &v62;
    *(&v21 - 2) = &v61;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v38 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v54, v55, "Called into writeData", v26, 2u);
      v24 = 0;
      destroyStorage<A>(_:count:)(v29, 0);
      destroyStorage<A>(_:count:)(v32, v24);
      UnsafeMutablePointer.deallocate()();

      v25 = v38;
    }
  }

  else
  {

    v25 = v40;
  }

  (*(v49 + 8))(v51, v47);
  v21 = 0;
  v11 = *(*(type metadata accessor for TaskPriority() - 8) + 56);
  v22 = 1;
  v11(v42, 1);

  v12 = v44;
  v13 = swift_allocObject();
  v14 = v45;
  v15 = v44;
  v16 = ObjectType;
  v17 = v21;
  v18 = v42;
  v13[2] = v21;
  v13[3] = v17;
  v13[4] = v14;
  v13[5] = v15;
  v13[6] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v17, v17, v18, &async function pointer to partial apply for closure #1 in MLServer.write(data:with:), v13, &type metadata for () + 8);

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Dispatched write data task", 0x1AuLL, v22);
  object = v19._object;
  v46(v19._countAndFlagsBits);
}

uint64_t closure #1 in MLServer.write(data:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v6 = type metadata accessor for DispatchTime();
  v5[7] = v6;
  v9 = *(v6 - 8);
  v5[8] = v9;
  v5[9] = *(v9 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;

  return _swift_task_switch(closure #1 in MLServer.write(data:with:), 0);
}

uint64_t closure #1 in MLServer.write(data:with:)()
{
  v74 = v0;
  v1 = v0[17];
  v51 = v0[15];
  v52 = v0[14];
  v54 = v0[5];
  v0[2] = v0;
  v2 = MLServer.logger.unsafeMutableAddressor();
  v53 = *(v51 + 16);
  v53(v1, v2, v52);

  v55 = swift_allocObject();
  *(v55 + 16) = v54;

  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #1 in closure #1 in MLServer.write(data:with:);
  *(v56 + 24) = v55;

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v57 + 24) = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v60 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v61 = v3;

  *v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v61[1] = v58;

  v61[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v61[3] = v59;

  v61[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v61[5] = v60;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v62, v63))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v48 = createStorage<A>(capacity:type:)(0, v46, v46);
    v49 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v69 = buf;
    v70 = v48;
    v71 = v49;
    serialize(_:at:)(2, &v69);
    serialize(_:at:)(1, &v69);
    v72 = closure #1 in OSLogArguments.append(_:)partial apply;
    v73 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
    v72 = closure #1 in OSLogArguments.append(_:)partial apply;
    v73 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
    v72 = closure #1 in OSLogArguments.append(_:)partial apply;
    v73 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
    _os_log_impl(&_mh_execute_header, v62, v63, "Checking text and numerical input validity for data dictionary: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v48, 0);
    destroyStorage<A>(_:count:)(v49, 1);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  rawValue = v50[17]._rawValue;
  v42 = v50[14]._rawValue;
  data._rawValue = v50[5]._rawValue;
  v40 = v50[15]._rawValue;

  v43 = v40[1];
  v43(rawValue, v42);
  static DispatchTime.now()();
  v45 = checkValidTextInputs(data:)(data);

  if (!v45)
  {

LABEL_14:
    (*(v50[8]._rawValue + 1))(v50[13]._rawValue, v50[7]._rawValue);

    v10 = *(v50[2]._rawValue + 1);

    return v10();
  }

  v39 = checkValidTextInputs(data:)(v50[5]);

  if (!v39)
  {
    goto LABEL_14;
  }

  v4 = v50[16]._rawValue;
  v19 = v50[14]._rawValue;
  v22 = v50[13]._rawValue;
  v21 = v50[12]._rawValue;
  v26 = v50[11]._rawValue;
  v28 = v50[10]._rawValue;
  v24 = v50[9]._rawValue;
  v29 = v50[7]._rawValue;
  v20 = v50[8]._rawValue;
  static DispatchTime.now()();
  v5 = MLServer.logger.unsafeMutableAddressor();
  v53(v4, v5, v19);
  v23 = v20[2];
  v23(v26, v21, v29);
  v23(v28, v22, v29);
  v6 = *(v20 + 20);
  v25 = (v6 + 16) & ~v6;
  v27 = (v24 + v25 + v6) & ~v6;
  v31 = swift_allocObject();
  v30 = v20[4];
  v30(v31 + v25, v26, v29);
  v30(v31 + v27, v28, v29);
  oslog = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #3 in closure #1 in MLServer.write(data:with:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v35 + 24) = v32;
  _allocateUninitializedArray<A>(_:)();
  v36 = v7;

  *v36 = closure #1 in OSLogArguments.append(_:)partial apply;
  v36[1] = v33;

  v36[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v38))
  {
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v64 = v16;
    v65 = v17;
    v66 = v18;
    serialize(_:at:)(0, &v64);
    serialize(_:at:)(1, &v64);
    v67 = closure #1 in OSLogArguments.append(_:)partial apply;
    v68 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
    v67 = closure #1 in OSLogArguments.append(_:)partial apply;
    v68 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
    v67 = partial apply for closure #1 in OSLogArguments.append(_:);
    v68 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
    _os_log_impl(&_mh_execute_header, oslog, v38, "Validity check in MLServer Time taken = %f [ns]", v16, 0xCu);
    destroyStorage<A>(_:count:)(v17, 0);
    destroyStorage<A>(_:count:)(v18, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v12 = v50[16]._rawValue;
  v13 = v50[14]._rawValue;
  v14 = v50[6]._rawValue;

  v43(v12, v13);
  v50[18]._rawValue = *&v14[OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML];

  v8 = swift_task_alloc();
  v50[19]._rawValue = v8;
  *v8 = v50[2]._rawValue;
  v8[1] = closure #1 in MLServer.write(data:with:);
  v9 = v50[5]._rawValue;

  return MediaML.writeData(data:)(v9);
}

{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(closure #1 in MLServer.write(data:with:), 0);
}

{
  v5 = v0[13];
  v1 = v0[12];
  v2 = v0[8];
  v6 = v0[7];
  v0[2] = v0;
  v7 = *(v2 + 8);
  v7(v1);
  (v7)(v5, v6);

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t implicit closure #1 in closure #1 in MLServer.write(data:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

unint64_t implicit closure #3 in closure #1 in MLServer.write(data:with:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  (*(a3 + 16))();
}

uint64_t MLServer.wakeRemoteService(with:)(void (*a1)(uint64_t), uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v36 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v24 = 0;
  v33 = type metadata accessor for Logger();
  v27 = v33;
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  v2 = &v9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2;
  v45 = __chkstk_darwin(v25);
  v46 = v3;
  v44 = v4;
  v5 = MLServer.logger.unsafeMutableAddressor();
  (*(v32 + 16))(v2, v5, v33);
  v38 = Logger.logObject.getter();
  v34 = v38;
  v37 = static os_log_type_t.default.getter();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v6 = v24;
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = 0;
    v16 = createStorage<A>(capacity:type:)(0, v12, v12);
    v14 = v16;
    v17 = createStorage<A>(capacity:type:)(v13, &type metadata for Any + 8, &type metadata for Any + 8);
    v43 = v15;
    v42 = v16;
    v41 = v17;
    v18 = 0;
    v19 = &v43;
    serialize(_:at:)(0, &v43);
    serialize(_:at:)(v18, v19);
    v40 = v39;
    v20 = &v9;
    __chkstk_darwin(&v9);
    v21 = &v9 - 6;
    *(&v9 - 4) = v7;
    *(&v9 - 3) = &v42;
    *(&v9 - 2) = &v41;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v23 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting mediamlxpc service", v11, 2u);
      v9 = 0;
      destroyStorage<A>(_:count:)(v14, 0);
      destroyStorage<A>(_:count:)(v17, v9);
      UnsafeMutablePointer.deallocate()();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v29 + 8))(v31, v27);

  v25(1);
}

uint64_t MLServer.getModelStats(with:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v51 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v36 = 0;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = &v17 - v37;
  v48 = type metadata accessor for Logger();
  v42 = v48;
  v43 = *(v48 - 8);
  v47 = v43;
  v44 = v43;
  v45 = *(v43 + 64);
  v2 = __chkstk_darwin(v40);
  v3 = &v17 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v60 = v2;
  v61 = v4;
  v59 = v5;
  v6 = MLServer.logger.unsafeMutableAddressor();
  (*(v47 + 16))(v3, v6, v48);
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.info.getter();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v7 = v36;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = 0;
    v28 = createStorage<A>(capacity:type:)(0, v24, v24);
    v26 = v28;
    v29 = createStorage<A>(capacity:type:)(v25, &type metadata for Any + 8, &type metadata for Any + 8);
    v58 = v27;
    v57 = v28;
    v56 = v29;
    v30 = 0;
    v31 = &v58;
    serialize(_:at:)(0, &v58);
    serialize(_:at:)(v30, v31);
    v55 = v54;
    v32 = &v17;
    __chkstk_darwin(&v17);
    v33 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v57;
    *(&v17 - 2) = &v56;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v35 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v49, v50, "Getting model stats", v23, 2u);
      v21 = 0;
      destroyStorage<A>(_:count:)(v26, 0);
      destroyStorage<A>(_:count:)(v29, v21);
      UnsafeMutablePointer.deallocate()();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v44 + 8))(v46, v42);
  v17 = priority.unsafeMutableAddressor();
  v20 = 0;
  v19 = type metadata accessor for TaskPriority();
  v18 = *(v19 - 8);
  (*(v18 + 16))(v38, v17);
  (*(v18 + 56))(v38, 0, 1, v19);
  v9 = v39;

  v10 = swift_allocObject();
  v11 = v39;
  v12 = v40;
  v13 = v41;
  v14 = v20;
  v15 = v38;
  v10[2] = v20;
  v10[3] = v14;
  v10[4] = v11;
  v10[5] = v12;
  v10[6] = v13;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(v14, v14, v15, &async function pointer to partial apply for closure #1 in MLServer.getModelStats(with:), v10, &type metadata for () + 8);
}

uint64_t closure #1 in MLServer.getModelStats(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v6[8] = a5;
  v6[7] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[6] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  return _swift_task_switch(closure #1 in MLServer.getModelStats(with:), 0);
}

uint64_t closure #1 in MLServer.getModelStats(with:)()
{
  v1 = v0[7];
  v0[4] = v0;
  v0[10] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 32);
  v2[1] = closure #1 in MLServer.getModelStats(with:);

  return MediaML.getModelStats()();
}

{
  v4 = v0[12];
  v3 = v0[8];
  v0[4] = v0;
  v0[6] = v4;

  v3(v4);

  v1 = *(v0[4] + 8);

  return v1();
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t closure #1 in MLServer.getModelStats(with:)(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[12] = a1;
  v5[13] = v1;

  if (v1)
  {
    v3 = closure #1 in MLServer.getModelStats(with:);
  }

  else
  {

    v3 = closure #1 in MLServer.getModelStats(with:);
  }

  return _swift_task_switch(v3, 0);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v50 = &v9 - v46;

  v56 = v48;
  v57 = v49;
  outlined init with copy of TaskPriority?(v47, v50);
  v51 = type metadata accessor for TaskPriority();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    outlined destroy of TaskPriority?(v50);
    v38 = 0;
  }

  else
  {
    v37 = TaskPriority.rawValue.getter();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1C00;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;

  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v19 = v40;
    v20 = String.utf8CString.getter();

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v20 + 32, &v54);
    if (v7)
    {
      __break(1u);
    }

    v18 = v54;

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v17 = v21;
  if (v21)
  {
    v12 = v17;
    v11 = v17;
    outlined destroy of TaskPriority?(v47);

    v13 = v11;
  }

  else
  {

    outlined destroy of TaskPriority?(v47);
    v14 = v56;
    v15 = v57;

    v16 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v16 = v55;
    }

    v13 = swift_task_create();
  }

  v10 = v13;

  return v10;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> ()(uint64_t a1, uint64_t a2)
{

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v3 = isa;
  }

  else
  {
    v3 = 0;
  }

  (*(a2 + 16))();
}

id MLServer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0__0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_10000F914()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = *(v1 + 8);
  v13 = v1[9];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:);

  return closure #1 in MLServer.getPrediction(inputFeatures:with:)(v13, a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000FF04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);

  return closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t (**a1)(uint64_t, uint64_t, uint64_t))
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t sub_100010248()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.write(data:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.write(data:with:);

  return closure #1 in MLServer.write(data:with:)(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in MLServer.write(data:with:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1000105AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getModelStats(with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getModelStats(with:);

  return closure #1 in MLServer.getModelStats(with:)(a1, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLServer.getModelStats(with:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_100010ACC()
{
  v6 = type metadata accessor for DispatchTime();
  v4 = *(v6 - 8);
  v1 = *(v4 + 80);
  v2 = (v1 + 16) & ~v1;
  v5 = (v2 + *(v4 + 64) + v1) & ~v1;
  v7 = *(v4 + 8);
  v7(v0 + v2);
  (v7)(v0 + v5, v6);
  return swift_deallocObject();
}

unint64_t partial apply for implicit closure #3 in closure #1 in MLServer.write(data:with:)()
{
  type metadata accessor for DispatchTime();

  return implicit closure #3 in closure #1 in MLServer.write(data:with:)();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void static Main.main()()
{
  type metadata accessor for MLServerDelegate();
  v1 = MLServerDelegate.__allocating_init()();
  v0 = [objc_opt_self() serviceListener];
  _objc_retain(v1);
  [v0 setDelegate:v1];
  swift_unknownObjectRelease();
  [v0 activate];
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}