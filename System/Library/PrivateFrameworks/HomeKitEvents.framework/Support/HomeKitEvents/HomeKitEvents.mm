uint64_t sub_1000019C8@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = type metadata accessor for URL.DirectoryHint();
  v1 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  v14 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v15 + 16))
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v18[0]);
    URL.init(filePath:directoryHint:relativeTo:)();
    URL.appendingPathComponent(_:)();
    v16 = *(v8 + 8);
    v16(v11, v7);
    URL.appendingPathComponent(_:)();
    return (v16)(v13, v7);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100001CDC(uint64_t a1, uint64_t *a2)
{
  *a2 = a1;
}

void sub_100001D18()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (static OSVariant.isSeedBuild.getter() & 1) != 0 || (static OSVariant.isInternalBuild.getter())
  {
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Enabling CoreData concurrency assertions", v6, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v7 = [objc_opt_self() standardUserDefaults];
    sub_10000CED0(&unk_1000AADE0, &unk_1000855B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085330;
    *(inited + 32) = 0xD000000000000023;
    v9 = inited + 32;
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = 0x8000000100088470;
    *(inited + 48) = 1;
    sub_100080460(inited);
    swift_setDeallocating();
    sub_10000D620(v9, &unk_1000AC3D0, &unk_100087F80);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v7 registerDefaults:isa];
  }
}

id sub_100001FC8()
{
  v0 = type metadata accessor for Logger();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v36[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v40 = &v36[-v4];
  v5 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v36[-v13];
  sub_10000675C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000D620(v7, &qword_1000AADD8, &qword_1000855A8);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Can't find the versioned model bundle", v17, 2u);
    }

    (*(v41 + 8))(v3, v42);
    v18 = 0x8000000100088410;
    sub_10000D3D0();
    swift_allocError();
    *v19 = 0xD000000000000025;
    v19[1] = 0x8000000100088410;
    swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v20 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v18 = [v20 initWithContentsOfURL:v22];

    if (v18)
    {
      [v18 _setIsEditable:0];
      (*(v9 + 8))(v14, v8);
    }

    else
    {
      sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
      sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
      v24 = v40;
      static LoggedObject<>.logger.getter();
      (*(v9 + 16))(v12, v14, v8);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v38 = v27;
        v39 = swift_slowAlloc();
        v43 = v39;
        *v27 = 136446210;
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v37 = v26;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v31 = *(v9 + 8);
        v31(v12, v8);
        v32 = sub_100035120(v28, v30, &v43);

        v33 = v38;
        *(v38 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v25, v37, "Can't load the managed object model at %{public}s", v33, 0xCu);
        sub_10000D330(v39);

        (*(v41 + 8))(v40, v42);
      }

      else
      {

        v31 = *(v9 + 8);
        v31(v12, v8);
        (*(v41 + 8))(v24, v42);
      }

      v18 = 0x8000000100088440;
      sub_10000D3D0();
      swift_allocError();
      *v34 = 0xD000000000000023;
      v34[1] = 0x8000000100088440;
      swift_willThrow();
      v31(v14, v8);
    }
  }

  return v18;
}

uint64_t sub_100002634(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000271C, v1, 0);
}

uint64_t sub_10000271C()
{
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting", v3, 2u);
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1000028C0;

  return sub_100002A90();
}

uint64_t sub_1000028C0()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000029D0, v1, 0);
}

uint64_t sub_1000029D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC11homeeventsd10MainDriver_completion;
  v4 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  (*(*(v4 - 8) + 16))(v1, v2 + v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100002A90()
{
  v1[9] = v0;
  v1[10] = *v0;
  v2 = type metadata accessor for Constants();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100002BD4, v0, 0);
}

uint64_t sub_100002BD4()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11homeeventsd10MainDriver_server;
  v0[17] = OBJC_IVAR____TtC11homeeventsd10MainDriver_server;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8))
    {
      sub_100003B58();
    }

    sub_1000041AC();
    *(v0[9] + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp) = 1;
    v5 = (v0[9] + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
    if (*v5)
    {
      v6 = v5[1];
      v0[18] = v6;

      return _swift_task_switch(sub_100002DB8, v6, 0);
    }

    else
    {
      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = sub_100002E5C;

      return sub_10000C424();
    }
  }
}

uint64_t sub_100002DB8()
{
  sub_100024FC8(*(v0 + 72));

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100002E5C;

  return sub_10000C424();
}

uint64_t sub_100002E5C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100002F6C, v1, 0);
}

uint64_t sub_100002F6C()
{
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn);

    _os_log_impl(&_mh_execute_header, v1, v2, "CloudKit initialization finished, logged in: %{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = *(v0 + 136);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_10000D2CC(v10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features, v0 + 16);
  v11 = *(v10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp);
  (*(v8 + 104))(v7, enum case for Constants.xpcServiceName(_:), v9);
  v12 = Constants.rawValue.getter();
  v14 = v13;
  (*(v8 + 8))(v7, v9);
  v15 = type metadata accessor for XPCServer();
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  v17 = OBJC_IVAR____TtC11homeeventsd9XPCServer_listener;
  sub_10000CED0(&qword_1000AAD50, &qword_100085570);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *&v16[v17] = v18;
  swift_weakAssign();
  sub_10000D2CC(v0 + 16, &v16[OBJC_IVAR____TtC11homeeventsd9XPCServer_features]);
  v16[OBJC_IVAR____TtC11homeeventsd9XPCServer_isCoreDataSetUp] = v11;
  v19 = &v16[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName];
  *v19 = v12;
  v19[1] = v14;
  v20 = &v16[OBJC_IVAR____TtC11homeeventsd9XPCServer_proxyConnectionFactory];
  *v20 = sub_10000E254;
  v20[1] = 0;
  *(v0 + 56) = v16;
  *(v0 + 64) = v15;
  v21 = objc_msgSendSuper2((v0 + 56), "init");
  sub_10000D330((v0 + 16));
  v22 = *(v10 + v6);
  *(v10 + v6) = v21;
  v23 = v21;

  sub_10000DDF4();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000032B8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000033A0, v0, 0);
}

uint64_t sub_1000033A0()
{
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Shutting down", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);
  v8 = *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server);
  if (v8)
  {
    *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server) = 0;
    sub_10000E044();
  }

  v0[7] = *(v0[2] + OBJC_IVAR____TtC11homeeventsd10MainDriver_promise);
  sub_10000CED0(&qword_1000AAD38, &qword_100085558);
  sub_10000D268();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003580, v10, v9);
}

uint64_t sub_100003580()
{
  Promise<>.resolve()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000035E8()
{
  v1 = OBJC_IVAR____TtC11homeeventsd10MainDriver_completion;
  v2 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features));
  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountStore));

  sub_10000D58C(*(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties), *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties + 8));
  sub_10000D5CC(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler);
  v3 = OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100003754()
{
  sub_1000035E8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MainDriver(uint64_t a1)
{
  result = qword_1000AAAF0;
  if (!qword_1000AAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000037D4(uint64_t a1)
{
  sub_100003910(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100003910(uint64_t a1)
{
  if (!qword_1000AAB00)
  {
    sub_100003988(&unk_1000AAB08, &qword_1000853D0);
    v1 = type metadata accessor for Future();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AAB00);
    }
  }
}

uint64_t sub_100003988(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000039E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000039F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003A90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainDriver(0);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_100003B1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainDriver(0);

  return static LoggedObject.logCategory.getter();
}

void sub_100003B58()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v2);
  v23 = type metadata accessor for Logger();
  v3 = *(v23 - 8);
  v4 = __chkstk_darwin(v23);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v22[2] = v22 - v7;
  v8 = __chkstk_darwin(v6);
  v22[1] = v22 - v9;
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  v22[3] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  v22[4] = v12;
  static LoggedObject<>.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Checking whether reset has been requested", v15, 2u);
  }

  v16 = *(v3 + 8);
  v22[5] = v3 + 8;
  v16(v11, v23);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  v17 = Data.init(contentsOf:options:)();
  sub_10000D37C(v17, v18);
  static LoggedObject<>.logger.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Reset request detected, removing all configuration", v21, 2u);
  }

  v16(v22[0], v23);
  sub_100009AF0();
  sub_10000976C();
  sub_1000095B0();
}

void sub_1000041AC()
{
  v1 = *v0;
  v2 = type metadata accessor for CocoaError.Code();
  v238 = *(v2 - 1);
  v239 = v2;
  v3 = __chkstk_darwin(v2);
  v237 = &v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v236 = &v212 - v5;
  v241 = type metadata accessor for CocoaError();
  v243 = *(v241 - 1);
  v6 = __chkstk_darwin(v241);
  v235 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v242 = (&v212 - v9);
  __chkstk_darwin(v8);
  v240 = (&v212 - v10);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v244 = v11;
  v245 = v12;
  v13 = __chkstk_darwin(v11);
  v225 = &v212 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v226 = &v212 - v16;
  v17 = __chkstk_darwin(v15);
  v233 = &v212 - v18;
  v19 = __chkstk_darwin(v17);
  v234 = &v212 - v20;
  v21 = __chkstk_darwin(v19);
  v227 = &v212 - v22;
  v23 = __chkstk_darwin(v21);
  v228 = &v212 - v24;
  v25 = __chkstk_darwin(v23);
  v229 = &v212 - v26;
  v27 = __chkstk_darwin(v25);
  v230 = &v212 - v28;
  v29 = __chkstk_darwin(v27);
  v231 = &v212 - v30;
  v31 = __chkstk_darwin(v29);
  v232 = &v212 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v212 - v34;
  __chkstk_darwin(v33);
  v37 = &v212 - v36;
  v38 = type metadata accessor for Logger();
  v39 = *(v38 - 8);
  v247 = v38;
  v248 = v39;
  v40 = __chkstk_darwin(v38);
  v41 = __chkstk_darwin(v40);
  v43 = &v212 - v42;
  v44 = __chkstk_darwin(v41);
  __chkstk_darwin(v44);
  v46 = __chkstk_darwin(&v212 - v45);
  v47 = __chkstk_darwin(v46);
  v49 = &v212 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v212 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v212 - v54;
  v56 = __chkstk_darwin(v53);
  v61 = &v212 - v60;
  v62 = *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (!v62)
  {
    sub_10000D3D0();
    swift_allocError();
    *v80 = 0xD000000000000025;
    v80[1] = 0x8000000100088350;
    swift_willThrow();
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8))
  {
    v216 = v56;
    v219 = v43;
    v214 = v59;
    v213 = v58;
    v217 = v57;
    v224 = v62;
    v215 = v0;
    v63 = sub_100008614();
    v64.super.isa = sub_10000AFB4().super.isa;
    v65 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    v66 = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    v222 = v65;
    v221 = v66;
    static LoggedObject<>.logger.getter();
    v67 = v63;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    v70 = os_log_type_enabled(v68, v69);
    isa = v64.super.isa;
    if (v70)
    {
      v220 = v1;
      v71 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v251 = v212;
      *v71 = 136446210;
      v72 = [v67 URL];
      v218 = v67;

      if (!v72)
      {
        __break(1u);
        goto LABEL_47;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = v244;
      (v245)[4](v37, v35, v244);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (v245[1])(v37, v73);
      v77 = sub_100035120(v74, v76, &v251);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Loading persistent store at %{public}s", v71, 0xCu);
      sub_10000D330(v212);

      v78 = v247;
      v79 = *(v248 + 8);
      v79(v49, v247);
      v64.super.isa = isa;
      v1 = v220;
      v67 = v218;
    }

    else
    {

      v78 = v247;
      v79 = *(v248 + 8);
      v79(v49, v247);
    }

    v96 = v224;
    v97 = v246;
    sub_10000699C(v224, v67, v64.super.isa);
    v98 = v97;
    if (!v97)
    {
LABEL_39:
      v191 = v217;
      static LoggedObject<>.logger.getter();
      v1 = v96;
      v192 = v67;
      v193 = Logger.logObject.getter();
      v194 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v193, v194))
      {

        v79(v191, v78);
        return;
      }

      LODWORD(v243) = v194;
      v246 = v79;
      v240 = v98;
      v195 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v251 = v242;
      *v195 = 136446466;
      v196 = [v192 URL];

      if (v196)
      {
        v197 = v231;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v199 = v244;
        v198 = v245;
        v200 = v232;
        (v245)[4](v232, v197, v244);
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v201 = dispatch thunk of CustomStringConvertible.description.getter();
        v203 = v202;
        (v198[1])(v200, v199);
        v204 = sub_100035120(v201, v203, &v251);

        *(v195 + 4) = v204;
        *(v195 + 12) = 2082;
        v205 = [v1 persistentStoreCoordinator];
        v206 = [v205 managedObjectModel];

        v207 = [v206 versionChecksum];
        v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v210 = v209;

        v211 = sub_100035120(v208, v210, &v251);

        *(v195 + 14) = v211;
        _os_log_impl(&_mh_execute_header, v193, v243, "Successfully loaded persistent store at %{public}s with version checksum %{public}s", v195, 0x16u);
        swift_arrayDestroy();

        v246(v217, v247);
        return;
      }

      goto LABEL_48;
    }

    v246 = v79;
    v251 = v97;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    v99 = v240;
    v100 = v241;
    if (swift_dynamicCast())
    {
      v218 = v67;
      v220 = v1;
      (*(v243 + 32))(v242, v99, v100);
      sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v101 = v236;
      _BridgedStoredNSError.code.getter();
      v102 = v237;
      static CocoaError.Code.persistentStoreIncompatibleVersionHash.getter();
      sub_10000CE88(&qword_1000AAD78, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v103 = v239;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v104 = v238[1];
      v104(v102, v103);
      v104(v101, v103);
      if (v250 == v249)
      {

        v105 = v216;
        static LoggedObject<>.logger.getter();
        v106 = v243;
        v107 = v235;
        (*(v243 + 16))(v235, v242, v100);
        v108 = v218;
        v109 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        v110 = os_log_type_enabled(v109, v1);
        v111 = v247;
        if (v110)
        {
          LODWORD(v240) = v1;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          v250 = v239;
          *v112 = 136446466;
          v114 = [v108 URL];

          if (!v114)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v115 = v229;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v116 = v245;
          v117 = v230;
          v118 = v115;
          v119 = v244;
          (v245)[4](v230, v118, v244);
          sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v120 = dispatch thunk of CustomStringConvertible.description.getter();
          v122 = v121;
          (v116[1])(v117, v119);
          v123 = sub_100035120(v120, v122, &v250);

          *(v112 + 4) = v123;
          *(v112 + 12) = 2114;
          v124 = v235;
          CocoaError._nsError.getter();
          v125 = _swift_stdlib_bridgeErrorToNSError();
          v126 = *(v243 + 8);
          (v126)(v124, v241);
          *(v112 + 14) = v125;
          *v113 = v125;
          _os_log_impl(&_mh_execute_header, v109, v240, "Persistent store at %{public}s has an incompatible version: %{public}@", v112, 0x16u);
          sub_10000D620(v113, &unk_1000AB7D0, &qword_100085510);

          sub_10000D330(v239);

          v127 = v247;
          v128 = v216;
        }

        else
        {

          v126 = *(v106 + 8);
          (v126)(v107, v100);
          v128 = v105;
          v127 = v111;
        }

        v246(v128, v127);
        sub_100008AAC(v224, v108);
        v98 = 0;
        v160 = isa;
        v161 = v214;
        static LoggedObject<>.logger.getter();
        v1 = v108;
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v239 = v126;
          v240 = 0;
          v164 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          v250 = v238;
          *v164 = 136446210;
          v165 = [v1 URL];

          if (!v165)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v166 = v227;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v168 = v244;
          v167 = v245;
          v169 = v228;
          (v245)[4](v228, v166, v244);
          sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v170 = dispatch thunk of CustomStringConvertible.description.getter();
          v172 = v171;
          (v167[1])(v169, v168);
          v173 = sub_100035120(v170, v172, &v250);

          *(v164 + 4) = v173;
          _os_log_impl(&_mh_execute_header, v162, v163, "Retrying load of store at %{public}s after handling previous error", v164, 0xCu);
          sub_10000D330(v238);

          v79 = v246;
          v246(v214, v247);
          v160 = isa;
          v126 = v239;
          v98 = v240;
        }

        else
        {

          v79 = v246;
          v246(v161, v247);
        }

        sub_10000699C(v224, v1, v160);
        v67 = v218;
        if (v98)
        {
          v174 = v213;
          static LoggedObject<>.logger.getter();
          v1 = v1;
          swift_errorRetain();
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.fault.getter();
          if (!os_log_type_enabled(v175, v176))
          {

            v246(v174, v247);
            goto LABEL_44;
          }

          v239 = v126;
          v177 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          v240 = swift_slowAlloc();
          v250 = v240;
          *v177 = 136446466;
          v178 = [v1 URL];
          if (v178)
          {
            v179 = v178;

            v237 = v1;
            v180 = v225;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v182 = v244;
            v181 = v245;
            v183 = v226;
            (v245)[4](v226, v180, v244);
            sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v184 = dispatch thunk of CustomStringConvertible.description.getter();
            v186 = v185;
            (v181[1])(v183, v182);
            v187 = v184;
            v1 = v237;
            v188 = sub_100035120(v187, v186, &v250);

            *(v177 + 4) = v188;
            *(v177 + 12) = 2114;
            swift_errorRetain();
            v189 = _swift_stdlib_bridgeErrorToNSError();
            *(v177 + 14) = v189;
            v190 = v238;
            *v238 = v189;
            _os_log_impl(&_mh_execute_header, v175, v176, "Unable to load persistent store at %{public}s after repair: %{public}@", v177, 0x16u);
            sub_10000D620(v190, &unk_1000AB7D0, &qword_100085510);

            sub_10000D330(v240);

            v246(v213, v247);
            v160 = isa;
            v126 = v239;
LABEL_44:
            swift_willThrow();

            (v126)(v242, v241);

            return;
          }

LABEL_51:

          __break(1u);
          return;
        }

        (v126)(v242, v241);

        v78 = v247;
        v96 = v224;
        goto LABEL_39;
      }

      (*(v243 + 8))(v242, v100);
      v1 = v220;
      v67 = v218;
      v78 = v247;
    }

    v143 = v219;
    static LoggedObject<>.logger.getter();
    v37 = v67;
    swift_errorRetain();
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v144, v145))
    {

      v246(v143, v78);
      goto LABEL_27;
    }

    LODWORD(v243) = v145;
    v146 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v251 = v242;
    *v146 = 136446466;
    v147 = [v37 URL];
    if (v147)
    {
      v148 = v147;

      v149 = v233;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v150 = v245;
      v151 = v234;
      v152 = v149;
      v153 = v244;
      (v245)[4](v234, v152, v244);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      (v150[1])(v151, v153);
      v157 = sub_100035120(v154, v156, &v251);

      *(v146 + 4) = v157;
      *(v146 + 12) = 2114;
      swift_errorRetain();
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v146 + 14) = v158;
      v159 = v241;
      *v241 = v158;
      _os_log_impl(&_mh_execute_header, v144, v243, "Unable to load persistent store at %{public}s: %{public}@", v146, 0x16u);
      sub_10000D620(v159, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v242);

      v246(v219, v247);
      v64.super.isa = isa;
      v96 = v224;
LABEL_27:
      swift_willThrow();

      return;
    }

LABEL_47:

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v81 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  v82 = v62;
  v244 = v81;
  v245 = v82;
  static LoggedObject<>.logger.getter();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v247;
  if (v85)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Loading in-memory persistent store", v87, 2u);
  }

  v88 = *(v248 + 8);
  v248 += 8;
  v88(v61, v86);
  v90 = v245;
  v89 = v246;
  sub_10000ADFC(v245);
  if (v89)
  {
    v246 = v88;
    static LoggedObject<>.logger.getter();
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138543362;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to load in-memory persistent store: %{public}@", v93, 0xCu);
      sub_10000D620(v94, &unk_1000AB7D0, &qword_100085510);
    }

    v246(v52, v86);
    swift_willThrow();
  }

  else
  {
    static LoggedObject<>.logger.getter();
    v129 = v90;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v246 = v88;
      v133 = v132;
      v134 = swift_slowAlloc();
      v251 = v134;
      *v133 = 136446210;
      v135 = [v129 persistentStoreCoordinator];
      v240 = 0;
      v136 = v135;
      v137 = [v135 managedObjectModel];

      v138 = [v137 versionChecksum];
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      v142 = sub_100035120(v139, v141, &v251);

      *(v133 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v130, v131, "Successfully loaded in-memory persistent store with version checksum %{public}s", v133, 0xCu);
      sub_10000D330(v134);

      v246(v55, v247);
    }

    else
    {

      v88(v55, v86);
    }
  }
}

uint64_t sub_100005E6C(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 65) = a2;
  *(v3 + 64) = a1;
  *(v3 + 24) = *v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100005F94, v2, 0);
}

uint64_t sub_100005F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 65);
    v5 = *(v0 + 64);
    v6 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v2;
    *(v8 + 40) = v6;
    *(v8 + 48) = v5;
    *(v8 + 49) = v4;
    v9 = v2;
    sub_100080ECC(0, 0, v3, &unk_100085550, v8);
  }

  else
  {
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Not creating metric without valid CoreData database", v16, 2u);
    }

    (*(v14 + 8))(v13, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000061E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 57) = a7;
  *(v7 + 56) = a6;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  return _swift_task_switch(sub_100006208, 0, 0);
}

uint64_t sub_100006208()
{
  v10 = v0;
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for CoreDataDatabase();
  v6 = swift_allocObject();
  *(v0 + 32) = v6;
  *(v6 + 16) = [v3 newBackgroundContext];
  *(v6 + 24) = v4;
  *(v6 + 32) = 0;
  v9[3] = v5;
  v9[4] = &off_1000A42B8;
  v9[0] = v6;
  objc_allocWithZone(type metadata accessor for ProcessLaunchLogEvent());

  *(v0 + 40) = sub_100015290(v9, v2, v1);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_100006334;

  return sub_1000153EC();
}

uint64_t sub_100006334()
{

  return _swift_task_switch(sub_100006430, 0, 0);
}

uint64_t sub_100006430()
{
  v1 = *(v0 + 40);
  sub_100016808();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000649C()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_10000652C;

  return sub_10000C424();
}

uint64_t sub_10000652C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10000663C, v1, 0);
}

uint64_t sub_10000663C()
{
  receiver = v0[2].receiver;
  v2 = type metadata accessor for AccountChangedListener();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 1, "init");
  v5 = *&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener];
  *&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener] = v4;
  v6 = v4;

  [*&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_notificationCenter] addObserver:v6 selector:"accountChangedWithNotification:" name:CKAccountChangedNotification object:*&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer]];
  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_10000675C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Constants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = *(v3 + 104);
  v8(v5, enum case for Constants.coreDataModelFileName(_:), v2);
  Constants.rawValue.getter();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = String._bridgeToObjectiveC()();

  v8(v5, enum case for Constants.coreDataModelFileExtension(_:), v2);
  Constants.rawValue.getter();
  v9(v5, v2);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v7 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for URL();
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

void sub_10000699C(void *a1, void *a2, uint64_t a3)
{
  v202 = a3;
  v207 = type metadata accessor for CocoaError.Code();
  v206 = *(v207 - 8);
  v5 = __chkstk_darwin(v207);
  v205 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v204 = &v187 - v7;
  v209 = type metadata accessor for URL();
  v208 = *(v209 - 8);
  v8 = __chkstk_darwin(v209);
  v195 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v196 = &v187 - v11;
  v12 = __chkstk_darwin(v10);
  v199 = &v187 - v13;
  v14 = __chkstk_darwin(v12);
  v200 = &v187 - v15;
  v16 = __chkstk_darwin(v14);
  v197 = &v187 - v17;
  v18 = __chkstk_darwin(v16);
  v198 = &v187 - v19;
  v20 = __chkstk_darwin(v18);
  v190 = &v187 - v21;
  v22 = __chkstk_darwin(v20);
  v192 = &v187 - v23;
  v24 = __chkstk_darwin(v22);
  v189 = &v187 - v25;
  __chkstk_darwin(v24);
  v191 = &v187 - v26;
  v219 = type metadata accessor for Logger();
  v215 = *(v219 - 8);
  v27 = __chkstk_darwin(v219);
  v210 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v211 = &v187 - v30;
  v31 = __chkstk_darwin(v29);
  v214 = &v187 - v32;
  v33 = __chkstk_darwin(v31);
  v194 = &v187 - v34;
  __chkstk_darwin(v33);
  v193 = &v187 - v35;
  v36 = type metadata accessor for CocoaError();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v213 = &v187 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v201 = &v187 - v41;
  v42 = __chkstk_darwin(v40);
  v216 = (&v187 - v43);
  v44 = __chkstk_darwin(v42);
  v218 = &v187 - v45;
  __chkstk_darwin(v44);
  v47 = &v187 - v46;
  v48 = sub_10000CED0(&qword_1000AAD98, &qword_100085588);
  v49 = __chkstk_darwin(v48 - 8);
  v212 = (&v187 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v49);
  v52 = &v187 - v51;
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100085340;
  *(v53 + 32) = a2;
  sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
  v54 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPersistentStoreDescriptions:isa];

  [v54 setShouldMigrateStoreAutomatically:0];
  v217 = v54;
  [v54 setShouldInferMappingModelAutomatically:0];
  v221 = v37;
  v222 = v52;
  v56 = *(v37 + 56);
  v57 = v52;
  v58 = v36;
  v56(v57, 1, 1, v36);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v60 = (v59 + 16);
  v230 = sub_10000D45C;
  v231 = v59;
  aBlock = _NSConcreteStackBlock;
  v227 = 1107296256;
  v228 = sub_10000A174;
  v229 = &unk_1000A1E30;
  v61 = _Block_copy(&aBlock);

  v203 = a1;
  [a1 loadPersistentStoresWithCompletionHandler:v61];
  _Block_release(v61);
  swift_beginAccess();
  v62 = *v60;
  if (*v60)
  {
    swift_willThrow();
    swift_errorRetain();

    aBlock = v62;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    if (swift_dynamicCast())
    {
      v220 = v56;
      v188 = *(v221 + 32);
      v188(v213, v47, v36);
      sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v63 = v204;
      _BridgedStoredNSError.code.getter();
      v64 = v205;
      static CocoaError.Code.persistentStoreIncompatibleVersionHash.getter();
      sub_10000CE88(&qword_1000AAD78, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v65 = v207;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v66 = *(v206 + 8);
      v66(v64, v65);
      v66(v63, v65);
      if (v224 == v223)
      {
        v67 = v222;
        sub_10000D620(v222, &qword_1000AAD98, &qword_100085588);

        v188(v67, v213, v36);
        v220(v67, 0, 1, v36);

        v68 = 0;
        v69 = v219;
        v58 = v36;
        v70 = v221;
        goto LABEL_6;
      }

      (*(v221 + 8))(v213, v36);
    }

    swift_willThrow();
    goto LABEL_40;
  }

  v68 = v220;

  v70 = v221;
  v69 = v219;
LABEL_6:
  v71 = v212;
  sub_10000D47C(v222, v212);
  v72 = (*(v70 + 48))(v71, 1, v58);
  v73 = v216;
  v74 = v217;
  v75 = v214;
  if (v72 == 1)
  {
    sub_10000D620(v71, &qword_1000AAD98, &qword_100085588);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    v76 = v210;
    static LoggedObject<>.logger.getter();
    v77 = v74;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v220 = v68;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock = v81;
      *v80 = 136315138;
      v82 = [v77 URL];

      if (v82)
      {
        v83 = v199;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v84 = v208;
        v85 = v200;
        v86 = v209;
        (*(v208 + 32))(v200, v83, v209);
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        (*(v84 + 8))(v85, v86);
        v90 = sub_100035120(v87, v89, &aBlock);

        *(v80 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v78, v79, "Load succeeded with migration disabled for store at %s", v80, 0xCu);
        sub_10000D330(v81);

        (*(v215 + 8))(v210, v219);
        sub_10000D620(v222, &qword_1000AAD98, &qword_100085588);
        return;
      }

      __break(1u);
      goto LABEL_48;
    }

    (*(v215 + 8))(v76, v69);
LABEL_40:
    sub_10000D620(v222, &qword_1000AAD98, &qword_100085588);
    return;
  }

  (*(v70 + 32))(v218, v71, v58);
  sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
  v91 = _BridgedStoredNSError.userInfo.getter();
  v92 = *(v91 + 16);
  v220 = v68;
  if (!v92 || (v93 = sub_10007B4E8(0x617461646174656DLL, 0xE800000000000000), (v94 & 1) == 0))
  {

LABEL_28:
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    (*(v70 + 16))(v73, v218, v58);
    v125 = v73;
    v126 = v74;
    v127 = v75;
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v128, v129))
    {

      (*(v70 + 8))(v125, v58);
      v124 = *(v215 + 8);
      v124(v127, v69);
      v96 = v211;
      goto LABEL_33;
    }

    v213 = v58;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    aBlock = v212;
    *v130 = 136446466;
    v132 = [v126 URL];

    if (!v132)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v133 = v197;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v134 = v208;
    v135 = v198;
    v136 = v209;
    (*(v208 + 32))(v198, v133, v209);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v137 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = v138;
    (*(v134 + 8))(v135, v136);
    v140 = sub_100035120(v137, v139, &aBlock);

    *(v130 + 4) = v140;
    *(v130 + 12) = 2114;
    v141 = v216;
    CocoaError._nsError.getter();
    v142 = _swift_stdlib_bridgeErrorToNSError();
    v70 = v221;
    v143 = v213;
    (*(v221 + 8))(v141, v213);
    *(v130 + 14) = v142;
    *v131 = v142;
    _os_log_impl(&_mh_execute_header, v128, v129, "Unable to determine version checksum for store at %{public}s: %{public}@", v130, 0x16u);
    sub_10000D620(v131, &unk_1000AB7D0, &qword_100085510);
    v58 = v143;

    sub_10000D330(v212);

    v124 = *(v215 + 8);
    v124(v214, v219);
LABEL_31:
    v96 = v211;
    v74 = v217;
LABEL_33:
    [v74 setShouldMigrateStoreAutomatically:1];
    [v74 setShouldInferMappingModelAutomatically:1];
    [v74 setOption:v202 forKey:NSPersistentStoreStagedMigrationManagerOptionKey];
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v145 = (v144 + 16);
    v230 = sub_10000DDE0;
    v231 = v144;
    aBlock = _NSConcreteStackBlock;
    v227 = 1107296256;
    v228 = sub_10000A174;
    v229 = &unk_1000A1E58;
    v146 = _Block_copy(&aBlock);

    [v203 loadPersistentStoresWithCompletionHandler:v146];
    _Block_release(v146);
    swift_beginAccess();
    if (!*v145)
    {
      (*(v70 + 8))(v218, v58);
      sub_10000D620(v222, &qword_1000AAD98, &qword_100085588);

      return;
    }

    v220 = v124;
    swift_willThrow();
    swift_errorRetain();

    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v147 = v201;
    (*(v70 + 16))(v201, v218, v58);
    v148 = v70;
    v149 = v74;
    v150 = Logger.logObject.getter();
    v151 = v147;
    v152 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v150, v152))
    {
      v213 = v58;
      v153 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v224 = v217;
      *v153 = 136446466;
      v154 = [v149 URL];

      if (!v154)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v155 = v195;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v156 = v208;
      v157 = v196;
      v158 = v209;
      (*(v208 + 32))(v196, v155, v209);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      (*(v156 + 8))(v157, v158);
      v162 = sub_100035120(v159, v161, &v224);

      *(v153 + 4) = v162;
      *(v153 + 12) = 2114;
      v163 = v201;
      CocoaError._nsError.getter();
      v164 = _swift_stdlib_bridgeErrorToNSError();
      v165 = *(v221 + 8);
      v166 = v163;
      v58 = v213;
      v165(v166, v213);
      *(v153 + 14) = v164;
      v167 = v216;
      *v216 = v164;
      _os_log_impl(&_mh_execute_header, v150, v152, "Store at %{public}s failed to migrate: %{public}@", v153, 0x16u);
      sub_10000D620(v167, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v217);

      v168 = v211;
    }

    else
    {

      v165 = *(v148 + 8);
      v165(v151, v58);
      v168 = v96;
    }

    (v220)(v168, v219);
    v169 = v218;
    CocoaError._nsError.getter();
    swift_willThrow();

    v165(v169, v58);
    goto LABEL_40;
  }

  sub_10000CFA0(*(v91 + 56) + 32 * v93, &aBlock);

  sub_10000CED0(&qword_1000AADA8, &qword_100085598);
  v95 = swift_dynamicCast();
  v96 = v211;
  if ((v95 & 1) == 0)
  {
LABEL_25:
    v73 = v216;
    v74 = v217;
    goto LABEL_28;
  }

  v97 = v224;
  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v97 + 16))
  {

    goto LABEL_25;
  }

  v100 = sub_10007B4E8(v98, v99);
  v102 = v101;

  if ((v102 & 1) == 0)
  {

    goto LABEL_27;
  }

  sub_10000CFA0(*(v97 + 56) + 32 * v100, &aBlock);

  v103 = swift_dynamicCast();
  if ((v103 & 1) == 0)
  {
LABEL_27:
    v73 = v216;
    v74 = v217;
    v69 = v219;
    v75 = v214;
    goto LABEL_28;
  }

  v213 = v58;
  v105 = v224;
  v104 = v225;
  aBlock = v224;
  v227 = v225;
  __chkstk_darwin(v103);
  *(&v187 - 2) = &aBlock;
  v106 = v220;
  v107 = sub_10000AA40(sub_10000D4EC, (&v187 - 4), &off_1000A1B00);
  v220 = v106;
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  if (v107)
  {
    v108 = v193;
    static LoggedObject<>.logger.getter();
    v109 = v217;

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v110, v111))
    {

      v124 = *(v215 + 8);
      v124(v108, v219);
      v58 = v213;
      v70 = v221;
      v74 = v217;
      goto LABEL_33;
    }

    LODWORD(v214) = v111;
    v216 = v105;
    v112 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    aBlock = v212;
    *v112 = 136446466;
    v113 = [v109 URL];

    if (!v113)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v114 = v189;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v115 = v208;
    v116 = v191;
    v117 = v114;
    v118 = v209;
    (*(v208 + 32))(v191, v117, v209);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;
    (*(v115 + 8))(v116, v118);
    v122 = sub_100035120(v119, v121, &aBlock);

    *(v112 + 4) = v122;
    *(v112 + 12) = 2082;
    v123 = sub_100035120(v216, v104, &aBlock);

    *(v112 + 14) = v123;
    _os_log_impl(&_mh_execute_header, v110, v214, "Store at %{public}s requires migration from known version checksum: %{public}s", v112, 0x16u);
    swift_arrayDestroy();

    v124 = *(v215 + 8);
    v124(v193, v219);
    v58 = v213;
    v70 = v221;
    goto LABEL_31;
  }

  v170 = v194;
  static LoggedObject<>.logger.getter();
  v171 = v217;

  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v172, v173))
  {

    (*(v215 + 8))(v170, v219);
    goto LABEL_46;
  }

  LODWORD(v220) = v173;
  v216 = v105;
  v174 = swift_slowAlloc();
  v217 = swift_slowAlloc();
  aBlock = v217;
  *v174 = 136446466;
  v175 = [v171 URL];

  if (v175)
  {
    v176 = v190;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v177 = v208;
    v178 = v192;
    v179 = v176;
    v180 = v209;
    (*(v208 + 32))(v192, v179, v209);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v181 = dispatch thunk of CustomStringConvertible.description.getter();
    v183 = v182;
    (*(v177 + 8))(v178, v180);
    v184 = sub_100035120(v181, v183, &aBlock);

    *(v174 + 4) = v184;
    *(v174 + 12) = 2082;
    v185 = sub_100035120(v216, v104, &aBlock);

    *(v174 + 14) = v185;
    _os_log_impl(&_mh_execute_header, v172, v220, "Store at %{public}s will not be migrated as it has an unknown version checksum: %{public}s", v174, 0x16u);
    swift_arrayDestroy();

    (*(v215 + 8))(v194, v219);
LABEL_46:
    v186 = v218;
    CocoaError._nsError.getter();
    swift_willThrow();
    (*(v221 + 8))(v186, v213);
    goto LABEL_40;
  }

LABEL_51:
  __break(1u);
}

id sub_100008614()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  __chkstk_darwin(v1);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = *(v5 + 16);
  result = v14(v11, v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory, v4);
  if (*(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8))
  {
    URL.appendingPathComponent(_:)();
    v34 = *(v5 + 8);
    v34(v11, v4);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v14(v8, v13, v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = v8;
      v24 = v34;
      v34(v23, v4);
      v25 = sub_100035120(v20, v22, &v38);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Computed storeURL: %{public}s", v18, 0xCu);
      sub_10000D330(v19);
    }

    else
    {

      v26 = v8;
      v24 = v34;
      v34(v26, v4);
    }

    (*(v36 + 8))(v37, v35);
    v27 = objc_allocWithZone(NSPersistentStoreDescription);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:v29];

    sub_10000D544(0, &qword_1000AADD0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
    [v31 setOption:isa forKey:NSPersistentStoreConnectionPoolMaxSizeKey];

    v24(v13, v4);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100008AAC(void *a1, void *a2)
{
  v61 = a1;
  v4 = *v2;
  v5 = type metadata accessor for NSPersistentStore.StoreType();
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v62 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Logger();
  v67 = *(v70 - 8);
  v7 = __chkstk_darwin(v70);
  v58 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v57 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v57 - v17;
  __chkstk_darwin(v16);
  v20 = v57 - v19;
  v60 = a2;
  v21 = [a2 URL];
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v65 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v12 + 32))(v20, v18, v11);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    (*(v12 + 8))(v20, v11);
LABEL_13:
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v68 = 0xD00000000000002FLL;
    v69 = 0x80000001000883A0;
    v52 = [v61 persistentStoreDescriptions];
    sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = Array.description.getter();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v23 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  v24 = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  v57[2] = v23;
  v25 = v10;
  v57[1] = v24;
  v57[3] = v4;
  static LoggedObject<>.logger.getter();
  v26 = *(v12 + 16);
  v66 = v20;
  v26(v15, v20, v11);
  v27 = v12;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v11;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v57[0] = v25;
    v33 = v32;
    v68 = v32;
    *v31 = 136446210;
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v59 = *(v27 + 8);
    v59(v15, v30);
    v37 = sub_100035120(v34, v36, &v68);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Removing persistent store at %{public}s", v31, 0xCu);
    sub_10000D330(v33);

    v11 = v30;

    v38 = *(v67 + 8);
    v38(v57[0], v70);
  }

  else
  {

    v59 = *(v12 + 8);
    v59(v15, v11);
    v38 = *(v67 + 8);
    v38(v10, v70);
  }

  v39 = [v61 persistentStoreCoordinator];
  v40 = [v60 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v62;
  NSPersistentStore.StoreType.init(rawValue:)();
  sub_10000CED0(&qword_1000AAD88, &qword_100085578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085330;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v43;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100080590(inited);
  swift_setDeallocating();
  v44 = inited + 32;
  v45 = v41;
  sub_10000D620(v44, &qword_1000AAD90, &qword_100085580);
  v46 = v66;
  v47 = v63;
  NSPersistentStoreCoordinator.destroyPersistentStore(at:type:options:)();
  if (v47)
  {

    (*(v64 + 8))(v45, v65);
  }

  else
  {
    (*(v64 + 8))(v45, v65);

    v48 = [objc_opt_self() defaultManager];
    sub_100065740();

    static LoggedObject<>.logger.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Successfully removed persistent store", v51, 2u);
    }

    v38(v58, v70);
  }

  v59(v46, v11);
}

id sub_100009388()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Reset requested, setting reset request flag", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  type metadata accessor for FileBackedBooleanFlag(0);
  return sub_1000361B4(1);
}

void sub_1000095B0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Exiting", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  exit(0);
}

id sub_10000976C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v13[1] = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Clearing reset request flag", v10, 2u);
  }

  v11 = *(v3 + 8);
  v13[2] = v2;
  v11(v7, v2);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  type metadata accessor for FileBackedBooleanFlag(0);
  return sub_1000361B4(0);
}

id sub_100009AF0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v40 - v7;
  v9 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  v40[1] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  v41 = v9;
  v42 = v1;
  static LoggedObject<>.logger.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    type metadata accessor for URL();
    v43 = v6;
    v14 = v3;
    v15 = v2;
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_100035120(v16, v17, &v44);

    *(v12 + 4) = v18;
    v2 = v15;
    v3 = v14;
    v6 = v43;
    _os_log_impl(&_mh_execute_header, v10, v11, "Removing all files in storage directory '%s'", v12, 0xCu);
    sub_10000D330(v13);
  }

  v19 = *(v3 + 8);
  v19(v8, v2);
  v20 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v44 = 0;
  v24 = [v20 removeItemAtURL:v22 error:&v44];

  v25 = v44;
  if (v24)
  {

    return v25;
  }

  else
  {
    v40[0] = v2;
    v43 = v44;
    v27 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static LoggedObject<>.logger.getter();

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v6;
      v31 = v30;
      v32 = swift_slowAlloc();
      v42 = v19;
      v33 = v32;
      v34 = swift_slowAlloc();
      v41 = v3;
      v35 = v34;
      v44 = v34;
      *v31 = 136315394;
      type metadata accessor for URL();
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = sub_100035120(v36, v37, &v44);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2114;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v39;
      *v33 = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to remove storage directory '%s': %{public}@", v31, 0x16u);
      sub_10000D620(v33, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v35);

      return (v42)(v43, v40[0]);
    }

    else
    {

      return (v19)(v6, v40[0]);
    }
  }
}

void sub_10000A0CC(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AAD20, &qword_100085528);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AAD20, &qword_100085528);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10000A174(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void *sub_10000A210@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000A22C(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE78, type metadata accessor for CKError, &unk_10008582C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000A298(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE78, type metadata accessor for CKError, &unk_10008582C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000A304(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000A380(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000A3EC(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000A458(void *a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000A50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000A5B0(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000A61C(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000A688(void *a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000A718(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000A7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000A878(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE38, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085A98);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000A8E4(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE38, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085A98);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000A950(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError, &unk_100085958);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000AA40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_10000AAEC()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Constants();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Constants.coreDataInMemoryDatabasePath(_:), v6);
  Constants.rawValue.getter();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 56))(v5, 1, 1, v10);
  (*(v20 + 104))(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v21);
  URL.init(filePath:directoryHint:relativeTo:)();
  v14 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v18 = [v14 initWithURL:v16];

  (*(v11 + 8))(v13, v10);
  [v18 setType:NSInMemoryStoreType];
  return v18;
}

uint64_t sub_10000ADFC(void *a1)
{
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085340;
  *(v2 + 32) = sub_10000AAEC();
  sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPersistentStoreDescriptions:isa];

  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v8[4] = sub_10000DDE0;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000A174;
  v8[3] = &unk_1000A1E80;
  v6 = _Block_copy(v8);

  [a1 loadPersistentStoresWithCompletionHandler:v6];
  _Block_release(v6);
  swift_beginAccess();
  if (*v5)
  {
    swift_willThrow();
    swift_errorRetain();
  }
}

NSStagedMigrationManager sub_10000AFB4()
{
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_10000D544(0, &qword_1000AADB0, NSLightweightMigrationStage_ptr);
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100085330;
  *(v0 + 32) = 0xD00000000000002CLL;
  *(v0 + 40) = 0x8000000100088030;

  NSLightweightMigrationStage.init(_:)(v0);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100085330;
  *(v1 + 32) = 0xD00000000000002CLL;
  *(v1 + 40) = 0x8000000100088060;

  NSLightweightMigrationStage.init(_:)(v1);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085330;
  *(v2 + 32) = 0xD00000000000002CLL;
  *(v2 + 40) = 0x8000000100088090;

  NSLightweightMigrationStage.init(_:)(v2);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_10000D544(0, &qword_1000AADC0, NSMigrationStage_ptr);

    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000D544(0, &qword_1000AADC0, NSMigrationStage_ptr);
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000D544(0, &qword_1000AADC8, NSStagedMigrationManager_ptr);
  return NSStagedMigrationManager.init(_:)(v3);
}

uint64_t sub_10000B258()
{
  v1 = sub_10000CED0(&qword_1000AAD20, &qword_100085528);
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000B320, 0, 0);
}

uint64_t sub_10000B320()
{
  v1 = [objc_opt_self() defaultStore];
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10000B514;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_10000CF2C(v0 + 14);
    sub_10000CED0(&qword_1000AAD28, &qword_100085530);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v6, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000A0CC;
    v0[13] = &unk_1000A1DB8;
    [v2 aa_primaryAppleAccountWithCompletion:?];
    (*(v4 + 8))(v6, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10000B514()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10000B6AC;
  }

  else
  {
    v2 = sub_10000B624;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B624()
{
  v1 = *(v0 + 144);
  if (v1)
  {
  }

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_10000B6AC(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_10000B72C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_10000B878;

  return sub_10000B258();
}

uint64_t sub_10000B878(char a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = sub_10000BD58;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v6 = sub_10000B9B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000B9B8()
{
  v1 = *(v0 + 16);
  if (*(v0 + 160) == 1)
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
LABEL_12:

    v23 = *(v0 + 8);

    return v23();
  }

  *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  *(v0 + 96) = v2;
  if (!v2)
  {
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
    static LoggedObject<>.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "We're no longer logged in and we also don't have a persistent container", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);
    goto LABEL_12;
  }

  *(v0 + 104) = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  *(v0 + 112) = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  v3 = v2;
  static LoggedObject<>.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Primary apple account is no longer logged in, clearing the local database", v6, 2u);
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  v11 = *(v9 + 8);
  *(v0 + 120) = v11;
  v11(v7, v8);
  v12 = *(v10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation);
  type metadata accessor for CoreDataDatabase();
  v13 = swift_allocObject();
  *(v0 + 128) = v13;
  *(v13 + 16) = [v3 newBackgroundContext];
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_10000BF6C;

  return sub_10007257C();
}

uint64_t sub_10000BD58()
{
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to retrieve primary apple account, not doing anything: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000BF6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_10000C200;
  }

  else
  {
    v6 = sub_10000C0A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000C0A0()
{
  static LoggedObject<>.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 96);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleted %ld events from the local database", v5, 0xCu);
  }

  else
  {
    v4 = *(v0 + 96);
  }

  (*(v0 + 120))(*(v0 + 64), *(v0 + 32));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000C200()
{
  v1 = v0[12];

  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to retrieve primary apple account, not doing anything: %{public}@", v4, 0xCu);
    sub_10000D620(v5, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000C424()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000C530, v0, 0);
}

uint64_t sub_10000C530()
{
  v0[13] = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver, &unk_1000854A8);
  v0[14] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver, &unk_1000854D8);
  static LoggedObject<>.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Handling CloudKit account notification", v3, 2u);
  }

  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];

  v8 = *(v6 + 8);
  v0[15] = v8;
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_10000C70C;

  return sub_100063294(v9);
}

uint64_t sub_10000C70C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10000C984;
  }

  else
  {
    v4 = sub_10000C838;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000C838()
{
  static LoggedObject<>.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CloudKit thinks we're logged in", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[5];

  v4(v5, v6);
  *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000C984()
{
  *(v0 + 32) = *(v0 + 136);
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  if (!swift_dynamicCast())
  {
LABEL_4:

    static LoggedObject<>.logger.getter();
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get CloudKit's status: %{public}@", v4, 0xCu);
      sub_10000D620(v5, &unk_1000AB7D0, &qword_100085510);
    }

    else
    {
    }

    v7 = *(v0 + 40);
    (*(v0 + 120))(*(v0 + 72), *(v0 + 56));
    *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;

    v8 = *(v0 + 8);

    return v8();
  }

  v1 = *(v0 + 24);
  if (v1)
  {
    sub_10000CF18(*(v0 + 16), v1);
    goto LABEL_4;
  }

  static LoggedObject<>.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "CloudKit thinks we're logged out", v12, 2u);
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);

  v13(v14, v15);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_10000CCEC;

  return sub_10000B72C();
}

uint64_t sub_10000CCEC()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10000CDFC, v1, 0);
}

uint64_t sub_10000CDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000CE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CED0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CF18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t *sub_10000CF2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000CFA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D018()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_10000D058(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000D130;

  return sub_1000061E0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D130()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10000D224(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000D268()
{
  result = qword_1000AAD40;
  if (!qword_1000AAD40)
  {
    sub_100003988(&qword_1000AAD38, &qword_100085558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD40);
  }

  return result;
}

uint64_t sub_10000D2CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D330(void *a1)
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

uint64_t sub_10000D37C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000D3D0()
{
  result = qword_1000AAD68;
  if (!qword_1000AAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD68);
  }

  return result;
}

uint64_t sub_10000D424()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD98, &qword_100085588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000D544(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_10000D58C(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000D620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000CED0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D6D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D790(uint64_t a1, int a2)
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

uint64_t sub_10000D7B0(uint64_t result, int a2, int a3)
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

void sub_10000D920(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10000DAD4()
{
  result = qword_1000AAE60;
  if (!qword_1000AAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAE60);
  }

  return result;
}

void sub_10000DDF4()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {

    v5 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
    os_unfair_lock_lock((v5 + 32));
    v6 = *(v5 + 16);
    os_unfair_lock_unlock((v5 + 32));
    if (v6)
    {
      sub_10000E874();
      static LoggedObject.logger.getter();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Starting server that was already started", v9, 2u);
      }

      (*(v2 + 8))(v4, v1);
    }

    else
    {
      v10 = objc_allocWithZone(NSXPCListener);
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 initWithMachServiceName:v11];

      v13 = _s8ListenerCMa();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_hmDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v14[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener] = v12;
      v16.receiver = v14;
      v16.super_class = v13;
      v15 = objc_msgSendSuper2(&v16, "init");
      sub_10000E8C8(v15, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000E044()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
  os_unfair_lock_lock((v5 + 32));
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  os_unfair_lock_unlock((v5 + 32));
  if (v6)
  {
    [*(v6 + OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener) invalidate];
  }

  sub_10000E874();
  static LoggedObject.logger.getter();
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100035120(*&v7[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName], *&v7[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName + 8], &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "No longer listening for connections to %{public}s", v10, 0xCu);
    sub_10000D330(v11);
  }

  swift_unknownObjectRelease();
  return (*(v2 + 8))(v4, v1);
}

void *sub_10000E254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000D2CC(a4, v8);
  type metadata accessor for XPCServerProxy();
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_10004E6BC(v8, a1, a2, a3);
}

id sub_10000E308()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E3E8(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      swift_getObjectType();
      v14[1] = v6;
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = sub_100035120(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Connection interrupted: %{public}s", v9, 0xCu);
      sub_10000D330(v10);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_10000E604(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 24);
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v20[0] = v12;
      *v11 = 136446210;
      swift_getObjectType();
      v19[1] = v7;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = sub_100035120(v13, v14, v20);
      v19[0] = v2;
      v16 = v8;
      v17 = v15;

      *(v11 + 4) = v17;
      v8 = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Connection invalidated: %{public}s", v11, 0xCu);
      sub_10000D330(v12);

      (*(v3 + 8))(v5, v19[0]);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    ObjectType = swift_getObjectType();
    memset(v20, 0, sizeof(v20));
    (*(v8 + 144))(v20, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10000E874()
{
  result = qword_1000AAFD8;
  if (!qword_1000AAFD8)
  {
    type metadata accessor for XPCServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAFD8);
  }

  return result;
}

uint64_t sub_10000E8C8(void *a1, char *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a2[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
  os_unfair_lock_lock((v8 + 32));
  swift_unknownObjectRelease();
  *(v8 + 16) = a1;
  *(v8 + 24) = &off_1000A2F68;
  v9 = a1;
  os_unfair_lock_unlock((v8 + 32));
  v10 = *&v9[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener];
  [v10 setDelegate:v9];
  *&v9[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_hmDelegate + 8] = &off_1000A2098;
  swift_unknownObjectWeakAssign();
  [v10 activate];
  sub_10000E874();
  static LoggedObject.logger.getter();
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100035120(*&v11[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName], *&v11[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName + 8], &v18);
    _os_log_impl(&_mh_execute_header, v12, v13, "Listening for new connections to %{public}s", v14, 0xCu);
    sub_10000D330(v15);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000EB14()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000ECB0, v0, 0);
}

uint64_t sub_10000ECB0()
{
  v65 = v0;
  static Task<>.checkCancellation()();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  _s15DefaultDelegateC13ConfigurationVMa(0);
  URL.deletingLastPathComponent()();
  sub_10000F2E8(&qword_1000AAFE0, &unk_100087200);
  sub_10000F2E8(&qword_1000AAFE8, &unk_100087240);
  static LoggedObject<>.logger.getter();
  v60 = *(v3 + 16);
  v60(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  if (v7)
  {
    v14 = swift_slowAlloc();
    v58 = v11;
    v15 = swift_slowAlloc();
    v64 = v15;
    *v14 = 136315138;
    v54 = v6;
    v16 = URL.path.getter();
    v56 = v12;
    v18 = v17;
    v19 = v10;
    v20 = *(v9 + 8);
    v20(v8, v19);
    v21 = sub_100035120(v16, v18, &v64);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v5, v54, "Ensuring existence of '%s'", v14, 0xCu);
    sub_10000D330(v15);

    v22 = *(v13 + 8);
    v22(v58, v56);
  }

  else
  {

    v23 = v10;
    v20 = *(v9 + 8);
    v20(v8, v23);
    v22 = *(v13 + 8);
    v22(v11, v12);
  }

  v24 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v0[2] = 0;
  v28 = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v29 = v0[2];
  v30 = v0[13];
  if (v28)
  {
    v31 = v0[9];
    v32 = v29;
    v20(v30, v31);

    v33 = v0[1];
  }

  else
  {
    v34 = v0[11];
    v35 = v0[9];
    v36 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static LoggedObject<>.logger.getter();
    v60(v34, v30, v35);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v62 = v38;
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[11];
    v41 = v0[9];
    v42 = v0[7];
    v43 = v0[5];
    if (v39)
    {
      v61 = v0[5];
      v44 = swift_slowAlloc();
      v63 = v20;
      v45 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v44 = 136315394;
      v57 = v42;
      v59 = v22;
      v46 = URL.path.getter();
      v48 = v47;
      v63(v40, v41);
      v49 = sub_100035120(v46, v48, &v64);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v50;
      *v45 = v50;
      _os_log_impl(&_mh_execute_header, v37, v62, "Failed to create '%s': %@", v44, 0x16u);
      sub_10000F32C(v45);
      v20 = v63;

      sub_10000D330(v55);

      v59(v57, v61);
    }

    else
    {

      v20(v40, v41);
      v22(v42, v43);
    }

    v51 = v0[13];
    v52 = v0[9];
    swift_willThrow();
    v20(v51, v52);

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_10000F2E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s15DefaultDelegateCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F32C(uint64_t a1)
{
  v2 = sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F394(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 440) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  v4 = type metadata accessor for Logger();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10000F4B8, 0, 0);
}

void sub_10000F4B8()
{
  if ((*(v0 + 440) & 1) != 0 || *(v0 + 184) >= 1)
  {
    v1 = *(v0 + 176);
    v19 = *(v0 + 440);
    type metadata accessor for Configuration();
    *(v0 + 40) = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
    *(v0 + 48) = swift_getOpaqueTypeConformance2();
    sub_10000CF2C((v0 + 16));
    static Configuration.defaultFeaturesDataSource.getter();
    sub_10000D2CC(v1, v0 + 56);
    v18 = static Configuration.cloudKitContainer.getter();
    v2 = sub_10000CED0(&qword_1000AAFF8, &qword_100085C78);
    v3 = SimpleAsyncCache.__allocating_init()();
    *(v0 + 120) = v2;
    *(v0 + 128) = sub_100011108();
    *(v0 + 96) = v3;
    v17 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
    v16 = static Constants.maxCloudKitRecordsPerOperation.getter();
    v4 = *(v0 + 80);
    v5 = sub_10001116C(v0 + 56, v4);
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    v8 = *v7;
    v9 = type metadata accessor for CoreDataDatabase();
    *(v0 + 136) = v8;
    *(v0 + 160) = v9;
    *(v0 + 168) = &off_1000A42B8;
    *(v0 + 280) = type metadata accessor for EventUploader();
    v10 = swift_allocObject();
    *(v0 + 288) = v10;
    v11 = sub_10001116C(v0 + 136, v9);
    v12 = *(v9 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v9);
    v10[7] = *v13;
    v10[10] = v9;
    v10[11] = &off_1000A42B8;
    sub_1000111BC((v0 + 16), (v10 + 2));
    v10[12] = v18;
    sub_1000111BC((v0 + 96), (v10 + 13));
    v10[20] = v17;
    v10[21] = v16;
    v10[18] = 0;
    v10[19] = 0;
    sub_10000D330((v0 + 136));

    sub_10000D330((v0 + 56));

    if (v19)
    {
      sub_10000D224(v10 + 7, v10[10]);
      v14 = swift_task_alloc();
      *(v0 + 296) = v14;
      *v14 = v0;
      v15 = sub_10000F844;
    }

    else
    {
      *(v0 + 360) = 0;
      sub_10000D224((*(v0 + 288) + 56), *(*(v0 + 288) + 80));
      v14 = swift_task_alloc();
      *(v0 + 368) = v14;
      *v14 = v0;
      v15 = sub_10000FFB8;
    }

    v14[1] = v15;

    sub_100078894();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000F844(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_10000FC2C;
  }

  else
  {
    v4 = sub_10000F958;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000F958()
{
  v1 = v0[38];
  v0[40] = sub_1000111D4();
  if (v1 < 1)
  {
    static LoggedObject.logger.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[32];
    v16 = v0[24];
    v17 = v0[25];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No pending events to upload", v18, 2u);
    }

    else
    {
    }

    (*(v17 + 8))(v15, v16);

    v19 = v0[1];

    return v19();
  }

  else
  {
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[38];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Uploading %ld pending events", v5, 0xCu);
    }

    v6 = v0[34];
    v7 = v0[24];
    v8 = v0[25];

    v9 = *(v8 + 8);
    v0[41] = v9;
    v0[42] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v0[43] = v10;
    *v10 = v0;
    v10[1] = sub_10000FD14;

    return sub_10006A528();
  }
}

uint64_t sub_10000FC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000FD14()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_100011020;
  }

  else
  {
    v2 = sub_10000FE28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000FE28()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 304);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully uploaded all %ld pending events", v4, 0xCu);
  }

  else
  {
  }

  (*(v0 + 328))(*(v0 + 264), *(v0 + 192));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000FFB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_100010674;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_1000100E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000100E0()
{
  v48 = v0;
  v1 = v0[48];
  v2 = v0[45];
  sub_1000111D4();
  if (v1 <= 0)
  {
    if (v2)
    {
      static LoggedObject.logger.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[25];
      v20 = v0[26];
      v21 = v0[24];
      if (v18)
      {
        v46 = v0[26];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v47 = v23;
        *v22 = 134218242;
        *(v22 + 4) = v2;
        *(v22 + 12) = 2080;
        if (v2 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = 29541;
        }

        if (v2 == 1)
        {
          v25 = 0xE000000000000000;
        }

        else
        {
          v25 = 0xE200000000000000;
        }

        v26 = sub_100035120(v24, v25, &v47);

        *(v22 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "Successfully uploaded %ld batch%s of pending events", v22, 0x16u);
        sub_10000D330(v23);

        (*(v19 + 8))(v46, v21);
      }

      else
      {

        (*(v19 + 8))(v20, v21);
      }
    }

    else
    {
      static LoggedObject.logger.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[27];
      v42 = v0[24];
      v43 = v0[25];
      if (v40)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "No pending events to upload", v44, 2u);
      }

      else
      {
      }

      (*(v43 + 8))(v41, v42);
    }

    v45 = v0[1];

    return v45();
  }

  else
  {
    if (v2)
    {
      static LoggedObject.logger.getter();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Pending events remaining, starting another upload", v5, 2u);
      }

      v6 = v0[30];
      v7 = v0[24];
      v8 = v0[25];

      v9 = *(v8 + 8);
      v9(v6, v7);
      static LoggedObject.logger.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[45];
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v10, v11, "Batch %ld", v13, 0xCu);
      }

      v14 = v0[29];
      v15 = v0[24];

      v9(v14, v15);
    }

    else
    {
      static LoggedObject.logger.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[31];
      v31 = v0[24];
      v32 = v0[25];
      if (v29)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Uploading pending events", v33, 2u);
      }

      v9 = *(v32 + 8);
      v9(v30, v31);
    }

    v0[49] = v9;
    v34 = v0[36];
    sub_10000D224(v34 + 7, v34[10]);
    v35 = v34[21];
    v36 = swift_task_alloc();
    v0[50] = v36;
    *v36 = v0;
    v36[1] = sub_10001075C;

    return sub_100075500(v35);
  }
}

uint64_t sub_100010674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001075C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000109F4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[53] = v6;
    *v6 = v5;
    v6[1] = sub_1000108E0;

    return sub_10006C0E8(a1);
  }
}

uint64_t sub_1000108E0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100010F30;
  }

  else
  {
    v2 = sub_100010ADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000109F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100010ADC()
{
  v34 = v0;

  sub_1000111D4();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[45];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished uploading pending events (batch %ld)", v4, 0xCu);
  }

  v5 = v0[49];
  v6 = v0[45];
  v7 = v0[28];
  v8 = v0[24];

  result = v5(v7, v8);
  v10 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[23];
    if (v10 == v11)
    {
      if (v11)
      {
        static LoggedObject.logger.getter();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        v14 = os_log_type_enabled(v12, v13);
        v15 = v0[25];
        v16 = v0[26];
        v17 = v0[24];
        if (v14)
        {
          v32 = v0[26];
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v33 = v19;
          *v18 = 134218242;
          *(v18 + 4) = v11;
          *(v18 + 12) = 2080;
          if (v11 == 1)
          {
            v20 = 0;
          }

          else
          {
            v20 = 29541;
          }

          if (v11 == 1)
          {
            v21 = 0xE000000000000000;
          }

          else
          {
            v21 = 0xE200000000000000;
          }

          v22 = sub_100035120(v20, v21, &v33);

          *(v18 + 14) = v22;
          _os_log_impl(&_mh_execute_header, v12, v13, "Successfully uploaded %ld batch%s of pending events", v18, 0x16u);
          sub_10000D330(v19);

          (*(v15 + 8))(v32, v17);
        }

        else
        {

          (*(v15 + 8))(v16, v17);
        }
      }

      else
      {
        static LoggedObject.logger.getter();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        v26 = os_log_type_enabled(v24, v25);
        v27 = v0[27];
        v28 = v0[24];
        v29 = v0[25];
        if (v26)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "No pending events to upload", v30, 2u);
        }

        else
        {
        }

        (*(v29 + 8))(v27, v28);
      }

      v31 = v0[1];

      return v31();
    }

    else
    {
      v0[45] = v10;
      sub_10000D224((v0[36] + 56), *(v0[36] + 80));
      v23 = swift_task_alloc();
      v0[46] = v23;
      *v23 = v0;
      v23[1] = sub_10000FFB8;

      return sub_100078894();
    }
  }

  return result;
}

uint64_t sub_100010F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100011020()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100011108()
{
  result = qword_1000AB000;
  if (!qword_1000AB000)
  {
    sub_100003988(&qword_1000AAFF8, &qword_100085C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB000);
  }

  return result;
}

uint64_t sub_10001116C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000111BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1000111D4()
{
  result = qword_1000AB008;
  if (!qword_1000AB008)
  {
    type metadata accessor for EventUploader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB008);
  }

  return result;
}

uint64_t sub_100011230(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  *&v12[OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_numErrorResults] = a2;
  v12[OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_attributedToFakeData] = a3;
  v45.receiver = v12;
  v45.super_class = v4;
  v13 = objc_msgSendSuper2(&v45, "init");
  type metadata accessor for MetricsManager();
  static MetricsManager.sharedInstance.getter();
  v14 = v13;
  MetricsManager.submitLogEvent(_:error:)();

  sub_1000118AC();
  static LoggedObject.logger.getter();
  v15 = v14;
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    return (*(v9 + 8))(v11, v8);
  }

  v41 = v17;
  v18 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v44 = v40;
  *v18 = 136446466;
  v42 = v15;
  v19 = sub_1000115EC();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v34 = v16;
  v35 = v11;
  v36 = v9;
  v37 = v8;
  v21 = sub_100032ABC(v20, 0);
  v38 = sub_100033338(&v43, v21 + 4, v20, v19);
  v22 = v43;

  sub_1000123C4(v22);
  if (v38 == v20)
  {
    v9 = v36;
    v8 = v37;
    v16 = v34;
    v11 = v35;
LABEL_7:
    v43 = v21;
    sub_100011900(&v43);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_100035120(v23, v25, &v44);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2114;
    if (a1)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v29 = v42;
    v30 = v41;
    v32 = v39;
    v31 = v40;
    *(v18 + 14) = v27;
    *v32 = v28;
    _os_log_impl(&_mh_execute_header, v16, v30, "Submitted CloudUploadResultLogEvent: %{public}s, with error: %{public}@", v18, 0x16u);
    sub_10000F32C(v32);

    sub_10000D330(v31);

    return (*(v9 + 8))(v11, v8);
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1000115EC()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085C80;
  *(inited + 32) = 0x6C61746F546D756ELL;
  *(inited + 40) = 0xEF73746C75736552;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x726F7272456D756ELL;
  *(inited + 64) = 0xEF73746C75736552;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_numErrorResults)];
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100088B40;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_attributedToFakeData)];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_1000118AC()
{
  result = qword_1000AB048;
  if (!qword_1000AB048)
  {
    type metadata accessor for CloudUploadResultLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB048);
  }

  return result;
}

Swift::Int sub_100011900(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033600(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10001196C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10001196C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100011B58(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100011A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100011A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011B58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_100033324(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_100012164((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000225F8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1000225F8((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_100012164((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100033324(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_100033298(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_100012164(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_1000123CC()
{
  result = qword_1000AB070;
  if (!qword_1000AB070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AB070);
  }

  return result;
}

unint64_t sub_100012418()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085D10;
  *(inited + 32) = 0x64756F6C436D756ELL;
  *(inited + 40) = 0xEF7364616F6C7055;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_numCloudUploads)];
  *(inited + 56) = 0x424B656D756C6F76;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_volumeKB)];
  *(inited + 80) = 0x726F6365526D756ELL;
  *(inited + 88) = 0xEA00000000007364;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_numRecords)];
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000100088B40;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_attributedToFakeData)];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_100012718(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001272C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100012774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000127D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000127E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001283C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100012898(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000128C8(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for Configuration.TargetCloudKitZone();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100012AB8, 0, 0);
}

uint64_t sub_100012AB8()
{
  v51 = v0;
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v6 = v0[26];
  v5 = v0[27];
  type metadata accessor for XPCServer();
  sub_100013470(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v49 = *(v3 + 16);
  (v49)(v1, v6, v2);
  sub_100013358(v5, v4, &qword_1000AB0C8, &qword_100085F18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[40];
  v13 = v0[41];
  v14 = v0[36];
  v15 = v0[37];
  v16 = v0[35];
  if (v9)
  {
    v41 = v0[34];
    v46 = v0[41];
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v17 = 141558530;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    sub_100013470(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = v10;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v8;
    v20 = v19;
    v48 = *(v15 + 8);
    v48(v12, v14);
    v21 = sub_100035120(v18, v20, &v50);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    sub_100013358(v16, v41, &qword_1000AB0C8, &qword_100085F18);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_10000D620(v16, &qword_1000AB0C8, &qword_100085F18);
    v25 = sub_100035120(v22, v24, &v50);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v7, v39, "Ensuring digests for home: %{mask.hash}s, creation date %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v44, v46);
  }

  else
  {

    sub_10000D620(v16, &qword_1000AB0C8, &qword_100085F18);
    v48 = *(v15 + 8);
    v48(v12, v14);
    (*(v11 + 8))(v10, v13);
  }

  v26 = v0[38];
  v27 = v0[36];
  v28 = v0[34];
  v47 = v0[33];
  v29 = v0[31];
  v40 = v0[39];
  v42 = v29;
  v45 = v0[30];
  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[27];
  v49();
  v43 = v31;
  (*(v30 + 104))(v29, enum case for Configuration.TargetCloudKitZone.energyKit(_:), v31);
  sub_100013358(v32, v28, &qword_1000AB0C8, &qword_100085F18);
  type metadata accessor for Configuration();
  v0[5] = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v0[6] = swift_getOpaqueTypeConformance2();
  sub_10000CF2C(v0 + 2);
  static Configuration.defaultFeaturesDataSource.getter();
  sub_10000D2CC((v0 + 2), (v0 + 7));
  v33 = _s15DefaultDelegateCMa(0);
  (v49)(v26, v40, v27);
  sub_100013358((v0 + 7), (v0 + 12), &qword_1000AB0D0, &unk_100085F20);
  (*(v30 + 16))(v45, v42, v31);
  v34 = v28;
  sub_100013358(v28, v47, &qword_1000AB0C8, &qword_100085F18);
  v35 = sub_10004A42C(v26, (v0 + 12), 0, v45, 1, 0, 0, 1, v47);
  sub_10000D620((v0 + 7), &qword_1000AB0D0, &unk_100085F20);
  sub_1000133C0((v0 + 2), (v0 + 17));
  type metadata accessor for EventDigestController();
  v36 = swift_allocObject();
  v0[44] = v36;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  sub_1000133C0((v0 + 17), v36 + 16);
  *(v36 + 80) = v33;
  *(v36 + 88) = &off_1000A2F40;
  *(v36 + 56) = v35;
  sub_10001341C((v0 + 17));
  sub_10000D620(v34, &qword_1000AB0C8, &qword_100085F18);
  (*(v30 + 8))(v42, v43);
  v48(v40, v27);
  sub_10001341C((v0 + 2));
  sub_100060B20();
  v37 = swift_task_alloc();
  v0[45] = v37;
  *v37 = v0;
  v37[1] = sub_1000130C0;

  return sub_100060D34();
}

uint64_t sub_1000130C0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 192) = a2;
  *(v3 + 176) = v2;
  *(v3 + 184) = a1;
  *(v3 + 368) = a2;

  return _swift_task_switch(sub_1000131C8, 0, 0);
}

uint64_t sub_1000131C8()
{
  if (*(v0 + 368))
  {
    *(v0 + 200) = *(v0 + 184);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000134B8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 184) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for DiagnosticFileCollector(0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  v6 = type metadata accessor for Constants();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v3 + 128) = v7;
  *(v3 + 136) = *(v7 - 8);
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000136F8, 0, 0);
}

uint64_t sub_1000136F8()
{
  v35 = v0;
  v20 = *(v0 + 136);
  v21 = *(v0 + 144);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v22 = *(v0 + 80);
  v25 = *(v0 + 64);
  v26 = *(v0 + 56);
  v27 = *(v0 + 48);
  v32 = *(v0 + 40);
  v33 = *(v0 + 32);
  v31 = *(v0 + 184);
  v29 = *(v0 + 16);
  v30 = *(v0 + 24);
  (*(v3 + 104))(v1, enum case for Constants.diagnosticsTargetDirectoryPath(_:), v4);
  Constants.rawValue.getter();
  (*(v3 + 8))(v1, v4);
  v24 = enum case for URL.DirectoryHint.isDirectory(_:);
  v23 = *(v6 + 104);
  v23(v5);
  (*(v20 + 56))(v7, 1, 1, v2);
  URL.init(filePath:directoryHint:relativeTo:)();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100085F30;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v26 + 8))(v25, v27);
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0xD000000000000010;
  *(v8 + 56) = 0x8000000100088D70;
  (v23)(v5, v24, v22);
  sub_100013D50();
  URL.appending<A>(components:directoryHint:)();

  (*(v6 + 8))(v5, v22);
  v28 = *(v20 + 8);
  *(v0 + 152) = v28;
  *(v0 + 160) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v2);
  v12 = *(v20 + 16);
  v12(v21, v29, v2);
  type metadata accessor for Configuration();
  v13 = static Configuration.cloudKitContainer.getter();
  *v32 = v31;
  *(v32 + 8) = v30;
  v12(v32 + v33[6], v21, v2);
  *(v32 + v33[7]) = v13;
  v14 = objc_allocWithZone(CKOperationGroup);
  v15 = v30;
  v16 = v13;
  v17 = [v14 init];
  v34[0] = v17;
  sub_10001EAE4(v34, v16);

  v28(v21, v2);
  *(v32 + v33[8]) = v17;
  v18 = swift_task_alloc();
  *(v0 + 168) = v18;
  *v18 = v0;
  v18[1] = sub_100013AA4;

  return sub_10001E5E0();
}

uint64_t sub_100013AA4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100013C70;
  }

  else
  {
    v2 = sub_100013BB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013BB8()
{
  sub_100013DA4(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013C70()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[2];
  sub_100013DA4(v0[5]);
  v1(v3, v2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_100013D50()
{
  result = qword_1000AB0E0;
  if (!qword_1000AB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB0E0);
  }

  return result;
}

uint64_t sub_100013DA4(uint64_t a1)
{
  v2 = type metadata accessor for DiagnosticFileCollector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();
}

Swift::Int sub_100013E60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFF00010000uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100013EF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFF00010000uLL >> (16 * v1));
  return Hasher._finalize()();
}

_BYTE *sub_100013F40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (*result + 1));
  if ((*result + 1) >= 3u)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100013FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000140C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PendingEventData(uint64_t a1)
{
  result = qword_1000AB140;
  if (!qword_1000AB140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014218(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000142D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000142D4()
{
  if (!qword_1000AB150)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AB150);
    }
  }
}

uint64_t getEnumTagSinglePayload for TargetDatabase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetDatabase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000144C4()
{
  result = qword_1000AB198;
  if (!qword_1000AB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB198);
  }

  return result;
}

uint64_t sub_100014518(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v27 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000D544(0, &qword_1000AB280, OS_dispatch_source_ptr);
  sub_10000D544(0, &qword_1000AB288, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = v26;
  v17 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = v29;
  *(v18 + 24) = v28;
  *(v18 + 32) = v19;
  *(v18 + 40) = v27;
  aBlock[4] = sub_100014E88;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004CB28;
  aBlock[3] = &unk_1000A22C0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100014B50();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v20);
  (*(v31 + 8))(v7, v32);
  (*(v8 + 8))(v10, v30);

  OS_dispatch_source.resume()();
  swift_beginAccess();
  if (*(v4[14] + 16) && (sub_10007B67C(v16), (v21 & 1) != 0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = SIG_IGN.getter();
    signal(v16, v22);
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v4[14];
  v4[14] = 0x8000000000000000;
  sub_10007E598(v17, v16, isUniquelyReferenced_nonNull_native);
  v4[14] = v33;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100014974(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014F14(&qword_1000AB2A8, v10, type metadata accessor for SignalHandler, &unk_100086060);
  sub_100014F14(&qword_1000AB278, v11, type metadata accessor for SignalHandler, &unk_100086090);
  static LoggedObject<>.logger.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received signal %d", v14, 8u);
  }

  v15 = (*(v7 + 8))(v9, v6);
  return a2(v15);
}

uint64_t sub_100014B50()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100014F14(&qword_1000AB290, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CED0(&qword_1000AB298, &qword_1000860B8);
  sub_100014EB0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100014C0C()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 112);
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  for (i = (v4 + 63) >> 6; v6; result = swift_unknownObjectRelease())
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 48) + 4 * (v9 | (v8 << 6)));
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    v11 = SIG_DFL.getter();
    signal(v10, v11);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014D34()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100014D90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SignalHandler();
  sub_100014F14(&qword_1000AB278, v2, type metadata accessor for SignalHandler, &unk_100086090);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_100014E18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SignalHandler();

  return static LoggedObject.logCategory.getter();
}

uint64_t sub_100014E50()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100014EB0()
{
  result = qword_1000AB2A0;
  if (!qword_1000AB2A0)
  {
    sub_100003988(&qword_1000AB298, &qword_1000860B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB2A0);
  }

  return result;
}

uint64_t sub_100014F14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D617374656ALL;
  if (v2 != 1)
  {
    v4 = 0x64696C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6873617263;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D617374656ALL;
  if (*a2 != 1)
  {
    v8 = 0x64696C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6873617263;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10001504C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000150E4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100015168()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000151FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001784C(*a1);
  *a2 = result;
  return result;
}

void sub_10001522C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617374656ALL;
  if (v2 != 1)
  {
    v5 = 0x64696C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6873617263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_100015290(uint64_t a1, char a2, char a3)
{
  v7 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey];
  *v7 = 0xD000000000000012;
  v7[1] = 0x8000000100088E20;
  v8 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numLaunchesWithPendingEvents];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch];
  *v10 = 0;
  v10[8] = 1;
  *&v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_pendingEventsFetchFailureCount] = -1;
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] = 3;
  v11 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v3[v12] = static MetricsManager.sharedInstance.getter();
  sub_100017898(a1, &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_database]);
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_attributedToFakeData] = a2;
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_launchedByClientRequest] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ProcessLaunchLogEvent();
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_10000D620(a1, &qword_1000AB3A8, &unk_100086220);
  return v13;
}

uint64_t sub_1000153EC()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_1000154E4;

  return sub_100015754();
}

uint64_t sub_1000154E4()
{

  return _swift_task_switch(sub_1000155E0, 0, 0);
}

uint64_t sub_1000155E0()
{
  v1 = [objc_opt_self() currentProcess];
  v2 = [v1 lastExitContext];

  if (v2)
  {
    sub_1000165D4(v2);
  }

  else
  {
    sub_100017908();
    static LoggedObject.logger.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No lastExitContext found for current process, not setting exit properties", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100015754()
{
  v1[16] = v0;
  v1[17] = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100015844, 0, 0);
}

uint64_t sub_100015844()
{
  sub_100017898(*(v0 + 128) + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_database, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 128);
    sub_1000111BC((v0 + 56), v0 + 16);
    sub_10000D224((v0 + 16), *(v0 + 40));
    v2 = v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey;
    v3 = *(v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey);
    *(v0 + 192) = v3;
    v4 = *(v2 + 8);
    *(v0 + 200) = v4;
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = sub_100015A64;

    return sub_100073A78(v3, v4);
  }

  else
  {
    sub_10000D620(v0 + 56, &qword_1000AB3A8, &unk_100086220);
    sub_100017908();
    static LoggedObject.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Cannot call setLaunchProperties without a valid database -- setting all properties to nil", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100015A64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[27] = a2;

  return _swift_task_switch(sub_100015B6C, 0, 0);
}

uint64_t sub_100015B6C(uint64_t a1)
{
  v30 = v1;
  v2 = v1[27];
  if (v2)
  {
    v1[15] = 0;
    v3 = v1[16];
    v4 = sub_100017754(v1[13], v2, (v1 + 15));

    v5 = v1[15];
    if (!v4)
    {
      v5 = 0;
    }

    v6 = v3 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime;
    *v6 = v5;
    *(v6 + 8) = !v4;
  }

  else
  {
    v7 = v1[16];
    sub_100017908();
    static LoggedObject.logger.getter();
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v1[24];
      v11 = v1[25];
      v13 = v1[23];
      v14 = v1[18];
      v15 = v1[19];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_100035120(v12, v11, &v29);
      _os_log_impl(&_mh_execute_header, v9, v10, "Found no value for %{public}s in metadata store", v16, 0xCu);
      sub_10000D330(v17);

      (*(v15 + 8))(v13, v14);
    }

    else
    {
      v18 = v1[23];
      v19 = v1[18];
      v20 = v1[19];

      (*(v20 + 8))(v18, v19);
    }
  }

  v21 = v1[16];
  sub_10000D224(v1 + 2, v1[5]);
  [v21 startTime];
  v22 = Double.description.getter();
  v24 = v23;
  v1[28] = v23;
  v25 = swift_task_alloc();
  v1[29] = v25;
  *v25 = v1;
  v25[1] = sub_100015DEC;
  v27 = v1[24];
  v26 = v1[25];

  return sub_100072A74(v27, v26, v22, v24);
}

uint64_t sub_100015DEC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100015FBC;
  }

  else
  {
    v2 = sub_100015F20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015F20()
{
  sub_10000D224(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_100016224;

  return sub_100078894();
}

uint64_t sub_100015FBC(uint64_t a1)
{
  v21 = v1;
  v2 = v1[16];
  sub_100017908();
  static LoggedObject.logger.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[24];
    v7 = v1[25];
    v8 = v1[19];
    v18 = v1[18];
    v19 = v1[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_100035120(v6, v7, &v20);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Encountered error when saving metadata for %{public}s: %{public}@", v9, 0x16u);
    sub_10000D620(v10, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v11);

    (*(v8 + 8))(v19, v18);
  }

  else
  {
    v13 = v1[22];
    v14 = v1[18];
    v15 = v1[19];

    (*(v15 + 8))(v13, v14);
  }

  sub_10000D224(v1 + 2, v1[5]);
  v16 = swift_task_alloc();
  v1[31] = v16;
  *v16 = v1;
  v16[1] = sub_100016224;

  return sub_100078894();
}

uint64_t sub_100016224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1000163F4;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_10001634C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001634C()
{
  v1 = v0[16] + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch;
  *v1 = v0[33];
  *(v1 + 8) = 0;
  sub_10000D330(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000163F4(uint64_t a1)
{
  v2 = v1[16];
  v3 = *(v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_pendingEventsFetchFailureCount);
  v4 = v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch;
  *v4 = v3;
  *(v4 + 8) = 0;
  sub_100017908();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error when trying to count pending events in the database: %{public}@", v7, 0xCu);
    sub_10000D620(v8, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v1[19] + 8))(v1[21], v1[18]);
  sub_10000D330(v1 + 2);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000165D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 status];
  if (v8)
  {
    v9 = v8;
    if ([v8 isJetsam])
    {
      v10 = 1;
    }

    else if ([v9 isCrash])
    {
      v10 = 0;
    }

    else
    {
      if (![v9 isValid])
      {
LABEL_12:
        v15 = [v9 error];
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = v17;

        v19 = (v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason);
        *v19 = v16;
        v19[1] = v18;
      }

      v10 = 2;
    }

    *(v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType) = v10;
    goto LABEL_12;
  }

  sub_100017908();
  static LoggedObject.logger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Found no metadata from previous exit context, so not setting properties", v13, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100016808()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsManager.submitLogEvent(_:error:)();
  sub_100017908();
  static LoggedObject.logger.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v29 = v26;
  v27 = v8;
  *v8 = 136446210;
  v9 = [v5 coreAnalyticsEventDictionary];
  sub_1000123CC();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v22 = v7;
  v23 = v6;
  v24 = v2;
  v25 = v1;
  v12 = sub_100032ABC(v11, 0);
  v13 = sub_100033338(&v28, v12 + 4, v11, v10);
  v14 = v28;

  sub_1000123C4(v14);
  if (v13 == v11)
  {
    v2 = v24;
    v1 = v25;
    v6 = v23;
    LOBYTE(v7) = v22;
LABEL_6:
    v28 = v12;
    sub_100011900(&v28);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100035120(v15, v17, &v29);

    v19 = v27;
    *(v27 + 1) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Submitted ProcessLaunchLogEvent: %{public}s", v19, 0xCu);
    sub_10000D330(v26);

LABEL_7:

    return (*(v2 + 8))(v4, v1);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100016B30(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsManager.submitLogEvent(_:error:)();
  sub_100017908();
  static LoggedObject.logger.getter();
  v6 = v1;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_7;
  }

  v30 = v8;
  v9 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v32 = v29;
  *v9 = 136446466;
  v10 = [v6 coreAnalyticsEventDictionary];
  sub_1000123CC();
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);
  if (!v12)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v23 = v9;
  v24 = v7;
  v25 = v3;
  v26 = v2;
  v13 = sub_100032ABC(v12, 0);
  v27 = sub_100033338(&v31, v13 + 4, v12, v11);
  v14 = v31;

  sub_1000123C4(v14);
  if (v27 == v12)
  {
    v3 = v25;
    v2 = v26;
    v9 = v23;
    v7 = v24;
LABEL_6:
    v31 = v13;
    sub_100011900(&v31);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100035120(v15, v17, &v32);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v19;
    v20 = v28;
    *v28 = v19;
    _os_log_impl(&_mh_execute_header, v7, v30, "Submitted ProcessLaunchLogEvent: %{public}s with error: %{public}@", v9, 0x16u);
    sub_10000D620(v20, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v29);

LABEL_7:

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_100016F24(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000170B4()
{
  v1 = v0;
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000860C0;
  *(inited + 32) = 0x636E75614C6D756ELL;
  *(inited + 40) = 0xEB00000000736568;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x68736172436D756ELL;
  *(inited + 64) = 0xEA00000000007365;
  v3 = OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType;
  if (v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] > 1u)
  {
    if (v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType])
  {

    v4 = 1;
    goto LABEL_8;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    v4 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  *(inited + 80) = 0x617374654A6D756ELL;
  *(inited + 88) = 0xEA0000000000736DLL;
  if (v1[v3] > 1u)
  {
    if (v1[v3] != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v1[v3])
  {

    v6 = 1;
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    v6 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
LABEL_15:
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000100088F00;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_launchedByClientRequest]];
  *(inited + 128) = 0xD000000000000026;
  *(inited + 136) = 0x8000000100088F20;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_attributedToFakeData]];
  v8 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  if ((v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch + 8] & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch];
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v10, 0xD000000000000018, 0x8000000100088E60, isUniquelyReferenced_nonNull_native);
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:v9 > 0];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v12, 0xD00000000000001CLL, 0x8000000100088E40, v13);
  }

  if (v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime + 8])
  {
    goto LABEL_22;
  }

  v14 = *&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime];
  result = [v1 startTime];
  v17 = (v16 - v14) * 1000.0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v18 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v18, 0xD00000000000001FLL, 0x8000000100088F50, v19);
LABEL_22:
  if (v1[v3] <= 2u)
  {
    v20 = objc_allocWithZone(NSString);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v20 initWithString:v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v22, 0xD000000000000010, 0x8000000100088EA0, v23);
  }

  if (*&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason + 8])
  {
    v24 = objc_allocWithZone(NSString);

    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 initWithString:v25];

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v26, 0xD000000000000012, 0x8000000100088EC0, v27);
  }

  return v8;
}

unint64_t sub_100017690()
{
  result = qword_1000AB390;
  if (!qword_1000AB390)
  {
    sub_100003988(&qword_1000AB398, " X");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB390);
  }

  return result;
}

unint64_t sub_1000176F8()
{
  result = qword_1000AB3A0;
  if (!qword_1000AB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3A0);
  }

  return result;
}

BOOL sub_100017754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_10001784C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1B50, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100017898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB3A8, &unk_100086220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017908()
{
  result = qword_1000AB3B8;
  if (!qword_1000AB3B8)
  {
    type metadata accessor for ProcessLaunchLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3B8);
  }

  return result;
}

_BYTE *sub_10001795C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1000179DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_100017A78(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_10002F2E4(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 232) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  sub_10000CED0(&qword_1000AB3C0, &qword_100086268);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = sub_10000CED0(&qword_1000AB3C8, &qword_100086270);
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100017E98, 0, 0);
}

uint64_t sub_100017E98()
{
  if (*(v0 + 232) == 1)
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v2;
    v6[6] = v3;
    sub_10001C794(v4, v2);

    sub_100018AA8(v1, &unk_1000862A0, v6);
    sub_10000D620(v1, &qword_1000AAD30, &qword_100085540);
  }

  v7 = *(v0 + 200);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_10000D2CC(v8, v0 + 16);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v9;
  sub_1000111BC((v0 + 16), (v12 + 6));

  sub_100018AA8(v7, &unk_100086280, v12);
  sub_10000D620(v7, &qword_1000AAD30, &qword_100085540);
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 208) = &_swiftEmptyDictionarySingleton;
  *(v0 + 216) = &_swiftEmptyDictionarySingleton;
  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *v13 = v0;
  v13[1] = sub_10001811C;
  v14 = *(v0 + 176);

  return TaskGroup.Iterator.next(isolation:)(v0 + 56, 0, 0, v14);
}

uint64_t sub_10001811C()
{

  return _swift_task_switch(sub_100018218, 0, 0);
}

uint64_t sub_100018218(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = 0;
    v57 = *(v4 + 56);
    v8 = v5 + 64;
    v7 = *(v5 + 64);
    v56 = v8;
    v9 = -1;
    v10 = -1 << *(v8 - 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & v7;
    v12 = (63 - v10) >> 6;
    v13 = *(v4 + 208);
    for (i = v12; ; v12 = i)
    {
      v59 = v13;
      if (!v11)
      {
        if (v12 <= v6 + 1)
        {
          v15 = v6 + 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v48 = *(v4 + 160);
            v49 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
            (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
            v11 = 0;
            goto LABEL_17;
          }

          v11 = *(v56 + 8 * v14);
          ++v6;
          if (v11)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      v14 = v6;
LABEL_16:
      v18 = *(v4 + 152);
      v17 = *(v4 + 160);
      v20 = *(v4 + 128);
      v19 = *(v4 + 136);
      v21 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v22 = v21 | (v14 << 6);
      (*(v19 + 16))(v18, *(v57 + 48) + *(v19 + 72) * v22, v20, a4);
      v23 = *(*(v57 + 56) + 8 * v22);
      v24 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
      v25 = *(v24 + 48);
      (*(v19 + 32))(v17, v18, v20);
      *(v17 + v25) = v23;
      (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
      swift_errorRetain();
      v16 = v14;
LABEL_17:
      v26 = *(v4 + 168);
      sub_10001C608(*(v4 + 160), v26);
      v27 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {

        *(v4 + 208) = v59;
        v51 = swift_task_alloc();
        *(v4 + 224) = v51;
        *v51 = v4;
        v51[1] = sub_10001811C;
        a4 = *(v4 + 176);
        a1 = v4 + 56;
        a2 = 0;
        a3 = 0;

        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      v28 = *(v4 + 144);
      v29 = *(*(v4 + 168) + *(v27 + 48));
      (*(*(v4 + 136) + 32))(v28);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 64) = v59.i64[0];
      a1 = sub_10007B6C4(v28);
      v31 = *(v59.i64[0] + 16);
      v32 = (a2 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_38;
      }

      v35 = a2;
      if (*(v59.i64[0] + 24) >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = a1;
          sub_10007F178();
          a1 = v50;
        }
      }

      else
      {
        v36 = *(v4 + 144);
        sub_10007C614(v34, isUniquelyReferenced_nonNull_native);
        a1 = sub_10007B6C4(v36);
        if ((v35 & 1) != (v37 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v38 = *(v4 + 64);
      v40 = *(v4 + 136);
      v39 = *(v4 + 144);
      v41 = *(v4 + 128);
      if (v35)
      {
        *(v38[7] + 8 * a1) = v29;

        a1 = (*(v40 + 8))(v39, v41);
        v13 = vdupq_n_s64(v38);
        v6 = v16;
      }

      else
      {
        v42 = v16;
        v38[(a1 >> 6) + 8] |= 1 << a1;
        v44 = *(v40 + 16);
        v43 = v40 + 16;
        v45 = a1;
        v44(v38[6] + *(v43 + 56) * a1, v39, v41);
        *(v38[7] + 8 * v45) = v29;

        a1 = (*(v43 - 8))(v39, v41);
        v46 = v38[2];
        v33 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v33)
        {
          goto LABEL_39;
        }

        v38[2] = v47;
        v13 = vdupq_n_s64(v38);
        v6 = v42;
      }
    }
  }

  v52 = *(v4 + 216);
  v53 = *(v4 + 72);
  (*(*(v4 + 184) + 8))(*(v4 + 192), *(v4 + 176), a3, a4);
  *v53 = v52;

  v54 = *(v4 + 8);

  return v54();
}

uint64_t sub_1000187B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000187DC, 0, 0);
}

uint64_t sub_1000187DC()
{
  v12 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = v2;
  }

  else
  {
    type metadata accessor for Configuration();
    v5 = static Configuration.cloudKitContainer.getter();
    v6 = [v5 privateCloudDatabase];

    v7 = objc_allocWithZone(CKOperationGroup);
    v3 = v6;
    v4 = [v7 init];
    v11[0] = v4;
    sub_100068834(v11, v3, 25);
  }

  v0[6] = v3;
  v0[7] = v4;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_100018930;
  v9 = v0[5];

  return sub_10001C7D4(v9, v3, v4);
}

uint64_t sub_100018930(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100018A30, 0, 0);
}

uint64_t sub_100018A30()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100018AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10001DA7C(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000D620(v10, &qword_1000AAD30, &qword_100085540);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100018CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100018D90, 0, 0);
}

uint64_t sub_100018D90()
{
  v20 = v0;
  v1 = *(v0 + 24);

  v3 = sub_10004DF38(v2, v1);
  *(v0 + 80) = v3;
  *(v0 + 88) = type metadata accessor for XPCServer();
  *(v0 + 96) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v6)
  {
    v18 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = Set.description.getter();
    v14 = sub_100035120(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing all local events for homes %s", v10, 0xCu);
    sub_10000D330(v11);

    v15 = *(v8 + 8);
    v15(v18, v9);
  }

  else
  {

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  *(v0 + 104) = v15;
  sub_10000D224(*(v0 + 40), *(*(v0 + 40) + 24));
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_100019028;

  return sub_100077E7C(v3);
}

uint64_t sub_100019028()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000191E0;
  }

  else
  {
    v2 = sub_100019158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100019158()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000807D0(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000191E0()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to remove local events: %@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v6 = *(v0 + 16);
  *v6 = sub_1000807D0(_swiftEmptyArrayStorage);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100019398(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10001948C;

  return v5(v2 + 16);
}

uint64_t sub_10001948C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000195BC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10002F2E4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100019758(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 416) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_100019950, 0, 0);
}

uint64_t sub_100019950()
{
  v66 = v0;
  super_class = v0[3].super_class;
  if (super_class)
  {
    v2 = static Configuration.TargetCloudKitZone.allCases.getter();
    v0[3].receiver = _swiftEmptyArrayStorage;
    v3 = *(super_class + 2);
    sub_1000179DC(v3);
    v52 = v3;
    if (v3)
    {
      v4 = v0[13].super_class;
      v5 = v0[8].super_class;
      receiver = v0[6].receiver;
      type metadata accessor for XPCServer();
      v7 = 0;
      v63 = *(v2 + 16);
      v54 = *(v4 + 2);
      v60 = (v4 + 8);
      v53 = (v5 + 8);
      v62 = enum case for Configuration.TargetCloudKitZone.default(_:);
      v61 = enum case for Configuration.TargetCloudKitZone.energyKit(_:);
      while (1)
      {
        v56 = v0[14].super_class;
        v58 = v0[14].receiver;
        v55 = v7;
        v8 = v0[13].receiver;
        v54();
        sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
        static LoggedObject.logger.getter();
        (v54)(v58, v56, v8);
        v9 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v10 = os_log_type_enabled(v9, v57);
        v11 = v0[14].receiver;
        v12 = v0[12].super_class;
        v13 = v0[13].receiver;
        v14 = v0[8].receiver;
        if (v10)
        {
          v51 = v0[12].super_class;
          v15 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v64 = v50;
          *v15 = 141558274;
          *(v15 + 4) = 1752392040;
          *(v15 + 12) = 2080;
          sub_10001DA10(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          log = v9;
          v49 = v14;
          v16 = dispatch thunk of CustomStringConvertible.description.getter();
          v18 = v17;
          v59 = *v60;
          (*v60)(v11, v13);
          v19 = sub_100035120(v16, v18, &v64);

          *(v15 + 14) = v19;
          _os_log_impl(&_mh_execute_header, log, v57, "Clearing all events for home: %{mask.hash}s", v15, 0x16u);
          sub_10000D330(v50);

          result = (*v53)(v51, v49);
        }

        else
        {

          v59 = *v60;
          (*v60)(v11, v13);
          result = (*v53)(v12, v14);
        }

        if (v63)
        {
          break;
        }

LABEL_4:
        v7 = v55 + 1;
        v59(v0[14].super_class, v0[13].receiver);
        if (v55 + 1 == v52)
        {
          goto LABEL_23;
        }
      }

      v21 = 0;
      while (v21 < *(v2 + 16))
      {
        v22 = v0[7].receiver;
        v23 = v0[7].super_class;
        v24 = v0[5].super_class;
        v25 = receiver[2];
        v25(v23, v2 + ((*(receiver + 80) + 32) & ~*(receiver + 80)) + receiver[9] * v21, v24);
        v25(v22, v23, v24);
        v26 = (receiver[11])(v22, v24);
        if (v26 == v62)
        {
          static EventRecord.recordZoneID(forHomeIdentifier:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v0[3].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else if (v26 != v61)
        {
          v37 = v0[7].super_class;
          v38 = v0[6].super_class;
          v39 = v0[5].super_class;
          v64 = 0;
          v65 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v64 = 0xD000000000000012;
          v65 = 0x8000000100089010;
          v25(v38, v37, v39);
          v40._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v40);

          return _assertionFailure(_:_:file:line:flags:)();
        }

        ++v21;
        result = (receiver[1])(v0[7].super_class, v0[5].super_class);
        if (v63 == v21)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
      v41 = v0[4].receiver;

      v0[15].receiver = v0[3].receiver;
      v42 = type metadata accessor for EventUploadSubtaskLogEvent();
      v43 = objc_allocWithZone(v42);
      v44 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
      type metadata accessor for MetricsManager();
      *&v43[v44] = static MetricsManager.sharedInstance.getter();
      v43[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
      *&v43[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = 0;
      v43[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = 0;
      v0[2].receiver = v43;
      v0[2].super_class = v42;
      v0[15].super_class = objc_msgSendSuper2(v0 + 2, "init");
      sub_10000D224(v41, v41[3]);

      v46 = sub_1000195BC(v45);
      v0[16].receiver = v46;

      v47 = swift_task_alloc();
      v0[16].super_class = v47;
      *v47 = v0;
      *(v47 + 1) = sub_10001A168;

      return sub_100077E7C(v46);
    }
  }

  else
  {
    v0[18].receiver = type metadata accessor for XPCServer();
    v0[18].super_class = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Clearing all events for all homes", v29, 2u);
    }

    v30 = v0[11].super_class;
    v31 = v0[8].receiver;
    v32 = v0[8].super_class;

    v33 = *(v32 + 1);
    v0[19].receiver = v33;
    v33(v30, v31);
    v34 = swift_task_alloc();
    v0[19].super_class = v34;
    *v34 = v0;
    *(v34 + 1) = sub_10001AD34;
    v36 = v0[4].super_class;
    v35 = v0[5].receiver;

    return sub_100067844(v36, v35);
  }

  return result;
}

uint64_t sub_10001A168(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_10001A7A4;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_10001A2B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A2B4()
{
  v30 = v0;
  v1 = *(v0 + 248);
  *&v1[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = *(v0 + 280);
  sub_100031AD8();

  v2 = *(v0 + 240);
  *(v0 + 368) = v2;
  if (*(v0 + 416))
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
      static LoggedObject.logger.getter();

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 152);
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      if (v5)
      {
        v28 = *(v0 + 152);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v29 = v10;
        *v9 = 136446210;
        sub_10001C4A8();
        v11 = Array.description.getter();
        v13 = sub_100035120(v11, v12, &v29);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v3, v4, "Deleting home zones: %{public}s", v9, 0xCu);
        sub_10000D330(v10);

        v14 = *(v7 + 8);
        v14(v28, v8);
      }

      else
      {

        v14 = *(v7 + 8);
        v14(v6, v8);
      }

      *(v0 + 392) = v14;
      v22 = swift_task_alloc();
      *(v0 + 400) = v22;
      *v22 = v0;
      v22[1] = sub_10001BD80;
      v23 = *(v0 + 72);
      v24 = *(v0 + 80);

      return sub_100067F30(v2, v23, v24);
    }

    v15 = (v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v26)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "No home zones to delete";
      goto LABEL_15;
    }
  }

  else
  {
    v15 = (v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not deleting any cloud zones";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v16, v17, v21, v20, 2u);
    }
  }

  (*(v19 + 8))(*v15, *(v0 + 128));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10001A7A4()
{
  v41 = v0;
  v1 = type metadata accessor for XPCServer();
  v2 = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring error removing events from the database: %{public}@", v5, 0xCu);
    sub_10000D620(v6, &unk_1000AB7D0, &qword_100085510);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);

  (*(v12 + 8))(v10, v11);
  sub_100031DC0(v8);

  v13 = *(v0 + 240);
  *(v0 + 368) = v13;
  if (*(v0 + 416))
  {
    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      *(v0 + 376) = v1;
      *(v0 + 384) = v2;
      static LoggedObject.logger.getter();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 152);
      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      if (v16)
      {
        v39 = *(v0 + 152);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v40 = v21;
        *v20 = 136446210;
        sub_10001C4A8();
        v22 = Array.description.getter();
        v24 = sub_100035120(v22, v23, &v40);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v14, v15, "Deleting home zones: %{public}s", v20, 0xCu);
        sub_10000D330(v21);

        v25 = *(v18 + 8);
        v25(v39, v19);
      }

      else
      {

        v25 = *(v18 + 8);
        v25(v17, v19);
      }

      *(v0 + 392) = v25;
      v33 = swift_task_alloc();
      *(v0 + 400) = v33;
      *v33 = v0;
      v33[1] = sub_10001BD80;
      v34 = *(v0 + 72);
      v35 = *(v0 + 80);

      return sub_100067F30(v13, v34, v35);
    }

    v26 = (v0 + 160);

    static LoggedObject.logger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 136);
    if (v37)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "No home zones to delete";
      goto LABEL_17;
    }
  }

  else
  {
    v26 = (v0 + 168);

    static LoggedObject.logger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 136);
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Not deleting any cloud zones";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v27, v28, v32, v31, 2u);
    }
  }

  (*(v30 + 8))(*v26, *(v0 + 128));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10001AD34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001AF28, 0, 0);
  }
}

uint64_t sub_10001AF28()
{
  receiver = v0[20].receiver;
  if (receiver >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[20].receiver + 32;
  do
  {
    if ((receiver & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4);
    }

    v7 = v6;
    ++v4;
    v8 = [v6 zoneID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);
LABEL_11:

  v0[20].super_class = _swiftEmptyArrayStorage;
  v9 = v0[4].receiver;
  v10 = type metadata accessor for EventUploadSubtaskLogEvent();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v11[v12] = static MetricsManager.sharedInstance.getter();
  v11[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
  *&v11[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = 0;
  v11[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = 0;
  v0[1].receiver = v11;
  v0[1].super_class = v10;
  v0[21].receiver = objc_msgSendSuper2(v0 + 1, "init");
  sub_10000D224(v9, v9[3]);
  v13 = swift_task_alloc();
  v0[21].super_class = v13;
  *v13 = v0;
  *(v13 + 1) = sub_10001B164;

  return sub_10007257C();
}

uint64_t sub_10001B164(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_10001B77C;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_10001B28C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001B28C()
{
  v30 = v0;
  v1 = *(v0 + 336);
  *&v1[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = *(v0 + 360);
  sub_100031AD8();

  v2 = *(v0 + 328);
  *(v0 + 368) = v2;
  if (*(v0 + 416))
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
      static LoggedObject.logger.getter();

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 152);
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      if (v5)
      {
        v28 = *(v0 + 152);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v29 = v10;
        *v9 = 136446210;
        sub_10001C4A8();
        v11 = Array.description.getter();
        v13 = sub_100035120(v11, v12, &v29);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v3, v4, "Deleting home zones: %{public}s", v9, 0xCu);
        sub_10000D330(v10);

        v14 = *(v7 + 8);
        v14(v28, v8);
      }

      else
      {

        v14 = *(v7 + 8);
        v14(v6, v8);
      }

      *(v0 + 392) = v14;
      v22 = swift_task_alloc();
      *(v0 + 400) = v22;
      *v22 = v0;
      v22[1] = sub_10001BD80;
      v23 = *(v0 + 72);
      v24 = *(v0 + 80);

      return sub_100067F30(v2, v23, v24);
    }

    v15 = (v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v26)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "No home zones to delete";
      goto LABEL_15;
    }
  }

  else
  {
    v15 = (v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not deleting any cloud zones";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v16, v17, v21, v20, 2u);
    }
  }

  (*(v19 + 8))(*v15, *(v0 + 128));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10001B77C()
{
  v39 = v0;
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ignoring error clearing local database: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 336);
  v8 = *(v0 + 304);
  v9 = *(v0 + 176);
  v10 = *(v0 + 128);

  v8(v9, v10);
  sub_100031DC0(v6);

  v11 = *(v0 + 328);
  *(v0 + 368) = v11;
  if (*(v0 + 416))
  {
    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
      static LoggedObject.logger.getter();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      if (v14)
      {
        v37 = *(v0 + 152);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38 = v19;
        *v18 = 136446210;
        sub_10001C4A8();
        v20 = Array.description.getter();
        v22 = sub_100035120(v20, v21, &v38);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v12, v13, "Deleting home zones: %{public}s", v18, 0xCu);
        sub_10000D330(v19);

        v23 = *(v16 + 8);
        v23(v37, v17);
      }

      else
      {

        v23 = *(v16 + 8);
        v23(v15, v17);
      }

      *(v0 + 392) = v23;
      v31 = swift_task_alloc();
      *(v0 + 400) = v31;
      *v31 = v0;
      v31[1] = sub_10001BD80;
      v32 = *(v0 + 72);
      v33 = *(v0 + 80);

      return sub_100067F30(v11, v32, v33);
    }

    v24 = (v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 136);
    if (v35)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "No home zones to delete";
      goto LABEL_17;
    }
  }

  else
  {
    v24 = (v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 136);
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Not deleting any cloud zones";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v25, v26, v30, v29, 2u);
    }
  }

  (*(v28 + 8))(*v24, *(v0 + 128));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10001BD80()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10001C054;
  }

  else
  {

    v2 = sub_10001BE9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001BE9C()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished clearing events", v3, 2u);
  }

  (*(v0 + 392))(*(v0 + 144), *(v0 + 128));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001C054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C164(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10001C188, 0, 0);
}

uint64_t sub_10001C188()
{
  v12 = v0;
  type metadata accessor for Configuration();
  v1 = static Configuration.cloudKitContainer.getter();
  v2 = [v1 privateCloudDatabase];
  *(v0 + 32) = v2;

  v3 = objc_allocWithZone(CKOperationGroup);
  v4 = v2;
  v5 = [v3 init];
  *(v0 + 40) = v5;
  v11[0] = v5;
  sub_100068834(v11, v4, 25);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10001C2C4;
  v7 = *(v0 + 64);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_100019758(v9, v7, v8, v4, v5);
}

uint64_t sub_10001C2C4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10001C440;
  }

  else
  {
    v2 = sub_10001C3D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001C3D8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C440()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10001C4A8()
{
  result = qword_1000AC3A0;
  if (!qword_1000AC3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AC3A0);
  }

  return result;
}

uint64_t sub_10001C4F4()
{
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10001C544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D130;

  return sub_100018CC0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_10001C608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB3C0, &qword_100086268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C678()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C6CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_1000187B8(a1, v4, v5, v6, v7, v8);
}

id sub_10001C794(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_10001C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = type metadata accessor for UUID();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10001C8EC, 0, 0);
}

void sub_10001C8EC()
{
  v47 = v0;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v1 = v0[17];
  v2 = v0[13];
  v3 = *(v2 + 16);
  sub_10000CED0(&qword_1000AB3E0, &qword_1000862B0);
  Dictionary.reserveCapacity(_:)(v3);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = v0[4];
  v9 = (63 - v6) >> 6;
  v44 = v1;
  v45 = v2;
  v40 = (v1 + 40);

  v10 = 0;
  v41 = v9;
  v42 = v2 + 56;
  v43 = v0;
  while (1)
  {
    v0[26] = v8;
    if (!v7)
    {
      break;
    }

    v11 = v10;
LABEL_11:
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[16];
    v15 = *(v44 + 72);
    (*(v44 + 16))(v12, *(v45 + 48) + v15 * (__clz(__rbit64(v7)) | (v11 << 6)), v14);
    v16 = static EventRecord.energyKitZoneID(forHomeIdentifier:)();
    v17 = *(v44 + 32);
    v17(v13, v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v8;
    v19 = sub_10007B79C(v16);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_10007F3F8();
        v19 = v31;
        v8 = v46;
      }
    }

    else
    {
      sub_10007C9F4(v24, isUniquelyReferenced_nonNull_native);
      v8 = v46;
      v19 = sub_10007B79C(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        sub_10001C4A8();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v0 = v43;
    v27 = v43[24];
    v28 = v43[16];
    if (v25)
    {
      (*v40)(v8[7] + v19 * v15, v27, v28);
    }

    else
    {
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + 8 * v19) = v16;
      v17(v8[7] + v19 * v15, v27, v28);
      v29 = v8[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_32;
      }

      v8[2] = v30;
    }

    v10 = v11;
    v9 = v41;
    v4 = v42;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v0[4] = v8;

  v0[5] = &_swiftEmptyDictionarySingleton;
  v32 = *(v45 + 16);
  v0[27] = sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  Dictionary.reserveCapacity(_:)(v32);
  v33 = v8[2];
  if (!v33)
  {
    goto LABEL_23;
  }

  v34 = sub_100032B4C(v8[2], 0);
  v35 = sub_1000334AC(&v46, v34 + 4, v33, v8);
  v36 = v46;

  sub_1000123C4(v36);
  if (v35 != v33)
  {
    __break(1u);
LABEL_23:
    v34 = _swiftEmptyArrayStorage;
  }

  v0[28] = v34;
  v37 = swift_task_alloc();
  v0[29] = v37;
  *v37 = v0;
  v37[1] = sub_10001CD04;
  v38 = v0[14];
  v39 = v0[15];

  sub_100067F30(v34, v38, v39);
}

uint64_t sub_10001CD04()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10001CEEC;
  }

  else
  {

    v2 = sub_10001CE20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001CE20()
{

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_10001CEEC()
{
  v1 = v0[30];

  v0[6] = v1;
  v2 = v0 + 6;
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v121 = v0 + 5;
  v122 = v0;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = v0[17];
    v4 = v0[13];

    Dictionary.reserveCapacity(_:)(*(v4 + 16));
    v5 = -1;
    v6 = -1 << *(v4 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v4 + 56);
    v113 = (63 - v6) >> 6;
    v116 = (v3 + 8);

    v8 = 0;
    while (v7)
    {
      v9 = v0[13];
LABEL_16:
      v12 = v0[18];
      v11 = v0[19];
      v13 = v0[16];
      v14 = v0[17];
      v15 = *(v14 + 72);
      v120 = *(v14 + 16);
      v120(v11, *(v9 + 48) + v15 * (__clz(__rbit64(v7)) | (v8 << 6)), v13);
      (*(v14 + 32))(v12, v11, v13);
      swift_errorRetain();
      v16 = v0[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_10007B6C4(v12);
      v20 = v16[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_85;
      }

      v24 = v19;
      if (v16[3] >= v23)
      {
        v27 = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v18;
          sub_10007F178();
          v18 = v34;
        }
      }

      else
      {
        v25 = v122[18];
        sub_10007C614(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_10007B6C4(v25);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_79;
        }

        v27 = v121;
      }

      v7 &= v7 - 1;
      v28 = v122[30];
      v29 = v122[18];
      v30 = v122[16];
      if (v24)
      {
        *(v16[7] + 8 * v18) = v28;

        (*v116)(v29, v30);
      }

      else
      {
        v16[(v18 >> 6) + 8] |= 1 << v18;
        v31 = v18;
        v120(v16[6] + v18 * v15, v29, v30);
        *(v16[7] + 8 * v31) = v28;
        (*v116)(v29, v30);
        v32 = v16[2];
        v22 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v22)
        {
          goto LABEL_86;
        }

        v16[2] = v33;
      }

      *v27 = v16;
      v0 = v122;
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v113)
      {

        goto LABEL_26;
      }

      v9 = v0[13];
      v7 = *(v9 + 8 * v10 + 56);
      ++v8;
      if (v7)
      {
        v8 = v10;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v119 = v0[2];
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_10001D9EC(v119, 1);
      goto LABEL_5;
    }

    v110 = v0[26];
    v67 = v0[17];
    Dictionary.reserveCapacity(_:)(*(v119 + 16));
    v68 = v119 + 64;
    v69 = -1;
    v70 = -1 << *(v119 + 32);
    if (-v70 < 64)
    {
      v69 = ~(-1 << -v70);
    }

    v71 = v69 & *(v119 + 64);
    v72 = (63 - v70) >> 6;
    v109 = (v67 + 8);

    v73 = 0;
    v112 = v72;
    if (!v71)
    {
LABEL_53:
      while (1)
      {
        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_83;
        }

        if (v74 >= v72)
        {
          sub_10001D9EC(v119, 2);

          goto LABEL_26;
        }

        v71 = *(v68 + 8 * v74);
        ++v73;
        if (v71)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v74 = v73;
LABEL_56:
      v75 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v76 = (v74 << 9) | (8 * v75);
      v77 = *(*(v119 + 48) + v76);
      v78 = *(*(v119 + 56) + v76);
      v2[1] = v78;
      swift_errorRetain();
      v118 = v78;
      swift_errorRetain();
      type metadata accessor for CKError(0);
      v79 = v77;
      v115 = v79;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_63;
      }

      v80 = v2[2];
      v2[3] = v80;
      sub_10001DA10(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);
      _BridgedStoredNSError.code.getter();
      if (v2[4] == 26)
      {

LABEL_61:
        v73 = v74;
        v72 = v112;
        if (!v71)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2[5] = v80;
        _BridgedStoredNSError.code.getter();

        v79 = v115;
        if (v2[6] == 28)
        {

          goto LABEL_61;
        }

LABEL_63:
        if (!*(v0[26] + 16))
        {
          goto LABEL_88;
        }

        v81 = sub_10007B79C(v79);
        if ((v82 & 1) == 0)
        {
          goto LABEL_89;
        }

        v84 = v0[20];
        v83 = v0[21];
        v85 = v0[16];
        v86 = v0[17];
        v87 = v0;
        v88 = *(v86 + 16);
        v89 = *(v86 + 72);
        v88(v83, *(v110 + 56) + v89 * v81, v85);
        v88(v84, v83, v85);
        swift_errorRetain();
        v90 = v87[5];
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v92 = sub_10007B6C4(v84);
        v94 = v90[2];
        v95 = (v93 & 1) == 0;
        v22 = __OFADD__(v94, v95);
        v96 = v94 + v95;
        if (v22)
        {
          goto LABEL_90;
        }

        v97 = v93;
        if (v90[3] >= v96)
        {
          if ((v91 & 1) == 0)
          {
            v108 = v92;
            sub_10007F178();
            v92 = v108;
          }
        }

        else
        {
          v98 = v122[20];
          sub_10007C614(v96, v91);
          v92 = sub_10007B6C4(v98);
          if ((v97 & 1) != (v99 & 1))
          {
            goto LABEL_79;
          }
        }

        v100 = v122[20];
        v111 = v122[21];
        v101 = v122[16];
        if (v97)
        {
          *(v90[7] + 8 * v92) = v118;

          v102 = *v109;
          (*v109)(v100, v101);
          v102(v111, v101);
        }

        else
        {
          v90[(v92 >> 6) + 8] |= 1 << v92;
          v103 = v90[6] + v92 * v89;
          v104 = v92;
          v88(v103, v100, v101);
          *(v90[7] + 8 * v104) = v118;

          v105 = *v109;
          (*v109)(v100, v101);
          v105(v111, v101);
          v106 = v90[2];
          v22 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v22)
          {
            goto LABEL_92;
          }

          v90[2] = v107;
        }

        v0 = v122;
        *v121 = v90;
        v73 = v74;
        v68 = v119 + 64;
        v72 = v112;
        if (!v71)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v37 = v0[17];
  v38 = v0[13];

  Dictionary.reserveCapacity(_:)(*(v38 + 16));
  v39 = -1;
  v40 = -1 << *(v38 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & *(v38 + 56);
  v42 = (63 - v40) >> 6;
  v114 = (v37 + 8);

  v43 = 0;
  while (v41)
  {
    v44 = v0[13];
LABEL_40:
    v47 = v0[22];
    v46 = v0[23];
    v48 = v0[16];
    v49 = v0[17];
    v50 = *(v49 + 72);
    v117 = *(v49 + 16);
    v117(v46, *(v44 + 48) + v50 * (__clz(__rbit64(v41)) | (v43 << 6)), v48);
    (*(v49 + 32))(v47, v46, v48);
    sub_10001DA58(v119, 0);
    v51 = v0[5];
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_10007B6C4(v47);
    v55 = v51[2];
    v56 = (v54 & 1) == 0;
    v22 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (v22)
    {
      goto LABEL_87;
    }

    v58 = v54;
    if (v51[3] >= v57)
    {
      if ((v52 & 1) == 0)
      {
        v66 = v53;
        sub_10007F178();
        v53 = v66;
      }
    }

    else
    {
      v59 = v122[22];
      sub_10007C614(v57, v52);
      v53 = sub_10007B6C4(v59);
      if ((v58 & 1) != (v60 & 1))
      {
LABEL_79:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v41 &= v41 - 1;
    v61 = v122[22];
    v62 = v122[16];
    if (v58)
    {
      *(v51[7] + 8 * v53) = v119;

      (*v114)(v61, v62);
    }

    else
    {
      v51[(v53 >> 6) + 8] |= 1 << v53;
      v63 = v53;
      v117(v51[6] + v53 * v50, v61, v62);
      *(v51[7] + 8 * v63) = v119;
      (*v114)(v61, v62);
      v64 = v51[2];
      v22 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v22)
      {
        goto LABEL_91;
      }

      v51[2] = v65;
    }

    v0 = v122;
    *v121 = v51;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      sub_10001D9EC(v119, 0);

LABEL_26:

      v35 = v0[5];

      v36 = v0[1];

      v36(v35);
      return;
    }

    v44 = v0[13];
    v41 = *(v44 + 8 * v45 + 56);
    ++v43;
    if (v41)
    {
      v43 = v45;
      goto LABEL_40;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}