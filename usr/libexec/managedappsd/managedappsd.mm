int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v10 = sub_100001220(v3, qword_100008030);
  v11 = *(v4 + 16);
  v11(v9, v10, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "===== managedappsd main... =====", v14, 2u);
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  qword_100008018 = 0;
  sub_100000F2C(0, v16, v17);
  qword_100008020 = sub_1000010B0(qword_100008018, v18, v19);
  qword_100008028 = v20;
  v11(v7, v10, v3);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "managedappsd running...", v23, 2u);
  }

  v15(v7, v3);
  v24 = [objc_opt_self() currentRunLoop];
  [v24 run];

  return 0;
}

uint64_t sub_100000F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001220(v3, qword_100008030);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "managedappsd setup: sandbox", v6, 2u);
  }

  v7 = ManagedAppsServiceScope.rawValue.getter();
  if (v7 == ManagedAppsServiceScope.rawValue.getter())
  {
    static ManagedAppsServiceBundleID.managedappsd.getter();
  }

  else
  {
    static ManagedAppsServiceBundleID.managedAppsAgent.getter();
  }

  String.utf8CString.getter();

  v8 = _set_user_dir_suffix();

  if ((v8 & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000010B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001220(v4, qword_100008030);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "managedappsd setup: services", v7, 2u);
  }

  type metadata accessor for ManagedAppsServer();
  swift_allocObject();
  v8 = ManagedAppsServer.init(scope:inMemoryDatabase:)();
  dispatch thunk of ManagedAppsServer.startServer()();
  if (v3)
  {
  }

  else
  {
    type metadata accessor for ManagedAppsServiceProvider();
    swift_allocObject();

    ManagedAppsServiceProvider.init(scope:server:)();
    dispatch thunk of ManagedAppsServiceProvider.setupXPCService()();
  }

  return v8;
}

uint64_t sub_100001220(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_1000012CC(v3, qword_100008030);
  sub_100001220(v3, qword_100008030);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000012CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}