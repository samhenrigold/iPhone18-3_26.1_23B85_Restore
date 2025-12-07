uint64_t sub_1000B30C8()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000B3160()
{
  result = qword_1001DFF40;
  if (!qword_1001DFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DFF40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for STExceptionServer.ExceptionServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for STExceptionServer.ExceptionServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000B3304()
{
  type metadata accessor for Notification();
  v1 = *(v0 + 16);
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v1 mergeChangesFromContextDidSaveNotification:isa];
}

uint64_t sub_1000B3398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B33B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000B18A8(v2, v3, v4);
}

uint64_t sub_1000B3464()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000AE488(v2, v3, v4);
}

uint64_t sub_1000B3518()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000ADC68(v2, v3, v5, v4);
}

uint64_t sub_1000B35D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000AD3B0(v2, v3, v4);
}

uint64_t sub_1000B368C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B36D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000ACADC(v2, v3, v4);
}

uint64_t sub_1000B3788(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000A0F74(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1000B3894(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000B3910(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000B39BC()
{
  v1 = [objc_allocWithZone(DMFCreateConfigurationOrganizationRequest) init];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    [v1 setOrganizationIdentifier:STOrganizationIdentifierScreenTime];
    v3 = String._bridgeToObjectiveC()();
    [v2 setOrganizationDisplayName:v3];

    [v2 setOrganizationType:DMFConfigurationOrganizationTypeScreenTime];
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting DMF Organization creation", v6, 2u);
    }

    v7 = v0[2];

    v8 = swift_task_alloc();
    v0[4] = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_1000B3BF8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000B3BF8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000B3D78;
  }

  else
  {

    v2 = sub_1000B3D14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B3D14()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B3D78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000B3DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_1000A0F2C(&qword_1001E0060, qword_100140928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for LocalDeviceManagement(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() systemConnection];
  if (v13)
  {
    v14 = v13;
    sub_1000B428C(a3, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v8, a1, v5);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
    v17 = swift_allocObject();
    sub_1000B42F0(v12, v17 + v15);
    (*(v6 + 32))(v17 + v16, v8, v5);
    aBlock[4] = sub_1000B4354;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B3910;
    aBlock[3] = &unk_1001A7220;
    v18 = _Block_copy(aBlock);

    [v14 performRequest:v20 completion:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B4078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
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
      _os_log_impl(&_mh_execute_header, v2, v3, "DMF Create Organization Failed: %{public}@", v4, 0xCu);
      sub_1000B1DD4(v5);
    }

    swift_errorRetain();
    sub_1000A0F2C(&qword_1001E0060, qword_100140928);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "DMF Organiztion created successfully", v10, 2u);
    }

    sub_1000A0F2C(&qword_1001E0060, qword_100140928);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t type metadata accessor for LocalDeviceManagement(uint64_t a1)
{
  result = qword_1001E00C0;
  if (!qword_1001E00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B428C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDeviceManagement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B42F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDeviceManagement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4354(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocalDeviceManagement(0);
  sub_1000A0F2C(&qword_1001E0060, qword_100140928);

  return sub_1000B4078(a1, a2);
}

uint64_t sub_1000B4444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B445C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1000B44B4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B4520()
{

  return swift_deallocClassInstance();
}

void sub_1000B457C(void *a1, void *a2)
{
  sub_1000B67FC();
  sub_1000B4B18();
  sub_1000B4EA0();
  v4 = [a1 viewContext];
  sub_1000B51B4();

  sub_1000B6A5C(a2);
  sub_1000B6BD4();
}

void __swiftcall STDowngradeMigrator.init()(STDowngradeMigrator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id STDowngradeMigrator.init()()
{
  v1 = (v0 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName);
  *v1 = 0x746C7561666544;
  v1[1] = 0xE700000000000000;
  v2 = v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName;
  strcpy((v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName), "restrictions");
  *(v2 + 13) = 0;
  *(v2 + 14) = -5120;
  v3 = (v0 + OBJC_IVAR___STDowngradeMigrator_shareAcrossDevicesStoreName);
  *v3 = 0xD000000000000012;
  v3[1] = 0x800000010014CEF0;
  v4 = (v0 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  *v4 = 0x6566615372657355;
  v4[1] = 0xEF65726F74537974;
  v6.super_class = STDowngradeMigrator;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000B4960()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E01B0);
  sub_1000A2B1C(v0, qword_1001E01B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B49E0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3894(v2, qword_1001E01C8);
  sub_1000A2B1C(v0, qword_1001E01C8);
  v5 = [objc_opt_self() persistentStoreDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_1000B4B18()
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E01B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Migrating ManagedSettings data...", v3, 2u);
  }

  v4 = STManagedSettingsContainer;
  v5 = objc_allocWithZone(MOLocalSettingsStore);
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithName:v7 sharedContainer:v6];

  v26 = [objc_allocWithZone(MOLocalSettingsStore) initWithSharedContainer:v6];
  v9 = [v26 deviceActivity];
  v10 = [v8 deviceActivity];
  v11 = [v10 shareAcrossDevices];

  [v9 setShareAcrossDevices:v11];
  v12 = objc_allocWithZone(MOLocalSettingsStore);
  v13 = v6;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithName:v14 sharedContainer:v13];

  v16 = objc_allocWithZone(MOLocalSettingsStore);
  v17 = v13;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithName:v18 sharedContainer:v17];

  v20 = [v19 userSafety];
  v21 = [v15 userSafety];
  v22 = [v21 scanningPolicy];

  [v20 setScanningPolicy:v22];
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Migrated ManagedSettings data", v25, 2u);
  }
}

void sub_1000B4EA0()
{
  v1 = v0;
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E01B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting unused ManagedSettings stores...", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = STManagedSettingsContainer;
  v8 = [v6 storesForSharedContainer:STManagedSettingsContainer];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000A0F2C(&qword_1001E0230, &qword_100141390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10013FFC0;
  v10 = *(v1 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName + 8);
  *(inited + 32) = *(v1 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName);
  *(inited + 40) = v10;
  v11 = *(v1 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName + 8);
  *(inited + 48) = *(v1 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  *(inited + 56) = v11;

  sub_1000B5138(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 deleteStoresWithStoreNames:isa sharedContainer:v7];

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleted unused ManagedSettings stores", v15, 2u);
  }
}

uint64_t sub_1000B5138(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1000B5D88(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1000B51B4()
{
  swift_getObjectType();
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E01B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Recreating local organization...", v4, 2u);
  }

  __chkstk_darwin(v5);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (!v0)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Recreated local organization", v8, 2u);
    }
  }
}

void sub_1000B5394(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v79 = 0;
  v7 = [v6 fetchScreenTimeSettingsInContext:a1 error:&v79];
  v8 = v79;
  if (!v7)
  {
    v23 = v79;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v9 = v7;
  v10 = objc_opt_self();
  v79 = 0;
  v11 = v8;
  v12 = [v10 fetchLocalUserInContext:a1 error:&v79];
  if (!v12)
  {
    v24 = v79;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v13 = v12;
  v78 = v3;
  v14 = v79;
  if ([v9 cloudSyncEnabled])
  {
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    v15 = [v13 dsid];
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (os_variant_has_internal_content() && (v18 = [objc_opt_self() standardUserDefaults], v19 = String._bridgeToObjectiveC()(), v20 = objc_msgSend(v18, "BOOLForKey:", v19), v18, v19, (v20 & 1) != 0) || (v21 = objc_msgSend(v13, "localSettings")) == 0)
  {
    if (qword_1001DF0E8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v76 = sub_1000A2B1C(v25, qword_1001E01B0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Share across devices is off, recreating local organization", v28, 2u);
    }

    v29 = objc_opt_self();
    v79 = 0;
    v30 = [v29 fetchOrCreateLocalOrganizationWithContext:a1 error:&v79];
    v31 = v79;
    if (!v30)
    {
      v48 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_24;
    }

    v32 = v30;
    v33 = objc_opt_self();
    v79 = 0;
    v34 = v31;
    v35 = [v33 fetchWithContext:a1 error:&v79];
    if (!v35)
    {
      v49 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_25;
    }

    v77 = v35;
    v36 = v79;
    v37 = [v32 settings];
    v38 = v32;
    v39 = v37;
    if (!v37)
    {
      v39 = [objc_allocWithZone(STLocalOrganizationSettings) initWithContext:a1];
    }

    v40 = v37;
    [v39 setUser:v13];
    v74 = v38;
    [v39 setOrganization:v38];

    v41 = v77;
    v42 = [v77 settings];
    v75 = v39;
    if (v42)
    {
      v43 = v42;
      v44 = [v43 passcode];
      [v39 setPasscode:v44];

      [v39 setNeedsToSetPasscode:{objc_msgSend(v43, "needsToSetPasscode")}];
      [v39 setAllLimitsEnabled:{objc_msgSend(v43, "allLimitsEnabled")}];
      [v39 setCommunicationPolicy:{objc_msgSend(v43, "communicationPolicy")}];
      [v39 setCommunicationWhileLimitedPolicy:{objc_msgSend(v43, "communicationWhileLimitedPolicy")}];
      [v39 setContactManagementState:{objc_msgSend(v43, "contactManagementState")}];
      [v39 setIsCommunicationSafetySendingRestricted:{objc_msgSend(v43, "isCommunicationSafetySendingRestricted")}];
      [v39 setIsCommunicationSafetyReceivingRestricted:{objc_msgSend(v43, "isCommunicationSafetyReceivingRestricted")}];
      [v39 setIsCommunicationSafetyNotificationEnabled:{objc_msgSend(v43, "isCommunicationSafetyNotificationEnabled")}];
      [v39 setIsCommunicationSafetyAnalyticsEnabled:{objc_msgSend(v43, "isCommunicationSafetyAnalyticsEnabled")}];
      v45 = [v43 modificationDate];
      if (v45)
      {
        v46 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v47.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (v78)[1](v5, v2);
      }

      else
      {
        v47.super.isa = 0;
      }

      v50 = v75;
      [v75 setModificationDate:v47.super.isa];

      v51 = [v43 isEyeReliefEnabled];
      [v50 setIsEyeReliefEnabled:v51];

      v41 = v77;
    }

    v52 = [objc_opt_self() fetchRequestMatchingBlueprintsForUser:v13 fromOrganization:v41 includeTombstones:0];
    v79 = 0;
    v53 = [v52 execute:&v79];
    v54 = v79;
    if (!v53)
    {
      v63 = v41;
      v64 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_25;
    }

    v55 = v53;
    v73 = v52;
    v78 = v13;
    sub_1000A0F74(0, &qword_1001E0240, STBlueprint_ptr);
    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v54;

    v58 = v74;
    if (v56 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
      if (v59)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_32:
        if (v59 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v59; ++i)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v61 = *(v56 + 8 * i + 32);
          }

          v62 = v61;
          [v61 setOrganization:v58];
        }
      }
    }

    v65 = v78;
    v66 = v75;
    [v78 setLocalSettings:v75];
    [v65 setCloudSettings:0];
    v67 = v77;
    [a1 deleteObject:v77];
    v22 = v58;
    v13 = v65;
    if ([a1 hasChanges])
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Saving changes...", v70, 2u);
      }

      v79 = 0;
      if (![a1 save:&v79])
      {
        v72 = v79;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_25;
      }

      v71 = v79;
      v67 = v77;
    }

    v9 = v73;
    goto LABEL_9;
  }

  v22 = v13;
  v13 = v21;
LABEL_9:

  v9 = v22;
LABEL_24:

LABEL_25:
}

uint64_t sub_1000B5D88(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000B61D4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000B6498(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1000B5EC4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1000B606C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000B6358(&qword_1001DF548, &qword_10013F348);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1000B665C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1000B606C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000D1BB8(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1000B665C(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000B61D4()
{
  v1 = v0;
  sub_1000A0F2C(&qword_1001E0238, &unk_100141B60);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1000B6358(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000A0F2C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_1000B6498(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000B665C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000B67FC()
{
  v0 = type metadata accessor for DeviceActivityCenter();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E01B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping DeviceActivity schedules...", v7, 2u);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  DeviceActivityCenter.init(clientIdentifier:extensionIdentifier:)();
  DeviceActivityCenter.stopMonitoring(_:)(_swiftEmptyArrayStorage);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopped DeviceActivity schedules", v10, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1000B6A5C(void *a1)
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E01B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding active declarations to DeviceManagement...", v5, 2u);
  }

  [a1 processBlueprintChanges];
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Added active declarations to DeviceManagement", v7, 2u);
  }
}

void sub_1000B6BD4()
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E01B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting version.plist", v3, 2u);
  }

  v4 = [objc_opt_self() defaultManager];
  if (qword_1001DF0F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  sub_1000A2B1C(v5, qword_1001E01C8);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v15 = 0;
  v9 = [v4 removeItemAtURL:v7 error:&v15];

  if (v9)
  {
    v10 = v15;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Deleted version.plist", v13, 2u);
    }
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1000B6E30()
{
  if (os_variant_has_internal_content() && (v0 = [objc_opt_self() standardUserDefaults], v1 = String._bridgeToObjectiveC()(), v2 = objc_msgSend(v0, "BOOLForKey:", v1), v0, v1, (v2 & 1) != 0))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_self() defaultManager];
    if (qword_1001DF0F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for URL();
    sub_1000A2B1C(v6, qword_1001E01C8);
    URL.path.getter();
    v7 = String._bridgeToObjectiveC()();

    v3 = [v5 fileExistsAtPath:v7];

    v4 = 0;
  }

  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000A2B1C(v8, qword_1001E01B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v19 = v4;
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136446466;
    if (v3)
    {
      v12 = 5457241;
    }

    else
    {
      v12 = 20302;
    }

    if (v3)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    v14 = sub_1000A2E68(v12, v13, &v20);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    if (v19)
    {
      v15 = 5457241;
    }

    else
    {
      v15 = 20302;
    }

    if (v19)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1000A2E68(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Should run downgrade migration: %{public}s forcedOff: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return v3;
}

uint64_t sub_1000B7114()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0250);
  sub_1000A2B1C(v0, qword_1001E0250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7194()
{
  v1[2] = v0;
  v2 = type metadata accessor for STExpressIntroduction.User();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000A0F2C(&qword_1001E0318, qword_100140A10);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for STExpressIntroduction.SettingsDefaults();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7300, 0, 0);
}

uint64_t sub_1000B7300()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  sub_1000A9618(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000B73C0;
  v5 = v0[6];

  return dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.load()(v5, v2, v3);
}

uint64_t sub_1000B73C0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000B7E40;
  }

  else
  {
    v2 = sub_1000B74D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B74D4()
{
  v45 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000B80B0(v3);
    if (qword_1001DF0F8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2B1C(v4, qword_1001E0250);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No saved settings defaults found; not merging", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
    if (qword_1001DF0F8 != -1)
    {
      swift_once();
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[7];
    v13 = v0[8];
    v14 = type metadata accessor for Logger();
    v0[14] = sub_1000A2B1C(v14, qword_1001E0250);
    v15 = *(v13 + 16);
    v15(v11, v10, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    if (v18)
    {
      v20 = v0[8];
      v21 = v0[9];
      v22 = v0[7];
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v23 = 136446210;
      v15(v21, v19, v22);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      v27 = *(v20 + 8);
      v27(v19, v22);
      v28 = sub_1000A2E68(v24, v26, &v44);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Found saved settings defaults: %{public}s", v23, 0xCu);
      sub_1000A462C(v43);
    }

    else
    {
      v29 = v0[7];
      v30 = v0[8];

      v27 = *(v30 + 8);
      v27(v19, v29);
    }

    v0[15] = v27;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Saving settings defaults for local user", v33, 2u);
    }

    v35 = v0[4];
    v34 = v0[5];
    v37 = v0[2];
    v36 = v0[3];

    v38 = v37[5];
    v39 = v37[6];
    sub_1000A9618(v37 + 2, v38);
    (*(v35 + 104))(v34, enum case for STExpressIntroduction.User.local(_:), v36);
    v40 = swift_task_alloc();
    v0[16] = v40;
    *v40 = v0;
    v40[1] = sub_1000B7974;
    v41 = v0[11];
    v42 = v0[5];

    return dispatch thunk of STExpressIntroduction.STSettingsStore.save(defaults:forUser:)(v41, v42, v38, v39);
  }
}

uint64_t sub_1000B7974()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000B7EDC;
  }

  else
  {
    v5 = sub_1000B7AE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B7AE4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done saving settings defaults for local user", v4, 2u);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Clearing settings defaults store", v7, 2u);
  }

  v8 = *(v1 + 16);

  v9 = v8[10];
  v10 = v8[11];
  sub_1000A9618(v8 + 7, v9);
  v11 = swift_task_alloc();
  *(v1 + 144) = v11;
  *v11 = v1;
  v11[1] = sub_1000B7C7C;

  return dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.clear()(v9, v10);
}

uint64_t sub_1000B7C7C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000B7F94;
  }

  else
  {
    v2 = sub_1000B7D90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B7D90()
{
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B7E40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B7EDC()
{
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B7F94()
{
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B804C()
{
  sub_1000A462C((v0 + 16));
  sub_1000A462C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1000B80B0(uint64_t a1)
{
  v2 = sub_1000A0F2C(&qword_1001E0318, qword_100140A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B8118()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0320);
  sub_1000A2B1C(v0, qword_1001E0320);
  return Logger.init(subsystem:category:)();
}

char *sub_1000B8198(uint64_t a1)
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    v7 = a1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000A0B8C(_swiftEmptyArrayStorage);
      v2 = v8;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    a1 = v7;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = &v1[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections];
  *v3 = 0;
  *(v3 + 1) = v2;
  *&v1[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for STExceptionListener();
  v4 = objc_msgSendSuper2(&v9, "init");
  *(*&v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer] + OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate) = v4;
  v5 = v4;
  swift_unknownObjectRelease();
  return v5;
}

void sub_1000B827C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1001DF100 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2B1C(v5, qword_1001E0320);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "connection invalidated)", v8, 2u);
    }

    v9 = &v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections]);

    os_unfair_lock_unlock(v9);
  }
}

Swift::Void __swiftcall STExceptionListener.appExceptionsDidUpdate()()
{
  v1 = v0 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  if (qword_1001DF100 != -1)
  {
LABEL_29:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000A2B1C(v3, qword_1001E0320);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = v2 & 0xC000000000000001;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v2 + 16);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v4, v5, "Exceptions list updated. Notifying %ld connections)", v7, 0xCu);

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (!v6)
    {
LABEL_9:
      v9 = v2 + 56;
      v12 = -1 << *(v2 + 32);
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v2 + 56);
      goto LABEL_13;
    }
  }

  __CocoaSet.makeIterator()();
  sub_1000B8ED8();
  sub_1000B8F24();
  Set.Iterator.init(_cocoa:)();
  v2 = aBlock[6];
  v9 = aBlock[7];
  v10 = aBlock[8];
  v6 = aBlock[9];
  v11 = aBlock[10];
LABEL_13:
  v15 = (v10 + 64) >> 6;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v16 = v6;
    v17 = v11;
    v18 = v6;
    if (!v11)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          goto LABEL_27;
        }

        v17 = *(v9 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_21:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_25:
    aBlock[4] = sub_1000B89BC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B87F4;
    aBlock[3] = &unk_1001A7258;
    v22 = _Block_copy(aBlock);

    v23 = [v20 remoteObjectProxyWithErrorHandler:v22];
    _Block_release(v22);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000A0F2C(&qword_1001E0350, qword_100140A28);
    if (swift_dynamicCast())
    {
      [v24 appExceptionsDidUpdate];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v6 = v18;
    v11 = v19;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (v21)
  {
    v24 = v21;
    sub_1000B8ED8();
    swift_dynamicCast();
    v20 = aBlock[0];
    v18 = v6;
    v19 = v11;
    if (aBlock[0])
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  sub_100003410(v2);
}

void sub_1000B87F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id STExceptionListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STExceptionListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B898C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1000B89BC(uint64_t a1)
{
  if (qword_1001DF100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E0320);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error obtaining update delegate:%@", v3, 0xCu);
    sub_1000A5148(v4, &unk_1001E1820, &qword_100140020);
  }
}

uint64_t sub_1000B8B18(void *a1)
{
  ObjectType = swift_getObjectType();
  if ([a1 valueForEntitlement:STEntitlementScreenTimePrivate])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v21 = v26;
  v22 = v27;
  if (*(&v27 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v25 == 1)
    {
      v4 = objc_opt_self();
      v5 = [v4 interfaceWithProtocol:{&OBJC_PROTOCOL___STExceptionClientProtocol, v21, v22}];
      [a1 setExportedInterface:v5];
      [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer)];
      v6 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL___STAppExceptionsUpdateMonitoring];
      [a1 setRemoteObjectInterface:v6];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = a1;
      v8[4] = ObjectType;
      v23 = sub_1000B8FB8;
      v24 = v8;
      *&v21 = _NSConcreteStackBlock;
      *(&v21 + 1) = 1107296256;
      *&v22 = sub_1000D48E0;
      *(&v22 + 1) = &unk_1001A72D0;
      v9 = _Block_copy(&v21);
      v10 = a1;

      [v10 setInvalidationHandler:v9];
      _Block_release(v9);
      [v10 resume];
      v11 = (v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections);
      os_unfair_lock_lock((v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections));
      sub_1000D1DDC(&v21, v10);

      os_unfair_lock_unlock(v11);
      return 1;
    }
  }

  else
  {
    sub_1000A5148(&v21, &qword_1001E03A0, qword_100140A70);
  }

  if (qword_1001DF100 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000A2B1C(v13, qword_1001E0320);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v21 = v17;
    *v16 = 136446210;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = sub_1000A2E68(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "connection does not have required entitlement: %{public}s", v16, 0xCu);
    sub_1000A462C(v17);
  }

  return 0;
}

unint64_t sub_1000B8ED8()
{
  result = qword_1001DF550;
  if (!qword_1001DF550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001DF550);
  }

  return result;
}

unint64_t sub_1000B8F24()
{
  result = qword_1001E0348;
  if (!qword_1001E0348)
  {
    sub_1000B8ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0348);
  }

  return result;
}

uint64_t sub_1000B8F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B8FCC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E03A8);
  sub_1000A2B1C(v0, qword_1001E03A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B904C()
{
  v1 = v0;
  v31 = *v0;
  v2 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v2 - 8);
  v30 = &v28 - v3;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v29 = sub_1000A0F2C(&qword_1001E04E0, &qword_100140B48);
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v28 - v12;
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000A2B1C(v14, qword_1001E03A8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Start observing sync", v17, 2u);
  }

  if (qword_1001DF150 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  NSNotificationCenter.publisher(for:object:)();
  sub_1000BABD4();
  Publisher.merge(with:)();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v10, v4);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  sub_1000BAC34();
  v22 = v29;
  v23 = Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v13, v22);
  v24 = type metadata accessor for TaskPriority();
  v25 = v30;
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v1;
  v26[5] = v23;
  v26[6] = v21;

  sub_1000A2630(0, 0, v25, &unk_100140B58, v26);
}

uint64_t sub_1000B94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000A2B1C(v8, qword_1001E03A8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received notification", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;

  sub_1000A2630(0, 0, v7, &unk_100140B68, v13);
}

uint64_t sub_1000B96A0()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling didSync", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1000B9848;

    return sub_1000B9B08();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000B9848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000B9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000B9978, 0, 0);
}

uint64_t sub_1000B9978()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting notification cancellable", v4, 2u);
  }

  v5 = *(v0 + 16);

  return _swift_task_switch(sub_1000B9A98, v5, 0);
}

uint64_t sub_1000B9A98()
{
  *(v0[2] + 200) = v0[3];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B9B28()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did sync. Merging user settings if needed.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000B9C74;

  return sub_1000B9D68();
}

uint64_t sub_1000B9C74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000B9D88()
{
  v1 = v0[2];
  if (*(v1 + 208))
  {
    if (qword_1001DF108 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000A2B1C(v2, qword_1001E03A8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Merge is in progress; returning", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_1001DF108 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[3] = sub_1000A2B1C(v8, qword_1001E03A8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Setting merge in progress to true", v11, 2u);
    }

    *(v1 + 208) = 1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Checking if user is eligible for settings merge", v14, 2u);
    }

    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v15[1] = sub_1000BA040;

    return sub_1000BA6D8();
  }
}

uint64_t sub_1000BA040(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000BA158, v2, 0);
}

uint64_t sub_1000BA158(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User is eligible for settings merge", v6, 2u);
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Merging user settings if needed", v9, 2u);
    }

    v10 = *(v1 + 16);

    sub_1000A9618((v10 + 152), *(v10 + 176));
    v11 = swift_task_alloc();
    *(v1 + 40) = v11;
    *v11 = v1;
    v11[1] = sub_1000BA37C;

    return sub_1000B7194();
  }

  else
  {
    if (v5)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User is not eligible for settings merge; returning", v13, 2u);
    }

    v14 = *(v1 + 16);

    sub_1000BAAF4(v14);
    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_1000BA37C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1000BA580;
  }

  else
  {
    v4 = sub_1000BA4A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000BA4A8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done merging user settings if needed", v4, 2u);
  }

  sub_1000BAAF4(*(v1 + 16));
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1000BA580()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to merge user settings: %{public}@", v3, 0xCu);
    sub_1000B1DD4(v4);
  }

  else
  {
  }

  sub_1000BAAF4(*(v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000BA6F8()
{
  sub_1000A9618((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000BA798;

  return sub_1000BF820();
}

uint64_t sub_1000BA798(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return _swift_task_switch(sub_1000BA8E8, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1000BA8E8()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to check if should merge settings: %{public}@; not updating settings", v4, 0xCu);
    sub_1000B1DD4(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1000BAA80()
{
  sub_1000A462C((v0 + 112));
  sub_1000A462C((v0 + 152));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000BAAF4(uint64_t a1)
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E03A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting merge in progress to false", v5, 2u);
  }

  *(a1 + 208) = 0;
}

unint64_t sub_1000BABD4()
{
  result = qword_1001E04E8;
  if (!qword_1001E04E8)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04E8);
  }

  return result;
}

unint64_t sub_1000BAC34()
{
  result = qword_1001E04F0;
  if (!qword_1001E04F0)
  {
    sub_1000A53D0(&qword_1001E04E0, &qword_100140B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04F0);
  }

  return result;
}

uint64_t sub_1000BAC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A5418;

  return sub_1000B9958(a1, v4, v5, v6, v7);
}

uint64_t sub_1000BAD60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A4F84;

  return sub_1000B9680(a1, v4, v5, v6);
}

uint64_t _s24ExpressIntroductionErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24ExpressIntroductionErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BAF74()
{
  result = qword_1001E04F8;
  if (!qword_1001E04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04F8);
  }

  return result;
}

uint64_t sub_1000BAFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent20CommunicationService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000ABF3C(v8);
  Logger.init(subsystem:category:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000BBAA8(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000BB340(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BB3F0, 0, 0);
}

uint64_t sub_1000BB3F0()
{
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v2 = sub_100107CA8("CommunicationService.currentCommunicationConfiguration", 54, 2, v1, 0);

  v3 = v0[4];
  (v3)[2](v3, v2, 0);
  _Block_release(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000BB6C4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000BB794;

  return sub_1000BBBCC();
}

uint64_t sub_1000BB794()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000BB8F0()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent20CommunicationService____lazy_storage___logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommunicationService(uint64_t a1)
{
  result = qword_1001E0590;
  if (!qword_1001E0590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB9A8(uint64_t a1)
{
  sub_1000AB584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000BBA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBB18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BB6C4(v2, v3, v4);
}

uint64_t sub_1000BBBCC()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000BBC98, 0, 0);
}

uint64_t sub_1000BBC98()
{
  v1 = *(v0 + 80);
  Logger.init(subsystem:category:)();
  sub_100106EE8("CommunicationService.authenticateRestrictionsPasscode", 53, 2, v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BBEC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A4F84;

  return sub_1000BB340(v2, v3);
}

id sub_1000BBF74()
{
  result = [objc_allocWithZone(type metadata accessor for PersistentContainer(0)) init];
  qword_1001E6FF0 = result;
  return result;
}

id sub_1000BBFA8()
{
  v0 = [objc_opt_self() persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameCloud type:NSSQLiteStoreType];
  v1 = String._bridgeToObjectiveC()();
  [v0 setConfiguration:v1];

  sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v0 setOption:isa forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  v3 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v0 setOption:v3 forKey:NSPersistentHistoryTrackingKey];

  v4 = sub_1000BC0E4();
  [v0 setCloudKitContainerOptions:v4];

  return v0;
}

id sub_1000BC0E4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions);
  }

  else
  {
    v4 = objc_allocWithZone(NSPersistentCloudKitContainerOptions);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithContainerIdentifier:v5];

    [v6 setUseDeviceToDeviceEncryption:1];
    v7 = String._bridgeToObjectiveC()();
    [v6 setApsConnectionMachServiceName:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1000BC1F4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions] = 0;
  v0[OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer_cloudKitStatus] = 0;
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 managedObjectModel];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PersistentContainer(0);
  v6 = objc_msgSendSuper2(&v11, "initWithName:managedObjectModel:", v3, v5);

  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100140CA0;
  v8 = v6;
  *(v7 + 32) = sub_1000BBFA8();
  *(v7 + 40) = [v4 persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameLocal type:NSSQLiteStoreType];
  sub_1000A0F74(0, &qword_1001E0690, NSPersistentStoreDescription_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPersistentStoreDescriptions:isa];

  return v8;
}

id sub_1000BC418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistentContainer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersistentContainer(uint64_t a1)
{
  result = qword_1001E0678;
  if (!qword_1001E0678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BC4F0(uint64_t a1)
{
  sub_1000AB584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for PersistentContainer.CloudKitStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistentContainer.CloudKitStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BC6F4()
{
  result = qword_1001E0688;
  if (!qword_1001E0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0688);
  }

  return result;
}

uint64_t sub_1000BC8C0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BC970, 0, 0);
}

uint64_t sub_1000BC970()
{
  v1 = v0[3];
  v2 = v0[4];
  Logger.init(subsystem:category:)();
  v3 = sub_100107D3C("SettingsService.startCoreDataServer", 35, 2, v1, 0);

  if (v2)
  {
    v4 = v0[4];
    (v4)[2](v4, v3, 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000BCC68(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for Logger();
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000BCD18, 0, 0);
}

uint64_t sub_1000BCD18()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000BCE14;
  v2 = *(v0 + 24);

  return sub_10010DB7C("SettingsService.processSettingsChanges", 38, 2, v2, 0);
}

uint64_t sub_1000BCE14()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000BCFB0;
  }

  else
  {
    v2 = sub_1000BCF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BCF28()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BCFB0()
{
  v1 = *(v0 + 32);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BD1D4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BD284, 0, 0);
}

uint64_t sub_1000BD284()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000BD380;
  v2 = *(v0 + 24);

  return sub_10010ED2C("SettingsService.updateLegacyUsage", 33, 2, v2, 0);
}

uint64_t sub_1000BD380(char a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_1000BD52C;
  }

  else
  {
    v4 = sub_1000BD498;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000BD498()
{
  v1 = *(v0 + 32);

  if (v1)
  {
    v2 = *(v0 + 32);
    v2[2](v2, *(v0 + 56), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BD52C()
{
  v1 = *(v0 + 32);

  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = _convertErrorToNSError(_:)();

    (v2)[2](v2, 0, v3);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BD77C(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  type metadata accessor for Logger();
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_1000BD83C, 0, 0);
}

uint64_t sub_1000BD83C()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000BD938;
  v2 = *(v0 + 32);

  return sub_10010ED2C("SettingsService.requestLegacyUsage", 34, 2, v2, 0);
}

uint64_t sub_1000BD938(char a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1000BDAEC;
  }

  else
  {
    v4 = sub_1000BDA50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000BDA50()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2, *(v0 + 64), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BDAEC()
{
  v1 = v0[5];
  v2 = v0[2];

  if (v1)
  {
    v3 = v0[5];
    v4 = _convertErrorToNSError(_:)();

    (v3)[2](v3, 0, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000BDD3C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for Logger();
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000BDDEC, 0, 0);
}

uint64_t sub_1000BDDEC()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000BDEE8;
  v2 = *(v0 + 24);

  return sub_10010DB7C("SettingsService.setCloudSync", 28, 2, v2, 0);
}

uint64_t sub_1000BDEE8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000BEC44;
  }

  else
  {
    v2 = sub_1000BEC40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BE174(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000BE210, 0, 0);
}

uint64_t sub_1000BE210()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("SettingsService.isCloudSyncEnabled", 34, 2, v1, 0);
  (*(*(v0 + 24) + 16))(*(v0 + 24), v2 & 1, 0);
  _Block_release(*(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BE4B0(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000BE54C, 0, 0);
}

uint64_t sub_1000BE54C()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("SettingsService.isRestrictAdultContentEnabled", 45, 2, v1, 0);
  (*(*(v0 + 24) + 16))(*(v0 + 24), v2 & 1, 0);
  _Block_release(*(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BE674()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent15SettingsService____lazy_storage___logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsService(uint64_t a1)
{
  result = qword_1001E0728;
  if (!qword_1001E0728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BE72C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000BE4B0(v2);
}

uint64_t sub_1000BE7D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000BE174(v2);
}

uint64_t sub_1000BE884()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BDD3C(v2, v4, v3);
}

uint64_t sub_1000BE938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BD77C(v2, v3, v4);
}

uint64_t sub_1000BE9EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BD1D4(v2, v3);
}

uint64_t sub_1000BEA98()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BEAE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000BCC68(v2, v3, v4);
}

uint64_t sub_1000BEB94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BC8C0(v2, v3);
}

id sub_1000BED50(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for STExpressIntroductionUserContextStoreObjC(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for STExpressIntroductionUserContextStoreObjC(uint64_t a1)
{
  result = qword_1001E0840;
  if (!qword_1001E0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE48(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

ScreenTimeAgent::FamilyMessagingDestination::DestinationType_optional __swiftcall FamilyMessagingDestination.DestinationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_1000BEEF0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t FamilyMessagingDestination.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1000BEF84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = a3();

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *a5 = a4;
    *(a5 + 8) = v12;
    *(a5 + 16) = v14;
    *(a5 + 24) = a1;
    *(a5 + 32) = a2;
  }

  else
  {
    __break(1u);
  }
}

void *FamilyMessagingDestination.init(device:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IDSCopyIDForDevice();
  if (result)
  {
    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_1000BF0EC();
    result = StringProtocol.components<A>(separatedBy:)();
    if (result[2] >= 2uLL)
    {
      v10 = result[6];
      v9 = result[7];

      *a2 = 2;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      *(a2 + 24) = v10;
      *(a2 + 32) = v9;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000BF0EC()
{
  result = qword_1001E0850;
  if (!qword_1001E0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0850);
  }

  return result;
}

void __swiftcall FamilyMessagingDestination.init(stringRepresentation:)(ScreenTimeAgent::FamilyMessagingDestination_optional *__return_ptr retstr, Swift::String stringRepresentation)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = IDSCopyRawAddressForDestination();

  if (v4 && (v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, sub_1000BF294(v5, v7, &v12), (v4 = v14) != 0))
  {
    v8 = *(&v15 + 1);
    v9 = v15;
    v11 = v12;
    v10 = v13;
    v16[0] = v13;
    v16[1] = v14;

    sub_1000BF428(v16);
    v17 = v15;
    sub_1000BF428(&v17);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  *&retstr->value.type = v11;
  retstr->value.destination._countAndFlagsBits = v10;
  retstr->value.destination._object = v4;
  retstr->value.identifier._countAndFlagsBits = v9;
  retstr->value.identifier._object = v8;
}

void __swiftcall FamilyMessagingDestination.init(rawAddress:)(ScreenTimeAgent::FamilyMessagingDestination_optional *__return_ptr retstr, Swift::String rawAddress)
{
  sub_1000BF294(rawAddress._countAndFlagsBits, rawAddress._object, v4);
  v3 = v4[1];
  *&retstr->value.type = v4[0];
  *&retstr->value.destination._object = v3;
  retstr->value.identifier._object = v5;
}

uint64_t FamilyMessagingDestination.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1000BF294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [v6 _appearsToBePhoneNumber];

  v8 = String._bridgeToObjectiveC()();
  v9 = v8;
  if (v7)
  {
    v10 = IDSCopyIDForPhoneNumber();

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000BF598();
      Collection<>.trimmingPrefix<A>(_:)();

      a1 = static String._fromSubstring(_:)();
      a2 = v14;

      v15 = 1;
LABEL_8:
      *a3 = v15;
      a3[1] = v11;
      a3[2] = v13;
      a3[3] = a1;
      a3[4] = a2;
      return;
    }

    __break(1u);
  }

  else
  {
    v16 = [v8 _appearsToBeEmail];

    if (!v16)
    {

      v15 = 0;
      v11 = 0;
      v13 = 0;
      a1 = 0;
      a2 = 0;
      goto LABEL_8;
    }

    v17 = String._bridgeToObjectiveC()();
    v18 = IDSCopyIDForEmailAddress();

    if (v18)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v19;

      v15 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1000BF480()
{
  result = qword_1001E0858;
  if (!qword_1001E0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0858);
  }

  return result;
}

__n128 sub_1000BF4D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BF4E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000BF530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BF598()
{
  result = qword_1001E0860;
  if (!qword_1001E0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0860);
  }

  return result;
}

uint64_t sub_1000BF5F0()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent9Blueprint_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Blueprint(uint64_t a1)
{
  result = qword_1001E08A0;
  if (!qword_1001E08A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BF700(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000BF7A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0950);
  sub_1000A2B1C(v0, qword_1001E0950);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BF840()
{
  if (qword_1001DF118 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_1000A2B1C(v1, qword_1001E0950);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching userAltDSID", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1000BF990;

  return sub_1000BFCE4();
}

uint64_t sub_1000BF990(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5(0);
  }

  else
  {

    return _swift_task_switch(sub_1000BFACC, 0, 0);
  }
}

uint64_t sub_1000BFACC()
{
  v23 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136380675;
    *(v5 + 4) = sub_1000A2E68(v4, v3, &v22);
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetched userAltDSID: %{private}s ; checking if teen or child", v5, 0xCu);
    sub_1000A462C(v6);
  }

  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v10[6];
  v12 = v10[7];
  sub_1000A9618(v10 + 3, v11);
  v13 = (*(v12 + 8))(v9, v7, v11, v12);
  if (v8)
  {

    v14 = v0[1];
    v15 = 0;
  }

  else
  {
    if (v13)
    {

      v16 = 1;
    }

    else
    {
      v17 = v0[5];
      v18 = v10[6];
      v19 = v10[7];
      v20 = v0[6];
      sub_1000A9618(v10 + 3, v18);
      v16 = (*(v19 + 16))(v17, v20, v18, v19);
    }

    v14 = v0[1];
    v15 = v16 & 1;
  }

  return v14(v15);
}

uint64_t sub_1000BFCE4()
{
  v1[4] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000BFDA4, 0, 0);
}

uint64_t sub_1000BFDA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = [*(v0[4] + 16) newBackgroundContext];
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000BFEB0;
  v5 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v5, sub_1000C010C, 0, &type metadata for String);
}

uint64_t sub_1000BFEB0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000C00A0;
  }

  else
  {
    v5 = sub_1000C0020;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C0020()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1000C00A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000C010C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v17 = 0;
  v3 = [v2 execute:&v17];

  v4 = v17;
  if (!v3)
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return;
  }

  sub_1000C0650();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v4;

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    sub_1000C069C();
    swift_allocError();
    *v16 = 1;
    goto LABEL_13;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 altDSID];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *a1 = v11;
    a1[1] = v13;
  }

  else
  {
    sub_1000C069C();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1000C0318()
{
  swift_unknownObjectRelease();
  sub_1000A462C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v6 + 16))(a1, a2, v7, v6);
  if (!v3)
  {
    v6 = (*(v6 + 24))(v11, v7, v6);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  return v6;
}

id sub_1000C0520@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C0550();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000C0550()
{
  v1 = String._bridgeToObjectiveC()();
  v6 = 0;
  v2 = [v0 authKitAccountWithAltDSID:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1000C0650()
{
  result = qword_1001E0A40;
  if (!qword_1001E0A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001E0A40);
  }

  return result;
}

unint64_t sub_1000C069C()
{
  result = qword_1001E0A48[0];
  if (!qword_1001E0A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001E0A48);
  }

  return result;
}

uint64_t sub_1000C06F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C0768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1000C08A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1000C0AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 232) = a7;
  *(v8 + 184) = a6;
  *(v8 + 192) = a8;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 + 64);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1000C0BF4, 0, 0);
}

uint64_t sub_1000C0BF4()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v1 = _os_activity_create(&_mh_execute_header, "Create TapToRadar", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  os_activity_scope_enter(v1, (v0 + 40));
  swift_endAccess();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Tap To radar background task initiated...", v4, 2u);
  }

  v27 = *(v0 + 224);
  v26 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 168);

  v5 = [objc_allocWithZone(RadarDraft) init];
  v6 = objc_allocWithZone(RadarComponent);
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithName:v7 version:v8 identifier:994329];

  [v5 setComponent:v9];
  v28 = StaticString.description.getter();
  v29 = v10;
  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  sub_1000C1298(299, v28, v29);

  static String._fromSubstring(_:)();

  v13 = String._bridgeToObjectiveC()();

  [v5 setTitle:v13];

  sub_1000A9564();
  isa = NSNumber.init(integerLiteral:)(1779200).super.super.isa;
  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10013FFF0;
  *(v15 + 32) = isa;
  v23 = isa;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v5 setKeywords:v16];

  swift_getErrorValue();
  Error.localizedDescription.getter();
  v17 = String._bridgeToObjectiveC()();

  [v5 setProblemDescription:v17];

  [v5 setClassification:7];
  [v5 setReproducibility:6];
  type metadata accessor for TapToRadarService();
  v18 = static TapToRadarService.shared.getter();
  (*(v24 + 16))(v27, v25, v26);
  v19 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v20 = swift_allocObject();
  (*(v24 + 32))(v20 + v19, v27, v26);
  TapToRadarService.createDraft(_:processName:displayReason:completion:)();

  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();

  v21 = *(v0 + 8);

  return v21();
}

void sub_1000C1138(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_1000A2E68(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Tap-to-Radar failed with: %{public}s", v3, 0xCu);
      sub_1000A462C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1000C1298(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1000C1334(uint64_t a1)
{
  type metadata accessor for Logger();

  sub_1000C1138(a1);
}

uint64_t sub_1000C13A4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent15FamilyMessaging_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FamilyMessaging(uint64_t a1)
{
  result = qword_1001E0B00;
  if (!qword_1001E0B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1470(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

id sub_1000C1534()
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_1000C15E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent18DiagnosticsService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000BBAA8(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000C17F4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v3 = __chkstk_darwin(v2);
  v5 = v23 - v4;
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = Notification.userInfo.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v23[1] = 1635017060;
  v23[2] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v10 = sub_1000CBB00(v24), (v11 & 1) == 0))
  {

    sub_1000C8034(v24);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  sub_1000A5078(*(v9 + 56) + 32 * v10, &v25);
  sub_1000C8034(v24);

  if (!*(&v26 + 1))
  {
LABEL_9:
    sub_1000A5148(&v25, &qword_1001E03A0, qword_100140A70);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1000C15E4(v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "DiagnosticsService: notification has no data", v17, 2u);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  v13 = v24[0];
  v12 = v24[1];
  sub_1000A0F74(0, &qword_1001E0E68, NSKeyedUnarchiver_ptr);
  sub_1000A0F74(0, &unk_1001E0E70, off_1001A1188);
  v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v14)
  {
    v19 = v14;
    sub_1000A99A4(v13, v12);
    return v19;
  }

  sub_1000C15E4(v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "unarchived message payload was nil", v22, 2u);
  }

  sub_1000A99A4(v13, v12);

  (*(v1 + 8))(v7, v0);
  return 0;
}

uint64_t sub_1000C1C7C()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent18DiagnosticsService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiagnosticsService(uint64_t a1)
{
  result = qword_1001E0D70;
  if (!qword_1001E0D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C1D4C(uint64_t a1)
{
  sub_1000AB584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000C1F60(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C1FFC, 0, 0);
}

uint64_t sub_1000C1FFC()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100108BA8("DiagnosticsService.localConfigurationVersion", 44, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v5 = v3;
    (v4)[2](v4, v3, 0);

    _Block_release(v4);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C22E0(void *a1, const void *a2)
{
  v2[2] = a1;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v5 = a1;

  return _swift_task_switch(sub_1000C238C, 0, 0);
}

uint64_t sub_1000C238C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  Logger.init(subsystem:category:)();
  sub_100106EE8("DiagnosticsService.setLocalConfigurationVersion", 47, 2, v2, 0);

  if (v1)
  {
    v4 = v0[4];
    v4[2](v4, 0);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C2654(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C26F0, 0, 0);
}

uint64_t sub_1000C26F0()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100108BA8("DiagnosticsService.configurationVersion", 39, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v5 = v3;
    (v4)[2](v4, v3, 0);

    _Block_release(v4);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C29C0(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C2A5C, 0, 0);
}

uint64_t sub_1000C2A5C()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("DiagnosticsService.repairBlueprints", 35, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v4[2](v4, v3 & 1, 0);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C2D1C(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C2DB8, 0, 0);
}

uint64_t sub_1000C2DB8()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendCheckInRequest", 37, 2, v2, 0);
}

uint64_t sub_1000C2EB4(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_1000C8098;
  }

  else
  {
    v4 = sub_1000C809C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C3144(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C31E0, 0, 0);
}

uint64_t sub_1000C31E0()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendCheckInRequestOnV2", 41, 2, v2, 0);
}

uint64_t sub_1000C3454(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C34F0, 0, 0);
}

uint64_t sub_1000C34F0()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendBlueprints", 33, 2, v2, 0);
}

uint64_t sub_1000C3764(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C3800, 0, 0);
}

uint64_t sub_1000C3800()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendBlueprintChanges", 39, 2, v2, 0);
}

uint64_t sub_1000C3A74(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C3B10, 0, 0);
}

uint64_t sub_1000C3B10()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C3C0C;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendSettings", 31, 2, v2, 0);
}

uint64_t sub_1000C3C0C(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_1000C3DAC;
  }

  else
  {
    v4 = sub_1000C3D24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C3D24()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v1[2](*(v0 + 24), *(v0 + 48), 0);
    _Block_release(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C3DAC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = _convertErrorToNSError(_:)();

    (v1)[2](v1, 0, v2);
    _Block_release(v1);
  }

  else
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C3FDC(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C4078, 0, 0);
}

uint64_t sub_1000C4078()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendSettingsChanges", 38, 2, v2, 0);
}

uint64_t sub_1000C42EC(const void *a1)
{
  type metadata accessor for Logger();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C4388, 0, 0);
}

uint64_t sub_1000C4388()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB4;
  v2 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendUserDeviceState", 38, 2, v2, 0);
}

uint64_t sub_1000C45FC(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 1, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000C4804(void *a1, const void *a2)
{
  v2[2] = a1;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v5 = a1;

  return _swift_task_switch(sub_1000C48B0, 0, 0);
}

uint64_t sub_1000C48B0()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000C49AC;
  v2 = *(v0 + 24);

  return sub_10010ED2C("DiagnosticsService.postNotification", 35, 2, v2, 0);
}

uint64_t sub_1000C49AC(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1000C4B68;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_1000C4AD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C4AD8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C4B68()
{
  v1 = *(v0 + 32);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v2);

  _Block_release(*(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C4DA4(void *a1, const void *a2)
{
  v2[2] = a1;
  type metadata accessor for Logger();
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v5 = a1;

  return _swift_task_switch(sub_1000C4E50, 0, 0);
}

uint64_t sub_1000C4E50()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("DiagnosticsService.removeNotification", 37, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000C4F88()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C15E4(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DiagnosticsService client would like to register for IDS messages", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v9 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForIDSMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  v22[1] = v9;
  swift_beginAccess();
  os_activity_scope_enter(v9, &v23);
  swift_endAccess();
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v28 = sub_1000C6D04;
  v29 = v1;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000C547C;
  v27 = &unk_1001A7C30;
  v13 = _Block_copy(&aBlock);
  v14 = v10;

  v15 = [v12 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  v16 = String._bridgeToObjectiveC()();
  v17 = [v11 defaultCenter];
  v28 = sub_1000C6D3C;
  v29 = v1;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000C547C;
  v27 = &unk_1001A7C58;
  v18 = _Block_copy(&aBlock);

  v19 = v16;

  v20 = [v17 addObserverForName:v19 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);

  swift_unknownObjectRelease();
  swift_beginAccess();
  os_activity_scope_leave(&v23);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C53E4, 0, 0);
}

uint64_t sub_1000C53E4()
{
  v1 = sub_1000C17F4();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000C6F98(v1, 1);
    if (v3)
    {
      v4 = v3;
      [*(v0 + 16) didReceiveIDSMessage:v3];

      v2 = v4;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C547C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000C5570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v8 + 32))(&v15[v14], &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_1000A2630(0, 0, v12, a4, v15);
}

uint64_t sub_1000C574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C576C, 0, 0);
}

uint64_t sub_1000C576C()
{
  v1 = sub_1000C17F4();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000C6F98(v1, 0);
    if (v3)
    {
      v4 = v3;
      [*(v0 + 16) didReceiveIDSMessage:v3];

      v2 = v4;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C581C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C15E4(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DiagnosticsService client would like to register for CloudKit messages", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v9 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForCloudKitMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  v22[1] = v9;
  swift_beginAccess();
  os_activity_scope_enter(v9, &v23);
  swift_endAccess();
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v28 = sub_1000C80B0;
  v29 = v1;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000C547C;
  v27 = &unk_1001A7BE0;
  v13 = _Block_copy(&aBlock);
  v14 = v10;

  v15 = [v12 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  v16 = String._bridgeToObjectiveC()();
  v17 = [v11 defaultCenter];
  v28 = sub_1000C6CDC;
  v29 = v1;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000C547C;
  v27 = &unk_1001A7C08;
  v18 = _Block_copy(&aBlock);

  v19 = v16;

  v20 = [v17 addObserverForName:v19 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);

  swift_unknownObjectRelease();
  swift_beginAccess();
  os_activity_scope_leave(&v23);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C5C6C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000C15E4(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DiagnosticsService client would like to register for generic messages", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v9 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForGenericMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  os_activity_scope_enter(v9, &v17);
  swift_endAccess();
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() defaultCenter];
  aBlock[4] = sub_1000C6C9C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C547C;
  aBlock[3] = &unk_1001A7BB8;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  v14 = [v11 addObserverForName:v13 object:0 queue:0 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  swift_beginAccess();
  os_activity_scope_leave(&v17);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_1000C5F9C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  if (Notification.userInfo.getter())
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(STDiagnosticsServiceMessage) initWithMessageType:a3 withUserInfo:v7.super.isa];

  [a2 *a4];
}

uint64_t sub_1000C6084(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1000C60C8(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveIDSMessage", &selRef_didReceiveIDSMessage_);
}

uint64_t sub_1000C6144(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveCloudKitMessage", &selRef_didReceiveCloudKitMessage_);
}

uint64_t sub_1000C61C0(uint64_t a1, uint64_t a2, void *a3, const char *a4, SEL *a5)
{
  v7 = a3;

  sub_1000C6290(v7, a4, a5);
}

uint64_t sub_1000C6228(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveGenericMessage", &selRef_didReceiveGenericMessage_);
}

uint64_t sub_1000C6290(uint64_t a1, const char *a2, SEL *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OSActivity();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v12 = _os_activity_create(&_mh_execute_header, a2, qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  *(inited + 16) = v12;
  swift_beginAccess();
  os_activity_scope_enter(v12, (inited + 24));
  swift_endAccess();
  v13 = *(v3 + 16);
  if (v13)
  {
    v14 = [v13 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000C6C8C(v20, v21);
    sub_1000A5078(v21, v20);
    sub_1000A0F2C(&qword_1001E0E40, &qword_100141368);
    swift_dynamicCast();
    [v19[1] *a3];

    swift_unknownObjectRelease();
    return sub_1000A462C(v21);
  }

  else
  {
    sub_1000C15E4(v10);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Remote object was nil", v18, 2u);
    }

    else
    {
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1000C6588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C664C, 0, 0);
}

void sub_1000C664C()
{
  sub_1000C15E4(v0[7]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    v8 = v0 + 2;
    v6 = v0[2];
    v7 = v8[1];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000A2E68(v6, v7, &v14);
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting ScreenTimeAgent with reason: %s", v9, 0xCu);
    sub_1000A462C(v10);

    (*(v4 + 8))(v3, v5);
    exit(0);
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  (*(v12 + 8))(v11, v13);
  exit(0);
}

uint64_t sub_1000C6940(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000C6A14;

  return sub_1000C6588(v4, v6);
}

uint64_t sub_1000C6A14()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    if (v3)
    {
      v5 = *(v2 + 24);
      v6 = _convertErrorToNSError(_:)();

      (v5)[2](v5, v6);
      _Block_release(v5);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v7 = *(v2 + 24);
    v7[2](v7, 0);
    _Block_release(v7);
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_1000C6BD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000C6940(v2, v3, v4);
}

_OWORD *sub_1000C6C8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000C6CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C6D74(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A5418;

  return sub_1000C574C(a1, v6, v7, v8, v1 + v5);
}

char *sub_1000C6E6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000A0F2C(&qword_1001E0230, &qword_100141390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C6F78(char *a1, int64_t a2, char a3)
{
  result = sub_1000C6E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C6F98(void *a1, char a2)
{
  v3 = [a1 payloadType];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [a1 userInfo];
  *&v45 = @"FromID";
  type metadata accessor for STIDSTransportUserInfoKey(0);
  v8 = @"FromID";
  v9 = [v7 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (*(&v46 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v43;
      v11 = v44;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000A5148(v47, &qword_1001E03A0, qword_100140A70);
  }

  v11 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E55;
LABEL_9:
  v37 = v10;
  v39 = a1;
  v12 = [a1 destinations];
  sub_1000A0F74(0, &qword_1001E0E48, STUnifiedTransportPayloadDestination_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v6;
  v42 = v4;
  v38 = v11;
  if (v14)
  {
    *&v47[0] = _swiftEmptyArrayStorage;
    result = sub_1000C6F78(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = *&v47[0];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 address];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      *&v47[0] = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000C6F78((v24 > 1), v25 + 1, 1);
        v17 = *&v47[0];
      }

      ++v16;
      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
    }

    while (v14 != v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v27 = [v39 UUID];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001412E0;
  *&v47[0] = 5456969;
  *(&v47[0] + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v32 = 0x646E756F6274756FLL;
  if (a2)
  {
    v32 = 0x646E756F626E69;
  }

  v33 = 0xE800000000000000;
  *(inited + 96) = &type metadata for String;
  if (a2)
  {
    v33 = 0xE700000000000000;
  }

  *(inited + 72) = v32;
  *(inited + 80) = v33;
  *&v47[0] = 0x5464616F6C796170;
  *(&v47[0] + 1) = 0xEB00000000657079;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v42;
  *(inited + 152) = v41;
  *&v47[0] = 0x7265646E6573;
  *(&v47[0] + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v37;
  *(inited + 224) = v38;
  *&v47[0] = 0x6E65697069636572;
  *(&v47[0] + 1) = 0xEA00000000007374;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = sub_1000A0F2C(&qword_1001E0E58, &qword_100141380);
  *(inited + 288) = v17;
  *&v47[0] = 0x5564616F6C796170;
  *(&v47[0] + 1) = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = v28;
  *(inited + 368) = v30;
  sub_10010DA40(inited);
  swift_setDeallocating();
  sub_1000A0F2C(&qword_1001E0E60, &qword_100141388);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(STDiagnosticsServiceMessage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v34 initWithMessageType:1 withUserInfo:isa];

  return v36;
}

uint64_t sub_1000C74F0()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C75BC(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A5418;

  return sub_1000C53C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000C76B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C4DA4(v2, v3);
}

uint64_t sub_1000C7768()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C4804(v2, v3);
}

uint64_t sub_1000C781C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C45FC(v2);
}

uint64_t sub_1000C78C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C42EC(v2);
}

uint64_t sub_1000C7974()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C3FDC(v2);
}

uint64_t sub_1000C7A20()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C3A74(v2);
}

uint64_t sub_1000C7ACC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C3764(v2);
}

uint64_t sub_1000C7B78()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C3454(v2);
}

uint64_t sub_1000C7C24()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C3144(v2);
}

uint64_t sub_1000C7CD0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C2D1C(v2);
}

uint64_t sub_1000C7D7C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C29C0(v2);
}

uint64_t sub_1000C7E28()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C2654(v2);
}

uint64_t sub_1000C7ED4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C22E0(v2, v3);
}

uint64_t sub_1000C7F88()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A5418;

  return sub_1000C1F60(v2);
}

uint64_t sub_1000C80C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0E88);
  sub_1000A2B1C(v0, qword_1001E0E88);
  return Logger.init(subsystem:category:)();
}

CKRecordZoneID sub_1000C8148()
{
  sub_1000A0F74(0, &unk_1001E1128, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x617461646174656DLL;
  v2._object = 0xED0000656E6F7A5FLL;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_1001E0EA0 = result.super.isa;
  return result;
}

void *sub_1000C81C4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2B1C(v5, qword_1001E0E88);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Using test device record provider", v8, 2u);
    }

    v9 = type metadata accessor for LegacyUsageShutdownScheduler.DeviceRecordProvider();
    result = swift_allocObject();
    v11 = result;
    v12 = &off_1001E0FF8;
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000A2B1C(v13, qword_1001E0E88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Using CloudKit container", v16, 2u);
    }

    v17 = objc_opt_self();
    v18 = [v17 remotemanagement_mirroringContainerIdentifier];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    v11 = [v17 containerWithIdentifier:v18];

    result = sub_1000A0F74(0, &qword_1001E1150, CKContainer_ptr);
    v9 = result;
    v12 = &off_1001E0F10;
  }

  a1[3] = v9;
  a1[4] = v12;
  *a1 = v11;
  return result;
}

void sub_1000C84D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E0E88);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_1000CD43C(a1, 1);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    swift_errorRetain();
    sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000A2E68(v16, v17, &v34);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to determine whether we can disable legacy usage: %{public}s", v14, 0xCu);
    sub_1000A462C(v15);

LABEL_16:

LABEL_17:

    v28 = 0;
    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000A2B1C(v25, qword_1001E0E88);
    v12 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v26))
    {
      goto LABEL_17;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v12, v26, "We can't disable legacy usage yet.", v27, 2u);
    goto LABEL_16;
  }

  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000A2B1C(v21, qword_1001E0E88);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Disabling legacy usage.", v24, 2u);
  }

  sub_1000CCA4C(a4, a5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v34);
    _os_log_impl(&_mh_execute_header, v30, v31, "Successfully disabled legacy usage %{public}s", v32, 0xCu);
    sub_1000A462C(v33);
  }

  v28 = 1;
LABEL_18:
  ObjectType = swift_getObjectType();
  sub_1000CBCE4(a6, v28, a3, ObjectType, a7);
}

uint64_t sub_1000C89D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E0E88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Local user is not eligible to disable legacy usage. Skipping device OS version check.", v7, 2u);
  }

  return a3(0, 0);
}

void sub_1000C8E80(uint64_t a1, unsigned __int8 *a2)
{
  v8 = 0;
  v3 = [objc_opt_self() fetchLocalUserDeviceStateInContext:a1 error:&v8];
  if (v3)
  {
    v4 = v3;
    v5 = v8;
    v6 = [v4 isLegacyUsageDisabled];

    *a2 = v6;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000C8F64(uint64_t a1, _BYTE *a2)
{
  v4 = objc_opt_self();
  v22 = 0;
  v5 = [v4 fetchLocalUserInContext:a1 error:&v22];
  if (v5)
  {
    v6 = v5;
    v7 = v22;
    if ([v6 isManaged])
    {
      v8 = [v4 fetchRequest];
      v22 = 0;
      v9 = [v8 execute:&v22];

      v10 = v22;
      if (v9)
      {
        sub_1000A0F74(0, &qword_1001E0A40, STCoreUser_ptr);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v10;

        if (v11 >> 62)
        {
          goto LABEL_21;
        }

        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = a2; v13; i = a2)
        {
          v14 = 0;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v15 = *(v11 + 8 * v14 + 32);
            }

            a2 = v15;
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v22 = v15;
            v17 = v6;
            v18 = sub_1000CD174(&v22, v6);

            if (v18)
            {

              *i = 0;
              return;
            }

            ++v14;
            v6 = v17;
            if (v16 == v13)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v13 = _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_22:

        *i = 1;
      }

      else
      {
        v20 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {

      *a2 = 1;
    }
  }

  else
  {
    v19 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000C9200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a3;
  v27 = a1;
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10013FFF0;
  if (qword_1001DF130 != -1)
  {
    swift_once();
  }

  v15 = qword_1001E0EA0;
  *(v14 + 32) = qword_1001E0EA0;
  v16 = *(AssociatedConformanceWitness + 40);
  v17 = v15;
  v16(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = v12;
  v18[5] = v6;
  v19 = *(AssociatedConformanceWitness + 64);

  v19(sub_1000CC9E8, v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = swift_allocObject();
  v21 = v26;
  v20[2] = v24;
  v20[3] = v21;
  v20[4] = v12;
  v22 = *(AssociatedConformanceWitness + 88);

  v22(sub_1000CC9F4, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a5 + 24))(v11, a4, a5);
  (*(v25 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1000C94F8(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v188 = a1;
  v8 = type metadata accessor for Calendar.Component();
  v181 = *(v8 - 8);
  v182 = v8;
  __chkstk_darwin(v8);
  v179 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Calendar();
  v178 = *(v180 - 8);
  __chkstk_darwin(v180);
  v176 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v12 = __chkstk_darwin(v11 - 8);
  v177 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v183 = (&v161 - v15);
  __chkstk_darwin(v14);
  v184 = &v161 - v16;
  v17 = type metadata accessor for Date();
  v186 = *(v17 - 8);
  v187 = v17;
  v18 = __chkstk_darwin(v17);
  v174 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v172 = &v161 - v21;
  v22 = __chkstk_darwin(v20);
  v175 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v173 = &v161 - v25;
  __chkstk_darwin(v24);
  v185 = &v161 - v26;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v30 = &v161 - v29;
  sub_1000A53D0(&unk_1001E1110, &unk_100140900);
  v31 = type metadata accessor for Result();
  __chkstk_darwin(v31);
  v33 = (&v161 - v32);
  (*(v34 + 16))(&v161 - v32, a2, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v33;
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000A2B1C(v36, qword_1001E0E88);
    v37 = v188;
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v192 = v42;
      *v40 = 138543618;
      *(v40 + 4) = v37;
      *v41 = v37;
      *(v40 + 12) = 2082;
      v190 = v35;
      v43 = v37;
      swift_errorRetain();
      v44 = String.init<A>(describing:)();
      v46 = sub_1000A2E68(v44, v45, &v192);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to fetch changes for %{public}@: %{public}s", v40, 0x16u);
      sub_1000A5148(v41, &unk_1001E1820, &qword_100140020);

      sub_1000A462C(v42);
    }

    else
    {
    }

    goto LABEL_26;
  }

  (*(v28 + 32))(v30, v33, AssociatedTypeWitness);
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    v64 = v30;
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000A2B1C(v65, qword_1001E0E88);
    v66 = v188;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138543362;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&_mh_execute_header, v67, v68, "All devices are not running new_usage. Skipping %{public}@", v69, 0xCu);
      sub_1000A5148(v70, &unk_1001E1820, &qword_100140020);
    }

    return (*(v28 + 8))(v64, AssociatedTypeWitness);
  }

  v171 = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = *(AssociatedConformanceWitness + 24);
  v49 = v48(0xD000000000000015, 0x800000010014EAE0, AssociatedTypeWitness, AssociatedConformanceWitness);
  v50 = v30;
  if (!v49 || (v189 = v49, sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000A2B1C(v73, qword_1001E0E88);
    v74 = v188;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138543362;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed to get OS version number and type for %{public}@", v77, 0xCu);
      sub_1000A5148(v78, &unk_1001E1820, &qword_100140020);
    }

    (*(v171 + 8))(v50, AssociatedTypeWitness);
    goto LABEL_26;
  }

  v51 = v190;
  v52 = v191;
  v53 = v48(0x534F656369766544uLL, 0xEC00000065707954, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v53 || (v189 = v53, (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  v169 = v52;
  v167 = v190;
  v168 = v191;
  v54 = v183;
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v56 = v186;
  v55 = v187;
  v57 = AssociatedTypeWitness;
  v59 = (v186 + 6);
  v58 = v186[6];
  v60 = v58(v54, 1, v187);
  v170 = v57;
  if (v60 == 1)
  {
    v61 = *(AssociatedConformanceWitness + 16);
    v62 = AssociatedConformanceWitness;
    v63 = v184;
    v61(v57, v62);
    v55 = v187;
    if (v58(v54, 1, v187) != 1)
    {
      sub_1000A5148(v54, &unk_1001E1830, &unk_100141720);
    }
  }

  else
  {
    v63 = v184;
    (v56[4])(v184, v54, v55);
    (v56[7])(v63, 0, 1, v55);
  }

  if (v58(v63, 1, v55) == 1)
  {

    sub_1000A5148(v63, &unk_1001E1830, &unk_100141720);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_1000A2B1C(v80, qword_1001E0E88);
    v81 = v188;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    v84 = os_log_type_enabled(v82, v83);
    v85 = v170;
    v86 = v171;
    if (v84)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138543362;
      *(v87 + 4) = v81;
      *v88 = v81;
      v89 = v81;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to get last modified date for %{public}@", v87, 0xCu);
      sub_1000A5148(v88, &unk_1001E1820, &qword_100140020);

      v86 = v171;
    }

    (*(v86 + 8))(v50, v85);
    goto LABEL_26;
  }

  v183 = v58;
  v184 = v59;
  v90 = v56[4];
  v90(v185, v63, v55);
  v91 = v167;
  v92 = v168;
  if (v167 == 5459817 && v168 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v93 = v51;
    v94 = v169;
    if (v51 != 892221233 || v169 != 0xE400000000000000)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v94 = v169;
    v93 = v51;
    if (v91 == 5788495 && v92 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v51 != 892220465 || v94 != 0xE400000000000000))
    {
LABEL_39:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        if (qword_1001DF128 != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        v96 = sub_1000A2B1C(v95, qword_1001E0E88);
        v97 = v188;

        v188 = v96;
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();

        v163 = v99;
        v165 = v98;
        v100 = os_log_type_enabled(v98, v99);
        v164 = v90;
        v169 = v97;
        if (v100)
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v162 = v102;
          v190 = swift_slowAlloc();
          *v101 = 138543874;
          *(v101 + 4) = v97;
          *v102 = v97;
          *(v101 + 12) = 2082;
          v103 = v97;
          v104 = sub_1000A2E68(v167, v92, &v190);

          *(v101 + 14) = v104;
          *(v101 + 22) = 2082;
          v105 = sub_1000A2E68(v93, v94, &v190);

          *(v101 + 24) = v105;
          v106 = v165;
          _os_log_impl(&_mh_execute_header, v165, v163, "%{public}@ is running legacy usage: %{public}s: %{public}s", v101, 0x20u);
          sub_1000A5148(v162, &unk_1001E1820, &qword_100140020);

          swift_arrayDestroy();
        }

        else
        {
        }

        v118 = v176;
        static Calendar.current.getter();
        v119 = v181;
        v120 = v179;
        (*(v181 + 104))(v179, enum case for Calendar.Component.day(_:), v182);
        v121 = v175;
        static Date.now.getter();
        v122 = v177;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v123 = v186[1];
        v124 = v121;
        v125 = v187;
        v123(v124, v187);
        (*(v119 + 8))(v120, v182);
        (*(v178 + 8))(v118, v180);
        v126 = v183(v122, 1, v125);
        v166 = v50;
        if (v126 == 1)
        {
          sub_1000A5148(v122, &unk_1001E1830, &unk_100141720);
          v127 = v185;
LABEL_61:
          v146 = v174;
          (v186[2])(v174, v127, v125);
          v147 = v169;
          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v188 = v123;
            v152 = v151;
            v186 = swift_slowAlloc();
            v190 = v186;
            *v150 = 138543618;
            *(v150 + 4) = v147;
            *v152 = v147;
            *(v150 + 12) = 2082;
            sub_1000CCA04(&qword_1001E1120, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v153 = v146;
            v154 = v147;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            v157 = v156;
            v158 = v153;
            v159 = v188;
            v188(v158, v125);
            v160 = sub_1000A2E68(v155, v157, &v190);

            *(v150 + 14) = v160;
            _os_log_impl(&_mh_execute_header, v148, v149, "%{public}@ is NOT an old device: %{public}s", v150, 0x16u);
            sub_1000A5148(v152, &unk_1001E1820, &qword_100140020);

            sub_1000A462C(v186);

            v159(v185, v125);
          }

          else
          {

            v123(v146, v125);
            v123(v127, v125);
          }

          (*(v171 + 8))(v166, v170);
LABEL_26:
          result = swift_beginAccess();
          *(a3 + 16) = 0;
          return result;
        }

        v128 = v173;
        v164(v173, v122, v125);
        v127 = v185;
        v129 = static Date.< infix(_:_:)();
        v123(v128, v125);
        if ((v129 & 1) == 0)
        {
          goto LABEL_61;
        }

        v130 = v172;
        (v186[2])(v172, v127, v125);
        v131 = v169;
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v188 = v123;
          v137 = v136;
          v190 = v136;
          *v134 = 138543618;
          *(v134 + 4) = v131;
          *v135 = v131;
          *(v134 + 12) = 2082;
          sub_1000CCA04(&qword_1001E1120, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v138 = v130;
          v139 = v131;
          v140 = dispatch thunk of CustomStringConvertible.description.getter();
          v142 = v141;
          v143 = v138;
          v144 = v188;
          v188(v143, v125);
          v145 = sub_1000A2E68(v140, v142, &v190);

          *(v134 + 14) = v145;
          _os_log_impl(&_mh_execute_header, v132, v133, "Ignoring %{public}@ because it is an old device: %{public}s", v134, 0x16u);
          sub_1000A5148(v135, &unk_1001E1820, &qword_100140020);

          sub_1000A462C(v137);

          v144(v185, v125);
        }

        else
        {

          v123(v130, v125);
          v123(v127, v125);
        }

        return (*(v171 + 8))(v166, v170);
      }
    }
  }

  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  sub_1000A2B1C(v107, qword_1001E0E88);
  v108 = v188;

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = v91;
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v188 = v93;
    v114 = v113;
    v190 = swift_slowAlloc();
    *v112 = 138543874;
    *(v112 + 4) = v108;
    *v114 = v108;
    v166 = v50;
    *(v112 + 12) = 2082;
    v115 = v108;
    v116 = sub_1000A2E68(v111, v92, &v190);

    *(v112 + 14) = v116;
    *(v112 + 22) = 2082;
    v117 = sub_1000A2E68(v188, v94, &v190);

    *(v112 + 24) = v117;
    _os_log_impl(&_mh_execute_header, v109, v110, "%{public}@ is running new usage: %{public}s: %{public}s", v112, 0x20u);
    sub_1000A5148(v114, &unk_1001E1820, &qword_100140020);

    swift_arrayDestroy();

    (v186[1])(v185, v187);
    return (*(v171 + 8))(v166, v170);
  }

  (v186[1])(v185, v187);
  return (*(v171 + 8))(v50, v170);
}

uint64_t sub_1000CACEC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    a1 = *(a5 + 16);
    v6 = 0;
  }

  return a3(a1, v6, a3, a4, a5);
}

void sub_1000CAD54(void *a1)
{
  v32[0] = 0;
  v2 = [objc_opt_self() fetchLocalUserInContext:a1 error:v32];
  if (v2)
  {
    v3 = v2;
    v4 = v32[0];
    [v3 setAllDevicesAreNewUsage:1];
    v5 = objc_opt_self();
    v32[0] = 0;
    v6 = [v5 fetchLocalUserDeviceStateInContext:a1 error:v32];
    if (v6)
    {
      v7 = v6;
      v8 = v32[0];
      [v7 setIsLegacyUsageDisabled:1];
      v9 = [v3 usages];
      v30 = v7;
      if (v9)
      {
        v10 = v9;
        sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
        sub_1000CD4B8();
        v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        goto LABEL_9;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_32;
      }

LABEL_8:
      v11 = &_swiftEmptySetSingleton;
LABEL_9:
      while (1)
      {
        v31 = v3;
        if ((v11 & 0xC000000000000001) != 0)
        {
          __CocoaSet.makeIterator()();
          sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
          sub_1000CD4B8();
          Set.Iterator.init(_cocoa:)();
          v11 = v32[1];
          v14 = v32[2];
          v15 = v32[3];
          v3 = v32[4];
          v16 = v32[5];
        }

        else
        {
          v3 = 0;
          v17 = -1 << *(v11 + 32);
          v14 = (v11 + 56);
          v15 = ~v17;
          v18 = -v17;
          v19 = v18 < 64 ? ~(-1 << v18) : -1;
          v16 = (v19 & *(v11 + 56));
        }

        v29 = v15;
        v20 = (v15 + 64) >> 6;
        if (v11 < 0)
        {
          break;
        }

        while (1)
        {
          v24 = v3;
          v25 = v16;
          v22 = v3;
          if (!v16)
          {
            break;
          }

LABEL_23:
          v23 = (v25 - 1) & v25;
          v21 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v25)))));
          if (!v21)
          {
            goto LABEL_26;
          }

LABEL_24:
          [a1 deleteObject:{v21, v29}];

          v3 = v22;
          v16 = v23;
          if (v11 < 0)
          {
            goto LABEL_16;
          }
        }

        while (1)
        {
          v22 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            goto LABEL_26;
          }

          v25 = v14[v22];
          ++v24;
          if (v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_32:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }

        sub_1000A0F08(_swiftEmptyArrayStorage);
        v11 = v28;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
        swift_dynamicCast();
        v21 = v32[0];
        v22 = v3;
        v23 = v16;
        if (v32[0])
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      sub_100003410(v11);
      if ([a1 hasChanges])
      {
        v32[0] = 0;
        if ([a1 save:v32])
        {
          v26 = v32[0];
        }

        else
        {
          v27 = v32[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }

    else
    {
      v13 = v32[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v12 = v32[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id STEventStreams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CB23C@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_1000CB30C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1000CB348(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    sub_1000A0F74(0, &unk_1001E1128, CKRecordZoneID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setRecordZoneIDs:isa];
}

uint64_t sub_1000CB3E0(uint64_t (*a1)(), uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
}

void sub_1000CB480(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*v1 privateCloudDatabase];
  [v3 addOperation:v2];
}

uint64_t sub_1000CB50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1000CBA38(0xD000000000000010, 0x800000010014EAA0, sub_1000CB968), (v3 & 1) != 0))
  {
    swift_unknownObjectRetain();
    sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0);
    v4 = type metadata accessor for Date();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a2, v5 ^ 1u, 1, v4);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_1000CB660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1000CBA38(0x6E6F697461657263, 0xEC00000065746144, sub_1000CB968), (v3 & 1) != 0))
  {
    swift_unknownObjectRetain();
    sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0);
    v4 = type metadata accessor for Date();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a2, v5 ^ 1u, 1, v4);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_1000CB7C8(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16) && (sub_1000CBA38(a1, a2, sub_1000CB968), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

double sub_1000CB820@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000CB830(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1000CB85C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1000CBB44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result = sub_100003A94(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = v6;
  *(v2 + 16) = v5;
  return result;
}

uint64_t sub_1000CB8D4(uint64_t a1, uint64_t a2)
{
  result = sub_100003A94(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_1000CB968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000CBA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t sub_1000CBABC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CBB48(a1, v4);
}

unint64_t sub_1000CBB00(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CBC1C(a1, v4);
}

unint64_t sub_1000CBB48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000CBC1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000CC96C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000C8034(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000CBCE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1001DF120 != -1)
    {
      swift_once();
    }

    (*(a5 + 40))(a4, a5, *&qword_1001E0E80);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000A2B1C(v12, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully completed and expired %{public}s", v14, 0xCu);
      sub_1000A462C(v15);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000A2B1C(v7, qword_1001E0E88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "Successfully completed %{public}s", v10, 0xCu);
      sub_1000A462C(v11);
    }

    (*(a5 + 32))(a4, a5);
  }
}

void sub_1000CC1B0()
{
  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E0E88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Legacy usage shutdown task expired", v2, 2u);
  }
}

unint64_t sub_1000CC298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E1100, &qword_100141708);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000CC8FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000CBA38(v13, v14, sub_1000CB968);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000C6C8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000CC3BC(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000A9618(a2, v3);
  v5 = *(v4 + 16);
  v6 = v5(1, 8, v3, v4);
  v7 = v5(1, 4, v3, v4);
  v8 = v5(1, 1, v3, v4);
  v9 = 0;
  if (v6 & 1) != 0 && (v7 & 1) != 0 && (v8)
  {
    __chkstk_darwin(v8);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (!v2)
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

void sub_1000CC4FC(void (*a1)(void, void, void), uint64_t a2, void (*a3)(void, void))
{
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_1000A5148(v25, &qword_1001E03A0, qword_100140A70);
    goto LABEL_24;
  }

  sub_1000A0F2C(&unk_1001E10F0, &qword_100141700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    if (a3)
    {
      a3(0, 0);
    }

    return;
  }

  v21 = v5;
  if (*(v22 + 16))
  {
    v20 = a3;
    v8 = 0;
    v9 = 1 << *(v22 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v22 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = a1;
      v14 = v8;
LABEL_18:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v22 + 56) + 8 * (v15 | (v14 << 6)));
      v17 = objc_allocWithZone(CKRecordID);

      v18 = String._bridgeToObjectiveC()();

      v19 = [v17 initWithRecordName:v18];

      if (*(v16 + 16))
      {
        a1 = v13;
        if (v13)
        {
          v13(v19, v16, 0);
        }
      }

      else
      {

        a1 = v13;
        if (v13)
        {
          type metadata accessor for CKError(0);
          sub_1000CCA04(&qword_1001DF6B8, type metadata accessor for CKError, &unk_10013FE5C);
          _BridgedStoredNSError.init(_:userInfo:)();
          v13(v19, *&v25[0], 1);
        }
      }

      v8 = v14;
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v22 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v13 = a1;
        goto LABEL_18;
      }
    }

    if (v20)
    {
      v20(0, 0);
    }
  }

  else
  {

    if (a3)
    {
      type metadata accessor for CKError(0);
      sub_1000CC298(_swiftEmptyArrayStorage);
      sub_1000CCA04(&qword_1001DF6B8, type metadata accessor for CKError, &unk_10013FE5C);
      _BridgedStoredNSError.init(_:userInfo:)();
      a3(*&v25[0], 1);
    }
  }
}

uint64_t sub_1000CC8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E1108, &unk_100141710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CCA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CCA4C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000A9618(a2, v3);
  v5 = *(v4 + 8);
  v5(1, 8, v3, v4);
  v5(1, 4, v3, v4);
  v5(1, 1, v3, v4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1000A9618(a2, v6);
  v8 = *(v7 + 16);
  v9 = v8(1, 8, v6, v7);
  v10 = v8(1, 4, v6, v7);
  v11 = v8(1, 1, v6, v7);
  if (v9 & 1) != 0 && (v10 & 1) != 0 && (v11)
  {
    __chkstk_darwin(v11);
    return NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    sub_1000CD448();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_1000CCC14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 taskRequestForIdentifier:v6];

  if (v7)
  {

    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000A2B1C(v8, qword_1001E0E88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s is already scheduled", v11, 0xCu);
      sub_1000A462C(v12);
    }

    goto LABEL_11;
  }

  v13 = (*(a3 + 16))(0xD000000000000033, 0x800000010014EB00, a2, a3);
  (*(a3 + 32))(a2, a3, 86400.0);
  (*(a3 + 56))(1, a2, a3);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v18 = 0;
    v9 = v13;
    if ([a1 submitTaskRequest:v15 error:&v18])
    {
      v16 = v18;
    }

    else
    {
      v17 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_11:
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000CCF20(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  LODWORD(a1) = [a1 deregisterTaskWithIdentifier:v2];

  if (a1)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000A2B1C(v3, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v10);
      v7 = "Successfully deregistered %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v4, v7, v5, 0xCu);
      sub_1000A462C(v6);

      return;
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000A2B1C(v8, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v10);
      v7 = "Failed to deregister %{public}s";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000CD174(id *a1, void *a2)
{
  v3 = *a1;
  if (([*a1 isParent] & 1) != 0 || (result = objc_msgSend(v3, "isFamilyOrganizer"), result))
  {
    if ([v3 allDevicesAreNewUsage])
    {
      return 0;
    }

    else
    {
      if (qword_1001DF128 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000A2B1C(v5, qword_1001E0E88);
      v6 = v3;
      v7 = a2;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v10 = 136446466;
        v11 = [v6 appleID];
        if (!v11)
        {
          v12 = [v6 dsid];
          v11 = [v12 stringValue];
        }

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_1000A2E68(v13, v15, &v23);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2082;
        v17 = [v7 appleID];
        if (!v17)
        {
          v18 = [v7 dsid];
          v17 = [v18 stringValue];
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_1000A2E68(v19, v21, &v23);

        *(v10 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s's devices are not compatible with DeviceActivity. %{public}s is not eligible for legacy usage shutdown.", v10, 0x16u);
        swift_arrayDestroy();
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000CD43C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_1000CD448()
{
  result = qword_1001E1138;
  if (!qword_1001E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1138);
  }

  return result;
}

unint64_t sub_1000CD4B8()
{
  result = qword_1001E1148;
  if (!qword_1001E1148)
  {
    sub_1000A0F74(255, &qword_1001DF4E0, STUsage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1148);
  }

  return result;
}

uint64_t sub_1000CD53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

uint64_t sub_1000CD59C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000CD5F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000CD668()
{
  result = qword_1001E1170;
  if (!qword_1001E1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1170);
  }

  return result;
}

uint64_t type metadata accessor for ManagedUser(uint64_t a1)
{
  result = qword_1001E11A8;
  if (!qword_1001E11A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CD720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent19ATDispatchConnector____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000BBAA8(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000CD92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for Logger();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000CD9F4, 0, 0);
}

uint64_t sub_1000CD9F4()
{
  v42 = v0;
  v1 = v0[8];
  sub_1000CD720(v0[15]);
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  if (v5)
  {
    v9 = v0[9];
    v10 = v0[7];
    v37 = v0[10];
    v38 = v0[8];
    v40 = v0[13];
    v11 = swift_slowAlloc();
    v39 = v6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v11 = 134349570;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1000A2E68(v9, v37, &v41);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v2;
    *v12 = v38;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Telling AskTo about response with answer %{public}ld for %{public}s %@", v11, 0x20u);
    sub_1000A5148(v12, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v13);

    (*(v7 + 8))(v39, v40);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v15 = v0[7];
  if (v15 == 1)
  {
    v0[3] = 0;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v18 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v19 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
LABEL_11:
    v21 = v19;
    goto LABEL_16;
  }

  if (v15)
  {
    v0[2] = 0;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v20 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v19 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
    goto LABEL_11;
  }

  if (v0[8])
  {
    v16 = v2;
    [v16 doubleValue];
    if (v17 / 60.0 == 15.0)
    {
      v0[6] = 1;
    }

    else
    {
      v0[5] = 2;
    }

    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v24 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v23 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  }

  else
  {
    v0[4] = 3;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v22 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v23 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  }

  v21 = v23;
LABEL_16:
  ATAnswerChoice.kind.setter();
  v0[16] = v21;
  v25 = v0[11];

  if (v25)
  {
    v26 = v0[11];
    type metadata accessor for ATDispatchCenter();
    v27 = v26;
    v0[17] = static ATDispatchCenter.shared.getter();
    v28 = [v27 stringValue];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v0[18] = v31;
    v32 = swift_task_alloc();
    v0[19] = v32;
    *v32 = v0;
    v32[1] = sub_1000CE060;
    v33 = v0[9];
    v34 = v0[10];

    return ATDispatchCenter.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)(v21, v33, v34, v29, v31);
  }

  else
  {
    sub_1000CE86C();
    swift_allocError();
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1000CE060()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);

  if (v0)
  {
    v4 = sub_1000CE220;
  }

  else
  {
    v4 = sub_1000CE1AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000CE1AC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000CE220()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000CE43C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a2;
  v6[5] = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v6[6] = v12;
  v14 = a2;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_1000CE548;

  return sub_1000CD92C(a1, a2, v11, v13, a4);
}

uint64_t sub_1000CE548()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

id sub_1000CE7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATDispatchConnector(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ATDispatchConnector(uint64_t a1)
{
  result = qword_1001E1290;
  if (!qword_1001E1290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CE86C()
{
  result = qword_1001E12A0;
  if (!qword_1001E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E12A0);
  }

  return result;
}

uint64_t sub_1000CE8C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000A4F84;

  return sub_1000CE43C(v2, v3, v4, v5, v7, v6);
}

unint64_t sub_1000CE9A8()
{
  result = qword_1001E12A8;
  if (!qword_1001E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E12A8);
  }

  return result;
}

uint64_t sub_1000CE9FC()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_1000CEA78()
{
  qword_1001E12B0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_1000CEAB4(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1001DF138 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_1001E12B0;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1001DF138 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1000CECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000D0BF0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000CBA20(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000D0D68();
        v14 = v16;
      }

      result = sub_1000D0A40(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000CEDDC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E13A0);
  sub_1000A2B1C(v0, qword_1001E13A0);
  return Logger.init(subsystem:category:)();
}

void sub_1000CEE5C(void *a1)
{
  v2 = a1;
  v3 = [a1 type];
  if (!v3)
  {
LABEL_7:
    if (qword_1001DF140 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v22 = [v2 configurations];
  if (v22)
  {
    v23 = v22;
    sub_1000A0F74(0, &qword_1001E1478, STBlueprintConfiguration_ptr);
    sub_1000B3788(&qword_1001E1480, &qword_1001E1478, STBlueprintConfiguration_ptr, &protocol conformance descriptor for NSObject);
    v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
    swift_beginAccess();
    v46 = v1;
    v49 = *(v1 + v25);
    if ((v24 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v26 = v50[0];
      v2 = v50[1];
      v27 = v50[2];
      v28 = v50[3];
      v29 = v50[4];
    }

    else
    {
      v37 = -1 << *(v24 + 32);
      v2 = (v24 + 56);
      v27 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v29 = v39 & *(v24 + 56);

      v28 = 0;
      v26 = v24;
    }

    v40 = (v27 + 64) >> 6;
    if (v26 < 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v41 = v28;
      v42 = v29;
      v43 = v28;
      if (!v29)
      {
        break;
      }

LABEL_31:
      v44 = (v42 - 1) & v42;
      v45 = *(*(v26 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
      if (!v45)
      {
LABEL_37:
        sub_100003410(v26);

        *(v46 + v25) = v49;

        return;
      }

      while (1)
      {
        v48 = v45;
        sub_1000D2A9C(&v49, &v48);

        v28 = v43;
        v29 = v44;
        if ((v26 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_33:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v45 = v48;
          v43 = v28;
          v44 = v29;
          if (v48)
          {
            continue;
          }
        }

        goto LABEL_37;
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_37;
      }

      v42 = *(v2 + v43);
      ++v41;
      if (v42)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
LABEL_8:
    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E13A0);
    v12 = v2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50[0] = v15;
      *v14 = 136315138;
      v16 = [v12 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000A2E68(v17, v19, v50);

      *(v14 + 4) = v20;
      v21 = "Not adding policies from %s because it is not a restrictions blueprint";
LABEL_18:
      _os_log_impl(&_mh_execute_header, oslog, v13, v21, v14, 0xCu);
      sub_1000A462C(v15);

      return;
    }

    goto LABEL_19;
  }

  if (qword_1001DF140 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000A2B1C(v30, qword_1001E13A0);
  v31 = v2;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50[0] = v15;
    *v14 = 136315138;
    v32 = [v31 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_1000A2E68(v33, v35, v50);

    *(v14 + 4) = v36;
    v21 = "Not adding policies from %s because it does not have any configurations";
    goto LABEL_18;
  }

LABEL_19:
}

id sub_1000CF4A0()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) policy];
    if (result)
    {
      v11 = 1;
LABEL_13:

      return v11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CF5B4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v72 = sub_1000CF4A0();
  sub_1000D072C(a3, &v85);
  if (v86)
  {
    sub_100004804(&v85, v87);
    v7 = v88;
    v8 = v89;
    sub_1000A9618(v87, v88);
    if ((*(v8 + 40))(v7, v8))
    {
      v9 = v88;
      v10 = v89;
      sub_1000A9618(v87, v88);
      AssociatedTypeWitness = (*(v10 + 32))(v9, v10);
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      AssociatedConformanceWitness = v15;

      sub_1000A462C(v87);
      goto LABEL_10;
    }

    sub_1000A462C(v87);
  }

  else
  {
    sub_1000A5148(&v85, &qword_1001E1468, &unk_100141B50);
  }

  AssociatedTypeWitness = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v17;
  sub_1000D072C(a3, v87);
  v18 = v88;
  if (v88)
  {
    v19 = v89;
    sub_1000A9618(v87, v88);
    v14 = (*(v19 + 32))(v18, v19);
    AssociatedConformanceWitness = v20;
    sub_1000A462C(v87);
  }

  else
  {
    sub_1000A5148(v87, &qword_1001E1468, &unk_100141B50);
    v14 = 0;
    AssociatedConformanceWitness = 0;
  }

LABEL_10:
  if (qword_1001DF140 != -1)
  {
LABEL_42:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000A2B1C(v21, qword_1001E13A0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v75 = AssociatedTypeWitness;
  if (os_log_type_enabled(v22, v23))
  {
    v80 = a3;
    v24 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_1000A2E68(AssociatedTypeWitness, v13, v87);
    *(v24 + 12) = 2082;
    if (AssociatedConformanceWitness)
    {
      v25 = v14;
    }

    else
    {
      v25 = 7104878;
    }

    v26 = a2;
    v27 = v4;
    v28 = AssociatedConformanceWitness;
    if (!AssociatedConformanceWitness)
    {
      AssociatedConformanceWitness = 0xE300000000000000;
    }

    v29 = v13;
    v30 = v14;
    v31 = sub_1000A2E68(v25, AssociatedConformanceWitness, v87);
    AssociatedConformanceWitness = v28;
    v4 = v27;
    a2 = v26;
    AssociatedTypeWitness = v75;

    *(v24 + 14) = v31;
    v14 = v30;
    v13 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "currentContainerName: %{public}s, otherContainerName: %{public}s", v24, 0x16u);
    swift_arrayDestroy();

    a3 = v80;
  }

  else
  {
  }

  v32 = sub_1000D3078(AssociatedTypeWitness, v13, a1, a2);

  v33 = v4;
  v34 = sub_1000D34A4(v32, v33);

  v83 = v13;
  if (*(v34 + 16))
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v81 = a3;
      v37 = swift_slowAlloc();
      v77 = AssociatedConformanceWitness;
      v38 = swift_slowAlloc();
      v87[0] = v38;
      *v37 = 136315138;
      v39 = Set.description.getter();
      v41 = sub_1000A2E68(v39, v40, v87);

      *(v37 + 4) = v41;
      AssociatedTypeWitness = v75;
      v13 = v83;
      _os_log_impl(&_mh_execute_header, v35, v36, "Deleting web content filter stores: %s", v37, 0xCu);
      sub_1000A462C(v38);
      AssociatedConformanceWitness = v77;

      a3 = v81;
    }

    (*(a2 + 56))(v34, AssociatedTypeWitness, v13);
  }

  sub_1000D0078(a3);
  if (AssociatedConformanceWitness)
  {
    v42 = sub_1000D3078(v14, AssociatedConformanceWitness, a1, a2);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      a3 = swift_slowAlloc();
      v78 = AssociatedConformanceWitness;
      v45 = swift_slowAlloc();
      v87[0] = v45;
      *a3 = 136315138;
      v46 = Set.description.getter();
      AssociatedTypeWitness = v14;
      v48 = sub_1000A2E68(v46, v47, v87);

      *(a3 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Deleting web content filter stores in other container: %s", a3, 0xCu);
      sub_1000A462C(v45);
      AssociatedConformanceWitness = v78;
    }

    (*(a2 + 56))(v42, v14, AssociatedConformanceWitness);
  }

  v49 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
  swift_beginAccess();
  v50 = *&v33[v49];
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v13 = v53 & *(v50 + 64);
  v4 = ((v52 + 63) >> 6);
  v76 = v50;
  v79 = a2;

  v54 = 0;
  v73 = v4;
  v74 = v51;
  while (v13)
  {
    a2 = v79;
LABEL_38:
    v60 = __clz(__rbit64(v13)) | (v54 << 6);
    v61 = (*(v76 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    v64 = *(*(v76 + 56) + 8 * v60);
    swift_bridgeObjectRetain_n();
    a3 = v64;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v82 = v63;
      v69 = swift_slowAlloc();
      *&v85 = v69;
      *v67 = 136315394;
      *(v67 + 4) = sub_1000A2E68(v82, v62, &v85);
      *(v67 + 12) = 2112;
      *(v67 + 14) = a3;
      *v68 = a3;
      v70 = a3;
      _os_log_impl(&_mh_execute_header, v65, v66, "Applying web content filter policy for %s: %@", v67, 0x16u);
      sub_1000A5148(v68, &unk_1001E1820, &qword_100140020);

      sub_1000A462C(v69);
      v63 = v82;
    }

    v13 &= v13 - 1;
    v55 = *(a2 + 24);

    v55(v63, v62, v75, v83);
    swift_getObjectType();
    (*(a2 + 32))();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = AssociatedConformanceWitness + 16;
    v56 = *(AssociatedConformanceWitness + 16);
    v57 = a3;
    v58 = swift_checkMetadataState();
    v56(a3, v58, AssociatedConformanceWitness);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v73;
    v51 = v74;
  }

  a2 = v79;
  while (1)
  {
    v59 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v59 >= v4)
    {
      break;
    }

    v13 = *(v51 + 8 * v59);
    ++v54;
    if (v13)
    {
      v54 = v59;
      goto LABEL_38;
    }
  }

  return v72 & 1;
}