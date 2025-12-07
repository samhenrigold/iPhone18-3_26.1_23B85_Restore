void sub_100001110()
{
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = +[NSFileManager defaultManager];
  v4 = 0;
  v2 = [v1 removeItemAtPath:v0 error:&v4];
  v3 = v4;

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully cleared temporary directory (%@) contents on startup.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000016B0(v3);
  }
}

void sub_100001274(id a1)
{
  inactive = dispatch_workloop_create_inactive("com.apple.liveactivitiesd.daemon_workloop");
  v2 = qword_100008148;
  qword_100008148 = inactive;

  dispatch_workloop_set_autorelease_frequency(qword_100008148, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  v3 = qword_100008148;

  dispatch_activate(v3);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001664();
  static OS_os_log.default.getter();
  Logger.init(_:)();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Good morning! 🍎", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100001110();
  nullsub_1();
  type metadata accessor for Daemon();
  v10 = [objc_opt_self() sharedDaemonWorkloop];
  qword_100008158 = Daemon.__allocating_init(workloop:)();
  dispatch thunk of Daemon.start()();
  static NotificationName.daemonStartup.getter();
  v11 = String.utf8CString.getter();

  notify_post((v11 + 32));

  v12 = [objc_opt_self() mainRunLoop];
  [v12 run];

  return 0;
}

unint64_t sub_100001664()
{
  result = qword_100008140;
  if (!qword_100008140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008140);
  }

  return result;
}

void sub_1000016B0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error clearing temporary directory contents on startup: %@", &v1, 0xCu);
}