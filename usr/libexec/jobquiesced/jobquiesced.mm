int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin();
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin();
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v8 = type metadata accessor for DispatchQoS();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = SIG_IGN.getter();
  signal(15, v11);
  v29[2] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v29[1] = JQDServiceName.unsafeMutableAddressor()->_countAndFlagsBits;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  queue = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = String.utf8CString.getter();
  mach_service = xpc_connection_create_mach_service((v12 + 32), 0, 1uLL);

  xpcMachService = mach_service;
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  remoteXpcServer = remote_service_listener;
  String.utf8CString.getter();
  v15 = xpc_event_publisher_create();

  eventPublisher = v15;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
  v16 = queue;
  v17 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  sigtermSource = v17;
  ObjectType = swift_getObjectType();
  aBlock[4] = closure #1 in ;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v20 = v34;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType, v21, v22);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v19);
  (*(v35 + 8))(v20, v36);
  (*(v32 + 8))(v10, v33);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v23 = remoteXpcServer;
  v24 = eventPublisher;
  v25 = queue;
  type metadata accessor for JQServer();
  swift_allocObject();
  v26 = v24;
  v27 = v25;
  swift_unknownObjectRetain();
  v28 = v23;
  server = JQServer.init(localServer:remoteServer:eventPublisher:queue:)();
  dispatch_main();
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

uint64_t closure #1 in ()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = logger.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling SIGTERM", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  dispatch thunk of JQServer.cancel()();
  return xpc_transaction_exit_clean();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
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

void OS_dispatch_group.with(_:)(void (*a1)(void))
{
  dispatch_group_enter(v1);
  a1();
  if (!v2)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  JQDLogSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
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