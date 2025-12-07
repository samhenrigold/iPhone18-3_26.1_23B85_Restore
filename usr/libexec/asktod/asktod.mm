int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_autoreleasePoolPush();
  type metadata accessor for Daemon();
  swift_allocObject();
  v8 = Daemon.init()();
  objc_autoreleasePoolPop(v7);
  qword_100008010 = v8;
  v9 = objc_autoreleasePoolPush();
  sub_1000013D4(v9, v10, v11);
  objc_autoreleasePoolPop(v9);
  v12 = [objc_opt_self() currentRunLoop];
  [v12 run];

  if (qword_100008018 != -1)
  {
    swift_once();
  }

  v13 = sub_1000014C0(v3, qword_100008020);
  (*(v4 + 16))(v6, v13, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "asktod runloop completed", v16, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

void sub_1000013D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100008018 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000014C0(v3, qword_100008020);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "asktod entered autoreleasepool", v6, 2u);
  }

  Daemon.startup()();
}

uint64_t sub_1000014C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000014F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_100001578(v3, qword_100008020);
  sub_1000014C0(v3, qword_100008020);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001578(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}