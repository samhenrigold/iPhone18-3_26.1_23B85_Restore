int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "May it be a light to you in dark places…", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for Bootstrap();
  sub_1000011C4(&qword_100008090, &unk_100001360);
  v10 = type metadata accessor for RendererServices();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100001350;
  (*(v11 + 104))(v13 + v12, enum case for RendererServices.widgets(_:), v10);
  static Bootstrap.startApplication(supportedServices:)();

  return 0;
}

uint64_t sub_1000011C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}