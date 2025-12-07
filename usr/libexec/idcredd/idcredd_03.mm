uint64_t sub_100057918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100057A0C, 0, 0);
}

uint64_t sub_100057A0C(uint64_t a1)
{
  v46 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[6];
  v6 = v1[7];
  if (v4)
  {
    v42 = v1[4];
    v8 = v1[3];
    v43 = v1[12];
    v9 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = Array.description.getter();
    v12 = sub_10010150C(v10, v11, &v45);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10010150C(v8, v42, &v45);
    _os_log_impl(&_mh_execute_header, v2, v3, "IDCSCoreDataBackfillProvider: performBackfill partitions %s docType %s", v9, 0x16u);
    swift_arrayDestroy();

    v13 = *(v6 + 8);
    v13(v43, v7);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v5, v7);
  }

  v1[13] = v13;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "In performBackfillOperationsIfUserDefaultDoesNotExist", v16, 2u);
  }

  v17 = v1[11];
  v18 = v1[6];

  v13(v17, v18);
  v19 = objc_opt_self();
  v1[14] = v19;
  v20 = [v19 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 stringForKey:v21];

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v1[10];
    v30 = v1[6];
    if (v28)
    {
      v44 = v1[10];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136315138;
      v33 = sub_10010150C(v23, v25, &v45);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "IDCSCoreDataBackfillProvider idcreddDatabaseBackfillVersion exists %s", v31, 0xCu);
      sub_100005090(v32);

      v34 = v44;
    }

    else
    {

      v34 = v29;
    }

    v13(v34, v30);

    v41 = v1[1];

    return v41();
  }

  else
  {
    v35 = swift_task_alloc();
    v1[15] = v35;
    *v35 = v1;
    v35[1] = sub_100057EF0;
    v36 = v1[4];
    v37 = v1[5];
    v38 = v1[2];
    v39 = v1[3];

    return sub_1000583AC(v37, v38, v39, v36, v37);
  }
}

uint64_t sub_100057EF0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100058208;
  }

  else
  {
    v2 = sub_100058004;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058004()
{
  v15 = v0;
  v1 = [*(v0 + 112) standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [v1 setObject:v2 forKey:v3];

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(3223089, 0xE300000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "IDCSCoreDataBackfillProvider performBackfillOperationsIfUserDefaultDoesNotExist: IDCSDefaultsKeys succesfully updated to %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v7(v8, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100058208(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "IDCSCoreDataBackfillProvider caught error %@", v4, 0xCu);
    sub_100005CA8(v5);
  }

  else
  {
  }

  (*(v1 + 104))(*(v1 + 64), *(v1 + 48));

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1000583AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100058474, 0, 0);
}

uint64_t sub_100058474(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v21 = v1[4];
    v22 = v1[5];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = Array.description.getter();
    v11 = sub_10010150C(v9, v10, &v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10010150C(v21, v22, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "IDCSCoreDataBackfillProvider updateEmptyRegion partitions %s docType %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v13 = v1[5];
  v12 = v1[6];
  v15 = v1[3];
  v14 = v1[4];
  v16 = v1[2];
  v17 = swift_allocObject();
  v1[10] = v17;
  v17[2] = v15;
  v17[3] = v14;
  v17[4] = v13;
  v17[5] = v12;
  v17[6] = v16;
  v18 = swift_allocObject();
  v1[11] = v18;
  *(v18 + 16) = sub_100058F4C;
  *(v18 + 24) = v17;

  v19 = swift_task_alloc();
  v1[12] = v19;
  *v19 = v1;
  v19[1] = sub_100058750;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v19, sub_10001AAC8, v18, &type metadata for () + 8);
}

uint64_t sub_100058750()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000588D8;
  }

  else
  {

    v2 = sub_100058874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000588D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100058950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = v49 - v14;
  v55 = type metadata accessor for StoredPayload();
  v15 = static StoredPayload.fetchRequest()();
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v16 = swift_allocObject();
  v54 = xmmword_1001AA160;
  *(v16 + 16) = xmmword_1001AA160;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100050F18();
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;

  v17 = NSPredicate.init(format:_:)();
  if (*(a6 + 16))
  {
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001ABD30;
    v19 = swift_allocObject();
    *(v19 + 16) = v54;
    *(v19 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v19 + 64) = sub_1000568FC();
    *(v19 + 32) = a6;

    *(v18 + 32) = NSPredicate.init(format:_:)();
    *(v18 + 40) = v17;
    v20 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v15 setPredicate:v22];
  }

  else
  {
    [v15 setPredicate:v17];
  }

  v23 = v56;
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v23)
  {
  }

  else
  {
    v25 = v24;
    v49[1] = 0;
    v51 = v15;
    v26 = v52;
    defaultLogger()();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = v25 >> 62;
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_11;
    }

    v30 = swift_slowAlloc();
    *v30 = 134217984;
    if (v29)
    {
      goto LABEL_25;
    }

    v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v25;
    while (1)
    {
      *(v30 + 4) = v31;
      v33 = v30;

      _os_log_impl(&_mh_execute_header, v27, v28, "IDCSCoreDataBackfillProvider updateEmptyRegion result count: %ld", v33, 0xCu);

      v25 = v32;
LABEL_11:
      v50 = v17;
      v34 = *(v58 + 8);
      v58 += 8;
      v30 = v34(v26, v57);
      if (v29)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
        v29 = v30;
        if (!v30)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v29)
        {
          goto LABEL_22;
        }
      }

      if (v29 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      v32 = v25;
      v48 = v30;
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v48;
    }

    v36 = 0;
    v37 = v25 & 0xC000000000000001;
    *&v35 = 136315138;
    v54 = v35;
    v55 = v25;
    v56 = v34;
    do
    {
      if (v37)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v25 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = String._bridgeToObjectiveC()();
      [v39 setRegion:v40];

      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = v37;
        v45 = v13;
        v46 = v29;
        v47 = swift_slowAlloc();
        v59 = v47;
        *v43 = v54;
        *(v43 + 4) = sub_10010150C(21333, 0xE200000000000000, &v59);
        _os_log_impl(&_mh_execute_header, v41, v42, "IDCSCoreDataBackfillProvider updateEmptyRegion region updated %s", v43, 0xCu);
        sub_100005090(v47);
        v29 = v46;
        v13 = v45;
        v37 = v44;

        v25 = v55;
        v34 = v56;
      }

      v34(v13, v57);
      ++v36;
    }

    while (v29 != v36);
LABEL_22:

    sub_100050240();
  }
}

uint64_t sub_100058EFC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058F70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058FA8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v6 + 24));
  sub_100059460((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));
  if (!v1)
  {
    return v9;
  }

  (*(v3 + 104))(v5, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10005917C(int a1)
{
  v20 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - v7;
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:isDirectory:)();
  v11 = *(v2 + 8);
  v11(v5, v1);
  URL.appendingPathComponent(_:)();
  v11(v8, v1);
  static URL.idcreddManagedObjectModel.getter();
  (*(v2 + 16))(v5, v10, v1);
  v19 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  type metadata accessor for AsyncCoreDataStore(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore__container;
  sub_100004E70(&qword_1002019A0, &qword_1001ABDB8);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  v19 = v19;
  v11(v10, v1);
  *(v12 + v13) = v14;
  *(v14 + 16) = 0;
  v15 = (v12 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName);
  *v15 = 1935893609;
  v15[1] = 0xE400000000000000;
  v16 = *(v2 + 32);
  v16(v12 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_modelURL, v8, v1);
  v16(v12 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, v5, v1);
  *(v12 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_urlFileProtection) = v19;
  *(v12 + 16) = v20 & 1;
  *(v12 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 0;
  result = v21;
  *(v21 + 16) = v12;
  return result;
}

void *sub_10005947C()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 payloads];
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v5;
    v14 = _swiftEmptyArrayStorage;
    NSSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    while (v13)
    {
      sub_100009268(&v12, &v11);
      type metadata accessor for StoredPayload();
      if (swift_dynamicCast())
      {
        v8 = v10[2];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10[1] = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v6 = v14;
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

void sub_10005966C()
{
  v2 = type metadata accessor for CredentialKeyUsage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v32 - v7;
  v9 = [v0 credentialIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [v0 managedObjectContext];
    if (v14)
    {
      v35 = v14;
      v34 = type metadata accessor for StoredCryptoKey();
      v33 = static StoredCryptoKey.fetchRequest()();
      v15 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      v32[2] = "setCredentialUUIDs(_:)";
      v32[3] = v15;
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v16 = v11;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001AAFC0;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100050F18();
      *(v17 + 64) = v18;
      *(v17 + 32) = v16;
      *(v17 + 40) = v13;
      v32[1] = v1;
      v32[0] = *(v3 + 104);
      (v32[0])(v8, enum case for CredentialKeyUsage.deviceEncryption(_:), v2);
      v19 = CredentialKeyUsage.rawValue.getter();
      v20 = v8;
      v21 = v19;
      v23 = v22;
      v24 = v6;
      v25 = *(v3 + 8);
      v25(v20, v2);
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 72) = v21;
      *(v17 + 80) = v23;
      (v32[0])(v24, enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:), v2);
      v26 = CredentialKeyUsage.rawValue.getter();
      v28 = v27;
      v25(v24, v2);
      *(v17 + 136) = &type metadata for String;
      *(v17 + 144) = v18;
      *(v17 + 112) = v26;
      *(v17 + 120) = v28;
      v29 = NSPredicate.init(format:_:)();
      v30 = v33;
      [v33 setPredicate:v29];

      v31 = v35;
      NSManagedObjectContext.fetch<A>(_:)();
    }

    else
    {
    }
  }
}

void sub_100059974()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 elementIdentifiersByNamespace];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v15 >= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    sub_1000092BC(v8, v10);
LABEL_14:
    sub_10010D02C(_swiftEmptyArrayStorage);
    return;
  }

  if (!v11)
  {
    if (!BYTE6(v10))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v8), v8))
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (HIDWORD(v8) - v8 < 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100004E70(&qword_1002019B8, &qword_1001AD020);
  sub_100060A8C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    (*(v3 + 104))(v5, enum case for DIPError.Code.jsonEncodingFailed(_:), v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v8, v10);
  }

  else
  {
    sub_1000092BC(v8, v10);
  }
}

void *sub_100059C5C()
{
  v1 = [v0 credentialIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [v0 managedObjectContext];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for StoredCryptoKey();
      v8 = static StoredCryptoKey.fetchRequest()();
      sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1001AA160;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100050F18();
      *(v9 + 32) = v3;
      *(v9 + 40) = v5;
      v10 = NSPredicate.init(format:_:)();
      [v8 setPredicate:v10];

      v11 = NSManagedObjectContext.fetch<A>(_:)();
      return v11;
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_100059E04(unsigned int *a1)
{
  v3 = type metadata accessor for CredentialKeyUsage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 credentialIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v1 managedObjectContext];
    if (v12)
    {
      v13 = v12;
      v27 = type metadata accessor for StoredCryptoKey();
      v26 = static StoredCryptoKey.fetchRequest()();
      v14 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      v25[1] = "fiersByNamespace()";
      v25[2] = v14;
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v15 = a1;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001AAE50;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_100050F18();
      v18 = v9;
      v19 = v17;
      *(v16 + 64) = v17;
      *(v16 + 32) = v18;
      *(v16 + 40) = v11;
      (*(v4 + 104))(v6, *v15, v3);
      v20 = CredentialKeyUsage.rawValue.getter();
      v22 = v21;
      (*(v4 + 8))(v6, v3);
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v19;
      *(v16 + 72) = v20;
      *(v16 + 80) = v22;
      v23 = NSPredicate.init(format:_:)();
      v24 = v26;
      [v26 setPredicate:v23];

      NSManagedObjectContext.fetch<A>(_:)();
    }

    else
    {
    }
  }
}

void sub_10005A0A4(uint64_t a1, void *a2)
{
  v4 = v2;
  v68 = a1;
  v69 = a2;
  v5 = type metadata accessor for CredentialKeyUsage();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IDCSEntities: getPresentmentKey", v16, 2u);
  }

  v19 = *(v9 + 8);
  v17 = v9 + 8;
  v18 = v19;
  v19(v13, v8);
  v20 = [v4 credentialIdentifier];
  if (v20)
  {
    v58 = v17;
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v4 managedObjectContext];
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v56 = v18;
    v57 = v8;
    v61 = type metadata accessor for StoredCryptoKey();
    v27 = static StoredCryptoKey.fetchRequest()();
    v64 = v3;
    v28 = v27;
    [v27 setFetchLimit:1];
    v29 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
    v59 = "missing stored package";
    v60 = v29;
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v30 = v22;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001AAFC0;
    *(v31 + 56) = &type metadata for String;
    v32 = sub_100050F18();
    *(v31 + 64) = v32;
    v55 = v30;
    *(v31 + 32) = v30;
    *(v31 + 40) = v24;
    v33 = v24;
    v35 = v66;
    v34 = v67;
    (*(v66 + 104))(v7, enum case for CredentialKeyUsage.presentment(_:), v67);
    v62 = v33;

    v36 = CredentialKeyUsage.rawValue.getter();
    v63 = v26;
    v38 = v37;
    (*(v35 + 8))(v7, v34);
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v32;
    *(v31 + 72) = v36;
    *(v31 + 80) = v38;
    v39 = v63;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v31 + 136) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v31 + 144) = sub_100056894();
    *(v31 + 112) = isa;
    v41 = NSPredicate.init(format:_:)();
    [v28 setPredicate:v41];

    v42 = v64;
    v43 = NSManagedObjectContext.fetch<A>(_:)();
    v44 = v42;
    if (v42)
    {
      goto LABEL_22;
    }

    v45 = v43;
    v46 = v65;
    defaultLogger()();
    v47 = v62;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v50 = v45 >> 62;
    if (!os_log_type_enabled(v48, v49))
    {

      v56(v46, v57);
      goto LABEL_16;
    }

    v69 = v28;
    v64 = 0;
    v46 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v70 = v28;
    *v46 = 136315394;
    v51 = sub_10010150C(v55, v47, &v70);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2112;
    if (v50)
    {
      goto LABEL_26;
    }

    v52 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      while (1)
      {
LABEL_14:
        *(v46 + 14) = v52;
        *v44 = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "IDCSEntities: getPresentmentKey for credentialIdentifier %s returning : first entity: %@", v46, 0x16u);
        sub_10000A0D4(v44, &qword_1002003B8, &unk_1001AB850);

        sub_100005090(v28);

        v56(v65, v57);
        v39 = v63;
        v44 = v64;
        v28 = v69;
LABEL_16:
        if (v50)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_22;
          }
        }

        else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        if ((v45 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v53 = *(v45 + 32);
          goto LABEL_22;
        }

        __break(1u);
LABEL_26:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (v52)
        {
          goto LABEL_11;
        }
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

      return;
    }

LABEL_11:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v45 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }
}

void sub_10005A720()
{
  v45 = type metadata accessor for Date();
  v1 = *(v45 - 8);
  v2 = __chkstk_darwin(v45);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - v9;
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  if (v0)
  {
    return;
  }

  v14 = v13;
  v38 = v12;
  v42 = v10;
  if (v13 >> 62)
  {
LABEL_28:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_29:

    return;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_4:
  v44 = v14 & 0xC000000000000001;
  v33 = 0;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;
  if (v15 == 1)
  {
    goto LABEL_24;
  }

  v35 = v7;
  v36 = v4;
  v34 = v14 & 0xFFFFFFFFFFFFFF8;
  v18 = (v1 + 32);
  v39 = (v1 + 8);
  v40 = v15;
  v19 = 1;
  v7 = v38;
  v41 = v14;
  while (2)
  {
    v4 = v17;
    v1 = v19;
    v37 = v17;
    while (1)
    {
      if (v44)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        if (v1 >= *(v34 + 16))
        {
          goto LABEL_27;
        }

        v20 = *(v14 + 8 * v1 + 32);
      }

      v21 = v20;
      v19 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v22 = [v4 createdAt];
      if (v22)
      {
        break;
      }

LABEL_11:
      ++v1;
      if (v19 == v15)
      {
        goto LABEL_24;
      }
    }

    v23 = v42;
    v24 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *v18;
    (*v18)(v7, v23, v45);
    v26 = [v21 createdAt];
    if (!v26)
    {

      (*v39)(v7, v45);
      v15 = v40;
      v14 = v41;
      goto LABEL_11;
    }

    v27 = v26;
    v43 = v21;
    v28 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v35;
    v30 = v45;
    v31 = v38;
    v25(v35, v28, v45);
    LOBYTE(v27) = static Date.< infix(_:_:)();
    v32 = *v39;
    (*v39)(v29, v30);
    v7 = v31;
    v32(v31, v30);
    if ((v27 & 1) == 0)
    {

      v15 = v40;
      v14 = v41;
      v4 = v37;
      goto LABEL_11;
    }

    v15 = v40;
    v14 = v41;
    v17 = v43;
    if (v19 != v40)
    {
      continue;
    }

    break;
  }

LABEL_24:
}

uint64_t sub_10005AAEC()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v283 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v7 = __chkstk_darwin(v6 - 8);
  v307 = &v283 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v306 = &v283 - v10;
  v11 = __chkstk_darwin(v9);
  v305 = &v283 - v12;
  v13 = __chkstk_darwin(v11);
  v303 = &v283 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v283 - v16;
  v18 = __chkstk_darwin(v15);
  v308 = &v283 - v19;
  v20 = __chkstk_darwin(v18);
  v310 = &v283 - v21;
  v22 = __chkstk_darwin(v20);
  v302 = &v283 - v23;
  __chkstk_darwin(v22);
  v309 = &v283 - v24;
  v319 = type metadata accessor for Logger();
  v312 = *(v319 - 8);
  v25 = __chkstk_darwin(v319);
  v301 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v304 = &v283 - v28;
  v29 = __chkstk_darwin(v27);
  v311 = &v283 - v30;
  v31 = __chkstk_darwin(v29);
  v313 = (&v283 - v32);
  v33 = __chkstk_darwin(v31);
  v314 = &v283 - v34;
  __chkstk_darwin(v33);
  v317 = &v283 - v35;
  v315 = type metadata accessor for Date();
  v36 = *(v315 - 8);
  v37 = __chkstk_darwin(v315);
  v39 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v283 - v40;
  v42 = [v0 credentialIdentifier];
  if (!v42)
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v36;
  }

  v316 = v42;
  v43 = [v0 partition];
  if (!v43)
  {

    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_12;
  }

  v299 = v43;
  v44 = [v0 createdAt];
  if (!v44)
  {

    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_12;
  }

  v288 = v17;
  v45 = v44;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = [v0 updatedAt];
  if (!v46)
  {

    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v57 = *(v36 + 8);
    v36 += 8;
    v57(v41, v315);
    return v36;
  }

  v47 = v46;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = [v0 state];
  if ((v48 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v49 = v48;
  v50 = [v0 options];
  if (!v50)
  {

    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v58 = *(v36 + 8);
    v36 += 8;
    v59 = v39;
    v60 = v315;
    v58(v59, v315);
    v58(v41, v60);
    return v36;
  }

  v285 = v49;
  v286 = v50;
  v51 = sub_10010CCC8(_swiftEmptyArrayStorage);
  sub_100059E04(&enum case for CredentialKeyUsage.keySigning(_:));
  v290 = v1;
  if (v1)
  {

    v53 = *(v36 + 8);
    v36 += 8;
    v54 = v39;
    v55 = v315;
    v53(v54, v315);
    v53(v41, v55);
LABEL_86:

    return v36;
  }

  v296 = v51;
  v284 = v0;
  v47 = v52;
  if (!(v52 >> 62))
  {
    v61 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_81:
  v61 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
  v62 = v317;
  v287 = v36;
  v293 = v41;
  v292 = v39;
  if (v61)
  {
    v36 = 0;
    v298 = v47 & 0xC000000000000001;
    v289 = v47 & 0xFFFFFFFFFFFFFF8;
    v291 = v312 + 8;
    v294 = v47;
    v297 = v61;
    do
    {
      if (v298)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v289 + 16))
        {
          goto LABEL_74;
        }

        v63 = *(v47 + 8 * v36 + 32);
      }

      v64 = v63;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v318 = (v36 + 1);
      v65 = [v63 identifier];
      if (!v65)
      {
        goto LABEL_36;
      }

      v66 = v41;
      v67 = v65;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v300 = v64;
      v71 = [v64 publicKeyIdentifier];
      if (!v71)
      {

        v41 = v66;
        v64 = v300;
LABEL_36:
        defaultLogger()();
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "Credential key signing key does not have required field; skipping", v95, 2u);
          v47 = v294;
        }

        (*v291)(v62, v319);
        goto LABEL_21;
      }

      v72 = v71;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v295 = v74;
      sub_100009708(v39, v74);
      v75 = v296;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v320 = v75;
      v77 = v68;
      v78 = v70;
      v41 = sub_100099644(v68, v70);
      v80 = v75[2];
      v81 = (v79 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_73;
      }

      v47 = v79;
      if (v75[3] >= v82)
      {
        v85 = v300;
        if (isUniquelyReferenced_nonNull_native)
        {
          v62 = v317;
          if ((v79 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_100109AD8();
          v62 = v317;
          if ((v47 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_100108440(v82, isUniquelyReferenced_nonNull_native);
        v83 = sub_100099644(v77, v70);
        v85 = v300;
        if ((v47 & 1) != (v84 & 1))
        {
          goto LABEL_207;
        }

        v41 = v83;
        v62 = v317;
        if ((v47 & 1) == 0)
        {
LABEL_33:
          v86 = v320;
          v320[(v41 >> 6) + 8] |= 1 << v41;
          v87 = (v86[6] + 16 * v41);
          *v87 = v77;
          v87[1] = v78;
          v88 = (v86[7] + 16 * v41);
          v89 = v295;
          *v88 = v39;
          v88[1] = v89;

          sub_1000092BC(v39, v89);
          v90 = v86[2];
          v91 = __OFADD__(v90, 1);
          v92 = v90 + 1;
          if (v91)
          {
            goto LABEL_77;
          }

          v296 = v86;
          v86[2] = v92;
          goto LABEL_41;
        }
      }

      v296 = v320;
      v96 = (v320[7] + 16 * v41);
      v97 = *v96;
      v98 = v96[1];
      v99 = v295;
      *v96 = v39;
      v96[1] = v99;
      sub_1000092BC(v97, v98);

      sub_1000092BC(v39, v99);
LABEL_41:
      v41 = v293;
      v39 = v292;
      v47 = v294;
LABEL_21:
      ++v36;
    }

    while (v318 != v297);
  }

  v100 = sub_10010CCC8(_swiftEmptyArrayStorage);
  v101 = v290;
  sub_10005966C();
  v290 = v101;
  if (v101)
  {

    v103 = *(v287 + 8);
    v104 = v315;
    v103(v39, v315);
    v103(v41, v104);
LABEL_85:

    goto LABEL_86;
  }

  v105 = v102;
  v298 = v100;
  if (v102 >> 62)
  {
    v106 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v314;
    if (v106)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v106 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v314;
    if (v106)
    {
LABEL_48:
      v36 = 0;
      v318 = (v105 & 0xC000000000000001);
      v291 = v105 & 0xFFFFFFFFFFFFFF8;
      v294 = (v312 + 8);
      v317 = v105;
      v300 = v106;
      while (1)
      {
        if (v318)
        {
          v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(v291 + 16))
          {
            goto LABEL_79;
          }

          v107 = *(v105 + 8 * v36 + 32);
        }

        v108 = v107;
        v109 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          goto LABEL_75;
        }

        v110 = [v107 identifier];
        if (!v110)
        {
          goto LABEL_63;
        }

        v111 = v110;
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        v115 = [v108 publicKeyIdentifier];
        if (!v115)
        {

LABEL_63:
          defaultLogger()();
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 0;
            _os_log_impl(&_mh_execute_header, v126, v127, "Credential device encryption key does not have required field; skipping", v128, 2u);
            v47 = v314;
          }

          (*v294)(v47, v319);
          v105 = v317;
          goto LABEL_50;
        }

        v297 = v108;
        v295 = (v36 + 1);
        v116 = v115;
        v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v118 = v117;

        sub_100009708(v39, v118);
        v119 = v298;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v320 = v119;
        v120 = sub_100099644(v112, v114);
        v122 = *(v119 + 16);
        v123 = (v121 & 1) == 0;
        v91 = __OFADD__(v122, v123);
        v124 = v122 + v123;
        if (v91)
        {
          goto LABEL_78;
        }

        v41 = v121;
        if (*(v119 + 24) < v124)
        {
          break;
        }

        if (v47)
        {
          goto LABEL_66;
        }

        v133 = v120;
        sub_100109AD8();
        v120 = v133;
        v47 = v314;
        if ((v41 & 1) == 0)
        {
LABEL_69:
          v134 = v320;
          v320[(v120 >> 6) + 8] |= 1 << v120;
          v135 = (v134[6] + 16 * v120);
          *v135 = v112;
          v135[1] = v114;
          v136 = (v134[7] + 16 * v120);
          *v136 = v39;
          v136[1] = v118;

          sub_1000092BC(v39, v118);
          v137 = v134[2];
          v91 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v91)
          {
            goto LABEL_80;
          }

          v298 = v134;
          v134[2] = v138;
          goto LABEL_71;
        }

LABEL_67:
        v129 = v120;

        v298 = v320;
        v130 = (v320[7] + 16 * v129);
        v131 = *v130;
        v132 = v130[1];
        *v130 = v39;
        v130[1] = v118;
        sub_1000092BC(v131, v132);

        sub_1000092BC(v39, v118);
LABEL_71:
        v41 = v293;
        v39 = v292;
        v105 = v317;
        v109 = v295;
LABEL_50:
        ++v36;
        if (v109 == v300)
        {
          goto LABEL_83;
        }
      }

      sub_100108440(v124, v47);
      v120 = sub_100099644(v112, v114);
      if ((v41 & 1) != (v125 & 1))
      {
        goto LABEL_207;
      }

LABEL_66:
      v47 = v314;
      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_67;
    }
  }

LABEL_83:

  v139 = sub_10010CCC8(_swiftEmptyArrayStorage);
  v140 = v290;
  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  v290 = v140;
  if (v140)
  {

    v142 = *(v287 + 8);
    v143 = v315;
    v142(v39, v315);
    v142(v41, v143);

    goto LABEL_85;
  }

  v144 = v141;
  v300 = v139;
  v145 = v287;
  if (v141 >> 62)
  {
    goto LABEL_117;
  }

  v146 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v147 = v313;
  if (v146)
  {
LABEL_89:
    v148 = 0;
    v318 = (v144 & 0xC000000000000001);
    v291 = v144 & 0xFFFFFFFFFFFFFF8;
    v294 = (v312 + 8);
    v317 = v144;
    v314 = v146;
    while (1)
    {
      if (v318)
      {
        v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v148 >= *(v291 + 16))
        {
          goto LABEL_115;
        }

        v150 = *(v144 + 8 * v148 + 32);
      }

      v151 = v150;
      v145 = v148 + 1;
      if (__OFADD__(v148, 1))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v181 = v144;
        v182 = _CocoaArrayWrapper.endIndex.getter();
        v144 = v181;
        v146 = v182;
        v147 = v313;
        if (!v182)
        {
          goto LABEL_118;
        }

        goto LABEL_89;
      }

      v152 = [v150 identifier];
      if (!v152)
      {
        goto LABEL_104;
      }

      v153 = v152;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v155 = v154;

      v156 = [v151 publicKeyIdentifier];
      if (!v156)
      {
        break;
      }

      v295 = v151;
      v297 = (v148 + 1);
      v157 = v156;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v159 = v158;

      sub_100009708(v39, v159);
      v160 = v155;
      v161 = v300;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v320 = v161;
      v162 = v160;
      v163 = sub_100099644(v36, v160);
      v164 = v161[2];
      v165 = (v144 & 1) == 0;
      v166 = v164 + v165;
      if (__OFADD__(v164, v165))
      {
        goto LABEL_114;
      }

      v167 = v144;
      if (v161[3] >= v166)
      {
        if ((v145 & 1) == 0)
        {
          sub_100109AD8();
        }
      }

      else
      {
        sub_100108440(v166, v145);
        v168 = sub_100099644(v36, v162);
        if ((v167 & 1) != (v169 & 1))
        {
          goto LABEL_207;
        }

        v163 = v168;
      }

      v145 = v297;
      if (v167)
      {

        v300 = v320;
        v173 = (v320[7] + 16 * v163);
        v174 = *v173;
        v175 = v173[1];
        *v173 = v39;
        v173[1] = v159;
        sub_1000092BC(v174, v175);

        sub_1000092BC(v39, v159);
      }

      else
      {
        v176 = v320;
        v320[(v163 >> 6) + 8] |= 1 << v163;
        v177 = (v176[6] + 16 * v163);
        *v177 = v36;
        v177[1] = v162;
        v178 = (v176[7] + 16 * v163);
        *v178 = v39;
        v178[1] = v159;

        sub_1000092BC(v39, v159);
        v179 = v176[2];
        v91 = __OFADD__(v179, 1);
        v180 = v179 + 1;
        if (v91)
        {
          goto LABEL_116;
        }

        v300 = v176;
        v176[2] = v180;
      }

      v39 = v292;
      v147 = v313;
LABEL_91:
      v144 = v317;
      ++v148;
      v149 = v145 == v314;
      v145 = v287;
      if (v149)
      {
        goto LABEL_118;
      }
    }

LABEL_104:
    defaultLogger()();
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&_mh_execute_header, v170, v171, "Credential presentment key does not have required field; skipping", v172, 2u);
      v147 = v313;
    }

    (*v294)(v147, v319);
    goto LABEL_91;
  }

LABEL_118:

  v183 = v290;
  sub_100059E04(&enum case for CredentialKeyUsage.payloadProtection(_:));
  v290 = v183;
  if (v183)
  {

    v185 = *(v145 + 8);
    v186 = v315;
    v185(v39, v315);
    v185(v293, v186);

    goto LABEL_86;
  }

  v187 = v184;
  if (v184 >> 62)
  {
    goto LABEL_171;
  }

  for (i = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v189 = v311;
    if (!i)
    {
      break;
    }

    v190 = 0;
    v317 = (v187 & 0xC000000000000001);
    v314 = v187 & 0xFFFFFFFFFFFFFF8;
    v318 = _swiftEmptyArrayStorage;
    v313 = (v312 + 8);
    while (1)
    {
      if (v317)
      {
        v191 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v190 >= *(v314 + 16))
        {
          goto LABEL_170;
        }

        v191 = *(v187 + 8 * v190 + 32);
      }

      v192 = v191;
      v193 = v190 + 1;
      if (__OFADD__(v190, 1))
      {
        break;
      }

      v194 = [v191 identifier];
      if (v194)
      {
        v195 = v194;
        v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v198 = v197;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v318 = sub_100100418(0, *(v318 + 2) + 1, 1, v318);
        }

        v200 = *(v318 + 2);
        v199 = *(v318 + 3);
        if (v200 >= v199 >> 1)
        {
          v318 = sub_100100418((v199 > 1), v200 + 1, 1, v318);
        }

        v201 = v318;
        *(v318 + 2) = v200 + 1;
        v202 = &v201[16 * v200];
        *(v202 + 4) = v196;
        *(v202 + 5) = v198;
        v189 = v311;
      }

      else
      {
        defaultLogger()();
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          *v205 = 0;
          _os_log_impl(&_mh_execute_header, v203, v204, "Credential payload protection key does not have required field; skipping", v205, 2u);
        }

        (*v313)(v189, v319);
      }

      ++v190;
      v145 = v287;
      if (v193 == i)
      {
        goto LABEL_140;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    ;
  }

  v318 = _swiftEmptyArrayStorage;
LABEL_140:

  v206 = v290;
  v207 = sub_10005CF80();
  if (v206)
  {
    v208 = v304;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v312 + 8))(v208, v319);
    v209 = 0;
  }

  else
  {
    v209 = v207;
  }

  v290 = 0;
  v210 = v308;
  v211 = sub_10005947C();
  if (!(v211 >> 62))
  {
    v212 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
    LODWORD(v311) = v209;
    if (v212)
    {
      goto LABEL_145;
    }

LABEL_173:

    goto LABEL_174;
  }

  v245 = v211;
  v246 = _CocoaArrayWrapper.endIndex.getter();
  v211 = v245;
  LODWORD(v311) = v209;
  if (!v246)
  {
    goto LABEL_173;
  }

LABEL_145:
  if ((v211 & 0xC000000000000001) != 0)
  {
    v213 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_148:
    v214 = v213;

    if (v214)
    {
      v313 = v214;
      v215 = [v214 validFrom];
      if (v215)
      {
        v216 = v302;
        v217 = v215;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v218 = 0;
        v219 = v309;
      }

      else
      {
        v218 = 1;
        v219 = v309;
        v216 = v302;
      }

      v220 = *(v145 + 56);
      v221 = 1;
      v220(v216, v218, 1, v315);
      sub_100046524(v216, v219, &qword_1002004D0, &unk_1001AE1C0);
      v222 = [v313 validUntil];
      if (v222)
      {
        v223 = v222;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v221 = 0;
      }

      v224 = 1;
      v220(v210, v221, 1, v315);
      sub_100046524(v210, v310, &qword_1002004D0, &unk_1001AE1C0);
      v225 = v313;
      v226 = [v313 signedAt];
      if (v226)
      {
        v227 = v303;
        v228 = v226;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v229 = v227;
        v224 = 0;
      }

      else
      {
        v229 = v303;
      }

      v220(v229, v224, 1, v315);
      sub_100046524(v229, v288, &qword_1002004D0, &unk_1001AE1C0);
      v230 = [v225 ingestionHash];
      if (v230)
      {
        v231 = v230;
        v308 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v314 = v232;
      }

      else
      {
        v308 = 0;
        v314 = 0xF000000000000000;
      }

      v233 = [v225 identifierRevocationList];
      if (v233)
      {
        v234 = v233;
        v235 = v290;
        v317 = sub_10005D534();
        v236 = v235;
        if (v235)
        {

          v237 = v301;
          defaultLogger()();
          swift_errorRetain();
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            *v240 = 138412290;
            swift_errorRetain();
            v242 = _swift_stdlib_bridgeErrorToNSError();
            *(v240 + 4) = v242;
            *v241 = v242;
            _os_log_impl(&_mh_execute_header, v238, v239, "StoredCredential Could not parse revocation info from stored value; skipping: %@", v240, 0xCu);
            sub_10000A0D4(v241, &qword_1002003B8, &unk_1001AB850);
          }

          else
          {
          }

          (*(v312 + 8))(v237, v319);
          v236 = 0;
          v317 = 0;
          v290 = 0;
          v145 = v287;
        }

        else
        {
          v290 = 0;
        }
      }

      else
      {
        v236 = 0;
        v317 = 0;
      }

      v243 = v315;
      v244 = v309;
LABEL_175:
      v36 = [objc_allocWithZone(DCCredentialProperties) init];
      v248 = v316;
      [v36 setCredentialIdentifier:v316];

      v249 = v299;
      [v36 setPartition:v299];

      [v36 setCredentialState:v285];
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v36 setCreatedAt:isa];

      v251 = Date._bridgeToObjectiveC()().super.isa;
      [v36 setUpdatedAt:v251];

      v252 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v36 setKeySigningKeys:v252];

      v253 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v36 setDeviceEncryptionKeys:v253];

      v254 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v36 setPresentmentKeys:v254];

      v255 = Array._bridgeToObjectiveC()().super.isa;
      [v36 setPayloadProtectionKeys:v255];

      v256 = v305;
      sub_100060BA4(v244, v305);
      v257 = *(v145 + 48);
      if (v257(v256, 1, v243) == 1)
      {
        v258 = 0;
      }

      else
      {
        v258 = Date._bridgeToObjectiveC()().super.isa;
        (*(v145 + 8))(v256, v243);
      }

      v259 = v307;
      [v36 setPayloadValidFrom:v258];

      v260 = v306;
      sub_100060BA4(v310, v306);
      if (v257(v260, 1, v243) == 1)
      {
        v261 = 0;
      }

      else
      {
        v261 = Date._bridgeToObjectiveC()().super.isa;
        (*(v287 + 8))(v260, v243);
      }

      [v36 setPayloadValidUntil:v261];

      sub_100060BA4(v288, v259);
      if (v257(v259, 1, v243) == 1)
      {
        v262 = 0;
      }

      else
      {
        v262 = Date._bridgeToObjectiveC()().super.isa;
        (*(v287 + 8))(v259, v243);
      }

      v263 = v243;
      v265 = v313;
      v264 = v314;
      v266 = v308;
      [v36 setPayloadSignedAt:v262];

      v267 = v292;
      if (v264 >> 60 == 15)
      {
        v268 = 0;
      }

      else
      {
        sub_100009708(v266, v264);
        v268 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v266, v264);
      }

      [v36 setPayloadIngestionHash:v268];

      v269 = sub_10005DBAC();
      [v36 setOptions:v269];

      [v36 setNeedsPresentmentKeyRefresh:v311 & 1];
      if ((v236 & 1) != 0 || (v270 = [v265 docType]) == 0)
      {
        v270 = 0;
      }

      [v36 setDocType:v270];

      if (v236)
      {
        v271 = Array._bridgeToObjectiveC()().super.isa;

        [v36 setIssuerCertificateChain:v271];
      }

      else
      {
        v272 = [v265 issuerCertificateChain];
        if (v272)
        {
          v320 = 0;
          v273 = v272;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        v274 = Array._bridgeToObjectiveC()().super.isa;

        [v36 setIssuerCertificateChain:v274];

        v275 = [v265 region];
        if (v275)
        {
          goto LABEL_196;
        }
      }

      v275 = 0;
LABEL_196:
      [v36 setRegion:v275];

      if ((v236 & 1) != 0 || (v276 = [v265 issuingJurisdiction]) == 0)
      {
        v276 = 0;
      }

      [v36 setIssuingJurisdiction:v276];

      if ((v236 & 1) != 0 || (v277 = [v265 issuingAuthority]) == 0)
      {
        v277 = 0;
      }

      [v36 setIssuingAuthority:v277];

      [v36 setCredentialRevocationInfo:v317];
      v278 = [v284 provisioningFailureReasons];
      if (v278)
      {
        v320 = 0;
        v279 = v278;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      v280 = v288;

      v281 = Array._bridgeToObjectiveC()().super.isa;

      [v36 setProvisioningFailureReasons:v281];

      sub_10001C120(v266, v314);
      sub_10000A0D4(v280, &qword_1002004D0, &unk_1001AE1C0);
      sub_10000A0D4(v310, &qword_1002004D0, &unk_1001AE1C0);
      sub_10000A0D4(v309, &qword_1002004D0, &unk_1001AE1C0);
      v282 = *(v287 + 8);
      v282(v267, v263);
      v282(v293, v263);
      return v36;
    }

LABEL_174:
    v247 = *(v145 + 56);
    v236 = 1;
    v244 = v309;
    v243 = v315;
    v247(v309, 1, 1, v315);
    v247(v310, 1, 1, v243);
    v247(v288, 1, 1, v243);
    v317 = 0;
    v308 = 0;
    v313 = 0;
    v314 = 0xF000000000000000;
    goto LABEL_175;
  }

  if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v213 = *(v211 + 32);
    goto LABEL_148;
  }

  __break(1u);
LABEL_207:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005CF80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 1);
  v3 = __chkstk_darwin(v1);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v49 = &v44 - v6;
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  v10._object = 0x80000001001B53C0;
  v10._countAndFlagsBits = 0xD000000000000029;
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    v12 = v2;
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Forcing needsPresentmentKeyRefresh to true due to internal defaults setting", v15, 2u);
    }

    v12[1](v8, v1);
LABEL_5:
    v16 = 1;
    return v16 & 1;
  }

  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  if (v0)
  {
    return v16 & 1;
  }

  v19 = v17;
  v50 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v46 = v1;
    v47 = 0;
    v45 = v2;
    if (!i)
    {
      break;
    }

    v21 = 0;
    v2 = (v19 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 payload];
      if (v25)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v1 = v50[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v21;
      if (v24 == i)
      {
        v26 = v50;
        v1 = v46;
        v2 = v45;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v19 = *(v26 + 16);
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_55:
    v39 = v2;

    v40 = v48;
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Credential does not have any keys, skipping key refresh", v43, 2u);
    }

    v39[1](v40, v1);
    v16 = 0;
    return v16 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
    goto LABEL_55;
  }

LABEL_26:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);
LABEL_29:
    v28 = v27;
    v2 = &off_1001FE000;
    if (v19 != 1)
    {
      v36 = 1;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v36 >= *(v26 + 16))
          {
            goto LABEL_52;
          }

          v37 = *(v26 + 8 * v36 + 32);
        }

        v29 = v37;
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_50;
        }

        v1 = [v37 timesUsed];
        if (v1 < [v28 timesUsed])
        {

          v28 = v29;
          ++v36;
          if (v38 == v19)
          {
            goto LABEL_31;
          }
        }

        else
        {

          ++v36;
          if (v38 == v19)
          {
            break;
          }
        }
      }
    }

    v29 = v28;
LABEL_31:

    v30 = [v29 timesUsed];
    if (v30 < 1)
    {

      v16 = 0;
      return v16 & 1;
    }

    v31 = v30;
    v32 = v49;
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v33, v34, "Minimum number of times a presentment key is used is %lld, needs key refresh", v35, 0xCu);
    }

    v45[1](v32, v46);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10005D534()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = [v1 identifier];
  if (v16)
  {
    v43 = v13;
    v45 = v10;
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v19;

    v20 = [v1 uri];
    if (!v20)
    {
      (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
      sub_10002688C(_swiftEmptyArrayStorage);
      v23 = type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v24 = v18;
      goto LABEL_7;
    }

    v21 = v20;
    v42 = v5;
    v44 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    v22 = v45;
    if ((*(v45 + 48))(v8, 1, v9) == 1)
    {
      sub_10000A0D4(v8, &qword_1002019B0, &unk_1001ABDD0);
      (*(v3 + 104))(v42, enum case for DIPError.Code.invalidStoredData(_:), v2);
      sub_10002688C(_swiftEmptyArrayStorage);
      v23 = type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v24 = v44;
LABEL_7:
      sub_1000092BC(v24, v46);
      return v23;
    }

    (*(v22 + 32))(v15, v8, v9);
    v25 = [v1 certificate];
    if (v25)
    {
      v26 = v25;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xF000000000000000;
    }

    v30 = *(v22 + 16);
    v31 = v43;
    v30(v43, v15, v9);
    v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (v29 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001C120(v27, v29);
    }

    v34 = objc_allocWithZone(DCCredentialRevocationInfo);
    URL._bridgeToObjectiveC()(v35);
    v36 = v31;
    v38 = v37;
    v23 = [v34 initWithIdentifier:v32.super.isa certificate:isa URL:v37];

    sub_1000092BC(v44, v46);
    v39 = *(v45 + 8);
    v39(v36, v9);
    v39(v15, v9);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    v23 = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v23;
}

unint64_t sub_10005DBAC()
{
  v1 = [objc_allocWithZone(DCCredentialOptions) init];
  [v1 setDeleteInactiveKeysAfterDays:{objc_msgSend(v0, "deleteInactiveKeysAfterDays")}];
  [v1 setDeleteIncompleteCredentialAfterDays:{objc_msgSend(v0, "deleteIncompleteCredentialAfterDays")}];
  result = [v0 readerAuthenticationPolicy];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v1 setReaderAuthenticationPolicy:result];
  result = [v0 presentmentAuthPolicy];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v1 setPresentmentAuthPolicy:result];
  result = [v0 payloadProtectionPolicy];
  if ((result & 0x8000000000000000) == 0)
  {
    [v1 setPayloadProtectionPolicy:result];
    [v1 setIsPIIHashMismatchTerminal:{objc_msgSend(v0, "isPIIHashMismatchTerminal")}];
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_10005DCD8()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v87 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v86 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v85 = &v76 - v14;
  v15 = __chkstk_darwin(v13);
  v84 = &v76 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v76 - v18;
  __chkstk_darwin(v17);
  v89 = &v76 - v20;
  result = [v2 format];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = result;
  v88 = v10;
  v23 = [v2 docType];
  if (!v23)
  {
    v29 = " == %@ OR usage == %@)";
    (*(v6 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_13:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v29;
  }

  v24 = v23;
  v25 = [v2 payloadData];
  if (!v25)
  {

    v29 = "missing stored doctype";
    (*(v6 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_13;
  }

  v79 = v1;
  v80 = v9;
  v81 = v19;
  v26 = v25;
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v2 createdAt];
  if (!v30)
  {

    v89 = "toDCCredentialPayload()";
    (*(v6 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v27, v29);
    return v29;
  }

  v31 = v30;
  v77 = v27;
  v78 = v29;
  v32 = v89;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [v2 updatedAt];
  if (!v33)
  {

    v29 = "missing stored createdAt";
    (*(v6 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v77, v78);
    (*(v88 + 8))(v32, v80);
    return v29;
  }

  v34 = v33;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v2 protectionType];
  if ((result & 0x8000000000000000) == 0)
  {
    v35 = result;
    v36 = [v2 identifierRevocationList];
    v37 = v79;
    v38 = v80;
    v39 = v77;
    if (v36)
    {
      v40 = v36;
      v41 = sub_10005D534();
      if (v37)
      {

        defaultLogger()();
        swift_errorRetain();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          swift_errorRetain();
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v46;
          *v45 = v46;
          _os_log_impl(&_mh_execute_header, v42, v43, "StoredPayload Could not parse revocation info from stored value; skipping: %@", v44, 0xCu);
          sub_10000A0D4(v45, &qword_1002003B8, &unk_1001AB850);

          v38 = v80;
        }

        else
        {
        }

        v39 = v77;
        (*(v82 + 8))(v87, v83);
        v87 = 0;
        v79 = 0;
      }

      else
      {
        v87 = v41;
        v79 = 0;
      }
    }

    else
    {
      v87 = 0;
    }

    v29 = [objc_allocWithZone(DCCredentialPayload) init];
    [v29 setFormat:v22];
    [v29 setDocType:v24];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v29 setPayloadData:isa];

    v48 = v89;
    v49 = Date._bridgeToObjectiveC()().super.isa;
    [v29 setCreatedAt:v49];

    v50 = Date._bridgeToObjectiveC()().super.isa;
    [v29 setUpdatedAt:v50];

    v51 = [v2 validFrom];
    if (v51)
    {
      v52 = v84;
      v53 = v51;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v54.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v55 = v88;
      (*(v88 + 8))(v52, v38);
    }

    else
    {
      v54.super.isa = 0;
      v55 = v88;
    }

    [v29 setValidFrom:v54.super.isa];

    v56 = [v2 validUntil];
    if (v56)
    {
      v57 = v85;
      v58 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v59.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v55 + 8))(v57, v38);
    }

    else
    {
      v59.super.isa = 0;
    }

    [v29 setValidUntil:v59.super.isa];

    v60 = [v2 signedAt];
    if (v60)
    {
      v61 = v86;
      v62 = v60;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v63.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v55 + 8))(v61, v38);
    }

    else
    {
      v63.super.isa = 0;
    }

    [v29 setSignedAt:v63.super.isa];

    [v29 setProtectionType:v35];
    v64 = v79;
    sub_100059974();
    if (v64)
    {
      sub_1000092BC(v39, v78);

      v65 = *(v55 + 8);
      v66 = v80;
      v65(v81, v80);
      v65(v48, v66);
    }

    else
    {
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v29 setElementIdentifiersByNamespace:v67];

      v68 = [v2 issuerCertificateChain];
      if (!v68 || (v90 = 0, v69 = v68, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v69, !v90))
      {
      }

      v70 = Array._bridgeToObjectiveC()().super.isa;

      [v29 setIssuerCertificateChain:v70];

      v71 = [v2 region];
      [v29 setRegion:v71];

      v72 = [v2 issuingJurisdiction];
      [v29 setIssuingJurisdiction:v72];

      v73 = v87;
      [v29 setCredentialRevocationInfo:v87];
      sub_1000092BC(v39, v78);

      v74 = *(v55 + 8);
      v75 = v80;
      v74(v81, v80);
      v74(v48, v75);
    }

    return v29;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_10005E914(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 format];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v2 docType];
  if (!v10)
  {
LABEL_9:
    (*(v5 + 104))(v7, enum case for DIPError.Code.invalidStoredData(_:), v4);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v11 = v10;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v2 payloadData];
  if (!v14)
  {

    goto LABEL_9;
  }

  v36 = v13;
  v15 = v14;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v2 protectionType];
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v35 = v16;
  v21 = [v2 region];
  if (v21)
  {
    v22 = v21;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v34 = 0;
    v24 = 0;
  }

  v25 = v18;
  v26 = [v2 issuingJurisdiction];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = v37;
  *a1 = v9;
  a1[1] = v31;
  v32 = v35;
  a1[2] = v36;
  a1[3] = v32;
  a1[4] = v25;
  a1[5] = v20;
  a1[6] = v34;
  a1[7] = v24;
  a1[8] = v28;
  a1[9] = v30;
}

uint64_t sub_10005EC20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = [v2 identifierRevocationList];
  if (v7 && (v8 = v7, v9 = [v7 identifier], v8, v9))
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = [v2 identifierRevocationList];
  if (v13 && (v14 = v13, v15 = [v13 certificate], v14, v15))
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = [v2 identifierRevocationList];
  if (v19 && (v20 = v19, v21 = [v19 uri], v20, v21))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v16;
  a1[3] = v18;
  v23 = type metadata accessor for PayloadRevocationListMetadata(0);
  sub_100046524(v6, a1 + *(v23 + 24), &qword_1002019B0, &unk_1001ABDD0);
  return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
}

uint64_t sub_10005EE94(uint64_t a1)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v9 = result;
    v10 = v1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v16[1] = a1;
    sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    sub_100060C14();
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v2)
    {

      (*(v5 + 104))(v8, enum case for DIPError.Code.jsonEncodingFailed(_:), v9);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v13 = v11;
      v14 = v12;

      isa = Data._bridgeToObjectiveC()().super.isa;
      [v10 setElementIdentifiersByNamespace:isa];

      return sub_1000092BC(v13, v14);
    }
  }

  return result;
}

void sub_10005F0F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  __chkstk_darwin(v7 - 8);
  v45 = &v40 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v40 - v14;
  v15 = String._bridgeToObjectiveC()();
  [v3 setIdentifier:v15];

  CredentialKeyType.rawValue.getter();
  v16 = String._bridgeToObjectiveC()();

  [v3 setKeyType:v16];

  CredentialKeyUsage.rawValue.getter();
  v17 = String._bridgeToObjectiveC()();

  [v3 setUsage:v17];

  v18 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v48 = sub_100060CC0;
  v49 = a1;
  os_unfair_lock_lock(v18 + 4);
  sub_100032EEC(v19);
  if (v2)
  {
    os_unfair_lock_unlock(v18 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v18 + 4);
    v21 = v51;
    if (v51 >> 60 == 15)
    {
LABEL_5:
      v45 = "fiersByNamespace(_:)";
      v24 = v47;
      v46 = *(v46 + 104);
      v25 = v52;
      (v46)(v52, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v47);
      v44 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (v46)(v25, enum case for DIPError.Code.internalError(_:), v24);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v41 = v9;
    v42 = v10;
    v43 = v50;
    __chkstk_darwin(v20);
    os_unfair_lock_lock(v18 + 4);
    sub_100034020(v22);
    os_unfair_lock_unlock(v18 + 4);
    v23 = v51;
    if (v51 >> 60 == 15)
    {
      sub_10001C120(v43, v21);
      goto LABEL_5;
    }

    v26 = v50;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 setPublicKey:isa];

    v47 = v26;
    v52 = v23;
    v28 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setPublicKeyIdentifier:v28];

    v29 = [v3 createdAt];
    if (v29)
    {
      v30 = v29;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v41;
      v31 = v42;
      v33 = *(v42 + 32);
      v34 = v45;
      (v33)(v45, v13, v41);
      (*(v31 + 56))(v34, 0, 1, v32);
      v35 = v44;
      v33();
    }

    else
    {
      v32 = v41;
      v31 = v42;
      v36 = v45;
      (*(v42 + 56))(v45, 1, 1, v41);
      v35 = v44;
      Date.init()();
      if ((*(v31 + 48))(v36, 1, v32) != 1)
      {
        sub_10000A0D4(v36, &qword_1002004D0, &unk_1001AE1C0);
      }
    }

    v37 = Date._bridgeToObjectiveC()().super.isa;
    v38 = *(v31 + 8);
    v38(v35, v32);
    [v3 setCreatedAt:v37];

    Date.init()();
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v38(v13, v32);
    [v3 setUpdatedAt:v39];

    sub_10001C120(v47, v52);
    sub_10001C120(v43, v21);
  }
}

void sub_10005F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v5 = v4;
  v6 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = String._bridgeToObjectiveC()();
  [v5 setIdentifier:{v16, v28, v29}];

  CredentialKeyType.rawValue.getter();
  v17 = String._bridgeToObjectiveC()();

  [v5 setKeyType:v17];

  CredentialKeyUsage.rawValue.getter();
  v18 = String._bridgeToObjectiveC()();

  [v5 setUsage:v18];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 setKeyBlob:isa];

  v20 = Data._bridgeToObjectiveC()().super.isa;
  [v5 setPublicKey:v20];

  v21 = Data._bridgeToObjectiveC()().super.isa;
  [v5 setPublicKeyIdentifier:v21];

  v22 = [v5 createdAt];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v10 + 32);
    v24(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v24(v15, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    Date.init()();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_10000A0D4(v8, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v25 = Date._bridgeToObjectiveC()().super.isa;
  v26 = *(v10 + 8);
  v26(v15, v9);
  [v5 setCreatedAt:v25];

  Date.init()();
  v27 = Date._bridgeToObjectiveC()().super.isa;
  v26(v13, v9);
  [v5 setUpdatedAt:v27];
}

void sub_10005FBEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v14];

  CredentialKeyType.rawValue.getter();
  v15 = String._bridgeToObjectiveC()();

  [v2 setKeyType:v15];

  CredentialKeyUsage.rawValue.getter();
  v16 = String._bridgeToObjectiveC()();

  [v2 setUsage:v16];

  v17 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey);
  v18 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey + 8);
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v19)
  {
    if ((v18 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 setPublicKey:isa];

    goto LABEL_10;
  }

  if (v17 != v17 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  [v2 setPublicKey:0];
LABEL_10:
  v21 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setPublicKeyIdentifier:v21];

  v22 = [v2 createdAt];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v8 + 32);
    v24(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v24(v13, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    Date.init()();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_10000A0D4(v6, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v25 = Date._bridgeToObjectiveC()().super.isa;
  v26 = *(v8 + 8);
  v26(v13, v7);
  [v2 setCreatedAt:v25];

  Date.init()();
  v27 = Date._bridgeToObjectiveC()().super.isa;
  v26(v11, v7);
  [v2 setUpdatedAt:v27];
}

void sub_10006000C()
{
  v1 = v0;
  v2 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = String._bridgeToObjectiveC()();
  [v1 setIdentifier:v12];

  CredentialKeyType.rawValue.getter();
  v13 = String._bridgeToObjectiveC()();

  [v1 setKeyType:v13];

  CredentialKeyUsage.rawValue.getter();
  v14 = String._bridgeToObjectiveC()();

  [v1 setUsage:v14];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setPublicKeyIdentifier:isa];

  v16 = [v1 createdAt];
  if (v16)
  {
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v6 + 32);
    v18(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v18(v11, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    Date.init()();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_10000A0D4(v4, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v19 = Date._bridgeToObjectiveC()().super.isa;
  v20 = *(v6 + 8);
  v20(v11, v5);
  [v1 setCreatedAt:v19];

  Date.init()();
  v21 = Date._bridgeToObjectiveC()().super.isa;
  v20(v9, v5);
  [v1 setUpdatedAt:v21];
}

Swift::Int sub_100060384()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000603FC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

unsigned __int16 *sub_100060440@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100060478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000604EC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_WORD *sub_100060530@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10006055C(uint64_t a1)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v14[1] = a1;
  sub_100004E70(&qword_100201580, &qword_1001AB980);
  sub_100060B38(&qword_1002019A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    (*(v5 + 104))(v7, enum case for DIPError.Code.jsonEncodingFailed(_:), v4);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v11 = v8;
    v12 = v9;

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 setCredentialUUIDs:isa];

    return sub_1000092BC(v11, v12);
  }
}

id sub_1000607CC()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 credentialUUIDs];
  if (result)
  {
    v7 = result;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    sub_100060B38(&qword_1002019C8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000092BC(v8, v10);

    if (v1)
    {
      (*(v3 + 104))(v5, enum case for DIPError.Code.jsonDecodingFailed(_:), v2);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      return v11[1];
    }
  }

  return result;
}

uint64_t type metadata accessor for PayloadRevocationListMetadata(uint64_t a1)
{
  result = qword_100201A30;
  if (!qword_100201A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100060A8C()
{
  result = qword_1002019C0;
  if (!qword_1002019C0)
  {
    sub_100021ED0(&qword_1002019B8, &qword_1001AD020);
    sub_100060B38(&qword_1002019C8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002019C0);
  }

  return result;
}

uint64_t sub_100060B38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100060BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100060C14()
{
  result = qword_1002019D0;
  if (!qword_1002019D0)
  {
    sub_100021ED0(&qword_1002019B8, &qword_1001AD020);
    sub_100060B38(&qword_1002019A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002019D0);
  }

  return result;
}

uint64_t sub_100060CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_100060DC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060E7C(uint64_t a1)
{
  sub_100060F00();
  if (v1 <= 0x3F)
  {
    sub_100060F50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060F00()
{
  if (!qword_100201A40)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201A40);
    }
  }
}

void sub_100060F50(uint64_t a1)
{
  if (!qword_100201A48)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201A48);
    }
  }
}

__n128 sub_100060FA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100060FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006100C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100061084()
{
  result = qword_100201A80;
  if (!qword_100201A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A80);
  }

  return result;
}

unint64_t sub_1000610EC()
{
  result = qword_100201A88;
  if (!qword_100201A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A88);
  }

  return result;
}

NSObject *sub_100061140(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSXPCListener);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithMachServiceName:v8];

  *&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener] = v9;
  *&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_dataContainer] = a1;
  v10 = type metadata accessor for BiometricStoreListener();
  v19.receiver = v1;
  v19.super_class = v10;

  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener;
  v13 = *&v11[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener];
  v14 = v11;
  [v13 setDelegate:v14];
  [*&v11[v12] resume];
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Biometric store listener is started", v17, 2u);
  }

  else
  {

    v15 = v14;
  }

  (*(v4 + 8))(v6, v3);
  return v14;
}

id sub_10006136C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Biometric store listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener] invalidate];
  v9 = type metadata accessor for BiometricStoreListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_10006156C(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_10006175C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying BiometricStoreSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for BiometricStoreSessionProxy();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_10006193C()
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

  return _swift_task_switch(sub_100061A64, 0, 0);
}

uint64_t sub_100061A64(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy bioBindingUnboundACL", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v13)
  {
    sub_100009278((v13 + 24), *(v13 + 48));

    v14 = dispatch thunk of AppleIDVManaging.prepareBioBindingUnboundACL()();
    v16 = v1[8];
    v17 = v1[6];
    v18 = v14;
    v19 = v15;
    defaultLogger()();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    Logger.cryptoParam(_:)();

    v8(v16, v17);

    v21 = v1[1];

    return v21(v18, v19);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_100061FB8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_10006193C();
}

uint64_t sub_100062060()
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

  return _swift_task_switch(sub_100062188, 0, 0);
}

uint64_t sub_100062188(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy passcodeBindingUnboundACL", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v13)
  {
    sub_100009278((v13 + 24), *(v13 + 48));

    v14 = dispatch thunk of AppleIDVManaging.preparePasscodeBindingUnboundACL()();
    v16 = v1[8];
    v17 = v1[6];
    v18 = v14;
    v19 = v15;
    defaultLogger()();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    Logger.cryptoParam(_:)();

    v8(v16, v17);

    v21 = v1[1];

    return v21(v18, v19);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_1000626DC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_100062060();
}

uint64_t sub_100062784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000628B0, 0, 0);
}

uint64_t sub_1000628B0(uint64_t a1)
{
  v26 = v1;
  v3 = v1[2];
  v2 = v1[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[10];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = Data.base64EncodedString(options:)(0);
    v13 = sub_10010150C(v12._countAndFlagsBits, v12._object, &v25);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "BiometricStoreSessionProxy setGlobalAuthACL, authACL = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v14 = *(v9 + 8);
  v14(v7, v8);
  v1[13] = v14;
  sub_1000710B4();
  v20 = *(v1[5] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[14] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v1[15] = v21;
    *v21 = v1;
    v21[1] = sub_100062C8C;
    v22 = v1[3];
    v23 = v1[4];
    v24 = v1[2];

    return sub_100125008(v24, v22, v23);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v1[13];
    v16 = v1[11];
    v17 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v16, v17);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_100062C8C(uint64_t a1, unint64_t a2)
{
  *(*v3 + 128) = v2;

  if (v2)
  {
    v6 = sub_100062E48;
  }

  else
  {
    sub_10001C120(a1, a2);
    v6 = sub_100062DBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100062DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100062E48()
{

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100063110(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100063200;

  return sub_100062784(v9, v11, a2);
}

uint64_t sub_100063200()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1000092BC(v6, v5);
  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000633C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000634FC, 0, 0);
}

uint64_t sub_1000634FC(uint64_t a1)
{
  v27 = v1;
  v3 = v1[2];
  v2 = v1[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[14];
  v8 = v1[10];
  v9 = v1[11];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = Data.base64EncodedString(options:)(0);
    v13 = sub_10010150C(v12._countAndFlagsBits, v12._object, &v26);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "BiometricStoreSessionProxy setModifiedGlobalAuthACL, modifiedAuthACL = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v14 = *(v9 + 8);
  v14(v7, v8);
  v1[15] = v14;
  sub_1000710B4();
  v20 = *(v1[6] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[16] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v1[17] = v21;
    *v21 = v1;
    v21[1] = sub_1000638EC;
    v22 = v1[4];
    v23 = v1[5];
    v25 = v1[2];
    v24 = v1[3];

    return sub_100125558(v25, v24, v22, v23);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v1[15];
    v16 = v1[12];
    v17 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v16, v17);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_1000638EC()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100063E68, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 152) = v3;
    *v3 = v2;
    v3[1] = sub_100063A7C;

    return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100063A7C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[20] = a1;
  v5[21] = v2;

  if (v2)
  {
    v6 = sub_100063D18;
  }

  else
  {
    v5[22] = a2;
    v6 = sub_100063BA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100063BA4()
{
  v1 = v0[20];
  if (v0[22] < 1)
  {

    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[15];
    v6 = v0[13];
    v7 = v0[10];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "no bound credential present skip returning uuids", v8, 2u);
    }

    v5(v6, v7);

    v1 = _swiftEmptyArrayStorage;
  }

  else
  {
  }

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_100063D18()
{

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100063E68()
{

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100064148(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4[6] = v13;
  v4[7] = v15;
  v16 = swift_task_alloc();
  v4[8] = v16;
  *v16 = v4;
  v16[1] = sub_100064258;

  return sub_1000633C0(v10, v12, v13, v15);
}

uint64_t sub_100064258(Class a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  sub_1000092BC(v7, v6);
  sub_1000092BC(v9, v8);
  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v12 = a1;
LABEL_3:
    v13 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v12 = 0;
    goto LABEL_3;
  }

  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = isa;
  v12 = 0;
  a1 = isa;
LABEL_6:
  v15 = *(v5 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_100064468()
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

  return _swift_task_switch(sub_100064590, 0, 0);
}

uint64_t sub_100064590(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalAuthACL", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_1000648FC;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_1000648FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100064AB4;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100064A24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100064A24()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_100064AB4()
{

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100064D64(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100064E0C;

  return sub_100064468();
}

uint64_t sub_100064E0C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100064FAC()
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

  return _swift_task_switch(sub_1000650D4, 0, 0);
}

uint64_t sub_1000650D4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy deleteGlobalAuthACL", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_10006541C;

    return sub_100125AF8();
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12(0);
  }
}

uint64_t sub_10006541C(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1000655D8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_100065548;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065548()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_1000655D8()
{

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10006588C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100065934;

  return sub_100064FAC();
}

uint64_t sub_100065934(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100065AC4()
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

  return _swift_task_switch(sub_100065BEC, 0, 0);
}

uint64_t sub_100065BEC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalAuthACLTemplateUUIDs", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_100065F4C;

    return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100065F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 104) = v3;

  if (v3)
  {
    v9 = sub_100064AB4;
  }

  else
  {
    v8[14] = a3;
    v8[15] = a2;
    v8[16] = a1;
    v9 = sub_100066088;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100066088()
{

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  return v1(v2, v3, v4);
}

uint64_t sub_100066290(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100066338;

  return sub_100065AC4();
}

uint64_t sub_100066338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = *v4;

  v10 = *(v7 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, 0, 0, v11);

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v10)[2](v10, isa, a2, a3, 0);

    _Block_release(v10);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_100066518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPTrustKey();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000666A4, 0, 0);
}

uint64_t sub_1000666A4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePrearmTrustCertificate", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];

  v8 = *(v7 + 8);
  v1[17] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[6] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[18] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[19] = v15;
    *v15 = v1;
    v15[1] = sub_100066A14;
    v16 = v1[12];
    v17 = v1[2];
    v18 = v1[3];

    return sub_100125FC4(v16, v17, v18);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[17];
    v10 = v1[15];
    v11 = v1[13];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100066A14()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000671D8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 168) = v3;
    *v3 = v2;
    v3[1] = sub_100066BA4;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100066BA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100067068;
  }

  else
  {
    v4 = sub_100066CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100066CB8()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[12];
    v25 = v0[11];
    v26 = v0[10];
    v3 = DIPTrustKey.keyBlob.getter();
    v23 = v4;
    v24 = v3;
    v5 = DIPTrustKey.baaCertificate.getter();
    v7 = v6;
    v8 = [v1 aclType] == 2;
    v9 = objc_allocWithZone(DCCredentialTrust);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = Data._bridgeToObjectiveC()().super.isa;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v9 initWithCredentialKeyBlob:isa baaCertificate:v11 pairingID:v12 isAccessibilityEnabled:v8];

    sub_1000092BC(v5, v7);
    sub_1000092BC(v24, v23);

    (*(v25 + 8))(v2, v26);

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    v19 = v0[17];
    v20 = v0[15];
    v21 = v0[13];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v19(v20, v21);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100067068()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v4(v5, v6);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000671D8()
{

  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000674B8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4[6] = v15;
  v16 = swift_task_alloc();
  v4[7] = v16;
  *v16 = v4;
  v16[1] = sub_1000675C8;

  return sub_100066518(v10, v12, v13, v15);
}

uint64_t sub_1000675C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = v5[3];
  sub_1000092BC(v5[4], v5[5]);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000677B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for DIPTrustKey();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_100067940, 0, 0);
}

uint64_t sub_100067940(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePrearmTrustCertificate fromKeyBlob", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];

  v8 = *(v7 + 8);
  v1[19] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[8] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[20] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[21] = v15;
    *v15 = v1;
    v15[1] = sub_100067CB4;
    v16 = v1[14];
    v17 = v1[4];
    v18 = v1[5];
    v19 = v1[2];
    v20 = v1[3];

    return sub_100126C28(v16, v19, v20, v17, v18);
  }

  else
  {
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.badLogic(_:), v1[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[19];
    v10 = v1[17];
    v11 = v1[15];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100067CB4()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100068478, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 184) = v3;
    *v3 = v2;
    v3[1] = sub_100067E44;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100067E44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_100068308;
  }

  else
  {
    v4 = sub_100067F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100067F58()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[14];
    v25 = v0[13];
    v26 = v0[12];
    v3 = DIPTrustKey.keyBlob.getter();
    v23 = v4;
    v24 = v3;
    v5 = DIPTrustKey.baaCertificate.getter();
    v7 = v6;
    v8 = [v1 aclType] == 2;
    v9 = objc_allocWithZone(DCCredentialTrust);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = Data._bridgeToObjectiveC()().super.isa;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v9 initWithCredentialKeyBlob:isa baaCertificate:v11 pairingID:v12 isAccessibilityEnabled:v8];

    sub_1000092BC(v5, v7);
    sub_1000092BC(v24, v23);

    (*(v25 + 8))(v2, v26);

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    v19 = v0[19];
    v20 = v0[17];
    v21 = v0[15];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v19(v20, v21);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100068308()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[15];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v4(v5, v6);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100068478()
{

  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006876C(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[4] = v13;
  v5[5] = v15;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[6] = v16;
  v5[7] = v18;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v5[8] = v21;
  v22 = swift_task_alloc();
  v5[9] = v22;
  *v22 = v5;
  v22[1] = sub_1000688B0;

  return sub_1000677B0(v13, v15, v16, v18, v19, v21);
}

uint64_t sub_1000688B0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[3];
  sub_1000092BC(v5[6], v5[7]);
  sub_1000092BC(v9, v8);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_100068ACC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100068BF8, 0, 0);
}

uint64_t sub_100068BF8(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(0xD00000000000001ALL, 0x80000001001B5CB0, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy %s", v8, 0xCu);
    sub_100005090(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[12] = v10;
  sub_1000710B4();
  v16 = *(v1[4] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[13] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v1[14] = v17;
    *v17 = v1;
    v17[1] = sub_100068F9C;
    v19 = v1[2];
    v18 = v1[3];

    return sub_1001278A0(v19, v18);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v1[12];
    v12 = v1[10];
    v13 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v11(v12, v13);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_100068F9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_100069160;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = sub_1000690D0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000690D0()
{

  v1 = v0[1];
  v3 = v0[16];
  v2 = v0[17];

  return v1(v2, v3);
}

uint64_t sub_100069160()
{

  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100069424(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100069500;

  return sub_100068ACC(v7, v9);
}

uint64_t sub_100069500(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3;

  sub_1000092BC(*(v7 + 32), *(v7 + 40));
  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = *(v8 + 24);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_1000696C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000697F4, 0, 0);
}

uint64_t sub_1000697F4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePhoneToken", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[15] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[7] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[16] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[17] = v15;
    *v15 = v1;
    v15[1] = sub_100069B4C;
    v16 = v1[3];
    v17 = v1[4];
    v18 = v1[2];

    return sub_1001280C8(v18, v16, v17);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[15];
    v10 = v1[13];
    v11 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100069B4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v7 = sub_100069D98;
  }

  else
  {
    *(v6 + 152) = a2;
    *(v6 + 160) = a1;
    v7 = sub_100069C80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100069C80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_allocWithZone(DCCredentialAuthorizationToken);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithCredentialAuthorizationToken:isa pairingID:v5];

  sub_1000092BC(v2, v1);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100069D98()
{

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006A078(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[7] = v18;
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_10006A1A4;

  return sub_1000696C4(v10, v13, v15, v16, v18);
}

uint64_t sub_10006A1A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[4];
  sub_1000092BC(v5[5], v5[6]);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10006A3AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10006A4D4, 0, 0);
}

uint64_t sub_10006A4D4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy establishPrearmTrustV2", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[15] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[7] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[16] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[17] = v15;
    *v15 = v1;
    v15[1] = sub_10006A820;
    v16 = v1[6];

    return sub_100128CC0(v16);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[15];
    v10 = v1[13];
    v11 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10006A820(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_10006AC28;
  }

  else
  {
    v5 = sub_10006A93C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006A93C()
{
  v1 = v0[18];
  if (v1 >> 60 == 15)
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.idcsMissingProgenitorKeyAttestation(_:), v0[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v2(v3, v4);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[3];
    v8 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v8 initWithData:isa type:1];

    sub_10001C120(v7, v1);

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_10006AC28()
{

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006AEEC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006AFB0;

  return sub_10006A3AC(v6);
}

uint64_t sub_10006AFB0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10006B168()
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

  return _swift_task_switch(sub_10006B290, 0, 0);
}

uint64_t sub_10006B290(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy nonceForAuthorizationToken", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v13)
  {
    sub_100009278((v13 + 24), *(v13 + 48));

    v14 = dispatch thunk of AppleIDVManaging.generateNonceOnWatch()();
    v16 = v15;
    v17 = objc_allocWithZone(DCCredentialNonce);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v17 initWithCredentialNonce:isa];

    sub_1000092BC(v14, v16);

    v20 = v1[1];

    return v20(v19);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_10006B7D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100064E0C;

  return sub_10006B168();
}

uint64_t sub_10006B878()
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

  return _swift_task_switch(sub_10006B9A0, 0, 0);
}

uint64_t sub_10006B9A0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy revokeCredentialAuthorizationToken", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v13)
  {
    sub_100009278((v13 + 24), *(v13 + 48));

    dispatch thunk of AppleIDVManaging.revokeCredentialAuthorizationToken()();

    v11 = v1[1];
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];
  }

  return v11();
}

uint64_t sub_10006BE40(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D70;

  return sub_10006B878();
}

uint64_t sub_10006BEE8(uint64_t a1)
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

  return _swift_task_switch(sub_10006C010, 0, 0);
}

uint64_t sub_10006C010(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy prearmCredential", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[3] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[12] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[13] = v15;
    *v15 = v1;
    v15[1] = sub_10006C35C;
    v16 = v1[2];

    return sub_10012BB40(v16);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[11];
    v10 = v1[9];
    v11 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10006C35C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10006C4FC;
  }

  else
  {
    v2 = sub_10006C470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006C470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C4FC()
{

  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006C7C0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006C884;

  return sub_10006BEE8(v6);
}

uint64_t sub_10006C884()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10006CA20()
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

  return _swift_task_switch(sub_10006CB54, 0, 0);
}

uint64_t sub_10006CB54(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy credentialAuthenticationTokenStatus", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  if (*(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage))
  {

    v13 = sub_10012C50C();
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Credential authentication token status: %lu", v16, 0xCu);
    }

    v17 = v1[9];
    v18 = v1[6];

    v8(v17, v18);

    v19 = v1[1];

    return v19(v13);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_10006D0D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10006D17C;

  return sub_10006CA20();
}

uint64_t sub_10006D17C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10006D30C()
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

  return _swift_task_switch(sub_10006D434, 0, 0);
}

uint64_t sub_10006D434(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy casdCertificate", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_1000710B4();
  if (*(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage))
  {

    v13 = sub_10012C720();
    v15 = v1[8];
    v16 = v1[6];
    v17 = v13;
    v18 = v14;
    defaultLogger()();
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    Logger.cryptoParam(_:)();

    v8(v15, v16);

    v20 = v1[1];

    return v20(v17, v18);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[8];
    v10 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v8(v9, v10);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

unint64_t sub_10006D7FC()
{
  _StringGuts.grow(_:)(31);

  v0 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v0);

  return 0xD00000000000001DLL;
}

uint64_t sub_10006DA04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10006DAAC;

  return sub_10006D30C();
}

uint64_t sub_10006DAAC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_10006DC40()
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
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006DD80, 0, 0);
}

uint64_t sub_10006DD80(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalProgenitorKeyAttestation", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[13] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v15[1] = sub_10006E0E8;

    return sub_10012C910();
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[12];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10006E0E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_10006E57C;
  }

  else
  {
    v5 = sub_10006E200;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006E200(uint64_t a1)
{
  v35 = v1;
  v2 = v1[16];
  if (v2 >> 60 == 15)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[15];
      v5 = v1[16];
      v32 = v1[12];
      v7 = v1[9];
      v8 = v1[6];
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no progenitor key attestation available", v9, 2u);

      sub_10001C120(v6, v5);
      v32(v7, v8);
    }

    else
    {
      v19 = v1[12];
      v20 = v1[9];
      v21 = v1[6];

      v19(v20, v21);
    }

    v22 = 0;
  }

  else
  {
    v10 = v1[15];
    sub_100009708(v10, v1[16]);
    defaultLogger()();
    sub_100009708(v10, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    sub_10001C120(v10, v2);
    if (os_log_type_enabled(v11, v12))
    {
      v33 = v1[12];
      v13 = v1[10];
      v14 = v1[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315138;
      v17 = Data.base64EncodedString(options:)(0);
      v18 = sub_10010150C(v17._countAndFlagsBits, v17._object, &v34);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Progenitor key attestation retrieved : %s", v15, 0xCu);
      sub_100005090(v16);

      v33(v13, v14);
    }

    else
    {
      v23 = v1[12];
      v24 = v1[10];
      v25 = v1[6];

      v23(v24, v25);
    }

    v27 = v1[15];
    v26 = v1[16];
    v28 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = [v28 initWithData:isa type:1];

    sub_10001C120(v27, v26);
    sub_10001C120(v27, v26);
  }

  v30 = v1[1];

  return v30(v22);
}

uint64_t sub_10006E57C()
{

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006E848(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D74;

  return sub_10006DC40();
}

uint64_t sub_10006E8F0()
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
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006EA30, 0, 0);
}

uint64_t sub_10006EA30(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalThirdPartyProgenitorKeyAttestation", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[13] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v15[1] = sub_10006ED98;

    return sub_10012CEAC();
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[12];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10006ED98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_100072D7C;
  }

  else
  {
    v5 = sub_10006EEB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006EEB0(uint64_t a1)
{
  v35 = v1;
  v2 = v1[16];
  if (v2 >> 60 == 15)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[15];
      v5 = v1[16];
      v32 = v1[12];
      v7 = v1[9];
      v8 = v1[6];
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no third party progenitor key attestation available", v9, 2u);

      sub_10001C120(v6, v5);
      v32(v7, v8);
    }

    else
    {
      v19 = v1[12];
      v20 = v1[9];
      v21 = v1[6];

      v19(v20, v21);
    }

    v22 = 0;
  }

  else
  {
    v10 = v1[15];
    sub_100009708(v10, v1[16]);
    defaultLogger()();
    sub_100009708(v10, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    sub_10001C120(v10, v2);
    if (os_log_type_enabled(v11, v12))
    {
      v33 = v1[12];
      v13 = v1[10];
      v14 = v1[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315138;
      v17 = Data.base64EncodedString(options:)(0);
      v18 = sub_10010150C(v17._countAndFlagsBits, v17._object, &v34);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Third party progenitor key attestation retrieved : %s", v15, 0xCu);
      sub_100005090(v16);

      v33(v13, v14);
    }

    else
    {
      v23 = v1[12];
      v24 = v1[10];
      v25 = v1[6];

      v23(v24, v25);
    }

    v27 = v1[15];
    v26 = v1[16];
    v28 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = [v28 initWithData:isa type:1];

    sub_10001C120(v27, v26);
    sub_10001C120(v27, v26);
  }

  v30 = v1[1];

  return v30(v22);
}

uint64_t sub_10006F3A0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D74;

  return sub_10006E8F0();
}

uint64_t sub_10006F448()
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

  return _swift_task_switch(sub_10006F570, 0, 0);
}

uint64_t sub_10006F570(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy boundAppletPresentmentACL", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_10006F8B4;

    return sub_10012D44C();
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10006F8B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_100064AB4;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_10006F9E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006F9E8()
{

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_10006FBEC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_10006F448();
}

uint64_t sub_10006FC94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10006FDC4, 0, 0);
}

uint64_t sub_10006FDC4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy refreshProgenitorKeyDesignations", v4, 2u);
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);

  v8 = *(v7 + 8);
  *(v1 + 96) = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(*(v1 + 32) + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  *(v1 + 104) = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    *(v1 + 112) = v15;
    *v15 = v1;
    v15[1] = sub_10007011C;
    v16 = *(v1 + 128);
    v18 = *(v1 + 16);
    v17 = *(v1 + 24);

    return sub_10012E30C(v18, v17, v16);
  }

  else
  {
    (*(*(v1 + 48) + 104))(*(v1 + 56), enum case for DIPError.Code.badLogic(_:), *(v1 + 40));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = *(v1 + 96);
    v10 = *(v1 + 80);
    v11 = *(v1 + 64);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_10007011C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100069160;
  }

  else
  {
    v2 = sub_100070230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100070230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007044C(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    v8 = a1;
    v9 = a4;
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v11 = 0xF000000000000000;
  }

  v4[4] = a1;
  v4[5] = v11;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_100070544;

  return sub_10006FC94(a1, v11, a2 & 1);
}

uint64_t sub_100070544()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_10001C120(v6, v5);
  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100070704()
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

  return _swift_task_switch(sub_10007082C, 0, 0);
}

uint64_t sub_10007082C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy clearProgenitorKeyDesignations", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000710B4();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_100070B74;

    return sub_10012E804();
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100070B74()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100064AB4;
  }

  else
  {
    v2 = sub_100070C88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100070C88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070E88(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100070F30;

  return sub_100070704();
}

uint64_t sub_100070F30()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

void sub_1000710B4()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6._countAndFlagsBits = 0xD000000000000022;
    v6._object = 0x80000001001B59D0;
    if (!NSXPCConnection.isEntitled(_:)(v6))
    {
      (*(v1 + 104))(v3, enum case for DIPError.Code.missingEntitlement(_:), v0);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v1 + 104))(v3, enum case for DIPError.Code.missingEntitlement(_:), v0);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

unint64_t sub_100071394()
{
  result = qword_100201BD0;
  if (!qword_100201BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201BD0);
  }

  return result;
}

uint64_t sub_1000713FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100070E88(v2, v3);
}

uint64_t sub_1000714A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100093A84(v2, v3, v4);
}

uint64_t sub_100071568()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007044C(v2, v3, v5, v4);
}

uint64_t sub_10007162C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000105C8;

  return sub_100093B6C(a1, v4, v5, v6);
}

uint64_t sub_1000716F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006FBEC(v2, v3);
}

uint64_t sub_1000717A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006F3A0(v2, v3);
}

uint64_t sub_100071854()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006E848(v2, v3);
}

uint64_t sub_100071900()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006DA04(v2, v3);
}

uint64_t sub_1000719AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006D0D4(v2, v3);
}

uint64_t sub_100071A5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10006C7C0(v2, v3, v4);
}

uint64_t sub_100071B10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006BE40(v2, v3);
}

uint64_t sub_100071BBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006B7D0(v2, v3);
}

uint64_t sub_100071C68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10006AEEC(v2, v3, v4);
}

uint64_t sub_100071D20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10006A078(v2, v3, v4, v5, v6);
}

uint64_t sub_100071DE8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100071E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100069424(v2, v3, v4);
}

uint64_t sub_100071EE4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100071F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10006876C(v2, v3, v4, v5, v6);
}

uint64_t sub_100072008()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000674B8(v2, v3, v5, v4);
}

uint64_t sub_1000720C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100066290(v2, v3);
}

uint64_t sub_100072174()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_10006588C(v2, v3);
}

uint64_t sub_100072220()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000104D4;

  return sub_100064D64(v2, v3);
}

uint64_t sub_1000722CC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007231C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100064148(v2, v3, v5, v4);
}

uint64_t sub_1000723E0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100072428()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100063110(v2, v3, v5, v4);
}

uint64_t sub_1000724E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_1000626DC(v2, v3);
}

uint64_t sub_100072594()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000725D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_100061FB8(v2, v3);
}

uint64_t sub_100072680()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1000726C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage;
  *&v3[OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage] = 0;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v9;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating BiometricStoreSessionProxy", v12, 2u);
    v9 = v18;
  }

  (*(v6 + 8))(v8, v5);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();

    v14 = sub_10009AE54();
    type metadata accessor for BiometricsHelper();
    swift_allocObject();
    v15 = BiometricsHelper.init()();
    v21 = type metadata accessor for DeviceInformationProvider();
    v22 = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(&v20);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[8] = v14;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v16 + 3);
    v16[9] = v15;
    sub_10001AA08(&v20, (v16 + 10));
    *&v3[v9] = v16;

    v17 = type metadata accessor for BiometricStoreSessionProxy();
    v19.receiver = v3;
    v19.super_class = v17;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100072934(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 processIdentifier];

    _os_log_impl(&_mh_execute_header, v9, v10, "Biometric store listener connection received from %d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DCBiometricStoreXPCProtocol];
  [v8 setExportedInterface:v12];

  v13 = *(v2 + OBJC_IVAR____TtC7idcredd22BiometricStoreListener_dataContainer);
  v14 = objc_allocWithZone(type metadata accessor for BiometricStoreSessionProxy());
  v15 = v8;

  v16 = sub_1000726C0(v15, v13);

  [v15 setExportedObject:v16];

  v24 = sub_100061554;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F5D08;
  v17 = _Block_copy(&aBlock);
  [v15 setInvalidationHandler:v17];
  _Block_release(v17);
  v24 = sub_100061560;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F5D30;
  v18 = _Block_copy(&aBlock);
  [v15 setInterruptionHandler:v18];
  _Block_release(v18);
  [v15 resume];
  return 1;
}

uint64_t sub_100072C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_100072D80(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSXPCListener);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithMachServiceName:v8];

  *&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener] = v9;
  *&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_dataContainer] = a1;
  v10 = type metadata accessor for CredentialStoreListener();
  v19.receiver = v1;
  v19.super_class = v10;

  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener;
  v13 = *&v11[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener];
  v14 = v11;
  [v13 setDelegate:v14];
  [*&v11[v12] resume];
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Credential store listener is started", v17, 2u);
  }

  else
  {

    v15 = v14;
  }

  (*(v4 + 8))(v6, v3);
  return v14;
}

id sub_100072FAC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Credential store listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd23CredentialStoreListener_xpcListener] invalidate];
  v9 = type metadata accessor for CredentialStoreListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1000731AC(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_10007339C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying CredentialStoreSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for CredentialStoreSessionProxy();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100073630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100073768, 0, 0);
}

uint64_t sub_100073768(uint64_t a1)
{
  v39 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy createCredential", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[4];

  v9 = *(v7 + 8);
  v1[14] = v9;
  v9(v5, v6);
  defaultLogger()();
  v10 = v8;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[3];
    v14 = v1[4];
    v15 = v1[2];
    v16 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10010150C(v15, v13, v38);
    *(v16 + 12) = 2080;
    if (v14)
    {
      v17 = [v10 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v37 = v1[12];
    v25 = v1[9];
    v26 = sub_10010150C(v18, v20, v38);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "create credential options: partition = %s, options = (%s)", v16, 0x16u);
    swift_arrayDestroy();

    v23 = v37;
    v24 = v25;
  }

  else
  {
    v21 = v1[12];
    v22 = v1[9];

    v23 = v21;
    v24 = v22;
  }

  v9(v23, v24);
  sub_100086094();
  v32 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v32;
  if (v32)
  {

    v33 = swift_task_alloc();
    v1[16] = v33;
    *v33 = v1;
    v33[1] = sub_100073C8C;
    v34 = v1[3];
    v35 = v1[4];
    v36 = v1[2];

    return sub_10014687C(v36, v34, v35);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = v1[14];
    v28 = v1[11];
    v29 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v27(v28, v29);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_100073C8C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_100073E5C;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_100073DC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100073DC0()
{

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_100073E5C()
{

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007414C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100074238;

  return sub_100073630(v7, v9, a2);
}

uint64_t sub_100074238(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v8 = *v3;

  if (v4)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v5 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100074404(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074530, 0, 0);
}

uint64_t sub_100074530(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy generateKeySigningKey for credential identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[12] = v12;
  sub_100086094();
  v18 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[14] = v19;
    *v19 = v1;
    v19[1] = sub_1000748FC;
    v21 = v1[2];
    v20 = v1[3];

    return sub_10016C268(v21, v20);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[12];
    v14 = v1[10];
    v15 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_1000748FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_100074AB4;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100074A24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100074A24()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_100074AB4()
{

  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100074D88(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100074E5C;

  return sub_100074404(v5, v7);
}

uint64_t sub_100074E5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100075018(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075144, 0, 0);
}

uint64_t sub_100075144(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy isAccountKeySigningKeyAvailable for accountKeyIdentifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v15 = v1[2];
    v16 = v1[3];

    v17 = sub_100030494(v15, v16);

    v18 = v1[1];
    v19 = v17;
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[10];
    v14 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v1[1];
    v19 = 0;
  }

  return v18(v19);
}

uint64_t sub_10007566C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100075740;

  return sub_100075018(v5, v7);
}

uint64_t sub_100075740(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000758F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075A20, 0, 0);
}

uint64_t sub_100075A20(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy createAccountKeySigningKey for accountKeyIdentifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v17 = v1[2];
    v18 = v1[3];

    v19 = sub_10002F210(v17, v18);
    v21 = v19;
    v22 = v20;
    v23 = sub_100156958(v19, v20);
    sub_1000092BC(v21, v22);

    v24 = v1[1];

    return v24(v23);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[10];
    v14 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_100075FD0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_1000758F4(v5, v7);
}

uint64_t sub_1000760A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000761D0, 0, 0);
}

uint64_t sub_1000761D0(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "retrieveAccountKeySigningKey for label: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (!*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_9;
  }

  v13 = v1[2];
  v14 = v1[3];

  v15 = sub_10002F8D8(v13, v14);
  if (v16 >> 60 == 15)
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.accountKeySigningKeyDoesntExist(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_9:
    v17 = v1[10];
    v18 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v17, v18);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v19 = v1[1];

    return v19();
  }

  v21 = v15;
  v22 = v16;
  v23 = sub_100156958(v15, v16);

  sub_10001C120(v21, v22);

  v24 = v1[1];

  return v24(v23);
}

uint64_t sub_100076844(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_1000760A4(v5, v7);
}

uint64_t sub_100076918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100076A48, 0, 0);
}

uint64_t sub_100076A48(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy generateAccountKeyAuthorization for credential identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[14] = v12;
  sub_100086094();
  v18 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[16] = v19;
    *v19 = v1;
    v19[1] = sub_100076E1C;
    v21 = v1[4];
    v20 = v1[5];
    v22 = v1[2];
    v23 = v1[3];

    return sub_100154238(v21, v20, v22, v23);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[14];
    v14 = v1[12];
    v15 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100076E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 136) = v4;

  if (v4)
  {
    v11 = sub_100076FF8;
  }

  else
  {
    v10[18] = a4;
    v10[19] = a3;
    v10[20] = a2;
    v10[21] = a1;
    v11 = sub_100076F64;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100076F64()
{

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_100076FF8()
{

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000772D4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000773D0;

  return sub_100076918(v6, v8, v9, v11);
}

uint64_t sub_1000773D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = *v5;
  v11 = *(*v5 + 16);
  v12 = *v5;

  v13 = *(v10 + 24);
  if (v6)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, 0, v14);

    _Block_release(v13);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = Data._bridgeToObjectiveC()().super.isa;
    (v13)[2](v13, isa, v16, 0);

    _Block_release(v13);
    sub_1000092BC(a1, a2);
    sub_1000092BC(a3, a4);
  }

  v17 = *(v12 + 8);

  return v17();
}

uint64_t sub_10007760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100077738, 0, 0);
}

uint64_t sub_100077738(uint64_t a1)
{
  v29 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v8 = v1[3];
    v9 = v1[2];
    v27 = v1[12];
    v10 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10010150C(v9, v8, v28);
    *(v10 + 12) = 2080;
    v11 = DCCredentialDeviceEncryptionKeyTypeToString();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10010150C(v12, v14, v28);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy generateDeviceEncryptionKey for credential identifier %s, keyType = %s", v10, 0x16u);
    swift_arrayDestroy();

    v16 = *(v6 + 8);
    v16(v27, v7);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  v1[13] = v16;
  sub_100086094();
  v22 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v22;
  if (v22)
  {

    v23 = swift_task_alloc();
    v1[15] = v23;
    *v23 = v1;
    v23[1] = sub_100077B80;
    v24 = v1[3];
    v25 = v1[4];
    v26 = v1[2];

    return sub_100166410(v26, v24, v25);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v1[13];
    v18 = v1[11];
    v19 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v17(v18, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_100077B80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_10008DF64;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_10008E134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100077E34(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008E128;

  return sub_10007760C(v7, v9, a2);
}