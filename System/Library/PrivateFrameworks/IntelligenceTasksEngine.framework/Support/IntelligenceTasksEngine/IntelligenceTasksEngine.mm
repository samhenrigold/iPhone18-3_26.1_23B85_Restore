void sub_100000A18()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Daemon.enterSandbox(identifier:)();
  static Logging.Engine.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting intelligencetasksd...", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  static Daemon.start()();
  dispatch_main();
}