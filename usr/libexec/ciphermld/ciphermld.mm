int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  if (_set_user_dir_suffix())
  {
    static Logger.daemon.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Entered non-macOS Sandbox", v18, 2u);
    }

    v19 = *(v10 + 8);
    v19(v15, v9);
    static Logger.daemon.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Starting daemon", v22, 2u);
    }

    v19(v13, v9);
    type metadata accessor for CMLXPCServer();
    qword_100008030 = CMLXPCServer.__allocating_init()();
    dispatch thunk of CMLXPCServer.registerScheduledTasks()();
    dispatch thunk of CMLXPCServer.start()();
    sub_100001060();
    qword_100008038 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    ObjectType = swift_getObjectType();
    aBlock[4] = sub_1000010AC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000011D0;
    aBlock[3] = &unk_1000041A8;
    v24 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    sub_10000122C(ObjectType, v25, v26);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v24);
    (*(v31 + 8))(v5, v32);
    (*(v6 + 8))(v8, v30);
    swift_getObjectType();
    OS_dispatch_source.resume()();
    v27 = [objc_opt_self() mainRunLoop];
    [v27 run];

    exit(0);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100001060()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void sub_1000010AC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received SIGTERM, shutting down", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  exit(0);
}

uint64_t sub_1000011D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  return _swift_release(v2);
}

uint64_t sub_100001214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000122C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000012B4(v3, v4, v5);
  sub_10000130C(&qword_100008020, &unk_1000016A0);
  sub_100001354();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_1000012B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_10000130C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001354()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000013B8(&qword_100008020, &unk_1000016A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000013B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}