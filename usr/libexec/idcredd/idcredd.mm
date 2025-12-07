Swift::Int sub_1000018F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000196C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_1000019B0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*a1)
  {
    *a3 = v12;
    return v12;
  }

  v14 = v9;
  if ((*(a2 + 16) & 1) == 0)
  {
    v15 = sub_10000217C();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    *a1 = v15;
    *a3 = v15;
    v16 = v15;
    v12 = 0;
    return v12;
  }

  v15 = sub_10000266C();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  (*(v8 + 104))(v11, enum case for DIPError.Code.internalError(_:), v14);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

id sub_100001BD0()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v4 = *(v32 - 1);
  __chkstk_darwin(v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSManagedObjectModel);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v11;
      v16 = v15;
      v34 = v15;
      *v14 = 136446210;
      v17 = URL.absoluteString.getter();
      v19 = sub_10010150C(v17, v18, &v34);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully loaded Core Data model at path %{public}s", v14, 0xCu);
      sub_100005090(v16);
      v11 = v31;
    }

    (*(v4 + 8))(v6, v32);
  }

  else
  {
    v32 = "makeOnDiskPersistentContainer()";
    v33 = *(v1 + 104);
    v33(v3, enum case for DIPError.Code.filesystemError(_:), v0);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v31 = 0;
    v20 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1001AA160;
    v23 = v22 + v21;
    v24 = (v23 + v20[14]);
    v25 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v26 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v26 - 8) + 104))(v23, v25, v26);
    v27 = URL.absoluteString.getter();
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = v27;
    v24[1] = v28;
    sub_10010C6F8(v22);
    swift_setDeallocating();
    sub_100005128(v23);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v33(v3, enum case for DIPError.Code.internalError(_:), v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    v11 = v31;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v11;
}

char *sub_10000217C()
{
  v2 = type metadata accessor for DIPError.Code();
  v11 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for DIPError();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  result = sub_100002C1C();
  if (!v1)
  {
    v9[3] = v5;
    v10 = result;
    sub_100004A78(result, v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, *(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_urlFileProtection));
    return v10;
  }

  return result;
}

id sub_10000266C()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DIPError.Code();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v1;
    v16 = v4;
    v17 = v15;
    aBlock[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10010150C(*(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "Initializing in-memory Core Data database %{public}s", v14, 0xCu);
    sub_100005090(v17);
    v4 = v16;
    v2 = v32;

    v6 = v33;
  }

  (*(v8 + 8))(v10, v7);
  v18 = sub_100001BD0();
  if (!v2)
  {
    v19 = v18;
    v33 = v4;
    v20 = objc_allocWithZone(NSPersistentContainer);
    v21 = v19;
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 initWithName:v22 managedObjectModel:v21];

    v24 = [objc_allocWithZone(NSPersistentStoreDescription) init];
    [v24 setType:NSInMemoryStoreType];
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001AA180;
    *(v25 + 32) = v24;
    sub_1000050DC();
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v23 setPersistentStoreDescriptions:isa];

    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v3;
    aBlock[4] = sub_1000051D0;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003914;
    aBlock[3] = &unk_1001F4558;
    v30 = _Block_copy(aBlock);

    [v23 loadPersistentStoresWithCompletionHandler:v30];
    _Block_release(v30);
    swift_beginAccess();
    if (!*(v28 + 16))
    {

      return v23;
    }

    swift_willThrow();
    swift_errorRetain();

    v4 = v33;
  }

  v23 = 0x80000001001B1B30;
  (*(v35 + 104))(v6, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v23;
}

char *sub_100002C1C()
{
  v2 = v1;
  v3 = v0;
  v35 = type metadata accessor for DIPError.Code();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33 = v4;
    v16 = v15;
    v36 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10010150C(*(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), &v36);
    _os_log_impl(&_mh_execute_header, v11, v12, "Initializing on-disk Core Data database %{public}s", v14, 0xCu);
    sub_100005090(v16);
    v2 = v1;
    v4 = v33;

    v6 = v34;
  }

  (*(v8 + 8))(v10, v7);
  v17 = sub_100001BD0();
  if (v2)
  {
    v18 = "Error";
    (*(v4 + 104))(v6, enum case for DIPError.Code.internalError(_:), v35);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v19 = v17;
    v20 = objc_allocWithZone(NSPersistentContainer);
    v21 = v19;
    v22 = String._bridgeToObjectiveC()();
    v18 = [v20 initWithName:v22 managedObjectModel:v21];

    v23 = objc_allocWithZone(NSPersistentStoreDescription);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v27 = [v23 initWithURL:v25];

    [v27 setType:NSSQLiteStoreType];
    [v27 setShouldInferMappingModelAutomatically:1];
    [v27 setShouldMigrateStoreAutomatically:1];
    [v27 setTimeout:10.0];
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1001AA180;
    *(v28 + 32) = v27;
    sub_1000050DC();
    v29 = v27;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setPersistentStoreDescriptions:isa];
  }

  return v18;
}

uint64_t sub_1000030FC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(char *, void, uint64_t), uint64_t a6)
{
  v59 = a3;
  v60 = a6;
  v58 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLResourceValues();
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  __chkstk_darwin(v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v12;
  if (a2)
  {
    v58 = *(v13 + 104);
    v58(v15, enum case for DIPError.Code.coreDataErrorDiskContainerFailedToLoadPersistentStore(_:), v12);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v59 = 0x80000001001B1A40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_10:
    v58(v15, enum case for DIPError.Code.internalError(_:), v61);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v47 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    v48 = v60;
    swift_beginAccess();
    *(v48 + 16) = v47;
  }

  v52 = v8;
  v53 = a4;
  v50 = v11;
  v51 = v9;
  v25 = v21;
  v26 = v22;
  (*(v22 + 16))(v24, v59, v21);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.setResourceValues(_:)();
  v54 = v26;
  v55 = v25;
  v59 = v19;
  v49 = v24;
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v62[0] = 0;
  v30 = [v28 setResourceValue:v53 forKey:NSURLFileProtectionKey error:v62];

  if (!v30)
  {
    v44 = v62[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = v59;
    v46 = v49;
    v53 = "URL:urlFileProtection:)";
    v58 = *(v13 + 104);
    v58(v15, enum case for DIPError.Code.coreDataErrorDiskContainerFailedSetResourceValues(_:), v61);
    swift_errorRetain();
    v52 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v59 = 0x80000001001B1A40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v57 + 8))(v45, v56);
    (*(v54 + 8))(v46, v55);
    goto LABEL_10;
  }

  v31 = v62[0];
  v32 = v50;
  defaultLogger()();
  v33 = v58;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v62[0] = v37;
    *v36 = 136446210;
    v38 = [v33 name];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10010150C(v39, v41, v62);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Done initializing %{public}s database", v36, 0xCu);
    sub_100005090(v37);
  }

  (*(v51 + 8))(v32, v52);
  (*(v57 + 8))(v59, v56);
  return (*(v54 + 8))(v49, v55);
}

void sub_100003914(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000039A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v11);
  if (a2)
  {
    (*(v13 + 104))(&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.coreDataErrorMemoryContainerInitializationFailed(_:));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v14 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_beginAccess();
    *(a3 + 16) = v14;
  }

  else
  {
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10010150C(*(a4 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(a4 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), v21);
      _os_log_impl(&_mh_execute_header, v16, v17, "Done initializing %{public}s database", v18, 0xCu);
      sub_100005090(v19);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100003CEC()
{
  v1 = OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_modelURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AsyncCoreDataStore(uint64_t a1)
{
  result = qword_100200038;
  if (!qword_100200038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E40(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCoreDataStore.StoreType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncCoreDataStore.StoreType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000040CC()
{
  result = qword_100200170;
  if (!qword_100200170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200170);
  }

  return result;
}

uint64_t sub_100004128(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000041A0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004220@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100004264@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000429C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_100004398(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100004414()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100004488(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_1000044F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004520@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000045E4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000462C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004658(uint64_t a1)
{
  v2 = sub_1000047A4(&qword_100200190, type metadata accessor for URLFileProtection, &unk_1001AA418);
  v3 = sub_1000047A4(&qword_100200198, type metadata accessor for URLFileProtection, &unk_1001AA3B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000047A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000047F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100004864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000563C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000048A4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000048E0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004934(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000049A8(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100004A78(void *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v27 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v26 = (v10 + 16);
  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v11, v9, v6);
  v15 = v29;
  *(v14 + v12) = v29;
  v16 = v27;
  *(v14 + v13) = v27;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = sub_100004FB4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003914;
  aBlock[3] = &unk_1001F4508;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = v16;

  [v19 loadPersistentStoresWithCompletionHandler:v17];
  _Block_release(v17);
  v20 = v26;
  swift_beginAccess();
  if (!*v20)
  {
  }

  swift_willThrow();
  swift_errorRetain();

  (*(v23 + 104))(v25, enum case for DIPError.Code.internalError(_:), v24);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100004E70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004EB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004EF0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100004FB4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000030FC(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t sub_100005078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005090(void *a1)
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

unint64_t sub_1000050DC()
{
  result = qword_100200228;
  if (!qword_100200228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100200228);
  }

  return result;
}

uint64_t sub_100005128(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005190()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000534C(uint64_t a1, int a2)
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

uint64_t sub_10000536C(uint64_t result, int a2, int a3)
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

void sub_1000053F8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000563C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000056A4()
{
  qword_100200390 = 5653577;
  *algn_100200398 = 0xE300000000000000;
  qword_1002003A0 = 7105601;
  unk_1002003A8 = 0xE300000000000000;
  qword_1002003B0 = 958738;
}

void sub_1000056D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  type metadata accessor for TapToRadarService();
  v4 = static TapToRadarService.shared.getter();
  TapToRadarService.createDraft(_:processName:displayReason:)();
}

void sub_100005918(uint64_t a1, uint64_t a2)
{
  if (_isInternalBuild.getter())
  {
    v2 = !&class metadata base offset for TapToRadarService || &type metadata accessor for TapToRadarService == 0;
    v3 = v2 || &nominal type descriptor for TapToRadarService == 0;
    if (!v3 && &type metadata for TapToRadarService != 0)
    {
      v5 = [objc_allocWithZone(RadarDraft) init];
      v6 = String._bridgeToObjectiveC()();
      [v5 setTitle:v6];

      _StringGuts.grow(_:)(78);
      v7._countAndFlagsBits = 0xD00000000000003BLL;
      v7._object = 0x80000001001B1BB0;
      String.append(_:)(v7);
      v8._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0x6465726F7453202CLL;
      v9._object = 0xEF203A6873614820;
      String.append(_:)(v9);
      v10._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v10);

      v11 = String._bridgeToObjectiveC()();

      [v5 setProblemDescription:{v11, 0, 0xE000000000000000}];

      if (qword_1001FFFB0 != -1)
      {
        swift_once();
      }

      v12 = qword_1002003B0;
      v13 = objc_allocWithZone(RadarComponent);
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 initWithName:v14 version:v15 identifier:v12];

      [v5 setComponent:v16];
      [v5 setClassification:2];
      [v5 setReproducibility:6];
      [v5 setAutoDiagnostics:5];
      v17 = type metadata accessor for Date();
      v18 = *(v17 - 8);
      __chkstk_darwin(v17);
      v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v18 + 8))(v20, v17);
      [v5 setTimeOfIssue:isa];

      sub_1000056D8(v5, 0xD00000000000001ALL, 0x80000001001B1BF0);
    }
  }
}

uint64_t sub_100005CA8(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002003B8, &unk_1001AB850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005D10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100005E38, 0, 0);
}

uint64_t sub_100005E38(uint64_t a1)
{
  v2 = v1[2];
  if (v2 == 2)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Credential uses global binding policy", v11, 2u);
    }

    v13 = v1[8];
    v12 = v1[9];
    v14 = v1[7];

    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    v1[11] = v15;
    *v15 = v1;
    v15[1] = sub_100006214;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    if (v2 == 1)
    {
      defaultLogger()();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Credential uses anyBiometricOrPasscode policy", v5, 2u);
      }

      v6 = v1[10];
      v7 = v1[7];
      v8 = v1[8];

      (*(v8 + 8))(v6, v7);
      v17 = sub_100008ED4(0x40000001uLL, 1);
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xF000000000000000;
    }

    v20 = v1[1];

    return v20(v17, v19);
  }
}

uint64_t sub_100006214(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1000065DC;
  }

  else
  {
    v4 = sub_100006328;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100006328()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [*(v0 + 96) aclData];
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = *(v0 + 8);

    return v6(v3, v5);
  }

  else
  {
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 32));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.internalError(_:), *(v0 + 32));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000065DC()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006750(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100006810, 0, 0);
}

uint64_t sub_100006810()
{
  if (v0[2] == 2)
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_10000690C;

    return sub_100137B2C(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xF000000000000000);
  }
}

uint64_t sub_10000690C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return _swift_task_switch(sub_100006A70, 0, 0);
  }
}

uint64_t sub_100006A70()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[9];

    v5 = v0[1];

    return v5(v4, v1);
  }
}

uint64_t sub_100006C38()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100006D6C, 0, 0);
}

uint64_t sub_100006D6C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100006E18;

  return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_100006E18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_100007360;
  }

  else
  {
    v4 = sub_100006F2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100006F2C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [*(v0 + 96) aclType];
    if (v2 == 2)
    {
      v3 = (v0 + 72);
      defaultLogger()();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        v16 = *v3;
        v6 = 1;
        goto LABEL_17;
      }

      v6 = 1;
      v7 = "Device encryption scenario is phonePasscode";
    }

    else if (v2 == 1)
    {
      v3 = (v0 + 80);
      defaultLogger()();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v6 = 0;
      if (!os_log_type_enabled(v4, v5))
      {
        v16 = *v3;
        goto LABEL_17;
      }

      v7 = "Device encryption scenario is phoneBiometricBinding";
    }

    else
    {
      v3 = (v0 + 64);
      defaultLogger()();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        v16 = *v3;
        v6 = 4;
        goto LABEL_17;
      }

      v6 = 4;
      v7 = "Device encryption scenario is unknown (phone)";
    }

    v16 = *v3;
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v10, 2u);

LABEL_17:
    v11 = v4;
    v12 = *(v0 + 56);
    v13 = *(v0 + 48);

    (*(v12 + 8))(v16, v13);

    v14 = *(v0 + 8);

    return v14(v6);
  }

  v15 = *(*(v0 + 32) + 104);
  v15(*(v0 + 40), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 24));
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v15(*(v0 + 40), enum case for DIPError.Code.internalError(_:), *(v0 + 24));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100007360()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000074F0()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000760C, 0, 0);
}

uint64_t sub_10000760C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ACLFetcher payloadEncryptionKeyACL", v4, 2u);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_10000773C;

  return sub_100006C38();
}

uint64_t sub_10000773C(char a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_100007C4C;
  }

  else
  {
    *(v4 + 105) = a1;
    v5 = sub_100007864;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007864()
{
  v1 = *(v0 + 105);
  if (v1 >= 4)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    _StringGuts.grow(_:)(38);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD000000000000024;
    v6._object = 0x80000001001B1DF0;
    String.append(_:)(v6);
    *(v0 + 104) = 4;
    _print_unlocked<A, B>(_:_:)();
    (*(v4 + 104))(v3, enum case for DIPError.Code.idcsUnknownDeviceEncryptionScenario(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = *(v0 + 96);
  sub_100009278((*(v0 + 32) + 24), *(*(v0 + 32) + 48));
  v7 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  if (v2)
  {
LABEL_5:
    (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = v8;
  v12 = v7;

  v13 = *(v0 + 8);

  return v13(v12, v11);
}

uint64_t sub_100007C4C()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100007DC4()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100007F48, 0, 0);
}

uint64_t sub_100007F48(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ACLFetcher payloadAccessACL", v4, 2u);
  }

  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[15] = v8;
  *v8 = v1;
  v8[1] = sub_100008078;

  return sub_100006C38();
}

uint64_t sub_100008078(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_100008C90;
  }

  else
  {
    *(v4 + 169) = a1;
    v5 = sub_1000081A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000081A0()
{
  v1 = *(v0 + 169);
  if (v1 <= 1)
  {
    if (!*(v0 + 169))
    {
      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v2[1] = sub_100008614;

      return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
    }
  }

  else if (v1 != 2 && v1 != 3)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    _StringGuts.grow(_:)(38);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000024;
    v7._object = 0x80000001001B1DF0;
    String.append(_:)(v7);
    *(v0 + 168) = 4;
    _print_unlocked<A, B>(_:_:)();
    (*(v5 + 104))(v4, enum case for DIPError.Code.idcsUnknownDeviceEncryptionScenario(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_12:
    (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  v8 = *(v0 + 128);
  sub_100009278((*(v0 + 32) + 24), *(*(v0 + 32) + 48));
  v9 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  if (v8)
  {
    goto LABEL_12;
  }

  v12 = v10;
  v13 = v9;

  v14 = *(v0 + 8);

  return v14(v13, v12);
}

uint64_t sub_100008614(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[18] = a1;
  v5[19] = v2;

  if (v2)
  {
    v6 = sub_100008B08;
  }

  else
  {
    v5[20] = a2;
    v6 = sub_10000873C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000873C()
{
  v1 = v0[18];
  if (v0[20] < 1 || !*(v1 + 16))
  {

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[4];
  (*(v6 + 16))(v3, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v4, v3, v5);
  sub_100009278((v7 + 24), *(v7 + 48));
  v8 = UUID.data.getter();
  v10 = v9;
  v11 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  v13 = v12;
  (*(v0[9] + 8))(v0[11], v0[8]);
  sub_1000092BC(v8, v10);
  if (v2)
  {
    goto LABEL_6;
  }

  v16 = v0[1];

  return v16(v11, v13);
}

uint64_t sub_100008B08()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100008C90()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100008E18()
{

  sub_100005090((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_100008E7C()
{
  result = qword_100200200;
  if (!qword_100200200)
  {
    type metadata accessor for DIPError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200200);
  }

  return result;
}

const char *sub_100008ED4(SecAccessControlCreateFlags a1, char a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v8 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, a1, &error);
  if (v8)
  {
    v9 = v8;
    v10 = sub_10010CA84(_swiftEmptyArrayStorage);
    if (a2)
    {
      v11 = sub_10010CBB4(&off_1001F3E88);
      sub_10000A0D4(&unk_1001F3EA8, &qword_100200468, &qword_1001AAE98);
      v23 = sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
      *&v22 = v11;
      sub_100009268(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v10;
      sub_100121664(v21, 1852273519, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v10 = v20;
    }

    if (*(v10 + 16))
    {
      v13 = v9;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecAccessControlSetConstraints();
    }

    else
    {
    }

    v16 = SecAccessControlCopyData();
    if (v16)
    {
      v17 = v16;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      (*(v5 + 104))(v7, enum case for DIPError.Code.systemSecError(_:), v4);
      v15 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v15 = "presentmentACL(forPolicy:)";
    (*(v5 + 104))(v7, enum case for DIPError.Code.internalError(_:), v4);
    errorFromCFError(_:_:_:)();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
  }

  return v15;
}

_OWORD *sub_100009268(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100009278(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000092BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

SecAccessControlRef sub_100009310(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v8 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v8)
  {
    sub_100004E70(&qword_100200470, &qword_1001AAEC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AAE50;
    *(inited + 32) = 1818584175;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 1852273519;
    *(inited + 88) = 0xE400000000000000;
    sub_100004E70(&qword_100200478, &qword_1001AAEC8);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1001AA160;
    *(v10 + 32) = 0x6665726B63;
    *(v10 + 40) = 0xE500000000000000;
    *(v10 + 48) = a1;
    *(v10 + 56) = a2;
    sub_100009708(a1, a2);
    v11 = sub_10010CCC8(v10);
    swift_setDeallocating();
    sub_10000A0D4(v10 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 120) = sub_100004E70(&qword_100200488, &qword_1001AAED8);
    *(inited + 96) = v11;
    sub_10010CA84(inited);
    swift_setDeallocating();
    sub_100004E70(&qword_100200490, &unk_1001AAEE0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();
  }

  else
  {
    v13 = *(v5 + 104);
    v13(v7, enum case for DIPError.Code.internalError(_:), v4);
    errorFromCFError(_:_:_:)();
    (*(v5 + 8))(v7, v4);
    v13(v7, enum case for DIPError.Code.systemSecError(_:), v4);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100009708(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

SecAccessControlRef sub_10000975C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v24 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v24)
  {
    sub_100004E70(&qword_1002004A0, &qword_1001AAEF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AAE50;
    *(inited + 32) = 0x63666E2C6573;
    *(inited + 40) = 0xE600000000000000;
    sub_100004E70(&qword_100200478, &qword_1001AAEC8);
    v14 = swift_initStackObject();
    v22 = xmmword_1001AA160;
    *(v14 + 16) = xmmword_1001AA160;
    v23 = v4;
    *(v14 + 32) = 0x6665726B63;
    *(v14 + 40) = 0xE500000000000000;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;
    sub_100009708(a1, a2);
    v15 = sub_10010CCC8(v14);
    swift_setDeallocating();
    sub_10000A0D4(v14 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 48) = v15;
    *(inited + 56) = 0x61752C6C612C6573;
    *(inited + 64) = 0xE800000000000000;
    v16 = swift_initStackObject();
    *(v16 + 16) = v22;
    *(v16 + 32) = 0x6665726B63;
    *(v16 + 40) = 0xE500000000000000;
    *(v16 + 48) = a3;
    *(v16 + 56) = a4;
    sub_100009708(a3, a4);
    v17 = sub_10010CCC8(v16);
    swift_setDeallocating();
    sub_10000A0D4(v16 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 72) = v17;
    sub_10010CDE0(inited);
    swift_setDeallocating();
    sub_100004E70(&qword_1002004A8, &qword_1001AAEF8);
    swift_arrayDestroy();
    sub_100004E70(&qword_100200488, &qword_1001AAED8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = v24;
    SecAccessControlSetConstraints();

    return v19;
  }

  else
  {
    v21 = *(v10 + 104);
    v21(v12, enum case for DIPError.Code.internalError(_:), v9);
    errorFromCFError(_:_:_:)();
    (*(v10 + 8))(v12, v9);
    v21(v12, enum case for DIPError.Code.systemSecError(_:), v9);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v24;
  }
}

SecAccessControlRef sub_100009BF8()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = v3;
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ACLFetcher SES device encryption key ACL", v10, 2u);
    v3 = v17;
  }

  (*(v5 + 8))(v7, v4);
  error = 0;
  v11 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v11)
  {
    sub_10010CDF4(&off_1001F3EC8);
    sub_10000A0D4(&unk_1001F3EE8, &qword_100200498, &qword_1001AB600);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();
  }

  else
  {
    LODWORD(v17) = enum case for DIPError.Code.internalError(_:);
    v13 = *(v1 + 104);
    v13(v3);
    v16 = v13;
    errorFromCFError(_:_:_:)();
    (*(v1 + 8))(v3, v0);
    v15[2] = "error creating SecAccessControl";
    (v13)(v3, enum case for DIPError.Code.systemSecError(_:), v0);
    v15[4] = "ing global auth ACL";
    swift_errorRetain();
    v15[1] = sub_10002688C(_swiftEmptyArrayStorage);
    v15[5] = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v15[3] = 0xD00000000000001BLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (v16)(v3, v17, v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_10000A0D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004E70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ACLFetcher.PayloadProtectionScenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ACLFetcher.PayloadProtectionScenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A290()
{
  result = qword_1002004B0;
  if (!qword_1002004B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002004B0);
  }

  return result;
}

double sub_10000A2E4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_100099644(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100109790();
      v10 = v12;
    }

    sub_100009268((*(v10 + 56) + 32 * v8), a1);
    sub_10000A388(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10000A388(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000A53C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10000A6EC(uint64_t a1, unint64_t a2, char a3)
{
  v106 = a2;
  v107 = a1;
  v103 = type metadata accessor for DIPError.Code();
  v4 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v108 = v6;
  v109 = v7;
  v8 = __chkstk_darwin(v6);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v99 = &v95 - v11;
  v12 = __chkstk_darwin(v10);
  v100 = &v95 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = &v95 - v15;
  v16 = __chkstk_darwin(v14);
  v97 = &v95 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v95 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v95 - v22;
  __chkstk_darwin(v21);
  v25 = &v95 - v24;
  v26 = objc_opt_self();
  v27 = [v26 standardUserDefaults];
  v28._object = 0x80000001001B2030;
  v28._countAndFlagsBits = 0xD000000000000029;
  v29 = NSUserDefaults.internalBool(forKey:)(v28);

  v101 = v26;
  if (v29)
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      v36 = 0;
      goto LABEL_10;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Forcing shouldHaveOACL to false due to internal defaults setting", v32, 2u);
  }

  else
  {
    v33 = [v26 standardUserDefaults];
    v34._countAndFlagsBits = 0xD00000000000002ALL;
    v34._object = 0x80000001001B2060;
    v35 = NSUserDefaults.internalBool(forKey:)(v34);

    v36 = a3;
    if (!v35)
    {
      goto LABEL_11;
    }

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v30, v37))
    {
      v36 = 1;
      v25 = v23;
      goto LABEL_10;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v30, v37, "Forcing shouldHaveOACL to true due to internal defaults setting", v38, 2u);
    v25 = v23;
  }

  v36 = !v29;

LABEL_10:

  (*(v109 + 1))(v25, v108);
LABEL_11:
  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v36 & 1;
    _os_log_impl(&_mh_execute_header, v39, v40, "ACLMigrator migrateOACLOperation shouldHaveOACL? %{BOOL}d", v41, 8u);
  }

  v43 = v109 + 8;
  v42 = *(v109 + 1);
  v44 = v20;
  v45 = v108;
  v42(v44, v108);
  type metadata accessor for SecAccessControl(0);
  v46 = v105;
  v47 = static SecAccessControlRef.fromData(_:)();
  if (v46)
  {
    (*(v4 + 104))(v104, enum case for DIPError.Code.internalError(_:), v103);
LABEL_33:
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v109 = v43;
  v48 = v47;
  Constraints = SecAccessControlGetConstraints();
  v50 = v48;
  v105 = v48;
  if (!Constraints)
  {
    goto LABEL_28;
  }

  v50 = Constraints;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_28;
  }

  *&v112 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v51 = v112;
  v50 = v48;
  if (!v112)
  {
LABEL_28:

    v109 = "tion(for:shouldHaveOACL:)";
    v67 = *(v4 + 104);
    v68 = v103;
    v69 = v104;
    v67(v104, enum case for DIPError.Code.secAccessControlCannotGetConstraints(_:), v103);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_32:

    v67(v69, enum case for DIPError.Code.internalError(_:), v68);
    goto LABEL_33;
  }

  v114 = v112;
  v52 = *(v112 + 16);
  v96 = v112;
  if (!v52)
  {
    goto LABEL_29;
  }

  v53 = sub_100099644(1852273519, 0xE400000000000000);
  if ((v54 & 1) == 0)
  {

    goto LABEL_31;
  }

  sub_10000B558(*(v51 + 56) + 32 * v53, &v112);
  v55 = sub_100004E70(&qword_1002004B8, &qword_1001AAF98);
  v56 = swift_dynamicCast();
  v48 = v105;
  if ((v56 & 1) == 0)
  {
LABEL_29:

LABEL_31:
    v68 = v103;
    v69 = v104;
    v109 = "unable to get acl constraints";
    v67 = *(v4 + 104);
    v67(v104, enum case for DIPError.Code.idcsInvalidACL(_:), v103);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_32;
  }

  if (v36)
  {
    v57 = v96;
    v58 = v101;
    v59 = *&v111[0];
    if (*(v96 + 16))
    {
      v60 = sub_100099644(1818452335, 0xE400000000000000);
      if (v61)
      {
        sub_10000B558(*(v57 + 56) + 32 * v60, &v112);
        if (swift_dynamicCast())
        {

          v48 = v105;

          v62 = v97;
          defaultLogger()();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            v66 = "ACL contains oacl dictionary, no migration needed";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);

            v94 = v48;
LABEL_51:

            v42(v62, v45);
            sub_100009708(v107, v106);

            return;
          }

          goto LABEL_50;
        }
      }
    }

    v77 = v58;
    defaultLogger()();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Adding oacl operation to acl", v80, 2u);
      v45 = v108;
    }

    v42(v102, v45);
    *(&v113 + 1) = v55;
    *&v112 = v59;
    sub_100009268(&v112, v111);

    v81 = v114;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v81;
    sub_100121664(v111, 1818452335, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v114 = v110;
    v83 = [v77 standardUserDefaults];
    v84._countAndFlagsBits = 0xD000000000000021;
    v84._object = 0x80000001001B2130;
    v85 = NSUserDefaults.internalBool(forKey:)(v84);

    if (v85)
    {
      defaultLogger()();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Setting OACL to true due to internal defaults setting", v88, 2u);
      }

      v42(v100, v45);
      *(&v113 + 1) = &type metadata for Bool;
      LOBYTE(v112) = 1;
      sub_100009268(&v112, v111);
      v89 = v114;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v89;
      sub_100121664(v111, 1818452335, 0xE400000000000000, v90);
    }
  }

  else
  {
    v70 = v96;
    if (!*(v96 + 16) || (v71 = sub_100099644(1818452335, 0xE400000000000000), v48 = v105, (v72 & 1) == 0))
    {
      v112 = 0u;
      v113 = 0u;

      sub_10000B5B4(&v112);
      v62 = v99;
      defaultLogger()();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "ACL does not contain oacl dictionary, no migration needed";
        goto LABEL_49;
      }

LABEL_50:
      v94 = v63;
      v63 = v48;
      goto LABEL_51;
    }

    sub_10000B558(*(v70 + 56) + 32 * v71, &v112);
    sub_10000B5B4(&v112);
    v73 = v98;
    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Removing oacl operation from acl", v76, 2u);
    }

    v42(v73, v45);
    sub_10000A2E4(&v112, 1818452335, 0xE400000000000000);
    sub_10000B5B4(&v112);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v92 = v105;
  SecAccessControlSetConstraints();

  v93 = SecAccessControlCopyData();
  if (v93)
  {

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000B558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B5B4(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004C0, &unk_1001AB940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000B61C()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v37 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v42 = 0;
  v10 = SecAccessControlCreate();
  v11 = v10;
  v12 = v42;
  if (v10)
  {
    if (!v42)
    {
      v13 = sub_10010CA84(_swiftEmptyArrayStorage);
      v41 = &type metadata for Bool;
      LOBYTE(v40) = 1;
      sub_100009268(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      sub_100121664(v39, 1852273519, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v15 = v38;
      v41 = &type metadata for Bool;
      LOBYTE(v40) = 1;
      sub_100009268(&v40, v39);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v15;
      sub_100121664(v39, 1818452335, 0xE400000000000000, v16);
      v17 = v11;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecAccessControlSetConstraints();

      return v11;
    }

    goto LABEL_5;
  }

  if (v42)
  {
LABEL_5:
    v34 = v4;
    v35 = v3;
    v36 = v10;
    type metadata accessor for CFError(0);
    sub_10000BFD4(&qword_1002004C8, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v19 = v12;
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40 = v33;
      *v22 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v1;
      v26 = v0;
      v27 = sub_10010150C(v23, v24, &v40);

      *(v22 + 4) = v27;
      v0 = v26;
      v1 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to create empty ACL due to error: %s", v22, 0xCu);
      sub_100005090(v33);
    }

    (*(v37 + 8))(v9, v34);
    (*(v1 + 104))(v35, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v36;

    return v11;
  }

  v29 = v4;
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to create empty ACL.", v32, 2u);
  }

  (*(v37 + 8))(v7, v29);
  (*(v1 + 104))(v3, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v0);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v11;
}

void sub_10000BD0C(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000B61C();
  if (v1)
  {
    goto LABEL_2;
  }

  v8 = v7;
  sub_10010CEF0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = 0;
  v10 = [a1 evaluateAccessControl:v8 operation:3 options:isa error:&v13];

  if (!v10)
  {
    v12 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    (*(v4 + 104))(v6, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v11 = v13;
}

uint64_t sub_10000BFD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C020()
{
  v0 = type metadata accessor for ISO18013KnownNamespaces();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v0);
  v4 = ISO18013KnownNamespaces.rawValue.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_100205C60 = v4;
  *algn_100205C68 = v6;
  return result;
}

uint64_t sub_10000C120()
{
  v0 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001AAE50;
  v8 = *(v1 + 104);
  v8(v6, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v0);
  v9 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v6, v0);
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v8(v4, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v0);
  v13 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v15 = v14;
  result = (v12)(v4, v0);
  *(v7 + 48) = v13;
  *(v7 + 56) = v15;
  qword_100205C70 = v7;
  return result;
}

unint64_t sub_10000C2C8()
{
  v0 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
  v2 = v1;
  v3 = _swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = _swiftEmptyDictionarySingleton;
  result = sub_100101B90(1);
  v7 = _swiftEmptyDictionarySingleton[2];
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    qword_100205C78 = v3;
    return result;
  }

  v11 = v6;
  v12 = 2;
  while (v3[3] < v10)
  {
    sub_100108180(v10, isUniquelyReferenced_nonNull_native & 1);
    result = sub_100101B90(v12 - 1);
    if ((v11 & 1) != (v13 & 1))
    {
      goto LABEL_18;
    }

LABEL_7:
    v3 = v23;
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v14 = (v3[7] + 16 * result);
    *v14 = v0;
    v14[1] = v2;

    if (v12 == 101)
    {
      goto LABEL_16;
    }

LABEL_13:
    v0 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
    v2 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v3;
    result = sub_100101B90(v12);
    v11 = v20;
    v21 = v3[2];
    v22 = (v20 & 1) == 0;
    ++v12;
    v9 = __OFADD__(v21, v22);
    v10 = v21 + v22;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

  v15 = result;
  sub_100109934();
  result = v15;
  v3 = v23;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_11:
  v3[(result >> 6) + 8] |= 1 << result;
  *(v3[6] + 8 * result) = v12 - 1;
  v16 = (v3[7] + 16 * result);
  *v16 = v0;
  v16[1] = v2;
  v17 = v3[2];
  v9 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v9)
  {
    v3[2] = v18;
    if (v12 == 101)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10000C480()
{
  sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  if (qword_1001FFFB8 != -1)
  {
    swift_once();
  }

  v1 = *algn_100205C68;
  *(inited + 32) = qword_100205C60;
  *(inited + 40) = v1;
  v2 = qword_1001FFFC0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_100205C70;
  v4 = qword_1001FFFC8;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_1000FC660(v5);
  *(inited + 48) = v3;
  v6 = sub_10010D02C(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_1002004F0, &unk_1001AE020);
  return v6;
}

uint64_t sub_10000C5DC(void *a1)
{
  v177 = type metadata accessor for Logger();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v178 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v161 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v155 - v7;
  v169 = type metadata accessor for Calendar.Component();
  v165 = *(v169 - 8);
  __chkstk_darwin(v169);
  v164 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Calendar();
  v171 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v12 = __chkstk_darwin(v11 - 8);
  v160 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v159 = &v155 - v15;
  __chkstk_darwin(v14);
  v173 = &v155 - v16;
  v174 = type metadata accessor for Date();
  v175 = *(v174 - 8);
  v17 = __chkstk_darwin(v174);
  v162 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v166 = &v155 - v20;
  v21 = __chkstk_darwin(v19);
  v163 = &v155 - v22;
  __chkstk_darwin(v21);
  v170 = &v155 - v23;
  v180 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v181 = *(v180 - 8);
  v24 = __chkstk_darwin(v180);
  v172 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v155 - v26;
  v193 = type metadata accessor for AnyCodable();
  v27 = *(v193 - 8);
  __chkstk_darwin(v193);
  v192 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for ISO18013IssuerSignedItem();
  v29 = *(v191 - 1);
  v30 = __chkstk_darwin(v191);
  v190 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  *&v189 = &v155 - v32;
  v196 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v194 = *(v196 - 1);
  __chkstk_darwin(v196);
  v34 = &v155 - v33;
  if (qword_1001FFFB8 != -1)
  {
    goto LABEL_25;
  }

  while (a1[2])
  {
    v35 = sub_100099644(qword_100205C60, *algn_100205C68);
    if ((v36 & 1) == 0)
    {
      break;
    }

    v37 = *(a1[7] + 8 * v35);
    v188 = *(v37 + 16);
    if (!v188)
    {
      v27 = _swiftEmptyDictionarySingleton;
      goto LABEL_27;
    }

    v156 = v8;
    v157 = v4;
    v158 = v3;
    v187 = (v37 + ((*(v194 + 80) + 32) & ~*(v194 + 80)));
    v186 = v194 + 16;
    v185 = (v29 + 8);
    v184 = (v27 + 1);
    v183 = (v194 + 8);

    v39 = 0;
    v27 = _swiftEmptyDictionarySingleton;
    v182 = v38;
    v8 = v185;
    v40 = v190;
    while (v39 < *(v38 + 16))
    {
      v42 = *(v194 + 72);
      v195 = v39;
      (*(v194 + 16))(v34, v187 + v42 * v39, v196);
      v43 = v189;
      CBOREncodedCBOR.value.getter();
      v44 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v4 = v45;
      v46 = *v8;
      v47 = v191;
      (*v8)(v43, v191);
      v29 = v44;
      CBOREncodedCBOR.value.getter();
      v48 = v192;
      ISO18013IssuerSignedItem.elementValue.getter();
      v46(v40, v47);
      AnyCodable.value.getter();
      (*v184)(v48, v193);
      sub_100009268(&v199, &v198);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = v27;
      a1 = v27;
      v3 = sub_100099644(v29, v4);
      v51 = v27[2];
      v52 = (v50 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_23;
      }

      v54 = v50;
      if (v27[3] >= v53)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          a1 = &v197;
          sub_100109790();
          if ((v54 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_100107EC8(v53, isUniquelyReferenced_nonNull_native);
        a1 = v197;
        v55 = sub_100099644(v29, v4);
        if ((v54 & 1) != (v56 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v3 = v55;
        if ((v54 & 1) == 0)
        {
LABEL_16:
          v27 = v197;
          v197[(v3 >> 6) + 8] |= 1 << v3;
          v57 = (v27[6] + 16 * v3);
          *v57 = v29;
          v57[1] = v4;
          sub_100009268(&v198, (v27[7] + 32 * v3));
          (*v183)(v34, v196);
          v58 = v27[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_24;
          }

          v27[2] = v60;
          goto LABEL_7;
        }
      }

      v27 = v197;
      v41 = (v197[7] + 32 * v3);
      sub_100005090(v41);
      sub_100009268(&v198, v41);
      (*v183)(v34, v196);
LABEL_7:
      v39 = v195 + 1;
      v38 = v182;
      if (v188 == v195 + 1)
      {

        v3 = v158;
        v4 = v157;
        v8 = v156;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v27 = sub_10010CA84(_swiftEmptyArrayStorage);
LABEL_27:
  v61 = v181;
  v62 = v179;
  v63 = v180;
  v196 = *(v181 + 104);
  (v196)(v179, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v180);
  v64 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v66 = v65;
  v68 = *(v61 + 8);
  v67 = v61 + 8;
  v195 = v68;
  (v68)(v62, v63);
  if (!v27[2])
  {

    goto LABEL_46;
  }

  v69 = sub_100099644(v64, v66);
  v71 = v70;

  if ((v71 & 1) == 0 || (sub_10000B558(v27[7] + 32 * v69, &v199), (swift_dynamicCast() & 1) == 0))
  {
LABEL_46:
    v90 = v178;
    defaultLogger()();

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v199 = v94;
      *v93 = 136315138;
      v95 = Dictionary.description.getter();
      v97 = v96;

      v98 = sub_10010150C(v95, v97, &v199);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Elements were not present to evaluate age data consistency: %s", v93, 0xCu);
      sub_100005090(v94);
    }

    else
    {
    }

    (*(v176 + 8))(v90, v177);
    return 0;
  }

  v181 = v67;
  v156 = v8;
  v157 = v4;
  v158 = v3;
  v193 = v198;
  if (qword_1001FFFC8 != -1)
  {
LABEL_74:
    swift_once();
  }

  v72 = qword_100205C78;
  v73 = qword_100205C78 + 64;
  v74 = 1 << *(qword_100205C78 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(qword_100205C78 + 64);
  v77 = (v74 + 63) >> 6;

  v78 = 0;
  while (v76)
  {
    v79 = v76;
LABEL_40:
    v76 = (v79 - 1) & v79;
    if (v27[2])
    {
      v81 = __clz(__rbit64(v79)) | (v78 << 6);
      v82 = *(v72 + 56);
      v194 = *(*(v72 + 48) + 8 * v81);
      v83 = (v82 + 16 * v81);
      v84 = *v83;
      v85 = v83[1];

      v86 = sub_100099644(v84, v85);
      v88 = v87;

      if (v88)
      {
        sub_10000B558(v27[7] + 32 * v86, &v199);
        if ((swift_dynamicCast() & 1) != 0 && (((v193 < v194) ^ v198) & 1) == 0)
        {

          return 1;
        }
      }
    }
  }

  while (1)
  {
    v80 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v80 >= v77)
    {
      break;
    }

    v79 = *(v73 + 8 * v80);
    ++v78;
    if (v79)
    {
      v78 = v80;
      goto LABEL_40;
    }
  }

  v99 = v172;
  v100 = v180;
  (v196)(v172, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v180);
  v101 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v103 = v102;
  v195(v99, v100);
  if (!v27[2])
  {

    v107 = v175;
LABEL_60:
    v108 = v173;
    (*(v107 + 56))(v173, 1, 1, v174);
    goto LABEL_61;
  }

  v104 = sub_100099644(v101, v103);
  v106 = v105;

  v107 = v175;
  if ((v106 & 1) == 0)
  {

    goto LABEL_60;
  }

  sub_10000B558(v27[7] + 32 * v104, &v199);

  v108 = v173;
  v109 = v174;
  v110 = swift_dynamicCast();
  (*(v107 + 56))(v108, v110 ^ 1u, 1, v109);
  v111 = *(v107 + 48);
  if (v111(v108, 1, v109) == 1)
  {
LABEL_61:
    sub_10000A0D4(v108, &qword_1002004D0, &unk_1001AE1C0);
    return 0;
  }

  v112 = *(v107 + 32);
  v112(v170, v108, v109);
  v113 = v163;
  Date.init()();
  v190 = v111;
  v114 = v167;
  static Calendar.current.getter();
  v115 = v165;
  v116 = *(v165 + 104);
  v117 = v164;
  LODWORD(v189) = enum case for Calendar.Component.day(_:);
  v118 = v169;
  v196 = (v165 + 104);
  v191 = v116;
  v116(v164);
  v119 = v159;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v194 = *(v115 + 8);
  v195 = (v115 + 8);
  (v194)(v117, v118);
  v120 = v171 + 8;
  v121 = v190;
  v122 = v168;
  v192 = *(v171 + 8);
  (v192)(v114, v168);
  v123 = v121(v119, 1, v109);
  v187 = v112;
  v188 = (v107 + 32);
  if (v123 == 1)
  {
    (*(v175 + 16))(v166, v113, v109);
    if (v121(v119, 1, v109) != 1)
    {
      sub_10000A0D4(v119, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  else
  {
    v112(v166, v119, v109);
  }

  v124 = v167;
  static Calendar.current.getter();
  v125 = v164;
  v126 = v169;
  (v191)(v164, v189, v169);
  v127 = v160;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (v194)(v125, v126);
  (v192)(v124, v122);
  v128 = v190;
  v129 = (v190)(v127, 1, v109);
  v171 = v120;
  if (v129 == 1)
  {
    (*(v175 + 16))(v162, v113, v109);
    if (v128(v127, 1, v109) != 1)
    {
      sub_10000A0D4(v127, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  else
  {
    v187(v162, v127, v109);
  }

  v130 = v167;
  static Calendar.current.getter();
  v190 = sub_100004E70(&qword_1002004E0, &qword_1001AAFA0);
  v131 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v132 = swift_allocObject();
  v189 = xmmword_1001AA160;
  *(v132 + 16) = xmmword_1001AA160;
  LODWORD(v188) = enum case for Calendar.Component.year(_:);
  v133 = v169;
  v134 = v191;
  (v191)(v132 + v131);
  sub_10010D938(v132);
  swift_setDeallocating();
  (v194)(v132 + v131, v133);
  swift_deallocClassInstance();
  v135 = v156;
  Calendar.dateComponents(_:from:to:)();

  v136 = v192;
  (v192)(v130, v168);
  static Calendar.current.getter();
  v137 = swift_allocObject();
  *(v137 + 16) = v189;
  v134(v137 + v131, v188, v133);
  sub_10010D938(v137);
  swift_setDeallocating();
  (v194)(v137 + v131, v133);
  swift_deallocClassInstance();
  v138 = v161;
  v139 = v162;
  Calendar.dateComponents(_:from:to:)();

  v136(v130, v168);
  v140 = DateComponents.year.getter();
  v141 = v139;
  if ((v142 & 1) == 0 && v140 == v193)
  {
    v143 = *(v157 + 8);
    v144 = v158;
    v143(v138, v158);
    v143(v135, v144);
    v145 = *(v175 + 8);
    v146 = v174;
    v145(v141, v174);
    v145(v166, v146);
    v145(v163, v146);
    v145(v170, v146);
    return 0;
  }

  v147 = DateComponents.year.getter();
  v149 = v148;
  v150 = *(v157 + 8);
  v151 = v138;
  v152 = v158;
  v150(v151, v158);
  v150(v135, v152);
  v153 = *(v175 + 8);
  v154 = v174;
  v153(v141, v174);
  v153(v166, v154);
  v153(v163, v154);
  v153(v170, v154);
  result = 2;
  if ((v149 & 1) == 0 && v147 == v193)
  {
    return 0;
  }

  return result;
}

void *sub_10000DBD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v87 = a3;
  v89 = a2;
  v94 = a1;
  v90 = type metadata accessor for PayloadMetadata(0);
  __chkstk_darwin(v90);
  v95 = (&v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Logger();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = __chkstk_darwin(v5);
  v96 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v84 - v8;
  v110 = type metadata accessor for IDCSAnalytics.NamespaceElement();
  v86 = *(v110 - 8);
  __chkstk_darwin(v110 - 8);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v109 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v84 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v84 - v18;
  __chkstk_darwin(v17);
  v21 = &v84 - v20;
  result = static ISO18013KnownDocTypes.allCases.getter();
  v23 = result[2];
  v24 = _swiftEmptyArrayStorage;
  v97 = v11;
  v108 = v23;
  if (v23)
  {
    v107 = v16;
    v25 = 0;
    v105 = (v11 + 16);
    v104 = v11 + 88;
    LODWORD(v103) = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    v101 = enum case for ISO18013KnownDocTypes.photoID(_:);
    v102 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
    v98 = (v11 + 8);
    v99 = v19;
    v100 = (v11 + 32);
    v106 = result;
    while (v25 < result[2])
    {
      v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v28 = *(v11 + 72);
      v29 = *(v11 + 16);
      v29(v21, result + v27 + v28 * v25, v10);
      v29(v19, v21, v10);
      v30 = (*(v11 + 88))(v19, v10);
      if (v30 == v103 || v30 == v102 || v30 == v101)
      {
        v33 = *v100;
        (*v100)(v107, v21, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10010A6D4(0, v24[2] + 1, 1);
          v11 = v97;
          v24 = v111;
        }

        v36 = v24[2];
        v35 = v24[3];
        v37 = v24;
        if (v36 >= v35 >> 1)
        {
          sub_10010A6D4((v35 > 1), v36 + 1, 1);
          v11 = v97;
          v37 = v111;
        }

        v37[2] = v36 + 1;
        v33(v37 + v27 + v36 * v28, v107, v10);
        v24 = v37;
        v19 = v99;
      }

      else
      {
        v26 = *v98;
        (*v98)(v19, v10);
        v26(v21, v10);
      }

      ++v25;
      result = v106;
      if (v108 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_18:

  v38 = v24[2];
  if (v38)
  {
    v111 = _swiftEmptyArrayStorage;
    sub_10010A6B4(0, v38, 0);
    v39 = v111;
    v40 = v97 + 16;
    v41 = *(v97 + 16);
    v42 = v24 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v107 = *(v97 + 72);
    v108 = v41;
    v105 = v24;
    v106 = (v97 + 8);
    do
    {
      v43 = v109;
      v44 = v40;
      v108(v109, v42, v10);
      v45 = ISO18013KnownDocTypes.rawValue.getter();
      v47 = v46;
      (*v106)(v43, v10);
      v111 = v39;
      v49 = v39[2];
      v48 = v39[3];
      if (v49 >= v48 >> 1)
      {
        sub_10010A6B4((v48 > 1), v49 + 1, 1);
        v39 = v111;
      }

      v39[2] = v49 + 1;
      v50 = &v39[2 * v49];
      v50[4] = v45;
      v50[5] = v47;
      v42 += v107;
      --v38;
      v40 = v44;
    }

    while (v38);
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  v51 = sub_10010D640(v39);

  v52 = v94;
  v53 = *v94;
  v54 = v94[1];
  v55 = sub_1000A0DEC(*v94, v54, v51);

  v57 = v95;
  v56 = v96;
  if (v55)
  {
    if (*(v52 + *(v90 + 44) + 8))
    {
      v58 = sub_10000E530(v53, v54, v87, v88);
      v59 = sub_10000E81C(v58, v89);

      result = v59;
      v60 = 0;
      v61 = *(v59 + 64);
      v104 = v59 + 64;
      v62 = 1 << *(v59 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & v61;
      v103 = (v62 + 63) >> 6;
      v65 = (v86 + 8);
      v105 = v59;
      while (v64)
      {
LABEL_35:
        v67 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v68 = v67 | (v60 << 6);
        v69 = *(result[7] + 8 * v68);
        v70 = v69[2];
        if (v70)
        {
          v107 = v64;
          v108 = v60;
          v109 = *(result[6] + 16 * v68);
          type metadata accessor for IDCSAnalytics();

          v106 = v69;
          v71 = v69 + 5;
          v72 = v93;
          do
          {

            IDCSAnalytics.NamespaceElement.init(namespace:element:)();
            static IDCSAnalytics.sendPayloadMissingRequiredElementEvent(element:issuer:)();
            (*v65)(v72, v110);
            v71 += 2;
            --v70;
          }

          while (v70);

          result = v105;
          v64 = v107;
          v60 = v108;
        }
      }

      while (1)
      {
        v66 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v66 >= v103)
        {
        }

        v64 = *(v104 + 8 * v66);
        ++v60;
        if (v64)
        {
          v60 = v66;
          goto LABEL_35;
        }
      }

LABEL_48:
      __break(1u);
      return result;
    }

    v80 = v85;
    defaultLogger()();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Not processing missing elements due to missing issuer data", v83, 2u);
    }

    return (*(v91 + 8))(v80, v92);
  }

  else
  {
    defaultLogger()();
    sub_10000E75C(v52, v57);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v111 = v76;
      *v75 = 136315138;
      v77 = *v57;
      v78 = v57[1];

      sub_10000E7C0(v57);
      v79 = sub_10010150C(v77, v78, &v111);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "Not checking for missing elements because document type %s is not supported for analytics", v75, 0xCu);
      sub_100005090(v76);
    }

    else
    {

      sub_10000E7C0(v57);
    }

    return (*(v91 + 8))(v56, v92);
  }
}

unint64_t sub_10000E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a4;
  v28[2] = a3;
  v29 = a2;
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = *(v6 + 104);
  v12(v28 - v10, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v5);
  v13 = ISO18013KnownDocTypes.rawValue.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  v17 = v13;
  v18 = v29;
  if (v17 == a1 && v15 == v29)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v12(v9, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v5);
      v21 = a1;
      v22 = ISO18013KnownDocTypes.rawValue.getter();
      v24 = v23;
      v16(v9, v5);
      if (v22 == v21 && v24 == v18)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          return sub_10010D02C(_swiftEmptyArrayStorage);
        }
      }
    }
  }
}

uint64_t sub_10000E75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E7C0(uint64_t a1)
{
  v2 = type metadata accessor for PayloadMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E81C(uint64_t a1, uint64_t a2)
{
  v77 = sub_10010D02C(_swiftEmptyArrayStorage);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v76 = 0;
  v9 = 0;
  v74 = 0;
  v71 = v8;
LABEL_4:
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = *(a2 + 16);

    v80 = v16;

    v78 = v15;
    v79 = v14;
    if (v17 && (v18 = sub_100099644(v15, v14), (v19 & 1) != 0))
    {
      v20 = v80;
      v21 = *(v80 + 16);
      if (v21)
      {
        v68 = v4;
        v69 = a2;
        v70 = a1;
        v40 = *(*(a2 + 56) + 8 * v18);

        v42 = 0;
        v43 = (v20 + 40);
        v44 = v74;
        v73 = v21;
        while (1)
        {
          if (v42 >= *(v20 + 16))
          {
            goto LABEL_45;
          }

          v45 = *v43;
          v75 = *(v43 - 1);
          v81[0] = v75;
          v81[1] = v45;
          __chkstk_darwin(v41);
          v67[2] = v81;

          if ((sub_100120CF8(sub_10000ED28, v67, v40) & 1) == 0)
          {
            break;
          }

LABEL_24:
          ++v42;
          v43 += 2;
          v20 = v80;
          if (v73 == v42)
          {
            v74 = v44;

            a2 = v69;
            a1 = v70;
            v4 = v68;
            goto LABEL_4;
          }
        }

        v72 = v45;
        v74 = v44;
        v46 = v40;
        sub_10000ED48(v76, 0);
        v47 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v47;
        v49 = v79;
        v51 = sub_100099644(v78, v79);
        v52 = *(v47 + 16);
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_46;
        }

        v55 = v50;
        if (*(v47 + 24) >= v54)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v58 = v81[0];
            if ((v50 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_100109A9C();
            v58 = v81[0];
            if ((v55 & 1) == 0)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_100108404(v54, isUniquelyReferenced_nonNull_native);
          v56 = sub_100099644(v78, v49);
          if ((v55 & 1) != (v57 & 1))
          {
            goto LABEL_49;
          }

          v51 = v56;
          v58 = v81[0];
          if (v55)
          {
            goto LABEL_35;
          }

LABEL_34:
          sub_100112C68();
        }

LABEL_35:
        v59 = *(v58 + 56);
        v60 = *(v59 + 8 * v51);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 8 * v51) = v60;
        v77 = v58;
        if ((v41 & 1) == 0)
        {
          v41 = sub_100100418(0, *(v60 + 16) + 1, 1, v60);
          v60 = v41;
          *(v59 + 8 * v51) = v41;
        }

        v62 = *(v60 + 16);
        v61 = *(v60 + 24);
        v63 = v72;
        if (v62 >= v61 >> 1)
        {
          v41 = sub_100100418((v61 > 1), v62 + 1, 1, v60);
          v60 = v41;
          v63 = v72;
          *(v59 + 8 * v51) = v41;
        }

        v40 = v46;
        *(v60 + 16) = v62 + 1;
        v64 = v60 + 16 * v62;
        v44 = v74;
        *(v64 + 32) = v75;
        *(v64 + 40) = v63;
        v76 = sub_10000E74C;
        v8 = v71;
        goto LABEL_24;
      }
    }

    else
    {
      v22 = v77;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v22;
      v24 = sub_100099644(v15, v14);
      v26 = *(v22 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_47;
      }

      v30 = v25;
      if (*(v22 + 24) >= v29)
      {
        if ((v23 & 1) == 0)
        {
          v65 = v24;
          sub_100109A9C();
          v24 = v65;
        }

        v31 = v78;
        if (v30)
        {
          goto LABEL_16;
        }

LABEL_20:
        v34 = v81[0];
        *(v81[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v35 = (v34[6] + 16 * v24);
        v37 = v79;
        v36 = v80;
        *v35 = v31;
        v35[1] = v37;
        *(v34[7] + 8 * v24) = v36;
        v38 = v34[2];
        v28 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v28)
        {
          goto LABEL_48;
        }

        v77 = v34;
        v34[2] = v39;
      }

      else
      {
        sub_100108404(v29, v23);
        v31 = v78;
        v24 = sub_100099644(v78, v79);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_49;
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        v33 = v24;

        v77 = v81[0];
        *(*(v81[0] + 56) + 8 * v33) = v80;
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      sub_10000ED48(v76, 0);
      return v77;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000ED48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_10000ED58()
{
  v219 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  v218 = *(v219 - 8);
  v0 = __chkstk_darwin(v219);
  v223 = &v192 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v222 = &v192 - v3;
  v4 = __chkstk_darwin(v2);
  v221 = &v192 - v5;
  v6 = __chkstk_darwin(v4);
  v220 = &v192 - v7;
  v8 = __chkstk_darwin(v6);
  v217 = &v192 - v9;
  __chkstk_darwin(v8);
  v216 = &v192 - v10;
  v214 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v212 = *(v214 - 8);
  v11 = __chkstk_darwin(v214);
  v215 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v213 = &v192 - v14;
  __chkstk_darwin(v13);
  v211 = &v192 - v15;
  v16 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v209 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v208 = &v192 - v21;
  v22 = __chkstk_darwin(v20);
  v207 = &v192 - v23;
  v24 = __chkstk_darwin(v22);
  v206 = &v192 - v25;
  v26 = __chkstk_darwin(v24);
  v205 = &v192 - v27;
  v28 = __chkstk_darwin(v26);
  v202 = &v192 - v29;
  v30 = __chkstk_darwin(v28);
  v199 = &v192 - v31;
  v32 = __chkstk_darwin(v30);
  v198 = &v192 - v33;
  v34 = __chkstk_darwin(v32);
  v197 = &v192 - v35;
  v36 = __chkstk_darwin(v34);
  v196 = &v192 - v37;
  v38 = __chkstk_darwin(v36);
  v195 = &v192 - v39;
  v40 = __chkstk_darwin(v38);
  v194 = &v192 - v41;
  v42 = __chkstk_darwin(v40);
  v193 = &v192 - v43;
  v44 = __chkstk_darwin(v42);
  v192 = &v192 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v192 - v47;
  __chkstk_darwin(v46);
  v50 = &v192 - v49;
  v51 = type metadata accessor for ISO18013KnownNamespaces();
  v224 = v51;
  v52 = *(v51 - 8);
  v53 = __chkstk_darwin(v51);
  v210 = &v192 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v192 - v55;
  v203 = &v192 - v55;
  v204 = sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  v58 = *(v52 + 104);
  v228 = v52 + 104;
  v229 = v58;
  v58(v56, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v51);
  v59 = ISO18013KnownNamespaces.rawValue.getter();
  v61 = v60;
  v62 = *(v52 + 8);
  v226 = v52 + 8;
  v227 = v62;
  v62(v56, v51);
  v200 = inited;
  *(inited + 32) = v59;
  v201 = inited + 32;
  *(inited + 40) = v61;
  v225 = sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1001AAFB0;
  v64 = v17;
  v65 = *(v17 + 104);
  v65(v50, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v16);
  v66 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v68 = v67;
  v69 = *(v64 + 8);
  v69(v50, v16);
  *(v63 + 32) = v66;
  *(v63 + 40) = v68;
  v65(v48, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v16);
  v70 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v72 = v71;
  v69(v48, v16);
  *(v63 + 48) = v70;
  *(v63 + 56) = v72;
  v73 = v192;
  v65(v192, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v16);
  v74 = v65;
  v75 = v73;
  v76 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v78 = v77;
  v69(v75, v16);
  *(v63 + 64) = v76;
  *(v63 + 72) = v78;
  v79 = v193;
  v74(v193, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v16);
  v80 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v82 = v81;
  v69(v79, v16);
  *(v63 + 80) = v80;
  *(v63 + 88) = v82;
  v83 = v194;
  v74(v194, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v16);
  v84 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v86 = v85;
  v69(v83, v16);
  *(v63 + 96) = v84;
  *(v63 + 104) = v86;
  v87 = v195;
  v74(v195, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v16);
  v88 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v90 = v89;
  v69(v87, v16);
  *(v63 + 112) = v88;
  *(v63 + 120) = v90;
  v91 = v196;
  v74(v196, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v16);
  v92 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v94 = v93;
  v69(v91, v16);
  *(v63 + 128) = v92;
  *(v63 + 136) = v94;
  v95 = v197;
  v74(v197, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v16);
  v96 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v98 = v97;
  v69(v95, v16);
  *(v63 + 144) = v96;
  *(v63 + 152) = v98;
  v99 = v198;
  v74(v198, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v16);
  v100 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v102 = v101;
  v69(v99, v16);
  *(v63 + 160) = v100;
  *(v63 + 168) = v102;
  v103 = v199;
  v74(v199, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v16);
  v104 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v106 = v105;
  v69(v103, v16);
  *(v63 + 176) = v104;
  *(v63 + 184) = v106;
  v107 = v202;
  v74(v202, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v16);
  v108 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v110 = v109;
  v69(v107, v16);
  *(v63 + 192) = v108;
  *(v63 + 200) = v110;
  v111 = v205;
  v74(v205, enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:), v16);
  v112 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v114 = v113;
  v69(v111, v16);
  *(v63 + 208) = v112;
  *(v63 + 216) = v114;
  v115 = v206;
  v74(v206, enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:), v16);
  v116 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v118 = v117;
  v69(v115, v16);
  *(v63 + 224) = v116;
  *(v63 + 232) = v118;
  v119 = v207;
  v74(v207, enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:), v16);
  v120 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v122 = v121;
  v69(v119, v16);
  *(v63 + 240) = v120;
  *(v63 + 248) = v122;
  v123 = v208;
  v74(v208, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v16);
  v124 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v126 = v125;
  v69(v123, v16);
  *(v63 + 256) = v124;
  *(v63 + 264) = v126;
  v127 = v209;
  v74(v209, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v16);
  v128 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v130 = v129;
  v69(v127, v16);
  *(v63 + 272) = v128;
  *(v63 + 280) = v130;
  v131 = v200;
  *(v200 + 48) = v63;
  v209 = sub_10010D02C(v131);
  swift_setDeallocating();
  sub_10000FDE0(v201);
  v132 = swift_initStackObject();
  *(v132 + 16) = xmmword_1001AAE50;
  v133 = v203;
  v134 = v224;
  v229(v203, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v224);
  v135 = ISO18013KnownNamespaces.rawValue.getter();
  v137 = v136;
  v227(v133, v134);
  *(v132 + 32) = v135;
  v208 = (v132 + 32);
  *(v132 + 40) = v137;
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_1001AAFC0;
  v139 = v212;
  v140 = *(v212 + 104);
  v141 = v211;
  v142 = v214;
  v140(v211, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v214);
  v143 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v145 = v144;
  v146 = *(v139 + 8);
  v146(v141, v142);
  *(v138 + 32) = v143;
  *(v138 + 40) = v145;
  v147 = v213;
  v140(v213, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v142);
  v148 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v150 = v149;
  v146(v147, v142);
  *(v138 + 48) = v148;
  *(v138 + 56) = v150;
  v151 = v215;
  v140(v215, enum case for ISO23220_1_ElementIdentifier.sex(_:), v142);
  v152 = v151;
  v153 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v155 = v154;
  v146(v152, v142);
  *(v138 + 64) = v153;
  *(v138 + 72) = v155;
  *(v132 + 48) = v138;
  v156 = v210;
  v157 = v224;
  v229(v210, enum case for ISO18013KnownNamespaces.iso23220_1_jp(_:), v224);
  v158 = ISO18013KnownNamespaces.rawValue.getter();
  v160 = v159;
  v227(v156, v157);
  *(v132 + 56) = v158;
  *(v132 + 64) = v160;
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1001AA170;
  v162 = v218;
  v163 = *(v218 + 104);
  v164 = v216;
  v165 = v219;
  v163(v216, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v219);
  v166 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v168 = v167;
  v169 = *(v162 + 8);
  v169(v164, v165);
  *(v161 + 32) = v166;
  *(v161 + 40) = v168;
  v170 = v217;
  v163(v217, enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:), v165);
  v171 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v173 = v172;
  v169(v170, v165);
  *(v161 + 48) = v171;
  *(v161 + 56) = v173;
  v174 = v220;
  v163(v220, enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:), v165);
  v175 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v177 = v176;
  v169(v174, v165);
  *(v161 + 64) = v175;
  *(v161 + 72) = v177;
  v178 = v221;
  v163(v221, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v165);
  v179 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v181 = v180;
  v169(v178, v165);
  *(v161 + 80) = v179;
  *(v161 + 88) = v181;
  v182 = v222;
  v163(v222, enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:), v165);
  v183 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v185 = v184;
  v169(v182, v165);
  *(v161 + 96) = v183;
  *(v161 + 104) = v185;
  v186 = v223;
  v163(v223, enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:), v165);
  v187 = v186;
  v188 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v190 = v189;
  v169(v187, v165);
  *(v161 + 112) = v188;
  *(v161 + 120) = v190;
  *(v132 + 72) = v161;
  sub_10010D02C(v132);
  swift_setDeallocating();
  sub_100004E70(&qword_1002004F0, &unk_1001AE020);
  swift_arrayDestroy();
  return v209;
}

uint64_t sub_10000FDE0(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004F0, &unk_1001AE020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FE48(uint64_t a1)
{
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_100009278(v2, v3);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  sub_100009278(v2, v3);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  return sub_100005090(v2);
}

uint64_t sub_10000FF80()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100010020;
  v2 = *(v0 + 16);

  return sub_1000105D0(v2);
}

uint64_t sub_100010020()
{

  return _swift_task_switch(sub_1000105CC, 0, 0);
}

uint64_t sub_10001011C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000105C8;

  return sub_10000FF60(v0);
}

uint64_t sub_1000101CC()
{
  type metadata accessor for OSTransaction();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000102D4;
  v2 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v1, 0xD000000000000018, 0x80000001001B2240, &unk_1001AE910, v2, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_1000102D4()
{

  if (!v0)
  {

    return _swift_task_switch(sub_1000103E4, 0, 0);
  }

  return result;
}

uint64_t sub_1000103E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100010444()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000104D4;

  return sub_1000101AC(v0);
}

uint64_t sub_1000104D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000105D0(uint64_t a1)
{
  v1[42] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[43] = v2;
  v1[44] = *(v2 - 8);
  v1[45] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[46] = v3;
  v1[47] = *(v3 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_100010704, 0, 0);
}

uint64_t sub_100010704(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting garbage collection", v4, 2u);
  }

  v5 = v1[50];
  v7 = v1[46];
  v6 = v1[47];
  v8 = v1[42];

  (*(v6 + 8))(v5, v7);
  v1[5] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
  v1[6] = &off_1001F4D30;
  v9 = type metadata accessor for PayloadProcessorBuilder();
  v10 = swift_allocObject();

  v40 = sub_10001C16C();
  v1[10] = &type metadata for CredentialDecryptionKeyFinder;
  v1[11] = &off_1001F4D20;
  v11 = swift_allocObject();
  v1[7] = v11;
  sub_100012950((v1 + 2), v11 + 16);
  v1[15] = v9;
  v1[16] = &off_1001F78E8;
  v1[12] = v10;
  type metadata accessor for CredentialStorage();
  v12 = swift_allocObject();
  v1[51] = v12;
  v13 = sub_1000129AC((v1 + 7), &type metadata for CredentialDecryptionKeyFinder);
  v14 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v14, v13, &type metadata for CredentialDecryptionKeyFinder);
  sub_1000129AC((v1 + 12), v9);
  v15 = *(v9 - 8);
  v39 = swift_task_alloc();
  (*(v15 + 16))();
  v16 = *v39;
  v1[20] = &type metadata for CredentialDecryptionKeyFinder;
  v1[21] = &off_1001F4D20;
  v17 = swift_allocObject();
  v1[17] = v17;
  v18 = *(v14 + 32);
  v19 = *(v14 + 16);
  *(v17 + 16) = *v14;
  *(v17 + 32) = v19;
  *(v17 + 48) = v18;
  v1[25] = v9;
  v1[26] = &off_1001F78E8;
  v1[22] = v16;
  v20 = sub_10010D640(&off_1001F3F00);
  sub_10001A8EC(&unk_1001F3F20);
  v12[2] = v20;
  v12[15] = v8;
  sub_10001A940((v1 + 17), (v12 + 4));
  sub_10001A940((v1 + 22), (v12 + 9));
  v12[14] = v40;
  type metadata accessor for BiometricsHelper();
  swift_allocObject();

  v21 = BiometricsHelper.init()();
  v1[30] = type metadata accessor for DeviceInformationProvider();
  v1[31] = &protocol witness table for DeviceInformationProvider;
  sub_10001A9A4(v1 + 27);
  DeviceInformationProvider.init()();
  type metadata accessor for BiometricStorage();
  v22 = swift_allocObject();
  v22[2] = v8;
  v22[8] = v40;
  type metadata accessor for AppleIDVManager();
  sub_1000215BC(v22 + 3);
  sub_100005090(v1 + 22);
  sub_100005090(v1 + 17);
  v22[9] = v21;
  sub_10001AA08((v1 + 27), (v22 + 10));
  v12[3] = v22;
  sub_100005090(v1 + 12);

  sub_100005090(v1 + 7);

  sub_10001AA20((v1 + 2));
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v41 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v23 = SEPairingManager.init()();
  v24 = type metadata accessor for GenericPasswordKeychainWrapper();
  v25 = swift_allocObject();
  v1[35] = v24;
  v1[36] = &off_1001F4DE8;
  v1[32] = v25;
  v26 = type metadata accessor for SyncableKeyStoreProvider();
  v27 = swift_allocObject();
  v28 = sub_1000129AC((v1 + 32), v24);
  v29 = *(v24 - 8);
  v30 = swift_task_alloc();
  (*(v29 + 16))(v30, v28, v24);
  v31 = *v30;
  v27[5] = v24;
  v27[6] = &off_1001F4DE8;
  v27[2] = v31;

  sub_100005090(v1 + 32);

  v1[40] = v26;
  v1[41] = &off_1001F5068;
  v1[37] = v27;
  type metadata accessor for CredentialKeyManager();
  v32 = swift_allocObject();
  v33 = sub_1000129AC((v1 + 37), v26);
  v34 = *(v26 - 8);
  v35 = swift_task_alloc();
  (*(v34 + 16))(v35, v33, v26);
  v1[52] = sub_1000F20BC(v41, v23, *v35, v32);

  sub_100005090(v1 + 37);

  v36 = swift_task_alloc();
  v1[53] = v36;
  *v36 = v1;
  v36[1] = sub_100010D78;
  v37 = v1[42];

  return sub_1000129FC(v12, v37);
}

uint64_t sub_100010D78()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100011704;
  }

  else
  {
    v2 = sub_100010E8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010E8C()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[55] = v3;
    *v3 = v0;
    v3[1] = sub_100010FA0;
    v4 = v0[52];
    v5 = v0[42];

    return sub_100013738(v4, v5);
  }
}

uint64_t sub_100010FA0()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_100011AD4;
  }

  else
  {
    v2 = sub_1000110B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000110B4()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[57] = v3;
    *v3 = v0;
    v3[1] = sub_1000111C8;
    v4 = v0[52];
    v5 = v0[42];

    return sub_100013BC8(v4, v5);
  }
}

uint64_t sub_1000111C8()
{
  v2 = *v1;
  v2[58] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100011EA0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[59] = v3;
    *v3 = v2;
    v3[1] = sub_10001133C;
    v4 = v2[42];
    v5 = v2[52];

    return sub_100013F7C(v5, v4);
  }
}

uint64_t sub_10001133C()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000121EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[61] = v3;
    *v3 = v2;
    v3[1] = sub_1000114AC;
    v4 = v2[42];

    return sub_100014208(v4);
  }
}

uint64_t sub_1000114AC()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100012534;
  }

  else
  {
    v2 = sub_1000115C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000115C0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[49];
  v6 = v1[46];
  v7 = v1[47];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished garbage collection", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100011704()
{
  v1 = v0[48];
  v2 = v0[45];
  v17 = v0[47];
  v18 = v0[46];
  v3 = v0[44];
  v16 = v0[43];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v16);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v17 + 8))(v1, v18);
  if (static Task<>.isCancelled.getter())
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[55] = v13;
    *v13 = v0;
    v13[1] = sub_100010FA0;
    v14 = v0[52];
    v15 = v0[42];

    return sub_100013738(v14, v15);
  }
}

uint64_t sub_100011AD4()
{
  v2 = v0[47];
  v1 = v0[48];
  v16 = v0[45];
  v3 = v0[44];
  v17 = v0[43];
  v18 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v3 + 104))(v16, enum case for DIPError.Code.internalError(_:), v17);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v18);
  if (static Task<>.isCancelled.getter())
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[57] = v13;
    *v13 = v0;
    v13[1] = sub_1000111C8;
    v14 = v0[52];
    v15 = v0[42];

    return sub_100013BC8(v14, v15);
  }
}

uint64_t sub_100011EA0()
{
  v2 = v0[47];
  v1 = v0[48];
  v15 = v0[45];
  v3 = v0[44];
  v16 = v0[43];
  v17 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v3 + 104))(v15, enum case for DIPError.Code.internalError(_:), v16);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v17);
  v11 = swift_task_alloc();
  v0[59] = v11;
  *v11 = v0;
  v11[1] = sub_10001133C;
  v12 = v0[52];
  v13 = v0[42];

  return sub_100013F7C(v12, v13);
}

uint64_t sub_1000121EC()
{
  v2 = v0[47];
  v1 = v0[48];
  v14 = v0[45];
  v3 = v0[44];
  v15 = v0[43];
  v16 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v3 + 104))(v14, enum case for DIPError.Code.internalError(_:), v15);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v16);
  v11 = swift_task_alloc();
  v0[61] = v11;
  *v11 = v0;
  v11[1] = sub_1000114AC;
  v12 = v0[42];

  return sub_100014208(v12);
}

uint64_t sub_100012534()
{
  v1 = v0[48];
  v2 = v0[45];
  v21 = v0[47];
  v22 = v0[46];
  v3 = v0[44];
  v20 = v0[43];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v20);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v21 + 8))(v1, v22);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[47];
  if (v13)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Finished garbage collection", v17, 2u);
  }

  (*(v16 + 8))(v14, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100012918()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000129AC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000129FC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100012B24, 0, 0);
}

uint64_t sub_100012B24(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting incomplete credentials", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[16] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[17] = v9;
  v10 = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
  *v9 = v1;
  v9[1] = sub_100012CA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 6, sub_10001A898, 0, v10);
}

uint64_t sub_100012CA0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100012F74;
  }

  else
  {
    *(v2 + 152) = *(v2 + 48);
    v3 = sub_100012DBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100012DBC()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 32);
  *(v0 + 216) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 56);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v6 = enum case for DIPError.Code.internalError(_:);
  *(v0 + 208) = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  *(v0 + 212) = v6;
  v7 = v3 & v5;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    v11 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    *(v0 + 176) = *v11;
    v13 = v11[1];
    *(v0 + 184) = v13;

    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_100012FEC;

    return sub_1001452FC(v12, v13);
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v4) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100012F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100012FEC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100013290;
  }

  else
  {

    v2 = sub_100013108;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100013108()
{
  v1 = *(v0 + 168);
  v2 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v2)
  {
    v3 = *(v0 + 152);
LABEL_7:
    *(v0 + 160) = v2;
    *(v0 + 168) = v1;
    v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v6 = *v5;
    *(v0 + 176) = *v5;
    v7 = v5[1];
    *(v0 + 184) = v7;

    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_100012FEC;

    sub_1001452FC(v6, v7);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 152);
      if (v4 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_100013290()
{
  v22 = *(v0 + 176);
  v1 = *(v0 + 208);
  v21 = *(v0 + 212);
  v24 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  v20 = *(v0 + 72);
  v23 = *(v0 + 96);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001AA160;
  v8 = v7 + v6;
  v9 = (v8 + v5[14]);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v8, v1, v10);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = 25447;
  v9[1] = 0xE200000000000000;
  sub_10010C6F8(v7);
  swift_setDeallocating();
  sub_10000A0D4(v8, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, v21, v20);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  *(v0 + 16) = 0xD000000000000020;
  *(v0 + 24) = 0x80000001001B26B0;
  String.append(_:)(v22);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  result = v24(v2, v23);
  v12 = *(v0 + 168);
  v13 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v13)
  {
    result = *(v0 + 152);
LABEL_7:
    *(v0 + 160) = v13;
    *(v0 + 168) = v12;
    v15 = (*(result + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
    v16 = *v15;
    *(v0 + 176) = *v15;
    v17 = v15[1];
    *(v0 + 184) = v17;

    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_100012FEC;

    return sub_1001452FC(v16, v17);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 152);
      if (v14 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v13 = *(result + 8 * v14 + 56);
      ++v12;
      if (v13)
      {
        v12 = v14;
        goto LABEL_7;
      }
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100013738(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000137F8, 0, 0);
}

uint64_t sub_1000137F8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting inactive presentment keys", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[2];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v1[7] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v1[8] = v11;
  *(v11 + 16) = sub_10001C104;
  *(v11 + 24) = v10;

  v12 = swift_task_alloc();
  v1[9] = v12;
  *v12 = v1;
  v12[1] = sub_1000139C8;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v12, sub_10001C150, v11, &type metadata for () + 8);
}

uint64_t sub_1000139C8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100013B50;
  }

  else
  {

    v2 = sub_100013AEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013AEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013BC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100013C88, 0, 0);
}

uint64_t sub_100013C88(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting unused device encryption keys", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[2];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v1[7] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v1[8] = v11;
  *(v11 + 16) = &unk_1001AB058;
  *(v11 + 24) = v10;

  v12 = swift_task_alloc();
  v1[9] = v12;
  *v12 = v1;
  v12[1] = sub_100013E58;

  return AsyncCoreDataContainer.write<A>(_:)(v12, &unk_1001AB060, v11, &type metadata for () + 8);
}

uint64_t sub_100013E58()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10001C168;
  }

  else
  {

    v2 = sub_10001C14C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013F7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001403C, 0, 0);
}

uint64_t sub_10001403C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting oprhaned Payload Protection Keys", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  v8 = v1[2];

  (*(v6 + 8))(v5, v7);
  v9 = swift_allocObject();
  v1[7] = v9;
  *(v9 + 16) = 7;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v1[8] = v10;
  *(v10 + 16) = sub_10001AAAC;
  *(v10 + 24) = v9;

  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_100013E58;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10001AAC8, v10, &type metadata for () + 8);
}

uint64_t sub_100014208(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000142C8, 0, 0);
}

uint64_t sub_1000142C8(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(0xD000000000000024, 0x80000001001B2400, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s start", v8, 0xCu);
    sub_100005090(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_10001448C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v10, sub_10001A8D0, 0, &type metadata for () + 8);
}

uint64_t sub_10001448C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100014604;
  }

  else
  {
    v2 = sub_1000145A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000145A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014668@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for Logger();
  v50 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v53 = &_swiftEmptySetSingleton;
  result = sub_1000519F8(&off_1001F3F30);
  if (v1)
  {
    return result;
  }

  v13 = result;
  v14 = v50;
  v44 = v6;
  v45 = v9;
  v41 = 0;
  result = Date.init()();
  v48 = v4;
  v49 = v11;
  v43 = v2;
  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
    v17 = v45;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_24:

    result = (*(v44 + 8))(v49, v5);
    *v46 = v53;
    return result;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v45;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (v16 >= 1)
  {
    v18 = v14;
    v19 = 0;
    v51 = (v44 + 8);
    v42 = (v18 + 8);
    *&v15 = 136315138;
    v39 = v15;
    v47 = v5;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v13 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 options];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 deleteIncompleteCredentialAfterDays];

        if (v24 >= 1)
        {
          v25 = [v21 updatedAt];
          if (v25)
          {
            v26 = v25;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = [v21 credentialIdentifier];
            if (v27)
            {
              v28 = v27;
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              if (Date.isAtLeast(days:after:)())
              {
                defaultLogger()();

                v31 = Logger.logObject.getter();
                v32 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v31, v32))
                {
                  v33 = swift_slowAlloc();
                  v34 = swift_slowAlloc();
                  v40 = v31;
                  v35 = v34;
                  v52 = v34;
                  *v33 = v39;
                  *(v33 + 4) = sub_10010150C(v50, v30, &v52);
                  v36 = v32;
                  v37 = v40;
                  _os_log_impl(&_mh_execute_header, v40, v36, "Identified credential %s for garbage collection", v33, 0xCu);
                  sub_100005090(v35);

                  v17 = v45;
                }

                else
                {
                }

                (*v42)(v48, v43);
                sub_100102214(&v52, v50, v30);

                v5 = v47;
                (*v51)(v17, v47);
                goto LABEL_19;
              }

              v38 = v47;
              (*v51)(v17, v47);
              v5 = v38;
            }

            else
            {
              (*v51)(v17, v5);
            }
          }
        }
      }

LABEL_19:
      if (v16 == ++v19)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100014B14(uint64_t a1, NSObject *a2)
{
  v132 = a2;
  v131 = type metadata accessor for DIPError.Code();
  v147 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Logger();
  v142 = *(v138 - 8);
  v4 = __chkstk_darwin(v138);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v111 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v111 - v11;
  __chkstk_darwin(v10);
  v14 = &v111 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v111 - v20;
  v22 = v150;
  result = sub_10005549C();
  if (!v22)
  {
    v125 = a1;
    v133 = v19;
    v135 = 0;
    v119 = v12;
    v122 = v9;
    v127 = v16;
    v120 = v6;
    v128 = v15;
    v24 = v142;
    v136 = v21;
    v25 = result;
    Date.init()();
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v25 >> 62;
    v143 = v25;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      v25 = v143;
      if (v29)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v30 + 4) = v31;

      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}ld presentment keys are potentially eligible for deletion", v30, 0xCu);
    }

    else
    {
    }

    v32 = v25;
    v33 = v147;
    v124 = *(v24 + 8);
    v142 = v24 + 8;
    v124(v14, v138);
    if (v29)
    {
      goto LABEL_82;
    }

    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v36 = v133;
    v37 = v128;
    if (v35)
    {
      v38 = 0;
      v150 = v32 & 0xC000000000000001;
      v144 = v32 + 32;
      v145 = v32 & 0xFFFFFFFFFFFFFF8;
      v140 = (v127 + 8);
      v118 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
      v117 = "MobileAssetFetch.refresh";
      v116 = 0x80000001001B2280;
      v115 = enum case for DIPError.Code.internalError(_:);
      v114 = (v33 + 104);
      v113 = 0x80000001001B2690;
      *&v34 = 136315394;
      v111 = v34;
      v112 = xmmword_1001AA160;
      v134 = v35;
      while (1)
      {
        if (v150)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v145 + 16))
          {
            goto LABEL_81;
          }

          v39 = *(v144 + 8 * v38);
        }

        v40 = v39;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        v42 = [v39 credential];
        if (!v42)
        {
          goto LABEL_12;
        }

        v43 = v42;
        v44 = [v42 options];
        if (!v44)
        {
          break;
        }

        v45 = v44;
        v46 = [v40 updatedAt];
        if (v46)
        {
          v33 = v46;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = [v40 identifier];
          if (v47)
          {
            v146 = v45;
            v48 = v47;
            v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v51 = v40;
            v52 = [v40 keyBlob];
            v129 = v52;
            if (v52)
            {
              v141 = v50;
              v53 = v36;
              v54 = v37;
              v55 = v52;
              v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              sub_1000092BC(v56, v58);
              v59 = [v40 keyBlob];
              if (v59)
              {
                v60 = v59;
                v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v62 = v61;

                v126 = 0;
              }

              else
              {
                v126 = 0;
                v139 = 0;
                v62 = 0xF000000000000000;
              }

              v35 = v134;
              v37 = v54;
              v36 = v53;
              v64 = v141;
            }

            else
            {
              v33 = v50;
              v63 = [v40 keySlot];
              v32 = v143;
              if (v63 <= 0)
              {
                (*v140)(v36, v37);

                goto LABEL_13;
              }

              v126 = v63;
              v139 = 0;
              v62 = 0xF000000000000000;
              v64 = v33;
            }

            v33 = v146;
            if ([v146 deleteInactiveKeysAfterDays] < 1)
            {
              (*v140)(v36, v37);
            }

            else
            {
              v33 = v136;
              if (Date.isAtLeast(days:after:)())
              {
                v65 = sub_10005947C();
                v33 = v65;
                if (v65 >> 62)
                {
                  v66 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v141 = v64;
                v121 = v62;
                v123 = v51;
                if (v66)
                {
                  v67 = 0;
                  v147 = (v33 & 0xC000000000000001);
                  v32 = v66;
                  while (1)
                  {
                    if (v147)
                    {
                      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v67 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_80;
                      }

                      v68 = *(v33 + 8 * v67 + 32);
                    }

                    v69 = v68;
                    v70 = v67 + 1;
                    if (__OFADD__(v67, 1))
                    {
                      break;
                    }

                    v71 = [v68 presentmentKey];
                    if (!v71)
                    {

                      v87 = v119;
                      defaultLogger()();
                      v88 = v141;

                      v89 = v43;
                      v33 = Logger.logObject.getter();
                      v90 = static os_log_type_t.debug.getter();

                      if (!os_log_type_enabled(v33, v90))
                      {

                        sub_10001C120(v139, v121);

                        goto LABEL_63;
                      }

                      LODWORD(v129) = v90;
                      v91 = swift_slowAlloc();
                      v148 = swift_slowAlloc();
                      *v91 = v111;
                      v92 = sub_10010150C(v137, v88, &v148);

                      *(v91 + 4) = v92;
                      *(v91 + 12) = 2080;
                      v147 = v89;
                      v93 = [v89 credentialIdentifier];
                      v37 = v128;
                      if (v93)
                      {
                        v94 = v93;
                        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v97 = v96;
                      }

                      else
                      {
                        v97 = 0xE500000000000000;
                        v95 = 0x3E6C696E3CLL;
                      }

                      v110 = sub_10010150C(v95, v97, &v148);

                      *(v91 + 14) = v110;
                      _os_log_impl(&_mh_execute_header, v33, v129, "Skipping deletion of presentment key %s in credential %s because credential has a payload without an assigned presentment key", v91, 0x16u);
                      swift_arrayDestroy();

                      sub_10001C120(v139, v121);
                      v124(v119, v138);
                      v36 = v133;
                      (*v140)(v133, v37);
                      goto LABEL_64;
                    }

                    v72 = v71;

                    ++v67;
                    if (v70 == v32)
                    {
                      goto LABEL_49;
                    }
                  }

LABEL_79:
                  __break(1u);
LABEL_80:
                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  v35 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_9;
                }

LABEL_49:

                v73 = v122;
                defaultLogger()();
                v74 = v141;

                v75 = v43;
                v76 = Logger.logObject.getter();
                v77 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v147 = swift_slowAlloc();
                  v148 = v147;
                  *v78 = v111;
                  *(v78 + 4) = sub_10010150C(v137, v74, &v148);
                  *(v78 + 12) = 2080;
                  v79 = [v75 credentialIdentifier];
                  v80 = v138;
                  if (v79)
                  {
                    v81 = v79;
                    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v84 = v83;
                  }

                  else
                  {
                    v84 = 0xE500000000000000;
                    v82 = 0x3E6C696E3CLL;
                  }

                  v98 = sub_10010150C(v82, v84, &v148);

                  *(v78 + 14) = v98;
                  _os_log_impl(&_mh_execute_header, v76, v77, "Identified presentment key %s in credential %s for deletion", v78, 0x16u);
                  swift_arrayDestroy();

                  v85 = v122;
                  v86 = v80;
                }

                else
                {

                  v85 = v73;
                  v86 = v138;
                }

                v124(v85, v86);
                v36 = v133;
                v99 = v146;
                [*(v125 + 16) deleteObject:v123];
                v100 = v135;
                sub_100050240();
                v33 = v132;
                if (v100)
                {
                  v147 = v75;
LABEL_62:
                  v135 = 0;
                  sub_100004E70(&unk_100200230, &unk_1001AB020);
                  v101 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
                  v102 = (*(*v101 + 80) + 32) & ~*(*v101 + 80);
                  v103 = swift_allocObject();
                  *(v103 + 16) = v112;
                  v104 = (v103 + v102 + v101[14]);
                  v105 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v105 - 8) + 104))(v103 + v102, v118, v105);
                  v104[3] = &type metadata for String;
                  v104[4] = &protocol witness table for String;
                  *v104 = 25447;
                  v104[1] = 0xE200000000000000;
                  sub_10010C6F8(v103);
                  swift_setDeallocating();
                  sub_10000A0D4(v103 + v102, &unk_100201890, &unk_1001AA550);
                  swift_deallocClassInstance();
                  (*v114)(v130, v115, v131);
                  type metadata accessor for DIPError();
                  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                  swift_allocError();
                  swift_errorRetain();
                  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                  v148 = 0;
                  v149 = 0xE000000000000000;
                  _StringGuts.grow(_:)(27);

                  v148 = 0xD000000000000019;
                  v149 = v113;
                  v106._countAndFlagsBits = v137;
                  v106._object = v141;
                  String.append(_:)(v106);

                  v33 = v148;
                  v87 = v120;
                  defaultLogger()();
                  DIPRecordError(_:message:log:)();

                  sub_10001C120(v139, v121);
LABEL_63:
                  v124(v87, v138);
                  v36 = v133;
                  v37 = v128;
                  (*v140)(v133, v128);
                }

                else
                {
                  v135 = 0;
                  v107 = v121;
                  if (v121 >> 60 == 15)
                  {
                    v32 = v143;
                    if (v129)
                    {
                      v33 = v75;
                      v37 = v128;
                      (*v140)(v36, v128);
                    }

                    else
                    {
                      v147 = v75;
                      sub_100032980(v126);
                      v135 = 0;
                      v37 = v128;
                      (*v140)(v36, v128);
                    }

                    v35 = v134;
                    goto LABEL_13;
                  }

                  v147 = v75;
                  v108 = v139;
                  sub_100009708(v139, v121);
                  v109 = v135;
                  sub_100027138(v108, v107);
                  if (v109)
                  {
                    sub_10001C120(v108, v107);
                    goto LABEL_62;
                  }

                  v135 = 0;
                  v33 = v108;
                  v37 = v128;
                  (*v140)(v36, v128);

                  sub_10001C120(v33, v107);
                  sub_10001C120(v33, v107);
                }

LABEL_64:
                v32 = v143;
                v35 = v134;
                goto LABEL_13;
              }

              (*v140)(v36, v37);
            }

            sub_10001C120(v139, v62);
            v32 = v143;
          }

          else
          {
            (*v140)(v36, v37);

            v32 = v143;
          }
        }

        else
        {
        }

LABEL_13:
        if (v38 == v35)
        {
          goto LABEL_76;
        }
      }

LABEL_12:
      goto LABEL_13;
    }

LABEL_76:

    sub_100050240();
    return (*(v127 + 8))(v136, v37);
  }

  return result;
}

uint64_t sub_100015C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_100015E04, 0, 0);
}

uint64_t sub_100015E04()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 104);
  *(v0 + 224) = *(v4 + 16);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  *(v5 + 16) = sub_10001BF58;
  *(v5 + 24) = v4;
  v6 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 416) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v3 + 104);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v7(v1, v6, v2);

  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  v9 = sub_100004E70(&qword_100200508, &qword_1001AB068);
  *v8 = v0;
  v8[1] = sub_100015F78;
  v10 = *(v0 + 216);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 96, v10, sub_10001BF74, v5, v9);
}

uint64_t sub_100015F78()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2[25] + 8))(v2[27], v2[24]);

    v3 = sub_100016BEC;
  }

  else
  {
    v4 = v2[27];
    v5 = v2[24];
    v6 = v2[25];

    v7 = *(v6 + 8);
    v2[34] = v7;
    v2[35] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v2[36] = v2[12];
    v3 = sub_100016108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100016108()
{
  v77 = v0;
  v1 = *(*(v0 + 288) + 16);
  *(v0 + 296) = v1;
  if (v1)
  {
    v2 = 0;
    *(v0 + 420) = enum case for DIPError.Code.internalError(_:);
    *(v0 + 424) = enum case for DIPError.PropertyKey.daemonSessionState(_:);
    v3 = _swiftEmptyArrayStorage;
    v4 = *(v0 + 264);
    while (1)
    {
      *(v0 + 304) = v2;
      *(v0 + 312) = v3;
      v21 = (*(v0 + 288) + 32 * v2);
      v22 = v21[4];
      *(v0 + 320) = v22;
      v23 = v21[5];
      *(v0 + 328) = v23;
      v24 = v21[6];
      *(v0 + 336) = v24;
      v25 = v21[7];
      *(v0 + 344) = v25;
      if ((v25 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v22, v23, v24, v25);

      v75 = v24;
      sub_100009708(v24, v25 & 0xDFFFFFFFFFFFFFFFLL);
      defaultLogger()();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 176);
      v30 = *(v0 + 160);
      v74 = *(v0 + 152);
      if (v28)
      {
        v72 = v3;
        v31 = swift_slowAlloc();
        v71 = v29;
        v32 = v22;
        v33 = swift_slowAlloc();
        v76[0] = v33;
        *v31 = 136315138;
        *(v31 + 4) = sub_10010150C(v32, v23, v76);
        _os_log_impl(&_mh_execute_header, v26, v27, "deleting SES encryption key %s", v31, 0xCu);
        sub_100005090(v33);
        v22 = v32;

        v3 = v72;

        v34 = *(v30 + 8);
        v34(v71, v74);
      }

      else
      {

        v34 = *(v30 + 8);
        v34(v29, v74);
      }

      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v4)
      {
        v5 = *(v0 + 420);
        v69 = *(v0 + 420);
        v7 = *(v0 + 136);
        v6 = *(v0 + 144);
        v8 = *(v0 + 128);

        v73 = *(v7 + 104);
        v73(v6, v5, v8);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v73(v6, v69, v8);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v75, v25 & 0xDFFFFFFFFFFFFFFFLL);
        v67 = *(v0 + 336);
        v68 = *(v0 + 344);
        v65 = *(v0 + 320);
        v66 = *(v0 + 328);
        v9 = *(v0 + 424);
        v64 = *(v0 + 420);
        v10 = *(v0 + 168);
        v11 = *(v0 + 128);
        v12 = *(v0 + 144);
        v70 = *(v0 + 152);
        sub_100004E70(&unk_100200230, &unk_1001AB020);
        v13 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
        v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1001AA160;
        v16 = v15 + v14;
        v17 = (v16 + v13[14]);
        v18 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v18 - 8) + 104))(v16, v9, v18);
        v17[3] = &type metadata for String;
        v17[4] = &protocol witness table for String;
        *v17 = 25447;
        v17[1] = 0xE200000000000000;
        sub_10010C6F8(v15);
        swift_setDeallocating();
        sub_10000A0D4(v16, &unk_100201890, &unk_1001AA550);
        swift_deallocClassInstance();
        v73(v12, v64, v11);
        swift_allocError();
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v19 = *(v0 + 72);
        *(v0 + 48) = *(v0 + 64);
        *(v0 + 56) = v19;
        v20._countAndFlagsBits = 0xD00000000000002BLL;
        v20._object = 0x80000001001B25F0;
        String.append(_:)(v20);
        *(v0 + 16) = v65;
        *(v0 + 24) = v66;
        *(v0 + 32) = v67;
        *(v0 + 40) = v68;
        _print_unlocked<A, B>(_:_:)();
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        sub_10001BFFC(v65, v66, v67, v68);
        v34(v10, v70);
        v3 = *(v0 + 312);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100100418(0, *(v3 + 2) + 1, 1, v3);
        }

        v36 = *(v3 + 2);
        v35 = *(v3 + 3);
        if (v36 >= v35 >> 1)
        {
          v3 = sub_100100418((v35 > 1), v36 + 1, 1, v3);
        }

        sub_1000092BC(v75, v25 & 0xDFFFFFFFFFFFFFFFLL);
        *(v3 + 2) = v36 + 1;
        v37 = &v3[16 * v36];
        *(v37 + 4) = v22;
        *(v37 + 5) = v23;
        sub_10001BFFC(v22, v23, v75, v25);
      }

      v4 = 0;
      v2 = *(v0 + 304) + 1;
      if (v2 == *(v0 + 296))
      {
        v38 = v3;
        goto LABEL_22;
      }
    }

    sub_10001BFB8(v22, v23, v24, v25);

    defaultLogger()();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 184);
    v43 = *(v0 + 152);
    v44 = *(v0 + 160);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = v22;
      v47 = swift_slowAlloc();
      v76[0] = v47;
      *v45 = 136315138;
      *(v45 + 4) = sub_10010150C(v46, v23, v76);
      _os_log_impl(&_mh_execute_header, v39, v40, "deleting SEP encryption key %s", v45, 0xCu);
      sub_100005090(v47);
      v22 = v46;
    }

    v48 = *(v44 + 8);
    v48(v42, v43);
    *(v0 + 384) = v48;
    *(v0 + 80) = 778790244;
    *(v0 + 88) = 0xE400000000000000;
    v49._countAndFlagsBits = v22;
    v49._object = v23;
    String.append(_:)(v49);
    v50 = *(v0 + 80);
    v51 = *(v0 + 88);
    *(v0 + 392) = v51;
    v52 = swift_task_alloc();
    *(v0 + 400) = v52;
    *v52 = v0;
    v52[1] = sub_100016F70;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v50, v51);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_22:
    v53 = *(v0 + 240);
    v54 = *(v0 + 416);
    v55 = *(v0 + 208);
    v56 = *(v0 + 192);
    v57 = *(v0 + 120);
    v58 = *(v0 + 104);

    v59 = swift_allocObject();
    *(v0 + 352) = v59;
    v59[2] = v58;
    v59[3] = v38;
    v59[4] = v57;
    v60 = swift_allocObject();
    *(v0 + 360) = v60;
    *(v60 + 16) = sub_10001C088;
    *(v60 + 24) = v59;

    v53(v55, v54, v56);

    v61 = swift_task_alloc();
    *(v0 + 368) = v61;
    *v61 = v0;
    v61[1] = sub_100016C9C;
    v62 = *(v0 + 208);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v61, v62, sub_10001C0A8, v60, &type metadata for () + 8);
  }
}

uint64_t sub_100016BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016C9C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    (*(v2 + 272))(*(v2 + 208), *(v2 + 192));

    v3 = sub_100016EC0;
  }

  else
  {
    v4 = *(v2 + 272);
    v5 = *(v2 + 208);
    v6 = *(v2 + 192);

    v4(v5, v6);
    v3 = sub_100016E18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100016E18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016F70()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_100017BB4;
  }

  else
  {
    v2 = sub_1000170A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000170A4()
{
  v82 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100100418(0, *(v2 + 2) + 1, 1, *(v0 + 312));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100100418((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  *(v2 + 2) = v4 + 1;
  v9 = &v2[16 * v4];
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;
  sub_10001BFFC(v7, v8, v5, v6);
  v10 = *(v0 + 304) + 1;
  if (v10 == *(v0 + 296))
  {
LABEL_6:
    v11 = *(v0 + 240);
    v12 = *(v0 + 416);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    v15 = v2;
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);

    v18 = swift_allocObject();
    *(v0 + 352) = v18;
    v18[2] = v17;
    v18[3] = v15;
    v18[4] = v16;
    v19 = swift_allocObject();
    *(v0 + 360) = v19;
    *(v19 + 16) = sub_10001C088;
    *(v19 + 24) = v18;

    v11(v13, v12, v14);

    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v20[1] = sub_100016C9C;
    v21 = *(v0 + 208);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_10001C0A8, v19, &type metadata for () + 8);
  }

  else
  {
    v22 = *(v0 + 408);
    while (1)
    {
      *(v0 + 304) = v10;
      *(v0 + 312) = v2;
      v40 = (*(v0 + 288) + 32 * v10);
      v41 = v40[4];
      *(v0 + 320) = v41;
      v42 = v40[5];
      *(v0 + 328) = v42;
      v43 = v40[6];
      *(v0 + 336) = v43;
      v44 = v40[7];
      *(v0 + 344) = v44;
      if ((v44 & 0x2000000000000000) == 0)
      {
        break;
      }

      v80 = v22;
      sub_10001BFB8(v41, v42, v43, v44);

      sub_100009708(v43, v44 & 0xDFFFFFFFFFFFFFFFLL);
      defaultLogger()();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 160);
      v76 = *(v0 + 152);
      v78 = *(v0 + 176);
      if (v47)
      {
        v73 = v2;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v81[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_10010150C(v41, v42, v81);
        _os_log_impl(&_mh_execute_header, v45, v46, "deleting SES encryption key %s", v49, 0xCu);
        sub_100005090(v50);

        v2 = v73;
      }

      v23 = *(v48 + 8);
      v23(v78, v76);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v80)
      {
        v24 = *(v0 + 420);
        v75 = *(v0 + 420);
        v77 = v23;
        v25 = *(v0 + 136);
        v26 = *(v0 + 144);
        v27 = *(v0 + 128);

        v79 = *(v25 + 104);
        v79(v26, v24, v27);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v79(v26, v75, v27);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v43, v44 & 0xDFFFFFFFFFFFFFFFLL);
        v71 = *(v0 + 336);
        v72 = *(v0 + 344);
        v69 = *(v0 + 320);
        v70 = *(v0 + 328);
        v28 = *(v0 + 424);
        v68 = *(v0 + 420);
        v29 = *(v0 + 168);
        v30 = *(v0 + 128);
        v31 = *(v0 + 144);
        v74 = *(v0 + 152);
        sub_100004E70(&unk_100200230, &unk_1001AB020);
        v32 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
        v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1001AA160;
        v35 = v34 + v33;
        v36 = (v35 + v32[14]);
        v37 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v37 - 8) + 104))(v35, v28, v37);
        v36[3] = &type metadata for String;
        v36[4] = &protocol witness table for String;
        *v36 = 25447;
        v36[1] = 0xE200000000000000;
        sub_10010C6F8(v34);
        swift_setDeallocating();
        sub_10000A0D4(v35, &unk_100201890, &unk_1001AA550);
        swift_deallocClassInstance();
        v79(v31, v68, v30);
        swift_allocError();
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v38 = *(v0 + 72);
        *(v0 + 48) = *(v0 + 64);
        *(v0 + 56) = v38;
        v39._countAndFlagsBits = 0xD00000000000002BLL;
        v39._object = 0x80000001001B25F0;
        String.append(_:)(v39);
        *(v0 + 16) = v69;
        *(v0 + 24) = v70;
        *(v0 + 32) = v71;
        *(v0 + 40) = v72;
        _print_unlocked<A, B>(_:_:)();
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        sub_10001BFFC(v69, v70, v71, v72);
        v77(v29, v74);
        v2 = *(v0 + 312);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100100418(0, *(v2 + 2) + 1, 1, v2);
        }

        v52 = *(v2 + 2);
        v51 = *(v2 + 3);
        if (v52 >= v51 >> 1)
        {
          v2 = sub_100100418((v51 > 1), v52 + 1, 1, v2);
        }

        sub_1000092BC(v43, v44 & 0xDFFFFFFFFFFFFFFFLL);
        *(v2 + 2) = v52 + 1;
        v53 = &v2[16 * v52];
        *(v53 + 4) = v41;
        *(v53 + 5) = v42;
        sub_10001BFFC(v41, v42, v43, v44);
      }

      v22 = 0;
      v10 = *(v0 + 304) + 1;
      if (v10 == *(v0 + 296))
      {
        goto LABEL_6;
      }
    }

    sub_10001BFB8(v41, v42, v43, v44);

    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 184);
    v58 = *(v0 + 152);
    v59 = *(v0 + 160);
    if (v56)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_10010150C(v41, v42, v81);
      _os_log_impl(&_mh_execute_header, v54, v55, "deleting SEP encryption key %s", v60, 0xCu);
      sub_100005090(v61);
    }

    v62 = *(v59 + 8);
    v62(v57, v58);
    *(v0 + 384) = v62;
    *(v0 + 80) = 778790244;
    *(v0 + 88) = 0xE400000000000000;
    v63._countAndFlagsBits = v41;
    v63._object = v42;
    String.append(_:)(v63);
    v64 = *(v0 + 80);
    v65 = *(v0 + 88);
    *(v0 + 392) = v65;
    v66 = swift_task_alloc();
    *(v0 + 400) = v66;
    *v66 = v0;
    v66[1] = sub_100016F70;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v64, v65);
  }
}

uint64_t sub_100017BB4()
{
  v70 = v0;
  v67 = *(*(v0 + 136) + 104);
  v67(*(v0 + 144), *(v0 + 420), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 384);
  v68 = v0;
  v61 = *(v0 + 336);
  v62 = *(v0 + 344);
  v59 = *(v0 + 320);
  v60 = *(v0 + 328);
  v2 = *(v0 + 424);
  v58 = *(v0 + 420);
  v63 = *(v0 + 168);
  v57 = *(v0 + 128);
  v64 = *(v0 + 152);
  v3 = *(v0 + 144);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v4 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AA160;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v9 - 8) + 104))(v7, v2, v9);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 25447;
  v8[1] = 0xE200000000000000;
  sub_10010C6F8(v6);
  swift_setDeallocating();
  sub_10000A0D4(v7, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  v67(v3, v58, v57);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v68[8] = 0;
  v68[9] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v10 = v68[9];
  v68[6] = v68[8];
  v68[7] = v10;
  v11._countAndFlagsBits = 0xD00000000000002BLL;
  v11._object = 0x80000001001B25F0;
  String.append(_:)(v11);
  v68[2] = v59;
  v68[3] = v60;
  v68[4] = v61;
  v68[5] = v62;
  _print_unlocked<A, B>(_:_:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v12 = v68;

  sub_10001BFFC(v59, v60, v61, v62);
  v1(v63, v64);
  v13 = v68[39];
  while (1)
  {
    v14 = v12[38] + 1;
    if (v14 == v12[37])
    {
      break;
    }

    v12[38] = v14;
    v12[39] = v13;
    v15 = (v12[36] + 32 * v14);
    v16 = v15[4];
    v12[40] = v16;
    v17 = v15[5];
    v12[41] = v17;
    v18 = v15[6];
    v12[42] = v18;
    v19 = v15[7];
    v12[43] = v19;
    if ((v19 & 0x2000000000000000) == 0)
    {
      sub_10001BFB8(v16, v17, v18, v19);

      defaultLogger()();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v12[23];
      v48 = v12[19];
      v47 = v12[20];
      if (v45)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v69[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_10010150C(v16, v17, v69);
        _os_log_impl(&_mh_execute_header, v43, v44, "deleting SEP encryption key %s", v49, 0xCu);
        sub_100005090(v50);

        v12 = v68;
      }

      v51 = *(v47 + 8);
      v51(v46, v48);
      v12[48] = v51;
      v12[10] = 778790244;
      v12[11] = 0xE400000000000000;
      v52._countAndFlagsBits = v16;
      v52._object = v17;
      String.append(_:)(v52);
      v53 = v12[10];
      v54 = v12[11];
      v12[49] = v54;
      v55 = swift_task_alloc();
      v12[50] = v55;
      *v55 = v12;
      v55[1] = sub_100016F70;

      return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v53, v54);
    }

    sub_10001BFB8(v16, v17, v18, v19);

    sub_100009708(v18, v19 & 0xDFFFFFFFFFFFFFFFLL);
    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v12[22];
    v26 = v12 + 19;
    v25 = v12[19];
    v24 = v26[1];
    if (v22)
    {
      v66 = v23;
      v27 = swift_slowAlloc();
      v65 = v25;
      v28 = swift_slowAlloc();
      v69[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10010150C(v16, v17, v69);
      _os_log_impl(&_mh_execute_header, v20, v21, "deleting SES encryption key %s", v27, 0xCu);
      sub_100005090(v28);

      (*(v24 + 8))(v66, v65);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v12 = v68;
    dispatch thunk of SESKeystore.deleteKey(_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100100418(0, *(v13 + 2) + 1, 1, v13);
    }

    v30 = *(v13 + 2);
    v29 = *(v13 + 3);
    if (v30 >= v29 >> 1)
    {
      v13 = sub_100100418((v29 > 1), v30 + 1, 1, v13);
    }

    sub_1000092BC(v18, v19 & 0xDFFFFFFFFFFFFFFFLL);
    *(v13 + 2) = v30 + 1;
    v31 = &v13[16 * v30];
    *(v31 + 4) = v16;
    *(v31 + 5) = v17;
    sub_10001BFFC(v16, v17, v18, v19);
  }

  v32 = v12[30];
  v33 = *(v12 + 104);
  v34 = v12[26];
  v35 = v12[24];
  v36 = v12;
  v37 = v12[15];
  v38 = v36[13];

  v39 = swift_allocObject();
  v36[44] = v39;
  v39[2] = v38;
  v39[3] = v13;
  v39[4] = v37;
  v40 = swift_allocObject();
  v36[45] = v40;
  *(v40 + 16) = sub_10001C088;
  *(v40 + 24) = v39;

  v32(v34, v33, v35);

  v41 = swift_task_alloc();
  v36[46] = v41;
  *v41 = v36;
  v41[1] = sub_100016C9C;
  v42 = v36[26];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v41, v42, sub_10001C0A8, v40, &type metadata for () + 8);
}

uint64_t sub_1000187EC@<X0>(void *a1@<X8>)
{
  v105 = a1;
  v2 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v2 - 8);
  v103 = &v87 - v3;
  v104 = type metadata accessor for CredentialKeyType();
  v107 = *(v104 - 8);
  __chkstk_darwin(v104);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v87 - v14;
  result = sub_1000558E0();
  if (!v1)
  {
    v17 = result;
    v18 = v106;
    v111 = v13;
    v98 = v6;
    v99 = 0;
    v101 = v8;
    v102 = v10;
    v108 = v9;
    v100 = v5;
    result = Date.init()();
    if (v17 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v20 = result;
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v108;
    v22 = v111;
    if (v20)
    {
      if (v20 >= 1)
      {
        v23 = v18;
        v24 = v15;
        v25 = 0;
        v113 = v17 & 0xC000000000000001;
        v109 = (v102 + 8);
        v106 = v23 + 1;
        v91 = v107 + 48;
        v89 = v107 + 32;
        v88 = v107 + 88;
        v87 = __PAIR64__(enum case for CredentialKeyType.ses(_:), enum case for CredentialKeyType.sep(_:));
        v93 = v107 + 104;
        v94 = v107 + 8;
        v107 = _swiftEmptyArrayStorage;
        v92 = enum case for CredentialKeyType.invalid(_:);
        *&v19 = 136315394;
        v95 = v19;
        v97 = v15;
        v110 = v17;
        v112 = v20;
        while (1)
        {
          v26 = v113 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v25 + 32);
          v27 = v26;
          v28 = [v26 credential];
          if (v28)
          {
            break;
          }

LABEL_8:
          if (v20 == ++v25)
          {
            goto LABEL_58;
          }
        }

        v29 = v28;
        v30 = [v28 options];
        if (v30)
        {
          v31 = v30;
          v32 = [v27 updatedAt];
          if (v32)
          {
            v33 = v22;
            v34 = v32;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v35 = [v27 identifier];
            if (v35)
            {
              v36 = v35;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;

              if ([v31 deleteInactiveKeysAfterDays] < 1)
              {
                v51 = *v109;
                v22 = v111;
              }

              else
              {
                v22 = v111;
                if (Date.isAtLeast(days:after:)())
                {
                  v40 = v101;
                  defaultLogger()();

                  v41 = v29;
                  v42 = Logger.logObject.getter();
                  v43 = static os_log_type_t.debug.getter();

                  LODWORD(v96) = v43;
                  if (os_log_type_enabled(v42, v43))
                  {
                    v44 = swift_slowAlloc();
                    v114 = swift_slowAlloc();
                    *v44 = v95;
                    v45 = sub_10010150C(v37, v39, &v114);

                    *(v44 + 4) = v45;
                    *(v44 + 12) = 2080;
                    v90 = v41;
                    v46 = [v41 credentialIdentifier];
                    if (v46)
                    {
                      v47 = v46;
                      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v50 = v49;
                    }

                    else
                    {
                      v50 = 0xE500000000000000;
                      v48 = 0x3E6C696E3CLL;
                    }

                    v52 = sub_10010150C(v48, v50, &v114);

                    *(v44 + 14) = v52;
                    _os_log_impl(&_mh_execute_header, v42, v96, "Identified device encryption key %s in credential %s for deletion", v44, 0x16u);
                    swift_arrayDestroy();

                    (*v106)(v101, v98);
                    v41 = v90;
                  }

                  else
                  {

                    (*v106)(v40, v98);
                  }

                  v53 = [v27 identifier];
                  v54 = v100;
                  v21 = v108;
                  v24 = v97;
                  if (v53)
                  {
                    v55 = v53;
                    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v57 = v56;

                    v58 = [v27 keyType];
                    if (!v58)
                    {
                      (*v109)(v111, v21);

                      goto LABEL_39;
                    }

                    v59 = v58;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v60 = v103;
                    CredentialKeyType.init(rawValue:)();
                    v61 = v104;
                    if ((*v91)(v60, 1, v104) == 1)
                    {
                      v21 = v108;
                      (*v109)(v111, v108);

                      sub_10000A0D4(v60, &qword_100200510, qword_1001AB070);
                      v54 = v100;
LABEL_39:
                      v62 = v104;
                      (*v93)(v54, v92, v104);
LABEL_40:
                      v20 = v112;
                      (*v94)(v54, v62);
                      v17 = v110;
                      v22 = v111;
                      goto LABEL_8;
                    }

                    v54 = v100;
                    (*v89)(v100, v60, v61);
                    v63 = (*v88)(v54, v61);
                    if (v63 == HIDWORD(v87))
                    {
                      v64 = [v27 keyBlob];
                      if (v64)
                      {
                        v65 = v64;
                        v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v67 = v66;

                        v68 = v41;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v107 = sub_100100524(0, *(v107 + 2) + 1, 1, v107);
                        }

                        v70 = *(v107 + 2);
                        v69 = *(v107 + 3);
                        if (v70 >= v69 >> 1)
                        {
                          v107 = sub_100100524((v69 > 1), v70 + 1, 1, v107);
                        }

                        v71 = v67 | 0x2000000000000000;
                        v21 = v108;
                        v72 = v111;
                        (*v109)(v111, v108);
                        v73 = v107;
                        *(v107 + 2) = v70 + 1;
                        v74 = &v73[32 * v70];
                        *(v74 + 4) = v96;
                        *(v74 + 5) = v57;
                        v22 = v72;
                        *(v74 + 6) = v90;
                        *(v74 + 7) = v71;
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      if (v63 != v87)
                      {
                        v62 = v61;
                        v21 = v108;
                        (*v109)(v111, v108);

                        goto LABEL_40;
                      }

                      v75 = [v27 publicKeyIdentifier];
                      if (v75)
                      {
                        v76 = v75;
                        v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v78 = v77;

                        v79 = v41;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v107 = sub_100100524(0, *(v107 + 2) + 1, 1, v107);
                        }

                        v81 = *(v107 + 2);
                        v80 = *(v107 + 3);
                        if (v81 >= v80 >> 1)
                        {
                          v107 = sub_100100524((v80 > 1), v81 + 1, 1, v107);
                        }

                        v82 = v108;
                        v83 = v111;
                        (*v109)(v111, v108);
                        v84 = v107;
                        *(v107 + 2) = v81 + 1;
                        v85 = &v84[32 * v81];
                        *(v85 + 4) = v96;
                        *(v85 + 5) = v57;
                        v22 = v83;
                        *(v85 + 6) = v90;
                        *(v85 + 7) = v78;
                        v21 = v82;
                        goto LABEL_27;
                      }
                    }

                    v21 = v108;
                    v86 = v111;
                    (*v109)(v111, v108);

                    v22 = v86;
                  }

                  else
                  {
                    v22 = v111;
                    (*v109)(v111, v108);
                  }

LABEL_27:
                  v17 = v110;
                  goto LABEL_28;
                }

                v51 = *v109;
              }

              v21 = v108;
              v51(v22, v108);

              goto LABEL_27;
            }

            (*v109)(v33, v21);

            v22 = v33;
            goto LABEL_27;
          }
        }

LABEL_28:
        v20 = v112;
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      v107 = _swiftEmptyArrayStorage;
      v24 = v15;
LABEL_58:

      result = (*(v102 + 8))(v24, v21);
      *v105 = v107;
    }
  }

  return result;
}

unint64_t sub_100019348(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v65 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v66 = a1;
  result = sub_1000558E0();
  if (!v2)
  {
    v68 = v14;
    v69 = v8;
    v60 = v12;
    v17 = result;
    if (result >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v65;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v65;
      if (v18)
      {
LABEL_4:
        v59 = v5;
        if (v18 < 1)
        {
          __break(1u);
        }

        v20 = 0;
        v71 = v17 & 0xC000000000000001;
        v67 = (v9 + 8);
        v57 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
        v56 = "MobileAssetFetch.refresh";
        v55 = 0x80000001001B2280;
        v54 = enum case for DIPError.Code.internalError(_:);
        v53 = (v19 + 104);
        v52 = "ncryptionKey(uuid:)";
        *&v16 = 136315138;
        v51 = v16;
        v50 = xmmword_1001AA160;
        v64 = v17;
        v65 = a2;
        v58 = v7;
        v70 = v18;
        do
        {
          if (v71)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v17 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = [v21 identifier];
          if (v23)
          {
            v24 = v23;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            v72 = v25;
            v73 = v27;
            __chkstk_darwin(v28);
            v49 = &v72;
            if (sub_100120CF8(sub_10000ED28, v48, a2))
            {
              v29 = v68;
              defaultLogger()();

              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v72 = v33;
                *v32 = v51;
                *(v32 + 4) = sub_10010150C(v25, v27, &v72);
                _os_log_impl(&_mh_execute_header, v30, v31, "deleting encryption key %s from coreData", v32, 0xCu);
                sub_100005090(v33);

                v34 = *v67;
                (*v67)(v68, v69);
              }

              else
              {

                v34 = *v67;
                (*v67)(v29, v69);
              }

              v35 = *(v66 + 16);
              [v35 deleteObject:v22];
              v72 = 0;
              if ([v35 save:&v72])
              {
                v36 = v72;
              }

              else
              {
                v37 = v72;
                v63 = v34;
                v38 = v37;
                v62 = _convertNSErrorToError(_:)();

                swift_willThrow();
                sub_100004E70(&unk_100200230, &unk_1001AB020);
                v39 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
                v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
                v41 = swift_allocObject();
                *(v41 + 16) = v50;
                v42 = v41 + v40;
                v43 = (v42 + v39[14]);
                v44 = type metadata accessor for DIPError.PropertyKey();
                (*(*(v44 - 8) + 104))(v42, v57, v44);
                v43[3] = &type metadata for String;
                v43[4] = &protocol witness table for String;
                *v43 = 25447;
                v43[1] = 0xE200000000000000;
                v61 = sub_10010C6F8(v41);
                swift_setDeallocating();
                sub_10000A0D4(v42, &unk_100201890, &unk_1001AA550);
                swift_deallocClassInstance();
                (*v53)(v58, v54, v59);
                type metadata accessor for DIPError();
                sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                swift_allocError();
                swift_errorRetain();
                v49 = 411;
                v48[0] = 0xD000000000000011;
                v48[1] = v55;
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                v72 = 0;
                v73 = 0xE000000000000000;
                _StringGuts.grow(_:)(57);
                v45._countAndFlagsBits = 0xD000000000000037;
                v45._object = (v52 | 0x8000000000000000);
                String.append(_:)(v45);
                v46._countAndFlagsBits = v25;
                v46._object = v27;
                String.append(_:)(v46);

                v47 = v60;
                defaultLogger()();
                DIPRecordError(_:message:log:)();

                v63(v47, v69);
              }

              v17 = v64;
              a2 = v65;
              v18 = v70;
            }

            else
            {

              v18 = v70;
            }
          }

          else
          {
          }

          ++v20;
        }

        while (v18 != v20);
      }
    }

    return sub_100050240();
  }

  return result;
}

unint64_t sub_100019B18(uint64_t a1, uint64_t a2)
{
  result = sub_100051CD4();
  if (!v2)
  {
    v6 = result;
    v14 = 0;
    if (result >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = a2;
      v8 = 0;
      a2 = i;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = v9;
        sub_10001AAE4(&v13, v12, &v14, a1);

        ++v8;
        if (v11 == a2)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    return sub_100050240();
  }

  return result;
}

uint64_t sub_100019C50(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(51);
  v4._object = 0x80000001001B2530;
  v4._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

id sub_100019CD4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v88 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v92 = v7;
  v93 = v8;
  v9 = __chkstk_darwin(v7);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v77 - v12;
  v13 = __chkstk_darwin(v11);
  v87 = &v77 - v14;
  v15 = __chkstk_darwin(v13);
  v89 = &v77 - v16;
  __chkstk_darwin(v15);
  v90 = &v77 - v17;
  v18 = type metadata accessor for CredentialKeyType();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v77 - v24;
  __chkstk_darwin(v23);
  v27 = &v77 - v26;
  v28 = enum case for CredentialKeyType.legacySE(_:);
  v94 = *(v19 + 104);
  (v94)(&v77 - v26, enum case for CredentialKeyType.legacySE(_:), v18);
  v29 = sub_100055D40(v27, 0);
  if (v1)
  {
    return (*(v19 + 8))(v27, v18);
  }

  v79 = v22;
  v80 = v29;
  v31 = *(v19 + 8);
  v31(v27, v18);
  (v94)(v25, v28, v18);
  v78 = sub_100055D40(v25, 1);
  v31(v25, v18);
  v32 = v79;
  v94();
  v33 = a1;
  v34 = sub_100055D40(v32, 2);
  v31(v32, v18);
  v35 = v90;
  defaultLogger()();
  v36 = v80;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v36 >> 62;
  v77 = v33;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 134218496;
    if (v40)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v42 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 4) = v42;

    *(v41 + 12) = 2048;
    if (v78 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 14) = v43;

    *(v41 + 22) = 2048;
    v44 = v34;
    if (v34 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 24) = v45;

    _os_log_impl(&_mh_execute_header, v37, v38, "count of keys : %ld + %ld + %ld", v41, 0x20u);
  }

  else
  {

    v44 = v34;
  }

  v46 = v92;
  v48 = v93 + 8;
  v47 = *(v93 + 8);
  v47(v35, v92);
  if (v40)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v91;
  if (v49)
  {

LABEL_19:

LABEL_20:
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v47;
      v55 = v50;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v95 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10010150C(0xD000000000000024, 0x80000001001B2400, &v95);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s no action performed", v56, 0xCu);
      sub_100005090(v57);

      v54(v55, v46);
    }

    else
    {

      v47(v50, v46);
    }

    return sub_100050240();
  }

  if (v78 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v51)
  {
    goto LABEL_19;
  }

  if (v44 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58)
  {
    goto LABEL_20;
  }

  v93 = v48;
  v59 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v59)
  {
    v94 = v59;
    v60 = [v59 encryptedACL];
    if (v60)
    {
      v61 = v60;
      v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = v64 >> 62;
      if ((v64 >> 62) > 1)
      {
        if (v65 != 2)
        {
          sub_1000092BC(v62, v64);
          goto LABEL_44;
        }

        v70 = *(v62 + 16);
        v71 = *(v62 + 24);
        sub_1000092BC(v62, v64);
      }

      else
      {
        if (!v65)
        {
          sub_1000092BC(v62, v64);
          if ((v64 & 0xFF000000000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_40:
          v72 = v87;
          defaultLogger()();
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v73, v74, "Setting sidv acl to empty data", v75, 2u);
          }

          v47(v72, v46);
          isa = Data._bridgeToObjectiveC()().super.isa;
          [v94 setEncryptedACL:isa];

          sub_100050240();
          return sub_100050240();
        }

        sub_1000092BC(v62, v64);
        v70 = v62;
        v71 = v62 >> 32;
      }

      if (v70 != v71)
      {
        goto LABEL_40;
      }
    }

LABEL_44:

    return sub_100050240();
  }

  v66 = v89;
  defaultLogger()();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "missing global auth acl, skipping", v69, 2u);
  }

  return (v47)(v66, v46);
}

uint64_t sub_10001A898@<X0>(void *a1@<X8>)
{
  result = sub_100014668(&v4);
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_10001A940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001A9A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001AA08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001AA74()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001AAE4(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v163 = a4;
  v173 = a3;
  v177 = a2;
  v172 = type metadata accessor for DIPError.Code();
  v196 = *(v172 - 8);
  __chkstk_darwin(v172);
  v176 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for DIPError();
  v195 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for Date();
  v188 = *(v192 - 8);
  v7 = __chkstk_darwin(v192);
  v175 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v182 = &v150 - v10;
  __chkstk_darwin(v9);
  v190 = &v150 - v11;
  v194 = type metadata accessor for Logger();
  v187 = *(v194 - 8);
  v12 = __chkstk_darwin(v194);
  v14 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v150 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v150 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v150 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v150 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v150 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v150 - v31;
  __chkstk_darwin(v30);
  v34 = &v150 - v33;
  v35 = *a1;
  v36 = v199;
  sub_10005964C();
  if (!v36)
  {
    v39 = v37;
    v180 = 0;
    v162 = v35;
    v193 = v34;
    v191 = v32;
    v174 = v29;
    v154 = v26;
    v151 = v23;
    v168 = v20;
    v167 = v17;
    v166 = v14;
    v189 = v37;
    if (v37 >> 62)
    {
      goto LABEL_63;
    }

    v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v41 = v191;
    v42 = v192;
    v43 = v190;
    v44 = v193;
    v45 = v194;
    v46 = v188;
    if (v40)
    {
      v47 = 0;
      v184 = v39 & 0xFFFFFFFFFFFFFF8;
      ++v187;
      v188 = v39 & 0xC000000000000001;
      v165 = (v46 + 16);
      v164 = (v46 + 8);
      v153 = "o remove sidv acl";
      v161 = "MobileAssetFetch.refresh";
      v160 = 0x80000001001B24A0;
      v159 = enum case for DIPError.Code.internalError(_:);
      v158 = (v196 + 104);
      v157 = (v195 + 16);
      v156 = "tectionKeys(keyManager:)";
      v155 = (v195 + 8);
      *&v38 = 136315138;
      v185 = v38;
      *&v38 = 136315394;
      v152 = v38;
      v186 = v40;
      while (1)
      {
        if (v188)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v47 >= *(v184 + 16))
          {
            goto LABEL_61;
          }

          v48 = *(v39 + 8 * v47 + 32);
        }

        v49 = v48;
        if (__OFADD__(v47, 1))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v149 = _CocoaArrayWrapper.endIndex.getter();
          v39 = v189;
          v40 = v149;
          goto LABEL_4;
        }

        v195 = v47 + 1;
        v196 = v47;
        defaultLogger()();
        v50 = v49;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v197 = v54;
          *v53 = v185;
          v55 = [v50 identifier];
          if (v55)
          {
            v56 = v55;
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;
          }

          else
          {
            v57 = 0;
            v59 = 0xE000000000000000;
          }

          v60 = sub_10010150C(v57, v59, &v197);

          *(v53 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v51, v52, "checking if payload protection key %s has a payload", v53, 0xCu);
          sub_100005090(v54);

          v44 = v193;
          v45 = v194;
          v199 = *v187;
          v199(v193, v194);
          v41 = v191;
          v42 = v192;
          v43 = v190;
        }

        else
        {

          v199 = *v187;
          v199(v44, v45);
        }

        v61 = [v50 protectedPayload];
        if (v61)
        {

          defaultLogger()();
          v62 = v50;
          v63 = Logger.logObject.getter();
          v64 = v41;
          v65 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v63, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v197 = v67;
            *v66 = v185;
            v68 = [v62 identifier];
            if (v68)
            {
              v69 = v68;
              v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v72 = v71;
            }

            else
            {
              v70 = 0;
              v72 = 0xE000000000000000;
            }

            v94 = sub_10010150C(v70, v72, &v197);

            *(v66 + 4) = v94;
            _os_log_impl(&_mh_execute_header, v63, v65, "Skipping payload protection key deletion for %s as it is associated with a payload", v66, 0xCu);
            sub_100005090(v67);

            v41 = v191;
            v45 = v194;
            v199(v191, v194);
            v42 = v192;
            v43 = v190;
          }

          else
          {

            v199(v64, v45);
            v41 = v64;
          }

          goto LABEL_7;
        }

        v73 = [v50 identifier];
        if (!v73)
        {

          goto LABEL_8;
        }

        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = [v50 createdAt];
        if (!v78)
        {
          break;
        }

        v181 = v75;
        v183 = v77;
        v79 = v78;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v80 = v174;
        defaultLogger()();
        v81 = v182;
        (*v165)(v182, v43, v42);
        v82 = v81;
        v83 = v50;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();

        v86 = os_log_type_enabled(v84, v85);
        v179 = v83;
        if (v86)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v197 = v88;
          *v87 = v152;
          v89 = [v83 identifier];
          LODWORD(v178) = v85;
          v169 = v88;
          if (v89)
          {
            v90 = v89;
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;
          }

          else
          {
            v91 = 0;
            v93 = 0xE000000000000000;
          }

          v110 = sub_10010150C(v91, v93, &v197);

          *(v87 + 4) = v110;
          *(v87 + 12) = 2080;
          sub_10001BD90(&qword_100200500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v111 = v182;
          v42 = v192;
          v112 = dispatch thunk of CustomStringConvertible.description.getter();
          v114 = v113;
          v106 = *v164;
          v107 = v164 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v164)(v111, v42);
          v115 = sub_10010150C(v112, v114, &v197);

          *(v87 + 14) = v115;
          _os_log_impl(&_mh_execute_header, v84, v178, "The createdAt for the payload protection key %s is %s", v87, 0x16u);
          swift_arrayDestroy();

          v199(v174, v194);
          v108 = v175;
          v43 = v190;
          v41 = v191;
        }

        else
        {

          v106 = *v164;
          v107 = v164 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v164)(v82, v42);
          v199(v80, v194);
          v108 = v175;
          v43 = v190;
        }

        Date.init()();
        v116 = v108;
        v117 = Date.isAtLeast(days:after:)();
        v178 = v106;
        v106(v116, v42);
        v118 = v176;
        v119 = v168;
        if (v117)
        {
          defaultLogger()();
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            v123 = v121;
            v124 = v120;
            v125 = "The time to delete payload protection keys has elapsed. Will attempt to delete";
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        v126 = v154;
        defaultLogger()();
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&_mh_execute_header, v127, v128, "The time to delete payload protection keys has not elapsed", v129, 2u);
          v41 = v191;
        }

        v199(v126, v194);
        v130 = [objc_opt_self() standardUserDefaults];
        v131._countAndFlagsBits = 0xD00000000000002BLL;
        v131._object = (v153 | 0x8000000000000000);
        v132 = NSUserDefaults.internalBool(forKey:)(v131);

        if (v132)
        {
          v119 = v151;
          defaultLogger()();
          v120 = Logger.logObject.getter();
          v133 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v120, v133))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            v123 = v133;
            v124 = v120;
            v125 = "Forcing to delete payload protection keys as the internal settings is enabled";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v124, v123, v125, v122, 2u);
          }

LABEL_48:
          v134 = v162;

          v199(v119, v194);
          v135 = *v173 + 1;
          if (__OFADD__(*v173, 1))
          {
            goto LABEL_62;
          }

          v169 = v107;
          *v173 = v135;
          v197 = 778793072;
          v198 = 0xE400000000000000;
          v136._countAndFlagsBits = v181;
          v136._object = v183;
          String.append(_:)(v136);
          v137 = v180;
          sub_1000343E0(v197, v198);
          if (v137)
          {

            v180 = 0;
            (*v158)(v118, v159, v172);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            v141 = v170;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            v142 = v171;
            swift_allocError();
            (*v157)(v143, v141, v142);
            v197 = 0;
            v198 = 0xE000000000000000;
            _StringGuts.grow(_:)(77);
            v144._countAndFlagsBits = 0xD00000000000004BLL;
            v144._object = (v156 | 0x8000000000000000);
            String.append(_:)(v144);
            v145._countAndFlagsBits = v181;
            v145._object = v183;
            String.append(_:)(v145);

            v146 = v167;
            defaultLogger()();
            DIPRecordError(_:message:log:)();

            v147 = v146;
            v45 = v194;
            v199(v147, v194);
            (*v155)(v141, v142);
            v42 = v192;
            v178(v43, v192);
          }

          else
          {

            v138 = v167;
            v139 = defaultLogger()();
            __chkstk_darwin(v139);
            Logger.cryptoParam(_:)();
            v199(v138, v194);
            v140 = v179;
            [v134 removeCryptoKeysObject:v179];
            sub_100050240();
            v180 = 0;
            v42 = v192;
            v178(v43, v192);

            v45 = v194;
          }

LABEL_57:
          v41 = v191;
          goto LABEL_7;
        }

        v42 = v192;
        v178(v43, v192);

        v45 = v194;
LABEL_7:
        v44 = v193;
LABEL_8:
        v47 = v196 + 1;
        v39 = v189;
        if (v195 == v186)
        {
          goto LABEL_58;
        }
      }

      v95 = v166;
      defaultLogger()();
      v96 = v50;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v197 = v100;
        *v99 = v185;
        v101 = [v96 identifier];
        if (v101)
        {
          v102 = v101;
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;
        }

        else
        {
          v103 = 0;
          v105 = 0xE000000000000000;
        }

        v148 = sub_10010150C(v103, v105, &v197);

        *(v99 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v97, v98, "CreatedAt doesn't exist for payloadProtectionKey %s", v99, 0xCu);
        sub_100005090(v100);

        v45 = v194;
        v199(v166, v194);
        v42 = v192;
        v43 = v190;
      }

      else
      {

        v109 = v95;
        v45 = v194;
        v199(v109, v194);
      }

      goto LABEL_57;
    }

LABEL_58:
  }
}

uint64_t sub_10001BD90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001BDDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000104D4;

  return sub_100015C64(a1, a2, v7, v6);
}

uint64_t sub_10001BE90(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_100153284(a1, a2, v6);
}

void *sub_10001BF74@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10001BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009708(a3, a4 & 0xDFFFFFFFFFFFFFFFLL);
}

uint64_t sub_10001BFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1000092BC(a3, a4 & 0xDFFFFFFFFFFFFFFFLL);
}

uint64_t sub_10001C040()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C0C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C120(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000092BC(result, a2);
  }

  return result;
}

void *sub_10001C16C()
{
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v0 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v1 = SEPairingManager.init()();
  v2 = type metadata accessor for GenericPasswordKeychainWrapper();
  v19 = v2;
  v20 = &off_1001F4DE8;
  v18[0] = swift_allocObject();
  v3 = type metadata accessor for SyncableKeyStoreProvider();
  v4 = swift_allocObject();
  v5 = sub_1000129AC(v18, v2);
  __chkstk_darwin(v5);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v2;
  v4[6] = &off_1001F4DE8;
  v4[2] = v9;

  sub_100005090(v18);
  v19 = v3;
  v20 = &off_1001F5068;
  v18[0] = v4;
  type metadata accessor for CredentialKeyManager();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v18, v3);
  __chkstk_darwin(v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000F20BC(v0, v1, *v13, v10);

  sub_100005090(v18);
  return v15;
}

uint64_t sub_10001C3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for MobileAssetType();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[29] = v9;
  *v9 = v2;
  v9[1] = sub_10001C6CC;

  return sub_10001DD1C(2, 0, a2);
}

uint64_t sub_10001C6CC(char a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_10001D774;
  }

  else
  {
    *(v4 + 288) = a1 & 1;
    v5 = sub_10001C820;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001C820(uint64_t a1)
{
  if (*(v1 + 288) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Proceeding with fetching MobileAssets", v4, 2u);
    }

    v5 = *(v1 + 224);
    v6 = *(v1 + 176);
    v7 = *(v1 + 184);
    v9 = *(v1 + 96);
    v8 = *(v1 + 104);
    v10 = *(v1 + 88);

    v11 = *(v7 + 8);
    *(v1 + 248) = v11;
    v11(v5, v6);
    v12 = type metadata accessor for MobileAssetManager();
    swift_allocObject();
    v13 = MobileAssetManager.init()();
    *(v1 + 16) = v13;
    *(v1 + 256) = v13;
    (*(v9 + 104))(v8, enum case for MobileAssetType.coreidvassets(_:), v10);
    v14 = sub_10010CBB4(_swiftEmptyArrayStorage);
    *(v1 + 264) = v14;
    v15 = swift_task_alloc();
    *(v1 + 272) = v15;
    *v15 = v1;
    v15[1] = sub_10001CBC4;
    v16 = *(v1 + 168);
    v17 = *(v1 + 104);

    return MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:)(v16, v17, v14, v12, &protocol witness table for MobileAssetManager);
  }

  else
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "no identity credential, skipping MobileAssets", v20, 2u);
    }

    v21 = *(v1 + 200);
    v22 = *(v1 + 176);
    v23 = *(v1 + 184);

    (*(v23 + 8))(v21, v22);
    sub_10002055C("Finished MobileAsset refresh");

    v24 = *(v1 + 8);

    return v24();
  }
}

uint64_t sub_10001CBC4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v4 = v2[12];
  v3 = v2[13];
  v5 = v2[11];

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_10001DA48;
  }

  else
  {
    v6 = sub_10001CD74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001CD74(uint64_t a1)
{
  v79 = v1;
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[14];
  v5 = v1[15];
  defaultLogger()();
  v73 = *(v5 + 16);
  v73(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[31];
  v10 = v1[27];
  v11 = v1[22];
  v12 = v1[20];
  v14 = v1[14];
  v13 = v1[15];
  if (v8)
  {
    v67 = v1[22];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v78 = v16;
    *v15 = 136315138;
    v63 = v10;
    v65 = v9;
    v17 = URL.debugDescription.getter();
    v19 = v18;
    v61 = v7;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_10010150C(v17, v19, &v78);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v61, "MobileAsset available at directory %s", v15, 0xCu);
    sub_100005090(v16);

    v65(v63, v67);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v14);
    v9(v10, v11);
  }

  v22 = v1[35];
  URL.appendingPathComponent(_:)();
  v23 = Data.init(contentsOf:options:)();
  if (v22)
  {
    v25 = v1[21];
    v26 = v1[14];
    v20(v1[19], v26);
    v27 = v25;
    v28 = v26;
LABEL_6:
    v20(v27, v28);
    v32 = v1[23];
    v31 = v1[24];
    v33 = v1[9];
    v70 = v1[10];
    v74 = v1[22];
    v34 = v1[8];
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v1[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v33 + 16))(v35, v70, v34);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v32 + 8))(v31, v74);
    (*(v33 + 8))(v70, v34);

    goto LABEL_8;
  }

  v29 = v23;
  v30 = v24;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for CoreIDVAsset();
  sub_100020698(&qword_100200518, &type metadata accessor for CoreIDVAsset, &protocol conformance descriptor for CoreIDVAsset);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v38 = [objc_opt_self() defaultManager];
  v39 = [v38 URLsForDirectory:5 inDomains:1];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v40 + 16))
  {
    v41 = *(v1[15] + 80);
    v73(v1[18], v40 + ((v41 + 32) & ~v41), v1[14]);

    URL.appendingPathComponent(_:isDirectory:)();
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v1[4] = 0;
    v45 = [v38 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:v1 + 4];

    v46 = v1[4];
    if (!v45)
    {
      v71 = v1[19];
      v75 = v1[21];
      v68 = v1[18];
      v51 = v1[17];
      v52 = v1[14];
      v53 = v46;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000092BC(v29, v30);
      v20(v51, v52);
      v20(v68, v52);
      v20(v71, v52);
      v27 = v75;
      v28 = v52;
      goto LABEL_6;
    }

    v47 = v46;
    URL.appendingPathComponent(_:isDirectory:)();
    Data.write(to:options:)();
    v77 = v20;
    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v1[31];
    v62 = v1[22];
    v64 = v1[26];
    v72 = v1[19];
    v76 = v1[21];
    v66 = v1[17];
    v69 = v1[18];
    v60 = v1[16];
    v58 = v1[14];
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Copied Asset to local cache", v59, 2u);
    }

    sub_1000092BC(v29, v30);
    v57(v64, v62);
    v77(v60, v58);
    v77(v66, v58);
    v77(v69, v58);
    v77(v72, v58);
    v77(v76, v58);
  }

  else
  {
    v48 = v1[21];
    v49 = v1[19];
    v50 = v1[14];

    sub_1000092BC(v29, v30);

    v20(v49, v50);
    v20(v48, v50);
  }

LABEL_8:
  sub_10002055C("Finished MobileAsset refresh");

  v36 = v1[1];

  return v36();
}

uint64_t sub_10001D774()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[9];
  v8 = v0[10];
  v9 = v0[22];
  v4 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v5, v8, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v9);
  (*(v3 + 8))(v8, v4);

  sub_10002055C("Finished MobileAsset refresh");

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001DA48()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[9];
  v8 = v0[10];
  v9 = v0[22];
  v4 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v5, v8, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v9);
  (*(v3 + 8))(v8, v4);

  sub_10002055C("Finished MobileAsset refresh");

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001DD1C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 392) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 272) = v4;
  *(v3 + 280) = *(v4 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_10001DDEC, 0, 0);
}

uint64_t sub_10001DDEC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001B27B0;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "internal setting to force credential present", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v0[1];

    return v11(1);
  }

  else
  {
    v13 = v0[33];
    v0[5] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
    v0[6] = &off_1001F4D30;
    v14 = type metadata accessor for PayloadProcessorBuilder();
    v15 = swift_allocObject();

    v30 = sub_10001C16C();
    v0[10] = &type metadata for CredentialDecryptionKeyFinder;
    v0[11] = &off_1001F4D20;
    v16 = swift_allocObject();
    v0[7] = v16;
    sub_100012950((v0 + 2), v16 + 16);
    v0[15] = v14;
    v0[16] = &off_1001F78E8;
    v0[12] = v15;
    type metadata accessor for CredentialStorage();
    v17 = swift_allocObject();
    v0[38] = v17;
    v18 = sub_1000129AC((v0 + 7), &type metadata for CredentialDecryptionKeyFinder);
    v19 = swift_task_alloc();
    (_swift_cvw_initWithCopy)(v19, v18, &type metadata for CredentialDecryptionKeyFinder);
    sub_1000129AC((v0 + 12), v14);
    v20 = *(v14 - 8);
    v29 = swift_task_alloc();
    (*(v20 + 16))();
    v21 = *v29;
    v0[20] = &type metadata for CredentialDecryptionKeyFinder;
    v0[21] = &off_1001F4D20;
    v22 = swift_allocObject();
    v0[17] = v22;
    v23 = *(v19 + 32);
    v24 = *(v19 + 16);
    *(v22 + 16) = *v19;
    *(v22 + 32) = v24;
    *(v22 + 48) = v23;
    v0[25] = v14;
    v0[26] = &off_1001F78E8;
    v0[22] = v21;
    v17[2] = sub_10010D640(&off_1001F3F60);
    v25 = v13;
    v17[15] = v13;
    sub_10001A940((v0 + 17), (v17 + 4));
    sub_10001A940((v0 + 22), (v17 + 9));
    v17[14] = v30;
    type metadata accessor for BiometricsHelper();
    swift_allocObject();

    v26 = BiometricsHelper.init()();
    v0[30] = type metadata accessor for DeviceInformationProvider();
    v0[31] = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(v0 + 27);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[8] = v30;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v27 + 3);
    sub_100005090(v0 + 22);
    sub_100005090(v0 + 17);
    v27[9] = v26;
    sub_10001AA08((v0 + 27), (v27 + 10));
    v17[3] = v27;
    sub_100005090(v0 + 12);

    sub_100005090(v0 + 7);

    sub_10001AA20((v0 + 2));
    v28 = swift_task_alloc();
    v0[39] = v28;
    *v28 = v0;
    v28[1] = sub_10001E2FC;

    return sub_100145A04(&off_1001F3F60);
  }
}