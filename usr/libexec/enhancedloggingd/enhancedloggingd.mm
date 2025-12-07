uint64_t sub_100001EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  v4 = ELSSubDefaultQueueEntryType;
  v5 = [v3 objectForKeyedSubscript:ELSSubDefaultQueueEntryType];
  if (!v5)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v6 = [ELSWhitelist findEntryForParameterName:v5];

  if (!v6)
  {
    goto LABEL_32;
  }

  v5 = [v3 objectForKeyedSubscript:ELSParameterPayload];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_32;
    }

    v7 = [*(a1 + 32) parameterPayloads];

    if (v7)
    {
      v8 = [*(a1 + 32) parameterPayloads];
      v9 = [v8 objectForKey:v5];

      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          goto LABEL_11;
        }
      }

LABEL_32:
      goto LABEL_33;
    }
  }

LABEL_11:

  v10 = [v3 objectForKeyedSubscript:ELSSubDefaultQueueEntryExecuteAfterDuration];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v10 doubleValue];
      if (v31 < 0.0 || ([v10 doubleValue], v32 > 2419200.0))
      {

LABEL_33:
        v30 = 0;
        goto LABEL_34;
      }
    }
  }

  v11 = [v3 objectForKeyedSubscript:ELSSubDefaultQueueEntryRetry];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v14 = [v3 objectForKeyedSubscript:v4];
  v15 = [ELSWhitelist findEntryForParameterName:v14];

  v16 = [v3 objectForKeyedSubscript:ELSSubDefaultQueueEntryPlatform];
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_33;
    }
  }

  v17 = [v16 componentsSeparatedByString:{@", "}];
  v18 = v17;
  if (v17 && [v17 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v34 = v18;
      v35 = v16;
      v22 = *v37;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * v23);
          v25 = [NSCharacterSet whitespaceAndNewlineCharacterSet:v34];
          v26 = [v24 stringByTrimmingCharactersInSet:v25];

          v27 = [v15 platformAvailability];
          v28 = [v26 lowercaseString];
          v29 = [v27 containsObject:v28];

          if (!v29)
          {
            v30 = 0;
            goto LABEL_38;
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v30 = 1;
LABEL_38:
      v18 = v34;
      v16 = v35;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 1;
  }

LABEL_34:
  return v30;
}

BOOL sub_10000231C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:ELSSubDefaultConsentHandleEntryHandle];
    v4 = 0;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1000026D0(uint64_t a1)
{
  if (qword_10004A688[0] != -1)
  {
    sub_10003573C();
  }

  v2 = qword_10004A680;

  return v2;
}

void sub_100002714(id a1)
{
  qword_10004A680 = os_log_create("com.apple.EnhancedLogging", "elsConfigurator");

  _objc_release_x1();
}

void sub_1000028A8(uint64_t a1)
{
  v2 = [*(a1 + 32) inputs];
  v3 = [v2 command];

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      v7 = *(a1 + 32);
      v8 = 0;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = 1;
    }

    v9 = 0;
  }

  else
  {
    if (v3 == 2)
    {
      v7 = *(a1 + 32);
      v8 = 0;
    }

    else
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v6 = *(a1 + 32);

          [v6 unenroll];
        }

        return;
      }

      v7 = *(a1 + 32);
      v8 = 1;
    }

    v9 = 1;
  }

  [v7 enrollWithFlush:v8 commit:v9];
}

void sub_1000033AC(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 queue];

  if (v3)
  {
    v4 = [v15 queue];
    v5 = [v4 mutableCopy];

    [v5 addObjectsFromArray:*(a1 + 32)];
    v6 = [NSArray arrayWithArray:v5];
    [v15 setQueue:v6];
  }

  else
  {
    [v15 setQueue:*(a1 + 32)];
  }

  if (*(a1 + 48) == 1)
  {
    v7 = [*(a1 + 40) aggregateMetadata];
    [v15 setMetadata:v7];

    v8 = [*(a1 + 40) inputs];
    v9 = [v8 followUpOptions];
    [v15 setFollowUpOptions:v9];

    [v15 setStatus:2];
    v10 = [*(a1 + 40) inputs];
    [v15 setRetriesRemaining:{objc_msgSend(v10, "retries")}];

    v11 = [*(a1 + 40) inputs];
    v12 = [v11 consentHandles];
    [v15 setConsentHandles:v12];

    v13 = [*(a1 + 40) getTopLevelPrivacyPolicy];
    [v15 setTopLevelPrivacyPolicy:v13];

    v14 = [*(a1 + 40) getDeviceSelectionMap];
    [v15 setDeviceSelection:v14];
  }

  else
  {
    [v15 setStatus:1];
  }
}

void sub_10000357C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v2 finishWithStatusCode:0 metadata:v3];
}

void sub_100003B60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

__n128 sub_100003B90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100003BA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003BC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100003C08()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004210(v0, qword_10004C010);
  v1 = sub_100004274(v0, qword_10004C010);
  *v1 = type metadata accessor for Session();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100003CE8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003D60(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003DE0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003E28@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100003E54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003E64(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D88, type metadata accessor for FLNotificationOptions, &unk_100038708);
  v3 = sub_1000044E4(&qword_100049D90, type metadata accessor for FLNotificationOptions, &unk_10003801C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003F20(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10004A660, type metadata accessor for ELSPlatform, &unk_1000386C8);
  v3 = sub_1000044E4(&qword_100049D70, type metadata accessor for ELSPlatform, &unk_100038268);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003FDC(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D50, type metadata accessor for ELSDeviceSelectionMapKey, &unk_100038648);
  v3 = sub_1000044E4(&qword_100049D58, type metadata accessor for ELSDeviceSelectionMapKey, &unk_100038468);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004098(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D40, type metadata accessor for ELSDeviceSelection, &unk_1000385C0);
  v3 = sub_1000044E4(&qword_100049D48, type metadata accessor for ELSDeviceSelection, &unk_100038568);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004154(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D78, type metadata accessor for ELSFollowUpOption, &unk_100038180);
  v3 = sub_1000044E4(&qword_100049D80, type metadata accessor for ELSFollowUpOption, &unk_100038128);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t *sub_100004210(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004274(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000434C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100004398(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D98, type metadata accessor for FileAttributeKey, &unk_10003874C);
  v3 = sub_1000044E4(&unk_100049DA0, type metadata accessor for FileAttributeKey, &unk_100037EF8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000044E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004724@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000476C(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100049D60, type metadata accessor for ELSMetadata, &unk_100038688);
  v3 = sub_1000044E4(&qword_100049D68, type metadata accessor for ELSMetadata, &unk_100038368);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000049D8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004A14(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004A68(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100004ADC(void *a1, uint64_t *a2)
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

void sub_100004D48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 44;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  [v5 code];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 44;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  String.append(_:)(v10);
  v11 = objc_opt_self();
  v12 = ELSEventTypeSessionError;
  v13 = String._bridgeToObjectiveC()();

  [v11 createLoggingEventWith:v12 postfix:v13];
}

void sub_100004E80()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v2 - 8);
  v4 = v54 - v3;
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = &v0[OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID];
  *v8 = 0x496E6F6973736573;
  *(v8 + 1) = 0xE900000000000044;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v7;
  *&v0[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_currentUserDefaultsFormatVersion] = 2;
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v12 = &v0[OBJC_IVAR____TtC16enhancedloggingd13DaemonService__persistedUserDefaultsFormatVersion];
  *v12 = 0x6E6F6973726576;
  *(v12 + 1) = 0xE700000000000000;
  *(v12 + 2) = 0;
  v12[24] = 1;
  *(v12 + 4) = v11;
  *&v0[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller] = 0;
  v13 = &v0[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections];
  v14 = sub_10002AC34(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 1) = v14;
  v56.receiver = v0;
  v56.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v56, "init");
  v16 = &v15[OBJC_IVAR____TtC16enhancedloggingd13DaemonService__persistedUserDefaultsFormatVersion];
  swift_beginAccess();
  v17 = *(v16 + 1);
  v60 = *v16;
  v61 = v17;
  v62 = *(v16 + 4);
  v18 = v62;
  v63 = v60;
  sub_100010B78(&v63, &v57);
  v19 = v18;
  v20 = sub_100022E98();
  v22 = v21;
  sub_100010C3C(&v63);

  if ((v22 & 1) != 0 || v20 != 2)
  {
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100004274(v37, qword_10004C070);
    v38 = v15;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v64 = v42;
      *v41 = 136446466;
      v57 = *v16;
      v58 = *(v16 + 1);
      v59 = *(v16 + 4);
      v43 = v59;
      v55 = v57;
      sub_100010B78(&v55, v65);
      v44 = v43;
      v45 = sub_100022E98();
      v47 = v46;
      sub_100010C3C(&v55);

      *&v65[0] = v45;
      BYTE8(v65[0]) = v47 & 1;
      sub_1000061F4(&qword_100049ED8, &qword_100038910);
      v48 = String.init<A>(describing:)();
      v50 = sub_100031FE8(v48, v49, &v64);

      *(v41 + 4) = v50;
      *(v41 + 12) = 2050;

      *(v41 + 14) = 2;
      _os_log_impl(&_mh_execute_header, v39, v40, "Current user defaults format version is %{public}s, expected %{public}ld", v41, 0x16u);
      sub_10000D154(v42);
    }

    else
    {
    }

    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v4, 1, 1, v51);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v38;
    v53 = v38;
    sub_1000155B0(0, 0, v4, &unk_100038938, v52);
  }

  else
  {
    v23 = &v15[OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID];
    swift_beginAccess();
    v57 = *v23;
    v58 = *(v23 + 1);
    v24 = *(v23 + 4);
    v59 = v24;
    v64 = v57;
    v65[0] = v58;
    sub_100010B78(&v64, v54);
    v25 = v24;
    sub_100010BD4(v65, v54, &qword_100049ED0, &unk_100038DA0);
    v26 = sub_100022D9C();
    v28 = v27;
    sub_100010C3C(&v64);
    sub_100010EB8(v65, &qword_100049ED0, &unk_100038DA0);

    if (v28)
    {
      if (qword_100049C10 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100004274(v29, qword_10004C070);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v54[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100031FE8(v26, v28, v54);
        _os_log_impl(&_mh_execute_header, v30, v31, "Existing session: %s", v32, 0xCu);
        sub_10000D154(v33);
      }

      type metadata accessor for SessionController(0);
      swift_allocObject();
      sub_1000195B4(v26, v28);
      v34 = OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller;
      *&v15[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller] = v35;

      v36 = *&v15[v34];
      if (v36)
      {
        *(v36 + 24) = &off_100045490;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

uint64_t sub_100005528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010F58;

  return sub_1000055B8();
}

uint64_t sub_1000055D8()
{
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004274(v1, qword_10004C070);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Flushing user defaults", v4, 2u);
  }

  v5 = v0[19];

  *(v5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller) = 0;

  v6 = [objc_opt_self() sharedManager];
  v0[20] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000057E8;
  v7 = swift_continuation_init();
  v0[17] = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100019108;
  v0[13] = &unk_1000454E8;
  v0[14] = v7;
  [v6 flushWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000057E8()
{

  return _swift_task_switch(sub_1000058C8, 0, 0);
}

uint64_t sub_1000058C8()
{
  v1 = *(v0 + 160);

  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  [v3 removePersistentDomainForName:ELSDomain];

  v4 = [v2 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 removePersistentDomainForName:v5];

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000059F0(uint64_t a1, void *a2)
{
  if (qword_100049C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004274(v3, qword_10004C0A0);
  v4 = a2;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = [v4 processIdentifier];

    *(v6 + 8) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "XPC error with connection to PID %d: %@", v6, 0x12u);
    sub_100010EB8(v7, &qword_100049E70, &qword_100038FA0);

    v9 = oslog;
  }

  else
  {

    v9 = v4;
  }
}

void sub_100005B94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100005BFC(void *a1)
{
  if (qword_100049C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C0A0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = [v3 processIdentifier];

    _os_log_impl(&_mh_execute_header, oslog, v4, "XPC connection from PID %d interrupted", v5, 8u);

    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_100005D28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100005D6C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100049C20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C0A0);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = [v6 processIdentifier];

      _os_log_impl(&_mh_execute_header, v7, v8, "XPC connection from PID %d invalidated", v9, 8u);
    }

    else
    {

      v7 = v6;
    }

    v10 = &v4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections]);
    v11 = sub_100032590([v6 processIdentifier]);
    sub_100010D84(v11, v12);
    if (!*(*(v10 + 1) + 16))
    {
      if (*&v4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller])
      {
        v13 = [objc_opt_self() sharedInstance];
        [v13 stopDiscovery];
      }
    }

    os_unfair_lock_unlock(v10);
  }
}

void sub_100005F40()
{
  if (!*(v0 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    if (qword_100049C00 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100004274(v1, qword_10004C040);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No session found, attempting to clear follow up items if present.", v4, 2u);
    }

    type metadata accessor for NotificationController();
    inited = swift_initStackObject();
    *(inited + 16) = 0x40AC200000000000;
    *(inited + 24) = 0;
    sub_100013C84();
    swift_setDeallocating();
  }
}

id sub_1000060C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000061C4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000061F4(&unk_100049E60, &qword_100038818);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000061F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006374(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100004274(v13, qword_10004C070);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to configure session with status code: %ld", v16, 0xCu);
    }

    return a3(a1, a2, 0, 0);
  }

  else
  {
    UUID.init()();
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    sub_10000E074(6, v18, v20, v21);

    v22 = static String._fromSubstring(_:)();
    v24 = v23;

    v25 = a5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID;
    swift_beginAccess();
    v26 = *(v25 + 32);
    v38 = v22;
    v39 = v24;
    swift_bridgeObjectRetain_n();
    sub_1000061F4(&qword_100049ED0, &unk_100038DA0);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v28 = String._bridgeToObjectiveC()();
    [v26 setObject:v27 forKey:v28];
    swift_endAccess();
    swift_unknownObjectRelease();

    v29 = a5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService__persistedUserDefaultsFormatVersion;
    swift_beginAccess();
    v30 = *(v29 + 32);
    v38 = 2;
    LOBYTE(v39) = 0;
    sub_1000061F4(&qword_100049ED8, &qword_100038910);
    v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v32 = String._bridgeToObjectiveC()();
    [v30 setObject:v31 forKey:v32];
    swift_endAccess();
    swift_unknownObjectRelease();

    type metadata accessor for SessionController(0);
    swift_allocObject();

    sub_1000195B4(v22, v24);
    v34 = v33;
    *(v33 + 24) = &off_100045490;
    swift_unknownObjectWeakAssign();
    *(a5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller) = v34;

    a3(0, a2, v22, v24);

    v35 = a5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
    os_unfair_lock_lock((a5 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
    sub_10000B3A8((v35 + 8), v22, v24, v36, &selRef_sessionCreatedWithSessionID_);

    os_unfair_lock_unlock(v35);
  }
}

uint64_t sub_1000067A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

void sub_100006918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
LABEL_3:
      v9 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v8.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8.super.isa);
}

uint64_t sub_100006AAC(char *a1, uint64_t a2, uint64_t a3, const void *a4, SEL *a5)
{
  v8 = sub_1000061F4(&qword_100049EC8, &unk_100038900);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = _Block_copy(a4);
  if (*&a1[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller])
  {
    v15 = objc_opt_self();

    v16 = a1;
    v17 = [v15 sharedManager];
    v18 = [v17 snapshot];

    v19 = [v18 *a5];
    if (v19)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
    }

    else
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    }
  }

  else
  {
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = a1;
  }

  sub_100010BD4(v13, v11, &qword_100049EC8, &unk_100038900);
  type metadata accessor for Date();
  v22 = *(v20 - 8);
  isa = 0;
  if ((*(v22 + 48))(v11, 1, v20) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v11, v20);
  }

  v14[2](v14, isa);

  _Block_release(v14);
  return sub_100010EB8(v13, &qword_100049EC8, &unk_100038900);
}

void *sub_10000706C(uint64_t a1)
{
  v31 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v24[1] = v1;
    v35 = _swiftEmptyArrayStorage;
    sub_100028488(0, v5, 0);
    v33 = a1 + 56;
    v34 = v35;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v28 = v3 + 8;
    v29 = v3 + 16;
    v25 = a1 + 64;
    v26 = v5;
    v27 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v33 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = *(a1 + 36);
      v11 = v30;
      v12 = v31;
      (*(v3 + 16))(v30, *(a1 + 48) + *(v3 + 72) * v7, v31);
      v13 = TargetDevice.DeviceType.rawValue.getter();
      result = (*(v3 + 8))(v11, v12);
      v14 = v34;
      v35 = v34;
      v16 = v34[2];
      v15 = v34[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_100028488((v15 > 1), v16 + 1, 1);
        v14 = v35;
      }

      v14[2] = v16 + 1;
      v14[v16 + 4] = v13;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v33 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v14;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v27;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v25 + 8 * v10);
        v3 = v27;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100010B64(v7, v32, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_100010B64(v7, v32, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v26)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100007480(void *a1, int a2, int a3, void *aBlock, void (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a1;
  a5();
  _Block_release(v7);
  _Block_release(v7);
}

void sub_1000075D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100007638(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100004274(v15, qword_10004C070);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = a4;
    v25 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100031FE8(0xD000000000000044, 0x80000001000397A0, &v25);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100031FE8(a1, a2, &v25);
    *(v18 + 22) = 2048;
    *(v18 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s sessionID: %s options: %ld", v18, 0x20u);
    swift_arrayDestroy();
    a4 = v24;
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = a5;
  v22 = v6;

  sub_1000155B0(0, 0, v14, &unk_1000388D8, v21);
}

uint64_t sub_1000078D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Session.CollectOptions();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for TargetDevice();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000079F4, 0, 0);
}

id sub_1000079F4()
{
  v25 = v0;
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = objc_opt_self();

    result = [v2 currentDevice];
    if (result)
    {
      v5 = *(v0 + 80);
      v4 = *(v0 + 88);
      v6 = *(v0 + 72);
      sub_100014768(result, v4);
      sub_1000061F4(&qword_100049EA8, &qword_1000388E0);
      v7 = *(v5 + 80);
      *(v0 + 144) = v7;
      v8 = (v7 + 32) & ~v7;
      v9 = swift_allocObject();
      *(v0 + 104) = v9;
      *(v9 + 16) = xmmword_1000387E0;
      (*(v5 + 16))(v9 + v8, v4, v6);
      Session.CollectOptions.init(rawValue:)();
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_100007E3C;
      v11 = *(v0 + 64);

      return sub_1000163A4(v9, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, enum case for SessionError.noSession(_:), v12);
    swift_willThrow();
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100004274(v15, qword_10004C070);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_100031FE8(0xD000000000000044, 0x80000001000397A0, &v24);
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s failed: %@", v18, 0x16u);
      sub_100010EB8(v19, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v20);
    }

    else
    {
    }

    v22 = *(v0 + 32);
    swift_errorRetain();
    v22(v13);

    sub_100004D48(v13, 0xD000000000000044, 0x80000001000397A0);

    v23 = *(v0 + 8);

    return v23();
  }

  return result;
}

uint64_t sub_100007E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  v12 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = (*(v2 + 144) + 32) & ~*(v2 + 144);
  *(v2 + 120) = v0;

  (*(v6 + 8))(v5, v7);
  swift_setDeallocating();
  v9 = *(v4 + 8);
  *(v2 + 128) = v9;
  *(v2 + 136) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3 + v8, v12);
  swift_deallocClassInstance();
  if (v0)
  {
    v10 = sub_1000080FC;
  }

  else
  {
    v10 = sub_100008050;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100008050()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 32))(0);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000080FC()
{
  v16 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[9];

  v1(v2, v3);
  v4 = v0[15];
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100004274(v5, qword_10004C070);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100031FE8(0xD000000000000044, 0x80000001000397A0, &v15);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s failed: %@", v8, 0x16u);
    sub_100010EB8(v9, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v10);
  }

  else
  {
  }

  v12 = v0[4];
  swift_errorRetain();
  v12(v4);

  sub_100004D48(v4, 0xD000000000000044, 0x80000001000397A0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000083A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100004274(v17, qword_10004C070);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a3;
    v21 = v7;
    v22 = a6;
    v23 = a1;
    v24 = v20;
    v25 = swift_slowAlloc();
    v33 = a5;
    v34 = v25;
    *v24 = 136315650;
    *(v24 + 4) = sub_100031FE8(0xD00000000000003DLL, 0x8000000100039760, &v34);
    *(v24 + 12) = 2080;
    v26 = v23;
    a6 = v22;
    v7 = v21;
    a3 = v32;
    *(v24 + 14) = sub_100031FE8(v26, a2, &v34);
    *(v24 + 22) = 2048;
    *(v24 + 24) = a4;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s sessionID: %s options: %ld", v24, 0x20u);
    swift_arrayDestroy();
    a5 = v33;
  }

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v7;
  v28[5] = a3;
  v28[6] = a4;
  v28[7] = a5;
  v28[8] = a6;
  v29 = v7;

  sub_1000155B0(0, 0, v16, &unk_1000388C0, v28);
}

uint64_t sub_100008668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Session.CollectOptions();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  sub_1000061F4(&qword_100049EA0, &qword_1000388C8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for TargetDevice();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000087C4, 0, 0);
}

uint64_t sub_1000087C4()
{
  v31 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v0[14] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = *(v2 + 16);

    if (v3)
    {
      v4 = v0[12];
      v5 = v2 + 32;
      v6 = (v4 + 32);
      v7 = _swiftEmptyArrayStorage;
      do
      {
        v9 = v0[10];
        v8 = v0[11];

        TargetDevice.init(dictionaryRepresentation:)();
        if ((*(v4 + 48))(v9, 1, v8) == 1)
        {
          sub_100010EB8(v0[10], &qword_100049EA0, &qword_1000388C8);
        }

        else
        {
          v10 = *v6;
          (*v6)(v0[13], v0[10], v0[11]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1000234A0(0, *(v7 + 2) + 1, 1, v7);
          }

          v12 = *(v7 + 2);
          v11 = *(v7 + 3);
          if (v12 >= v11 >> 1)
          {
            v7 = sub_1000234A0((v11 > 1), v12 + 1, 1, v7);
          }

          v13 = v0[13];
          v14 = v0[11];
          *(v7 + 2) = v12 + 1;
          v10(&v7[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12], v13, v14);
        }

        v5 += 8;
        --v3;
      }

      while (v3);
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v0[15] = v7;
    Session.CollectOptions.init(rawValue:)();
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_100008CA0;
    v26 = v0[9];

    return sub_1000163A4(v7, v26);
  }

  else
  {
    v15 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, enum case for SessionError.noSession(_:), v15);
    swift_willThrow();
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100004274(v18, qword_10004C070);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_100031FE8(0xD00000000000003DLL, 0x8000000100039760, &v30);
      *(v21 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s failed: %@", v21, 0x16u);
      sub_100010EB8(v22, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v23);
    }

    else
    {
    }

    v28 = v0[5];
    swift_errorRetain();
    v28(v16);

    sub_100004D48(v16, 0xD00000000000003DLL, 0x8000000100039760);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_100008CA0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100008EC4;
  }

  else
  {
    v5 = sub_100008E34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100008E34()
{
  (*(v0 + 40))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008EC4()
{
  v13 = v0;

  v1 = v0[17];
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C070);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100031FE8(0xD00000000000003DLL, 0x8000000100039760, &v12);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed: %@", v5, 0x16u);
    sub_100010EB8(v6, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v7);
  }

  else
  {
  }

  v9 = v0[5];
  swift_errorRetain();
  v9(v1);

  sub_100004D48(v1, 0xD00000000000003DLL, 0x8000000100039760);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009224(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100004274(v15, qword_10004C070);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = a4;
    v25 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100031FE8(0xD000000000000034, 0x8000000100039720, &v25);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100031FE8(a1, a2, &v25);
    *(v18 + 22) = 2048;
    *(v18 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s sessionID: %s options: %ld", v18, 0x20u);
    swift_arrayDestroy();
    a4 = v24;
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = a5;
  v22 = v6;

  sub_1000155B0(0, 0, v14, &unk_1000388B0, v21);
}

uint64_t sub_1000094C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Session.UploadOptions();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100009584, 0, 0);
}

uint64_t sub_100009584()
{
  v18 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v0[9] = v1;
  if (v1)
  {

    Session.UploadOptions.init(rawValue:)();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100009910;
    v3 = v0[8];

    return sub_100017720(v3);
  }

  else
  {
    v5 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for SessionError.noSession(_:), v5);
    swift_willThrow();
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100004274(v8, qword_10004C070);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_100031FE8(0xD000000000000034, 0x8000000100039720, &v17);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s failed: %@", v11, 0x16u);
      sub_100010EB8(v12, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v13);
    }

    else
    {
    }

    v15 = v0[4];
    swift_errorRetain();
    v15(v6);

    sub_100004D48(v6, 0xD000000000000034, 0x8000000100039720);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100009910()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100009AFC;
  }

  else
  {
    v5 = sub_100009A80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100009A80()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009AFC()
{
  v13 = v0;

  v1 = v0[11];
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C070);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100031FE8(0xD000000000000034, 0x8000000100039720, &v12);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed: %@", v5, 0x16u);
    sub_100010EB8(v6, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v7);
  }

  else
  {
  }

  v9 = v0[4];
  swift_errorRetain();
  v9(v1);

  sub_100004D48(v1, 0xD000000000000034, 0x8000000100039720);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009D80(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a1;
  a8(v13, v15, a4, a7, v16);
}

uint64_t sub_100009E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100009E6C, 0, 0);
}

uint64_t sub_100009E6C()
{
  v17 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v0[5] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_10000A1D8;

    return sub_100017FC8();
  }

  else
  {
    v4 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for SessionError.noSession(_:), v4);
    swift_willThrow();
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004274(v7, qword_10004C070);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_100031FE8(0xD00000000000002BLL, 0x80000001000396F0, &v16);
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s failed: %@", v10, 0x16u);
      sub_100010EB8(v11, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v12);
    }

    else
    {
    }

    v14 = v0[3];
    swift_errorRetain();
    v14(v5);

    sub_100004D48(v5, 0xD00000000000002BLL, 0x80000001000396F0);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10000A1D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10000A360;
  }

  else
  {
    v2 = sub_10000A2EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A2EC()
{
  (*(v0 + 24))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A360()
{
  v13 = v0;

  v1 = v0[7];
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C070);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100031FE8(0xD00000000000002BLL, 0x80000001000396F0, &v12);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed: %@", v5, 0x16u);
    sub_100010EB8(v6, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v7);
  }

  else
  {
  }

  v9 = v0[3];
  swift_errorRetain();
  v9(v1);

  sub_100004D48(v1, 0xD00000000000002BLL, 0x80000001000396F0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10000A600, 0, 0);
}

uint64_t sub_10000A600()
{
  v17 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v0[5] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_10000A970;

    return sub_10001841C();
  }

  else
  {
    v4 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for SessionError.noSession(_:), v4);
    swift_willThrow();
    if (qword_100049C10 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004274(v7, qword_10004C070);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_100031FE8(0xD00000000000002ELL, 0x8000000100039670, &v16);
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s failed: %@", v10, 0x16u);
      sub_100010EB8(v11, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v12);
    }

    else
    {
    }

    v14 = v0[3];
    swift_errorRetain();
    v14(0, v5);

    sub_100004D48(v5, 0xD00000000000002ELL, 0x8000000100039670);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10000A970(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10000AB14;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_10000AA9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000AA9C()
{
  (*(v0 + 24))(*(v0 + 64), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000AB14()
{
  v13 = v0;

  v1 = v0[7];
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C070);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100031FE8(0xD00000000000002ELL, 0x8000000100039670, &v12);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed: %@", v5, 0x16u);
    sub_100010EB8(v6, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v7);
  }

  else
  {
  }

  v9 = v0[3];
  swift_errorRetain();
  v9(0, v1);

  sub_100004D48(v1, 0xD00000000000002ELL, 0x8000000100039670);

  v10 = v0[1];

  return v10();
}

void sub_10000AD94(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10000AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100004274(v13, qword_10004C070);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100031FE8(0xD000000000000024, 0x8000000100039640, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_10000D154(v17);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v20 = v5;

  sub_1000155B0(0, 0, v12, &unk_100038880, v19);
}

uint64_t sub_10000B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10000B084, 0, 0);
}

uint64_t sub_10000B084()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v0[7] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10000B1D0;

    return sub_100018D50();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    sub_10000F9D8(v0[5], v0[6]);
    v7 = v1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
    os_unfair_lock_lock(v7);
    sub_10000B3A8((v7 + 8), v6, v5, v8, &selRef_sessionEndedWithSessionID_);
    os_unfair_lock_unlock(v7);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10000B1D0()
{

  return _swift_task_switch(sub_10000B2E8, 0, 0);
}

uint64_t sub_10000B2E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10000F9D8(v0[5], v0[6]);
  v4 = v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock(v4);
  sub_10000B3A8((v4 + 8), v2, v1, v5, &selRef_sessionEndedWithSessionID_);
  os_unfair_lock_unlock(v4);
  v6 = v0[1];

  return v6();
}

void sub_10000B3A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(v5 + 56) + ((v12 << 10) | (16 * v13)) + 8);
    swift_unknownObjectRetain();
    v15 = String._bridgeToObjectiveC()();
    [v14 *a5];
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10000B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10000B620;

  return sub_1000055B8();
}

uint64_t sub_10000B620()
{

  return _swift_task_switch(sub_10000B71C, 0, 0);
}

uint64_t sub_10000B71C()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B7B4(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  a7(a6, v11);
}

void sub_10000B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
    v9 = Strong;
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
    sub_10000B8E8((v8 + 8), a3, a4, a1);
    os_unfair_lock_unlock(v8);
  }
}

void sub_10000B8E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a3;
  v40 = type metadata accessor for TargetDevice();
  __chkstk_darwin(v40);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = v6;
  v38 = (v6 + 8);
  v39 = v6 + 16;

  v15 = 0;
  v34 = a4;
  v29 = v9 + 64;
  v30 = v9;
  v28 = v14;
  while (v13)
  {
LABEL_10:
    v36 = *(*(v9 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))) + 8);
    v37 = v13;
    swift_unknownObjectRetain();
    v35 = String._bridgeToObjectiveC()();
    v19 = *(a4 + 16);
    if (v19)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_1000284EC(0, v19, 0);
      v20 = v43;
      v21 = a4 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v22 = *(v31 + 72);
      v41 = *(v31 + 16);
      v42 = v22;
      do
      {
        v23 = v40;
        v41(v8, v21, v40);
        v24 = TargetDevice.dictionaryRepresentation.getter();
        (*v38)(v8, v23);
        v43 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_1000284EC((v25 > 1), v26 + 1, 1);
          v20 = v43;
        }

        v20[2] = v26 + 1;
        v20[v26 + 4] = v24;
        v21 += v42;
        --v19;
      }

      while (v19);
      v10 = v29;
      v9 = v30;
      v14 = v28;
    }

    v13 = (v37 - 1) & v37;
    sub_1000061F4(&qword_100049E90, &qword_100038860);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = v35;
    [v36 session:v35 didDiscoverDevices:isa];
    swift_unknownObjectRelease();

    a4 = v34;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10000BCB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100004274(v6, qword_10004C070);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100031FE8(0xD000000000000033, 0x8000000100039550, &v10);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100031FE8(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s sessionIdentifier: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {

    sub_10001916C(a1, a2);
  }
}

void sub_10000BF04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100049C10 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004274(v4, qword_10004C070);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100031FE8(0xD000000000000025, 0x8000000100039520, &v22);
    *(v7 + 12) = 2080;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100031FE8(v8, v9, &v22);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s status: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
  v3 = *(v11 + 8);
  v12 = 1 << *(v3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v3 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v3 + 56) + ((v17 << 10) | (16 * v18)) + 8);
      swift_unknownObjectRetain();
      v20 = String._bridgeToObjectiveC()();
      [v19 session:v20 didUpdateStatus:a2];
      swift_unknownObjectRelease();

      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v3 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock(v11);
}

void sub_10000C1AC(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100049C10 != -1)
  {
LABEL_17:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004274(v9, qword_10004C070);
  (*(v6 + 16))(v8, a2, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v29 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v28 = v3;
    v14 = v13;
    v30 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100031FE8(0xD000000000000045, 0x80000001000396A0, &v30);
    *(v14 + 12) = 2080;
    sub_100010690(&qword_100049E98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_100031FE8(v15, v17, &v30);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s projectedEndDate: %s", v14, 0x16u);
    swift_arrayDestroy();

    v3 = v28;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  a2 = v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
  v5 = *(a2 + 8);
  v6 = v5 + 64;
  v19 = 1 << *(v5 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v5 + 64);
  v3 = (v19 + 63) >> 6;

  v22 = 0;
  if (v21)
  {
    while (1)
    {
      v23 = v22;
LABEL_13:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = *(*(v5 + 56) + ((v23 << 10) | (16 * v24)) + 8);
      swift_unknownObjectRetain();
      v8 = String._bridgeToObjectiveC()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v25 session:v8 didUpdateCollectionProgress:isa];
      swift_unknownObjectRelease();

      if (!v21)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v23 >= v3)
    {
      break;
    }

    v21 = *(v6 + 8 * v23);
    ++v22;
    if (v21)
    {
      v22 = v23;
      goto LABEL_13;
    }
  }

  os_unfair_lock_unlock(a2);
}

void sub_10000C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100049C10 != -1)
  {
LABEL_18:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100004274(v5, qword_10004C070);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_100031FE8(0xD00000000000003ALL, 0x8000000100039460, &v24);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    *(v8 + 22) = 2048;
    *(v8 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s completedBytes: %lld totalBytes: %lld", v8, 0x20u);
    sub_10000D154(v9);
  }

  v10 = v4 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
  v11 = *(v10 + 8);
  v4 = v11 + 64;
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v11 + 56) + ((v17 << 10) | (16 * v18)) + 8);
      swift_unknownObjectRetain();
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      [v19 session:v20 didUpdateCompressionProgress:a2 totalBytes:a3 deviceID:v21];
      swift_unknownObjectRelease();

      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v4 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock(v10);
}

void sub_10000C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100049C10 != -1)
  {
LABEL_18:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100004274(v5, qword_10004C070);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_100031FE8(0xD000000000000038, 0x8000000100039420, &v24);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    *(v8 + 22) = 2048;
    *(v8 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s completedBytes: %lld totalBytes: %lld", v8, 0x20u);
    sub_10000D154(v9);
  }

  v10 = v4 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
  v11 = *(v10 + 8);
  v4 = v11 + 64;
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v11 + 56) + ((v17 << 10) | (16 * v18)) + 8);
      swift_unknownObjectRetain();
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      [v19 session:v20 didUpdateUploadProgress:a2 totalBytes:a3 deviceID:v21];
      swift_unknownObjectRelease();

      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v4 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock(v10);
}

void sub_10000CAB0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v8 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100004274(v11, qword_10004C070);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100031FE8(0xD000000000000031, 0x80000001000394A0, &v25);
    *(v14 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 14) = v17;
    *v15 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s error: %@", v14, 0x16u);
    sub_100010EB8(v15, &qword_100049E70, &qword_100038FA0);

    sub_10000D154(v16);

    LOBYTE(a3) = v24;
  }

  else
  {
  }

  v19 = &v4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections];
  os_unfair_lock_lock(&v4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections]);
  sub_10000CDE4(v19 + 1, a1, a2);
  os_unfair_lock_unlock(v19);
  if (a2)
  {
    swift_errorRetain();
    sub_100004D48(a2, 0xD000000000000031, 0x80000001000394A0);
  }

  if (a3)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v4;
    v22 = v4;
    sub_1000155B0(0, 0, v10, &unk_100038840, v21);
  }
}

void sub_10000CDE4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v16 = v4;

  v10 = 0;
  v15 = a3;
  while (v8)
  {
LABEL_10:
    v13 = *(*(v16 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))) + 8);
    swift_unknownObjectRetain();
    v14 = String._bridgeToObjectiveC()();
    if (a3)
    {
      a3 = _convertErrorToNSError(_:)();
    }

    v8 &= v8 - 1;
    [v13 session:v14 didEndWithError:a3];

    v11 = String._bridgeToObjectiveC()();
    [v13 sessionEndedWithSessionID:v11];
    swift_unknownObjectRelease();

    a3 = v15;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10000CF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CFEC;

  return sub_1000055B8();
}

uint64_t sub_10000CFEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100010334();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10000D154(void *a1)
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

uint64_t sub_10000D1A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010F58;

  return sub_10000CF5C();
}

uint64_t sub_10000D268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D2CC(void *a1)
{
  v3 = sub_1000061F4(&qword_100049EE0, &qword_100038918);
  __chkstk_darwin(v3 - 8);
  v5 = &v92 - v4;
  v6 = type metadata accessor for MachService();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v92 - v12;
  __chkstk_darwin(v11);
  v15 = &v92 - v14;
  v16 = [a1 serviceName];
  if (!v16)
  {
    goto LABEL_4;
  }

  v99 = v15;
  v100 = v7;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = v100;

  MachService.init(rawValue:)();
  if ((*(v21 + 48))(v5, 1, v6) == 1)
  {

    sub_100010EB8(v5, &qword_100049EE0, &qword_100038918);
LABEL_4:
    if (qword_100049C20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100004274(v22, qword_10004C0A0);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&aBlock = v27;
      *v26 = 136315138;
      v28 = [v23 serviceName];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v39 = sub_100031FE8(v30, v32, &aBlock);

      *(v26 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v24, v25, "Client connected with unknown service name: %s", v26, 0xCu);
      sub_10000D154(v27);
    }

    return 0;
  }

  v98 = 0xD000000000000029;
  v33 = v99;
  (*(v21 + 32))(v99, v5, v6);
  v96 = *(v21 + 16);
  v96(v13, v33, v6);
  v34 = *(v21 + 88);
  v35 = v34(v13, v6);
  v97 = v6;
  if (v35 == enum case for MachService.clientApp(_:))
  {
    v94 = enum case for MachService.clientApp(_:);
    v95 = v21 + 16;
    v36 = "v16@?0@NSError8";
  }

  else
  {
    if (v35 != enum case for MachService.bugSessionStatus(_:))
    {
      v56 = *(v100 + 8);
      v57 = v97;
      v56(v99, v97);

      v56(v13, v57);
      return 0;
    }

    v94 = enum case for MachService.clientApp(_:);
    v95 = v21 + 16;
    v36 = "et:completionHandler:)";
    v98 = 0xD000000000000035;
  }

  v37 = String._bridgeToObjectiveC()();

  v38 = [a1 valueForEntitlement:v37];

  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  aBlock = v106;
  v103 = v107;
  if (!*(&v107 + 1))
  {

    sub_100010EB8(&aBlock, &qword_100049EE8, &qword_100038920);
    goto LABEL_28;
  }

  if (!swift_dynamicCast() || (v101 & 1) == 0)
  {

LABEL_28:
    v48 = v100;
    if (qword_100049C20 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100004274(v49, qword_10004C0A0);
    v50 = a1;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&aBlock = v54;
      *v53 = 67109378;
      *(v53 + 4) = [v50 processIdentifier];

      *(v53 + 8) = 2080;
      v55 = sub_100031FE8(v98, v36 | 0x8000000000000000, &aBlock);

      *(v53 + 10) = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "Rejecting connection from PID %d without %s entitlement", v53, 0x12u);
      sub_10000D154(v54);
    }

    else
    {
    }

    (*(v48 + 8))(v99, v97);
    return 0;
  }

  v93 = v1;

  if (qword_100049C20 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100004274(v40, qword_10004C0A0);

  v98 = a1;
  v92 = v41;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 67109378;
    v46 = v98;
    *(v44 + 4) = [v98 processIdentifier];

    *(v44 + 8) = 2080;
    v47 = sub_100031FE8(v18, v20, &aBlock);

    *(v44 + 10) = v47;
    _os_log_impl(&_mh_execute_header, v42, v43, "New connection from PID %d on mach service %s", v44, 0x12u);
    sub_10000D154(v45);
  }

  else
  {
  }

  v59 = v93;
  v60 = v97;
  v96(v10, v99, v97);
  v61 = v34(v10, v60);
  if (v61 != v94)
  {
    if (v61 == enum case for MachService.bugSessionStatus(_:))
    {
      v75 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15EnhancedLogging28BugSessionStatusXPCInterface_];
      v76 = v98;
      [v98 setExportedInterface:v75];

      [v76 setExportedObject:v59];
      goto LABEL_42;
    }

    v89 = *(v100 + 8);
    v89(v99, v60);
    v89(v10, v60);
    return 0;
  }

  v62 = objc_opt_self();
  v63 = [v62 interfaceWithProtocol:&OBJC_PROTOCOL____TtP15EnhancedLogging19ServiceXPCInterface_];
  v64 = v98;
  [v98 setExportedInterface:v63];

  [v64 setExportedObject:v59];
  v65 = [v62 interfaceWithProtocol:&OBJC_PROTOCOL____TtP15EnhancedLogging18ClientXPCInterface_];
  [v64 setRemoteObjectInterface:v65];

  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  v104 = sub_100010D7C;
  v105 = v66;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v103 = sub_100005B94;
  *(&v103 + 1) = &unk_100045970;
  v67 = _Block_copy(&aBlock);
  v68 = v64;

  v69 = [v68 remoteObjectProxyWithErrorHandler:v67];
  _Block_release(v67);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000D268(&v106, &aBlock);
  sub_1000061F4(&qword_100049EF0, &qword_100038928);
  if (!swift_dynamicCast())
  {
    v85 = v68;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 67109120;
      *(v88 + 4) = [v85 processIdentifier];

      _os_log_impl(&_mh_execute_header, v86, v87, "Invalid remote proxy from PID %d", v88, 8u);
    }

    else
    {
    }

    v91 = v99;
    v90 = v100;

    sub_10000D154(&v106);
    (*(v90 + 8))(v91, v60);
    return 0;
  }

  v70 = v101;
  v71 = v59 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections;
  os_unfair_lock_lock((v59 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_clientConnections));
  v72 = [v68 processIdentifier];
  v73 = v68;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = *(v71 + 8);
  *(v71 + 8) = 0x8000000000000000;
  sub_1000253B4(v73, v70, v72, isUniquelyReferenced_nonNull_native);
  *(v71 + 8) = aBlock;
  os_unfair_lock_unlock(v71);
  swift_unknownObjectRelease();
  sub_10000D154(&v106);
LABEL_42:
  v77 = swift_allocObject();
  v78 = v98;
  *(v77 + 16) = v98;
  v104 = sub_100010CDC;
  v105 = v77;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v103 = sub_100005D28;
  *(&v103 + 1) = &unk_1000458D0;
  v79 = _Block_copy(&aBlock);
  v80 = v78;

  [v80 setInterruptionHandler:v79];
  _Block_release(v79);
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v80;
  v104 = sub_100010D3C;
  v105 = v82;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v103 = sub_100005D28;
  *(&v103 + 1) = &unk_100045920;
  v83 = _Block_copy(&aBlock);
  v84 = v80;

  [v84 setInvalidationHandler:v83];
  _Block_release(v83);
  sub_100005F40();
  [v84 activate];
  (*(v100 + 8))(v99, v60);
  return 1;
}

uint64_t sub_10000E074(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

void sub_10000E110(uint64_t a1, uint64_t a2, NSString a3, char *a4, const void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v50 = a5;
  _Block_copy(a5);
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004274(v9, qword_10004C070);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100031FE8(0xD000000000000036, 0x8000000100039850, &aBlock);
    *(v12 + 12) = 2080;
    v13 = Dictionary.description.getter();
    v15 = sub_100031FE8(v13, v14, &aBlock);

    *(v12 + 14) = v15;
    *(v12 + 22) = 2080;
    if (a3)
    {
      v16 = a2;
    }

    else
    {
      v16 = 7104878;
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_100031FE8(v16, v17, &aBlock);

    *(v12 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s parameters: %s ticket: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  v19 = &a4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID];
  swift_beginAccess();
  v20 = *(v19 + 1);
  v57 = *v19;
  v58 = v20;
  v59 = *(v19 + 4);
  v21 = v59;
  v60 = v57;
  v61 = v20;
  sub_100010B78(&v60, &aBlock);
  v22 = v21;
  sub_100010BD4(&v61, &aBlock, &qword_100049ED0, &unk_100038DA0);
  sub_100022D9C();
  v24 = v23;
  sub_100010C3C(&v60);
  sub_100010EB8(&v61, &qword_100049ED0, &unk_100038DA0);

  if (v24)
  {

LABEL_14:
    v25 = a4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = v29;
      *v28 = 136315138;
      v30 = *(v19 + 1);
      aBlock = *v19;
      v54 = v30;
      v55 = *(v19 + 4);
      v31 = v55;
      v32 = *(v19 + 1);
      v62 = aBlock;
      v63[0] = v32;
      sub_100010B78(&v62, v51);
      v33 = v31;
      sub_100010BD4(v63, v51, &qword_100049ED0, &unk_100038DA0);
      v34 = sub_100022D9C();
      v36 = v35;
      sub_100010C3C(&v62);
      sub_100010EB8(v63, &qword_100049ED0, &unk_100038DA0);

      if (v36)
      {
        v37 = v34;
      }

      else
      {
        v37 = 7104878;
      }

      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v39 = sub_100031FE8(v37, v38, &v52);

      *(v28 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "Already have an active session with ID: %s", v28, 0xCu);
      sub_10000D154(v29);
    }

    v40 = *(v50 + 2);
LABEL_23:
    v40();

    return;
  }

  if (*&a4[OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller])
  {
    goto LABEL_14;
  }

  v41.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v42 = [objc_allocWithZone(EnhancedLoggingStateConfigurator) initWithParameters:v41.super.isa ticket:a3];

  if (!v42)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to configure session; could not parse parameters", v48, 2u);
    }

    v40 = *(v50 + 2);
    goto LABEL_23;
  }

  v43 = swift_allocObject();
  v43[2] = sub_100010B70;
  v43[3] = v8;
  v43[4] = a4;
  v55 = sub_100010CD0;
  v56 = v43;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v54 = sub_1000067A0;
  *(&v54 + 1) = &unk_100045880;
  v44 = _Block_copy(&aBlock);
  v45 = a4;

  [v42 startWithCompletionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_10000E76C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v3 = [objc_opt_self() sharedManager];
    v4 = [v3 snapshot];

    [v4 totalDuration];
    v6 = v5;

    v7 = v6 > 0.001;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 16);

  return v8(a2, v7);
}

void sub_10000E838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v8 = sub_10002BD08();
    v9 = v8[2];
    if (v9)
    {
      v21 = a2;
      v25 = _swiftEmptyArrayStorage;
      sub_1000284EC(0, v9, 0);
      v10 = v25;
      v12 = *(v5 + 16);
      v11 = v5 + 16;
      v13 = *(v11 + 64);
      v20 = v8;
      v14 = v8 + ((v13 + 32) & ~v13);
      v22 = *(v11 + 56);
      v23 = v12;
      v24 = v11;
      v15 = (v11 - 8);
      do
      {
        v23(v7, v14, v4);
        v16 = TargetDevice.dictionaryRepresentation.getter();
        (*v15)(v7, v4);
        v25 = v10;
        v18 = v10[2];
        v17 = v10[3];
        if (v18 >= v17 >> 1)
        {
          sub_1000284EC((v17 > 1), v18 + 1, 1);
          v10 = v25;
        }

        v10[2] = v18 + 1;
        v10[v18 + 4] = v16;
        v14 += v22;
        --v9;
      }

      while (v9);

      a2 = v21;
    }

    else
    {
    }
  }

  sub_1000061F4(&qword_100049E90, &qword_100038860);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10000EA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollConsentItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  if (v8)
  {
    v9 = *(v8 + 56);
    v10 = *(v9 + 16);
    if (v10)
    {
      v22 = a2;
      v26 = _swiftEmptyArrayStorage;

      sub_10002852C(0, v10, 0);
      v11 = v26;
      v13 = *(v5 + 16);
      v12 = v5 + 16;
      v14 = *(v12 + 64);
      v21 = v9;
      v15 = v9 + ((v14 + 32) & ~v14);
      v23 = *(v12 + 56);
      v24 = v13;
      v25 = v12;
      v16 = (v12 - 8);
      do
      {
        v24(v7, v15, v4);
        v17 = EnrollConsentItem.dictionaryRepresentation.getter();
        (*v16)(v7, v4);
        v26 = v11;
        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          sub_10002852C((v18 > 1), v19 + 1, 1);
          v11 = v26;
        }

        v11[2] = v19 + 1;
        v11[v19 + 4] = v17;
        v15 += v23;
        --v10;
      }

      while (v10);

      a2 = v22;
    }
  }

  sub_1000061F4(&qword_100049EC0, &qword_1000388F8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10000EC84(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v57 = type metadata accessor for UploadConsentItem();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 64);
    sub_1000061F4(&qword_100049EB0, &qword_1000388E8);
    v8 = static _DictionaryStorage.copy(original:)();
    v9 = v8;
    v10 = *(v7 + 64);
    v42 = v7 + 64;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    v14 = (v11 + 63) >> 6;
    v55 = (v3 + 8);
    v56 = v3 + 16;
    v48 = v8 + 64;

    v15 = 0;
    v46 = v9;
    v47 = v3;
    v44 = v14;
    v45 = v7;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_11:
        v19 = v16 | (v15 << 6);
        v20 = *(v7 + 56);
        v21 = (*(v7 + 48) + 16 * v19);
        v22 = v21[1];
        v54 = *v21;
        v23 = *(v20 + 8 * v19);
        v24 = *(v23 + 16);
        if (v24)
        {
          v51 = v19;
          v52 = v13;
          v53 = v15;
          v58 = _swiftEmptyArrayStorage;
          v50 = v22;

          sub_1000284EC(0, v24, 0);
          v25 = v23;
          v26 = v58;
          v27 = *(v3 + 80);
          v49 = v25;
          v28 = v25 + ((v27 + 32) & ~v27);
          v29 = *(v3 + 72);
          v30 = *(v3 + 16);
          do
          {
            v31 = v57;
            v30(v5, v28, v57);
            v32 = UploadConsentItem.dictionaryRepresentation.getter();
            (*v55)(v5, v31);
            v58 = v26;
            v34 = v26[2];
            v33 = v26[3];
            if (v34 >= v33 >> 1)
            {
              sub_1000284EC((v33 > 1), v34 + 1, 1);
              v26 = v58;
            }

            v26[2] = v34 + 1;
            v26[v34 + 4] = v32;
            v28 += v29;
            --v24;
          }

          while (v24);

          v9 = v46;
          v3 = v47;
          v14 = v44;
          v7 = v45;
          v13 = v52;
          v15 = v53;
          v35 = v50;
          v19 = v51;
        }

        else
        {

          v26 = _swiftEmptyArrayStorage;
        }

        *(v48 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v36 = (v9[6] + 16 * v19);
        *v36 = v54;
        v36[1] = v35;
        *(v9[7] + 8 * v19) = v26;
        v37 = v9[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          break;
        }

        v9[2] = v39;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v17 = v15;
      while (1)
      {
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v15 >= v14)
        {

          goto LABEL_23;
        }

        v18 = *(v42 + 8 * v15);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_10002AD68(_swiftEmptyArrayStorage);
LABEL_23:
    sub_1000061F4(&qword_100049EB8, &qword_1000388F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(v43 + 16))(v43, isa);
  }
}

uint64_t sub_10000F03C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[2] = a3;
  v33 = a5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100004274(v14, qword_10004C070);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32[0] = v11;
    v32[1] = a4;
    v18 = a6;
    v19 = v17;
    v34[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100031FE8(0xD000000000000034, 0x80000001000397F0, v34);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100031FE8(a1, a2, v34);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s sessionID: %s", v19, 0x16u);
    swift_arrayDestroy();

    a6 = v18;
    v11 = v32[0];
  }

  if (*(v33 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {

    sub_100022B64();
    sub_10001A9AC(v13);
    Data.write(to:options:)();
    (*(v11 + 8))(v13, v10);
    (*(a6 + 16))(a6, 0);
  }

  else
  {
    v20 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, enum case for SessionError.noSession(_:), v20);
    swift_willThrow();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = a6;
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v25 = 136315394;
      *(v25 + 4) = sub_100031FE8(0xD000000000000034, 0x80000001000397F0, v34);
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s failed: %@", v25, 0x16u);
      sub_100010EB8(v26, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v28);
      a6 = v27;
    }

    swift_errorRetain();
    v30 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, v30);

    sub_100004D48(v21, 0xD000000000000034, 0x80000001000397F0);
  }
}

uint64_t sub_10000F560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004274(v9, qword_10004C070);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100031FE8(0xD00000000000002BLL, 0x80000001000396F0, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000D154(v13);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v16 = v3;

  sub_1000155B0(0, 0, v8, &unk_1000388A0, v15);
}

uint64_t sub_10000F79C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004274(v9, qword_10004C070);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100031FE8(0xD00000000000002ELL, 0x8000000100039670, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000D154(v13);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v16 = v3;

  sub_1000155B0(0, 0, v8, &unk_100038890, v15);
}

uint64_t sub_10000F9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100004274(v9, qword_10004C070);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100031FE8(0xD000000000000023, 0x8000000100039610, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000D154(v13);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v16 = v3;

  sub_1000155B0(0, 0, v8, &unk_100038870, v15);
}

uint64_t sub_10000FC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100004274(v8, qword_10004C070);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100031FE8(0xD000000000000032, 0x80000001000395D0, v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_10000D154(v12);
  }

  if (*(a3 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10001023C;
    *(v15 + 24) = v14;
    v16 = objc_opt_self();

    v17 = [v16 sharedInstance];
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_100010280;
    v19[4] = v15;
    v25[4] = sub_100010328;
    v25[5] = v19;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_10000D0E0;
    v25[3] = &unk_1000455D8;
    v20 = _Block_copy(v25);

    [v17 discoverDevicesWithCompletion:v20];
    _Block_release(v20);

    (*(a4 + 16))(a4, 0);
  }

  else
  {
    v22 = type metadata accessor for SessionError();
    sub_100010690(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for SessionError.noSession(_:), v22);
    v24 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, v24);
  }
}

void sub_10001003C()
{
  v1 = v0;
  if (qword_100049C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C070);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100031FE8(0xD00000000000001FLL, 0x8000000100039590, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000D154(v6);
  }

  if (*(v1 + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v7 = [objc_opt_self() sharedInstance];
    [v7 stopDiscovery];
  }
}

uint64_t sub_1000101EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010248()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010288()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000102D8(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

unint64_t sub_100010334()
{
  result = qword_100049E88;
  if (!qword_100049E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100049E88);
  }

  return result;
}

uint64_t sub_100010380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000103CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100010F58;

  return sub_10000B58C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010494()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000104E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100010F58;

  return sub_10000B05C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000105C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100010F58;

  return sub_10000A5DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000106E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CFEC;

  return sub_100009E48(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000107F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100010F58;

  return sub_1000094C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000108C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100010918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100010F58;

  return sub_100008668(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000109F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100010A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100010F58;

  return sub_1000078D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100010B10(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100010B64(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100010BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000061F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010C90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010CFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010D44()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100010D84(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100010DC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010F58;

  return sub_100005528();
}

uint64_t sub_100010EB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000061F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100010FFC()
{
  v0 = type metadata accessor for Logger();
  sub_100004210(v0, qword_10004C088);
  sub_100004274(v0, qword_10004C088);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100011094(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100004210(v5, a2);
  sub_100004274(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001110C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10002552C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10002393C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100025C70();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100024EE4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

Swift::Int sub_1000112E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011354(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_100011398()
{
  result = [objc_allocWithZone(type metadata accessor for HomeManager()) init];
  qword_10004C0B8 = result;
  return result;
}

char *sub_1000113C8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeManageDelegateQueue;
  *&v0[v2] = [objc_allocWithZone(NSOperationQueue) init];
  v3 = OBJC_IVAR____TtC16enhancedloggingd11HomeManager__residentDeviceCache;
  *&v0[v3] = sub_10002AE6C(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16enhancedloggingd11HomeManager_statusSemaphore;
  *&v0[v4] = dispatch_semaphore_create(0);
  v0[OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus] = 0;
  sub_10001256C(0, &qword_10004A018, HMMutableHomeManagerConfiguration_ptr);
  v5 = [swift_getObjCClassFromMetadata() defaultConfiguration];
  [v5 setOptions:2049];
  [v5 setCachePolicy:1];
  [v5 setDiscretionary:1];
  [v5 setDelegateQueue:*&v0[v2]];
  v6 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v5];
  *&v0[OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeManager] = v6;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = *&v7[OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeManager];
  v9 = v7;
  [v8 setDelegate:v9];
  sub_100011550();

  return v9;
}

uint64_t sub_100011550()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = ObjectType;
  v7 = v0;
  sub_100011ED0(0, 0, v4, &unk_1000389E0, v6);
}

void *sub_100011720(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16enhancedloggingd11HomeManager__residentDeviceCache;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16) && (v10 = sub_10002393C(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = [*(v2 + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeManager) homes];
    sub_10001256C(0, &qword_10004A028, HMHome_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v7;
    v32 = v2;
    v29 = v4;
    v30 = v8;
    v34 = a1;
    v28 = v5;
    if (v15 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      v33 = v15 & 0xC000000000000001;
      while (1)
      {
        if (v33)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = [v18 residentDevices];
        sub_10001256C(0, &unk_10004A030, HMResidentDevice_ptr);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v23);
        *(&v27 - 2) = v34;
        v12 = sub_100011B64(sub_1000125B4, (&v27 - 4), v22);

        if (v12)
        {

          v24 = v31;
          (*(v28 + 16))(v31, v34, v29);
          swift_beginAccess();
          v25 = v12;
          sub_10001110C(v12, v24);
          swift_endAccess();

          return v12;
        }

        ++v17;
        if (v20 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    return 0;
  }

  return v12;
}

uint64_t sub_100011A58(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 IDSIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void *sub_100011B64(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_100011C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100011D14;

  return static Task<>.sleep(nanoseconds:)(4000000000);
}

uint64_t sub_100011D14()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100011E44, 0, 0);
  }
}

uint64_t sub_100011E44()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus) != 1)
  {
    *(v1 + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus) = 2;
    OS_dispatch_semaphore.signal()();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100011ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100012494(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100012504(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100012504(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012504(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t getEnumTagSinglePayload for BugSession.UploadStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BugSession.UploadStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100012340()
{
  result = qword_10004A010;
  if (!qword_10004A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A010);
  }

  return result;
}

uint64_t sub_100012394()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000123D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CFEC;

  return sub_100011C78(a1, v4, v5, v6);
}

uint64_t sub_100012494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012504(uint64_t a1)
{
  v2 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001256C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1000125D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithClientIdentifier:v3];

  if (v4)
  {
    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v4;

    v1 = 0;
LABEL_4:
    v6 = v1;
    return;
  }

  __break(1u);
}

void sub_10001267C(void *a1, int a2, int a3)
{
  LODWORD(v167) = a3;
  v156 = a2;
  v155 = a1;
  v3 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v153 = v145 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v170 = v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v172 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v171 = type metadata accessor for LocalizedStringResource();
  v163 = *(v171 - 8);
  v12 = __chkstk_darwin(v171);
  v151 = v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v154 = v145 - v15;
  v16 = __chkstk_darwin(v14);
  v150 = v145 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v145 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v145 - v22;
  v24 = __chkstk_darwin(v21);
  v162 = v145 - v25;
  __chkstk_darwin(v24);
  v27 = v145 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100049C08 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v145[1] = sub_100004274(v32, qword_10004C058);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v161 = v28;
  v160 = v29;
  v152 = v6;
  v157 = v20;
  if (v35)
  {
    v36 = v31;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v175 = v38;
    *v37 = 136315394;
    v173 = v155;
    v174 = v156 & 1;
    sub_1000061F4(&qword_10004A128, &qword_100038A48);
    v39 = String.init<A>(reflecting:)();
    v41 = sub_100031FE8(v39, v40, &v175);
    v29 = v160;

    *(v37 + 4) = v41;
    v28 = v161;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v167 & 1;
    _os_log_impl(&_mh_execute_header, v33, v34, "Posting follow up item with frequency: %s askFollowUpQuestion: %{BOOL}d", v37, 0x12u);
    sub_10000D154(v38);

    v31 = v36;
  }

  if (qword_100049C38 != -1)
  {
    swift_once();
  }

  v42 = sub_100004274(v28, qword_10004C0C0);
  v43 = *(v29 + 16);
  v159 = v29 + 16;
  v158 = v43;
  v43(v31, v42, v28);
  v44 = [objc_allocWithZone(FLFollowUpItem) init];
  v45 = String._bridgeToObjectiveC()();
  [v44 setUniqueIdentifier:v45];

  String.LocalizationValue.init(stringLiteral:)();
  if (qword_100049BF0 != -1)
  {
    swift_once();
  }

  v46 = sub_100004274(v169, qword_10004C010);
  v165 = *(v172 + 16);
  v166 = v46;
  v172 += 16;
  v165(v168);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v47 = objc_opt_self();
  LocalizedStringResource.key.getter();
  v48 = String._bridgeToObjectiveC()();

  v167 = v47;
  v49 = [v47 localizedStringForKey:v48];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = LocalizedStringResource.key.getter();
  v55 = v163;
  if (v50 == v53 && v52 == v54)
  {

    v56 = v171;
LABEL_13:

    (*(v55 + 16))(v162, v27, v56);
    String.init(localized:)();
    goto LABEL_14;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v56 = v171;
  if (v57)
  {
    goto LABEL_13;
  }

LABEL_14:
  v164 = *(v55 + 8);
  v164(v27, v56);
  v58 = String._bridgeToObjectiveC()();

  [v44 setTitle:v58];

  String.LocalizationValue.init(stringLiteral:)();
  (v165)(v168, v166, v169);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.key.getter();
  v59 = String._bridgeToObjectiveC()();

  v60 = [v167 localizedStringForKey:v59];

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  if (v61 == LocalizedStringResource.key.getter() && v63 == v64)
  {

    v65 = v171;
LABEL_18:

    (*(v163 + 16))(v162, v23, v65);
    String.init(localized:)();
    goto LABEL_19;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v65 = v171;
  if (v66)
  {
    goto LABEL_18;
  }

LABEL_19:
  v164(v23, v65);
  v67 = String._bridgeToObjectiveC()();

  [v44 setInformativeText:v67];

  [v44 setDisplayStyle:1];
  String.LocalizationValue.init(stringLiteral:)();
  (v165)(v168, v166, v169);
  static Locale.current.getter();
  v68 = v157;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.key.getter();
  v69 = String._bridgeToObjectiveC()();

  v70 = [v167 localizedStringForKey:v69];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (v71 == LocalizedStringResource.key.getter() && v73 == v74)
  {

    v75 = v161;
    v76 = v171;
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v75 = v161;
    v76 = v171;
    if ((v77 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  (*(v163 + 16))(v162, v68, v76);
  String.init(localized:)();
LABEL_24:
  v164(v68, v76);
  sub_1000061F4(&qword_10004A110, &qword_100038A38);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1000389F0;
  v79 = v153;
  v157 = v31;
  v158(v153, v31, v75);
  v80 = v160;
  v81 = *(v160 + 56);
  v149 = v160 + 56;
  v147 = v81;
  v81(v79, 0, 1, v75);
  v82 = String._bridgeToObjectiveC()();
  v83 = *(v80 + 48);
  v148 = v80 + 48;
  v146 = v83;
  if (v83(v79, 1, v75) == 1)
  {
    v85 = 0;
  }

  else
  {
    v86 = v79;
    URL._bridgeToObjectiveC()(v84);
    v85 = v87;
    (*(v80 + 8))(v86, v75);
  }

  v88 = v154;
  v154 = objc_opt_self();
  v89 = [v154 actionWithLabel:v82 url:v85];

  if (!v89)
  {
    __break(1u);
  }

  *(v78 + 32) = v89;
  sub_100013FD8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 setActions:isa];

  v91 = [objc_allocWithZone(FLFollowUpNotification) init];
  String.LocalizationValue.init(stringLiteral:)();
  (v165)(v168, v166, v169);
  static Locale.current.getter();
  v92 = v150;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.key.getter();
  v93 = String._bridgeToObjectiveC()();

  v94 = [v167 localizedStringForKey:v93];

  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  if (v95 == LocalizedStringResource.key.getter() && v97 == v98)
  {

    v99 = v171;
LABEL_32:

    (*(v163 + 16))(v162, v92, v99);
    String.init(localized:)();
    goto LABEL_33;
  }

  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v99 = v171;
  if (v100)
  {
    goto LABEL_32;
  }

LABEL_33:
  v164(v92, v99);
  v101 = String._bridgeToObjectiveC()();

  [v91 setTitle:v101];

  String.LocalizationValue.init(stringLiteral:)();
  (v165)(v168, v166, v169);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.key.getter();
  v102 = String._bridgeToObjectiveC()();

  v103 = [v167 localizedStringForKey:v102];

  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v105;

  if (v104 == LocalizedStringResource.key.getter() && v106 == v107)
  {
    v108 = v44;

    v109 = v171;
LABEL_37:

    (*(v163 + 16))(v162, v88, v109);
    String.init(localized:)();
    goto LABEL_38;
  }

  v108 = v44;
  v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v109 = v171;
  if (v110)
  {
    goto LABEL_37;
  }

LABEL_38:
  v164(v88, v109);
  v111 = String._bridgeToObjectiveC()();

  [v91 setInformativeText:v111];

  String.LocalizationValue.init(stringLiteral:)();
  (v165)(v168, v166, v169);
  static Locale.current.getter();
  v112 = v151;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.key.getter();
  v113 = String._bridgeToObjectiveC()();

  v114 = [v167 localizedStringForKey:v113];

  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;

  if (v115 == LocalizedStringResource.key.getter() && v117 == v118)
  {

    v119 = v161;
    v120 = v171;
  }

  else
  {
    v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v119 = v161;
    v120 = v171;
    if ((v121 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  (*(v163 + 16))(v162, v112, v120);
  String.init(localized:)();
LABEL_43:
  v164(v112, v120);
  v122 = v152;
  v158(v152, v157, v119);
  v147(v122, 0, 1, v119);
  v123 = String._bridgeToObjectiveC()();

  if (v146(v122, 1, v119) == 1)
  {
    v125 = 0;
    v126 = v160;
  }

  else
  {
    URL._bridgeToObjectiveC()(v124);
    v125 = v127;
    v126 = v160;
    (*(v160 + 8))(v122, v119);
  }

  v128 = [v154 actionWithLabel:v123 url:v125];

  [v91 setActivateAction:v128];
  sub_1000061F4(&qword_10004A120, &qword_100038A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000387E0;
  v130 = FLNotificationOptionSpringboardAlert;
  *(inited + 32) = FLNotificationOptionSpringboardAlert;
  v131 = v130;
  sub_100014024(inited);
  swift_setDeallocating();
  sub_100014218(inited + 32);
  type metadata accessor for FLNotificationOptions(0);
  sub_100014274();
  v132 = Set._bridgeToObjectiveC()().super.isa;

  [v91 setOptions:v132];

  v133 = *&v155;
  if (v156)
  {
    v133 = 3600.0;
  }

  [v91 setFrequency:v133];
  [v91 setFirstNotificationDelay:0.0];
  [v108 setNotification:v91];
  sub_1000125D4();
  v135 = v134;
  v173 = 0;
  v136 = [v134 postFollowUpItem:v108 error:&v173];

  if (v136)
  {
    v137 = *(v126 + 8);
    v138 = v173;
    v137(v157, v119);
  }

  else
  {
    v139 = v173;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v142 = 138412290;
      swift_errorRetain();
      v144 = _swift_stdlib_bridgeErrorToNSError();
      *(v142 + 4) = v144;
      *v143 = v144;
      _os_log_impl(&_mh_execute_header, v140, v141, "Failed to post follow up item: %@", v142, 0xCu);
      sub_100013F70(v143);
    }

    else
    {
    }

    (*(v126 + 8))(v157, v119);
  }
}

void sub_100013C84()
{
  if (qword_100049C08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100004274(v0, qword_10004C058);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Clearing follow up items", v3, 2u);
  }

  sub_1000125D4();
  v5 = v4;
  v15 = 0;
  v6 = [v4 clearPendingFollowUpItems:&v15];

  v7 = v15;
  if (v6)
  {

    v8 = v7;
  }

  else
  {
    v9 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear pending follow up items: %@", v12, 0xCu);
      sub_100013F70(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100013F14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100013F70(uint64_t a1)
{
  v2 = sub_1000061F4(&qword_100049E70, &qword_100038FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013FD8()
{
  result = qword_10004A118;
  if (!qword_10004A118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004A118);
  }

  return result;
}

void *sub_100014024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000061F4(&qword_10004A130, &unk_100038A50);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100014218(uint64_t a1)
{
  type metadata accessor for FLNotificationOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100014274()
{
  result = qword_100049D88;
  if (!qword_100049D88)
  {
    type metadata accessor for FLNotificationOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049D88);
  }

  return result;
}

id sub_1000142CC()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonService()) init];
  qword_10004A138 = result;
  return result;
}

void sub_10001432C()
{
  v0 = type metadata accessor for MachService();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100049C00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004274(v4, qword_10004C040);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "enhancedloggingd launched!", v7, 2u);
  }

  v8 = *(v1 + 104);
  v8(v3, enum case for MachService.clientApp(_:), v0);
  MachService.rawValue.getter();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v10 = objc_allocWithZone(NSXPCListener);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithMachServiceName:v11];

  if (qword_100049C30 != -1)
  {
    swift_once();
  }

  v13 = qword_10004A138;
  [v12 setDelegate:qword_10004A138];
  [v12 activate];
  v8(v3, enum case for MachService.bugSessionStatus(_:), v0);
  MachService.rawValue.getter();
  v9(v3, v0);
  v14 = objc_allocWithZone(NSXPCListener);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithMachServiceName:v15];

  [v16 setDelegate:v13];
  [v16 activate];
  dispatch_main();
}

uint64_t sub_100014638()
{
  v0 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100004210(v3, qword_10004C0C0);
  v4 = sub_100004274(v3, qword_10004C0C0);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_100014768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TargetDevice.DeviceType();
  v83 = *(v4 - 8);
  v84 = v4;
  __chkstk_darwin(v4);
  v89 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000061F4(&qword_10004A1D8, &qword_100038A78);
  __chkstk_darwin(v6 - 8);
  v8 = v74 - v7;
  v9 = type metadata accessor for UUID();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TargetDevice.Status();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v88 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v74 - v16;
  __chkstk_darwin(v15);
  v90 = v74 - v18;
  v19 = 0;
  v20 = 0;
  if ([a1 status] == 1)
  {
    v21 = [a1 model];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v22;
  }

  v23 = [a1 isCurrentDevice];
  v85 = v20;
  if (v23)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = MobileGestalt_copy_serialNumber_obj();

    if (!v26)
    {
      goto LABEL_10;
    }

LABEL_9:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v29;
    v78 = v28;

    goto LABEL_11;
  }

  v27 = [a1 serialNumber];
  if (v27)
  {
    v26 = v27;
    goto LABEL_9;
  }

LABEL_10:
  v77 = 0;
  v78 = 0;
LABEL_11:
  v30 = [a1 status];
  v79 = v19;
  v80 = a2;
  if ((v30 - 1) > 3)
  {
    v31 = &enum case for TargetDevice.Status.unavailable(_:);
  }

  else
  {
    v31 = *(&off_100045A78 + (v30 - 1));
  }

  v32 = *(v12 + 104);
  v32(v17, *v31, v11);
  (*(v12 + 32))(v90, v17, v11);
  v33 = v88;
  v32(v88, enum case for TargetDevice.Status.ready(_:), v11);
  sub_1000154F0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v86 = *(v12 + 8);
  v87 = v12 + 8;
  v86(v33, v11);
  if (v92 == v91)
  {
    if (qword_100049C40 != -1)
    {
      swift_once();
    }

    isa = Set._bridgeToObjectiveC()().super.isa;
    v35 = [a1 hasCapabilities:isa];

    if ((v35 & 1) == 0)
    {
      v36 = v90;
      v86(v90, v11);
      v32(v36, enum case for TargetDevice.Status.unsupported(_:), v11);
    }
  }

  v37 = [a1 idsIdentifier];
  if (!v37)
  {
    goto LABEL_31;
  }

  v38 = v37;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v39 = v82;
  if ((*(v82 + 48))(v8, 1, v9) == 1)
  {
    sub_100015548(v8);
LABEL_31:
    v76 = 0;
    goto LABEL_32;
  }

  v40 = v81;
  (*(v39 + 32))(v81, v8, v9);
  if (qword_100049C28 != -1)
  {
    swift_once();
  }

  if (*(qword_10004C0B8 + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus))
  {
    if (*(qword_10004C0B8 + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus) != 1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    OS_dispatch_semaphore.wait()();
  }

  v41 = sub_100011720(v40);
  if (!v41)
  {
LABEL_30:
    (*(v39 + 8))(v40, v9);
    goto LABEL_31;
  }

  v42 = v41;
  v43 = [v41 status];

  (*(v39 + 8))(v40, v9);
  v76 = (v43 >> 1) & 1;
LABEL_32:
  v75 = v12;
  v44 = [a1 identifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v46;
  v82 = v45;

  v47 = [a1 idsIdentifier];
  if (v47)
  {
    v48 = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v51 = [a1 deviceType];
  if (v51 > 7)
  {
    v52 = &enum case for TargetDevice.DeviceType.unknown(_:);
  }

  else
  {
    v52 = *(&off_100045A98 + v51);
  }

  (*(v83 + 104))(v89, *v52, v84);
  v53 = [a1 deviceClass];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v55;

  v56 = [a1 productType];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74[2] = v58;
  v74[3] = v57;

  v59 = [a1 name];
  v74[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74[0] = v60;

  v61 = [a1 color];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v74[4] = v50;
  v84 = v54;
  if (v62 == 0x6E776F6E6B6E75 && v64 == 0xE700000000000000)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      v66 = [a1 color];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v67 = [a1 enclosureColor];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  if (v68 == 0x6E776F6E6B6E75 && v70 == 0xE700000000000000)
  {
  }

  else
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v71 & 1) == 0)
    {
      v72 = [a1 enclosureColor];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v73 = v90;
  (*(v75 + 16))(v88, v90, v11);
  [a1 isCurrentDevice];
  TargetDevice.init(id:idsIdentifier:serialNumber:deviceType:deviceClass:productType:userAssignedName:marketingName:deviceColor:enclosureColor:status:isLocal:isPrimaryHomeHub:)();

  return (v86)(v73, v11);
}

uint64_t sub_100015120@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

LABEL_8:
    v10 = &enum case for TargetDevice.DeviceType.mac(_:);
    goto LABEL_9;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

LABEL_19:
    v10 = &enum case for TargetDevice.DeviceType.iOS(_:);
    goto LABEL_9;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

LABEL_25:
    v10 = &enum case for TargetDevice.DeviceType.appleTV(_:);
    goto LABEL_9;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {

    goto LABEL_25;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

LABEL_31:
    v10 = &enum case for TargetDevice.DeviceType.watch(_:);
    goto LABEL_9;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    goto LABEL_31;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

LABEL_37:
    v10 = &enum case for TargetDevice.DeviceType.audioAccessory(_:);
    goto LABEL_9;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    goto LABEL_37;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    v10 = &enum case for TargetDevice.DeviceType.reality(_:);
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = &enum case for TargetDevice.DeviceType.unknown(_:);
    if (v40)
    {
      v10 = &enum case for TargetDevice.DeviceType.reality(_:);
    }
  }

LABEL_9:
  v11 = *v10;
  v12 = type metadata accessor for TargetDevice.DeviceType();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

unint64_t sub_1000154F0()
{
  result = qword_10004A1E0;
  if (!qword_10004A1E0)
  {
    type metadata accessor for TargetDevice.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A1E0);
  }

  return result;
}

uint64_t sub_100015548(uint64_t a1)
{
  v2 = sub_1000061F4(&qword_10004A1D8, &qword_100038A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000155B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010BD4(a3, v25 - v10, &qword_10004A020, &qword_100038830);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010EB8(v11, &qword_10004A020, &qword_100038830);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100010EB8(a3, &qword_10004A020, &qword_100038830);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010EB8(a3, &qword_10004A020, &qword_100038830);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000158B0()
{
  v1 = *(v0 + 48);
  if (v1 < 0xA)
  {
    return qword_100038DB8[v1];
  }

  v3 = v0;
  if (qword_100049C18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004274(v4, qword_10004C088);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = [objc_opt_self() statusToString:*(v3 + 48)];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100031FE8(v10, v12, &v14);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got unknown value for ELS status %s", v7, 0xCu);
    sub_10000D154(v8);
  }

  return 0;
}

uint64_t sub_100015A60()
{
  v1 = sub_10002B848();
  sub_1000061F4(&qword_10004A408, &qword_100038C80);
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000387E0;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC16enhancedloggingd17SessionController_currentDeviceType, v2);
  v6 = sub_100026368(v5, v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v7 = v6[2];

  if (v7)
  {
    return 1;
  }

  v9 = [objc_opt_self() currentDevice];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v9 platform];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = [objc_opt_self() sharedManager];
  v13 = [v12 snapshot];

  v14 = [v13 deviceSelection];
  if (!v14)
  {

    goto LABEL_17;
  }

  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = sub_100023880(v29), (v17 & 1) == 0))
  {

    sub_10002D5D4(v29);
LABEL_17:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_18;
  }

  sub_10000D268(*(v15 + 56) + 32 * v16, &v30);
  sub_10002D5D4(v29);

  if (!*(&v31 + 1))
  {
LABEL_18:
    sub_100010EB8(&v30, &qword_100049EE8, &qword_100038920);
    return 0;
  }

  sub_1000061F4(&qword_10004A318, &qword_100038B90);
  if (swift_dynamicCast())
  {
    v18 = v29[0];
    v19 = ELSDeviceSelectionMapSelectionKey;
    v28 = ELSDeviceSelectionMapSelectionKey;
    type metadata accessor for ELSDeviceSelectionMapKey(0);
    sub_10002D77C(&qword_100049D50, type metadata accessor for ELSDeviceSelectionMapKey, &unk_100038648);
    v20 = v19;
    AnyHashable.init<A>(_:)();
    if (*(v18 + 16) && (v21 = sub_100023880(v29), (v22 & 1) != 0))
    {
      sub_10000D268(*(v18 + 56) + 32 * v21, &v30);
      sub_10002D5D4(v29);

      type metadata accessor for ELSDeviceSelection(0);
      if (swift_dynamicCast())
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
        if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
        {

          return 1;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          return 1;
        }
      }
    }

    else
    {

      sub_10002D5D4(v29);
    }
  }

  return 0;
}

unint64_t *sub_100015EC8(uint64_t a1)
{
  v40 = type metadata accessor for TargetDevice.DeviceType();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A4CC(a1, v45);
  v5 = *(a1 + 36);
  v50[0] = 1 << *(a1 + 32);
  v50[1] = v5;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v6 = sub_10002A674(v45, v50, a1);
  sub_100010EB8(v45, &qword_10004A3F0, &qword_100038C70);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v54 = _swiftEmptyArrayStorage;
  sub_100028424(0, v6 & ~(v6 >> 63), 0);
  v7 = v54;
  result = sub_10002A4CC(a1, v46);
  if (v6 < 0)
  {
LABEL_40:
    __break(1u);
  }

  else
  {
    v35[1] = v1;
    v9 = 0;
    v10 = v49;
    v11 = v48;
    v12 = a1 + 56;
    v39 = v41 + 32;
    v36 = v47;
    v14 = v46[0];
    v13 = v46[1];
    v15 = a1;
    v37 = v6;
    v38 = a1 + 56;
    while (1)
    {
      v16 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v16)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v14 < 0 || v14 >= 1 << *(v15 + 32))
      {
        goto LABEL_32;
      }

      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v15 + 36) != v13)
      {
        goto LABEL_34;
      }

      if (v10)
      {
        goto LABEL_42;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v18 = *(*(v15 + 48) + 8 * v14);
      if (v11 >= *(v18 + 16))
      {
        goto LABEL_36;
      }

      v42 = v17;
      v43 = v13;
      v19 = v15;
      sub_100015120(*(v18 + 8 * v11 + 32), v4);
      v54 = v7;
      v20 = v4;
      v22 = v7[2];
      v21 = v7[3];
      if (v22 >= v21 >> 1)
      {
        sub_100028424((v21 > 1), v22 + 1, 1);
        v7 = v54;
      }

      v7[2] = v22 + 1;
      result = (*(v41 + 32))(v7 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v20, v40);
      if (v14 >= 1 << *(v19 + 32))
      {
        goto LABEL_37;
      }

      v12 = v38;
      if ((*(v38 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_38;
      }

      v15 = v19;
      v13 = v43;
      if (*(v19 + 36) != v43)
      {
        goto LABEL_39;
      }

      v4 = v20;
      if (++v11 == *(*(*(v19 + 48) + 8 * v14) + 16))
      {
        break;
      }

      v10 = 0;
      v23 = v37;
LABEL_19:
      v9 = v42;
      if (v42 == v23)
      {
        sub_100010B64(v14, v13, v36 & 1);
        return v7;
      }
    }

    v24 = v19;
    result = sub_10002ABAC(v14, v43, v36 & 1, v19);
    v23 = v37;
    if (v26)
    {
      goto LABEL_43;
    }

    v14 = result;
    v27 = v25;
    while (1)
    {
      v13 = *(v24 + 36);
      if (v13 != v27)
      {
        break;
      }

      v15 = v24;
      if (v14 == 1 << *(v24 + 32))
      {
        v36 = 0;
        v11 = 0;
        v10 = 1;
        v12 = v38;
        goto LABEL_19;
      }

      v28 = v4;
      sub_1000061F4(&qword_10004A3F8, &qword_100038C78);
      sub_10002D6F4(&qword_10004A400, &qword_10004A3F8, &qword_100038C78, &protocol conformance descriptor for Set<A>);
      v29 = sub_10002AA44(v44, v14, v27, 0, v24);
      v31 = *v30;

      (v29)(v44, 0);
      v32 = *(v31 + 16);

      if (v32)
      {
        v36 = 0;
        v11 = 0;
        v10 = 0;
        v13 = v27;
        v4 = v28;
        v15 = v24;
        v12 = v38;
        goto LABEL_19;
      }

      result = sub_10002ABAC(v14, v27, 0, v24);
      v14 = result;
      v27 = v33;
      v4 = v28;
      if (v34)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1000163A4(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for Date();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Session.CollectOptions();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000164C4, 0, 0);
}

uint64_t sub_1000164C4()
{
  v48 = v0;
  v1 = v0[32];
  if (*(v1 + 48) == 2)
  {
    v3 = v0[37];
    v2 = v0[38];
    v4 = v0[36];
    static Session.CollectOptions.upload.getter();
    sub_10002D77C(&qword_10004A430, &type metadata accessor for Session.CollectOptions, &protocol conformance descriptor for Session.CollectOptions);
    v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v6 = *(v3 + 8);
    v6(v2, v4);
    v7 = objc_opt_self();
    v8 = &ELSEventTypeEnrollConsentApprovedWithReview;
    if (v5)
    {
      v8 = &ELSEventTypeEnrollConsentApproved;
    }

    [v7 createLoggingEventWith:*v8];
    static Session.CollectOptions.upload.getter();
    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v6(v2, v4);
    if (v9 & 1) != 0 && (v10 = v0[38], v11 = v0[36], static Session.CollectOptions.allowCellular.getter(), v12 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v6(v10, v11), (v12))
    {
      v13 = 3;
    }

    else
    {
      v26 = v0[38];
      v27 = v0[36];
      static Session.CollectOptions.upload.getter();
      v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v6(v26, v27);
      v13 = 1;
      if (v28)
      {
        v13 = 2;
      }
    }

    v0[39] = v13;
    v29 = objc_opt_self();
    v0[40] = v29;
    v30 = [v29 sharedManager];
    v31 = [v30 snapshot];

    v32 = [v31 queue];
    if (v32)
    {
      sub_10001256C(0, &qword_10004A368, ELSQueueEntry_ptr);
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v0[41] = v33;

      if (v33 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_17;
        }
      }

      else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v34 = v0[30];
        v35 = *(v34 + 16);
        if (v35)
        {
          specialized ContiguousArray.reserveCapacity(_:)();
          v36 = *(type metadata accessor for TargetDevice() - 8);
          v37 = v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
          v38 = *(v36 + 72);
          do
          {
            sub_10001AD10(v37, v0[32], v0 + 28, v47);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v37 += v38;
            --v35;
          }

          while (v35);
        }

        v0[42] = _swiftEmptyArrayStorage;
        v39 = swift_task_alloc();
        v0[43] = v39;
        *v39 = v0;
        v39[1] = sub_100016BF8;

        return sub_100019F2C(_swiftEmptyArrayStorage);
      }
    }

    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100004274(v41, qword_10004C088);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Queue is empty or nil", v44, 2u);
    }

    v22 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    v24 = v45;
    v25 = &enum case for SessionError.emptyQueue(_:);
  }

  else
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100004274(v14, qword_10004C088);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47[0] = v18;
      *v17 = 136315138;
      v0[27] = *(v1 + 48);
      type metadata accessor for ELSStatus(0);
      v19 = String.init<A>(reflecting:)();
      v21 = sub_100031FE8(v19, v20, v47);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid status to start collecting: %s", v17, 0xCu);
      sub_10000D154(v18);
    }

    v22 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    v24 = v23;
    v25 = &enum case for SessionError.invalidStatus(_:);
  }

  (*(*(v22 - 8) + 104))(v24, *v25, v22);
  swift_willThrow();

  v46 = v0[1];

  return v46();
}

uint64_t sub_100016BF8()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000173A0, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[45] = v3;
    *v3 = v2;
    v3[1] = sub_100016D78;
    v4 = v2[39];
    v5 = v2[41];

    return sub_10001B100(v5, v4);
  }
}

uint64_t sub_100016D78()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100017420, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 376) = v4;
    *v4 = v3;
    v4[1] = sub_100016F14;
    v5 = *(v2 + 312);

    return sub_10001C1D8(3, v5, 0);
  }
}

uint64_t sub_100016F14()
{

  return _swift_task_switch(sub_100017010, 0, 0);
}

uint64_t sub_100017010()
{
  v1 = [v0[40] sharedManager];
  v0[48] = v1;
  v0[22] = sub_10001C524;
  v0[23] = 0;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10001ACA8;
  v0[21] = &unk_100045C40;
  v2 = _Block_copy(v0 + 18);
  v0[49] = v2;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1000171B4;
  v3 = swift_continuation_init();
  v0[17] = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100019108;
  v0[13] = &unk_100045C68;
  v0[14] = v3;
  [v1 transactionWithBlock:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000171B4()
{

  return _swift_task_switch(sub_100017294, 0, 0);
}

uint64_t sub_100017294()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);

  _Block_release(v1);
  v3 = [v2 endDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000C1AC(*(v0 + 256), *(v0 + 280));
      swift_unknownObjectRelease();
    }

    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = *(v0 + 264);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000173A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100017420()
{
  v33 = v0;
  v1 = *(v0 + 256);
  swift_beginAccess();
  v27 = v1;
  v2 = *(v1 + 136);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = &unk_10004A000;
  v29 = v2;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v8 << 9) | (8 * v11)));
    v13 = *&v12[v9[165]];
    if (v13)
    {
      v14 = qword_100049BF8;
      v15 = v12;
      v16 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100004274(v17, qword_10004C028);
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = v18;
        v32 = swift_slowAlloc();
        v22 = v32;
        *v21 = 136446210;
        v30 = v16;
        v24 = *&v31[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
        v23 = *&v31[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8];

        v25 = sub_100031FE8(v24, v23, &v32);
        v16 = v30;

        *(v21 + 4) = v25;
        v2 = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Canceling bug session", v21, 0xCu);
        sub_10000D154(v22);
        v18 = v31;

        v9 = &unk_10004A000;
      }

      [v16 cancel];
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  *(v27 + 136) = &_swiftEmptyDictionarySingleton;

  swift_willThrow();

  v26 = *(v28 + 8);

  v26();
}

uint64_t sub_100017720(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Session.UploadOptions();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000177E0, 0, 0);
}

uint64_t sub_1000177E0()
{
  v45 = v0;
  v1 = v0[7];
  if (v1[6] != 5)
  {
    if (qword_100049C18 != -1)
    {
LABEL_33:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100004274(v17, qword_10004C088);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      v0[5] = v1[6];
      type metadata accessor for ELSStatus(0);
      v22 = String.init<A>(reflecting:)();
      v24 = sub_100031FE8(v22, v23, v44);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid status to start upload: %s", v20, 0xCu);
      sub_10000D154(v21);
    }

    v25 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for SessionError.invalidStatus(_:), v25);
    swift_willThrow();
    goto LABEL_18;
  }

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  static Session.UploadOptions.allowCellular.getter();
  sub_10002D77C(&qword_10004A428, &type metadata accessor for Session.UploadOptions, &protocol conformance descriptor for Session.UploadOptions);
  v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v3 + 8))(v2, v4);
  v6 = objc_opt_self();
  v7 = &ELSEventTypeUploadConsentApproved;
  if (v5)
  {
    v7 = &ELSEventTypeUploadConsentApprovedCellular;
  }

  [v6 createLoggingEventWith:*v7];
  sub_100013C84();
  swift_beginAccess();
  v8 = v1[17];
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  v1 = &unk_10004A000;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_11:
      v15 = *(*(v8 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v11)))));
      v16 = *&v15[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
      if (!v16)
      {
        break;
      }

      v11 &= v11 - 1;
      [v16 commit];
      v13 = v14;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v31 = qword_100049BF8;
    v32 = v15;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100004274(v33, qword_10004C028);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136446210;
      v39 = *&v34[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
      v40 = *&v34[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8];

      v41 = sub_100031FE8(v39, v40, v44);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] called when bugSession is nil", v37, 0xCu);
      sub_10000D154(v38);
    }

    v42 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for SessionError.noBugSession(_:), v42);
    swift_willThrow();

LABEL_18:

    v27 = v0[1];

    return v27();
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  v30 = swift_task_alloc();
  v0[11] = v30;
  *v30 = v0;
  v30[1] = sub_100017E40;

  return sub_10001C1D8(6, v29, 0);
}

uint64_t sub_100017E40()
{

  return _swift_task_switch(sub_100017F3C, 0, 0);
}

uint64_t sub_100017F3C()
{
  sub_10001C65C(sub_10001A9AC, "Failed to delete consent form: %@");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017FE8()
{
  v15 = v0;
  v1 = v0[3];
  if (*(v1 + 48) == 4)
  {
    [objc_opt_self() createLoggingEventWith:ELSEventTypeEndedWithIssueDidOccur];
    sub_100013C84();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_100018324;

    return sub_10001CA04();
  }

  else
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100004274(v4, qword_10004C088);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v7 = 136315394;
      *(v7 + 4) = sub_100031FE8(0x63634F6575737369, 0xEF29286465727275, v14);
      *(v7 + 12) = 2080;
      v0[2] = *(v1 + 48);
      type metadata accessor for ELSStatus(0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_100031FE8(v8, v9, v14);

      *(v7 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s called with invalid status %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v11 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for SessionError.invalidStatus(_:), v11);
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100018324()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001843C()
{
  v34 = v0;
  v1 = v0[3];
  if (*(v1 + 48) != 4)
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100004274(v13, qword_10004C088);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_100031FE8(0xD000000000000012, 0x800000010003A0A0, v33);
      *(v16 + 12) = 2080;
      v0[2] = *(v1 + 48);
      type metadata accessor for ELSStatus(0);
      v17 = String.init<A>(reflecting:)();
      v19 = sub_100031FE8(v17, v18, v33);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s called with invalid status %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v20 = &enum case for SessionError.invalidStatus(_:);
LABEL_28:
    v30 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *v20, v30);
    swift_willThrow();
    v32 = v0[1];

    return v32(0);
  }

  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  v4 = [v3 snapshot];

  v5 = [v4 retriesRemaining];
  v0[4] = v5;

  v6 = objc_opt_self();
  if (v5 >= 1)
  {
    [v6 createLoggingEventWith:ELSEventTypeIssueDidNotOccurRetry];
    v7 = [v2 sharedManager];
    v8 = [v7 snapshot];

    v9 = [v8 queue];
    if (v9)
    {
      sub_10001256C(0, &qword_10004A368, ELSQueueEntry_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v0[5] = v10;

      if (v10 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_6;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v11 = swift_task_alloc();
        v0[6] = v11;
        *v11 = v0;
        v11[1] = sub_100018A84;

        return sub_10001CF00(v10);
      }
    }

    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100004274(v26, qword_10004C088);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Queue is empty or nil", v29, 2u);
    }

    v20 = &enum case for SessionError.emptyQueue(_:);
    goto LABEL_28;
  }

  [v6 createLoggingEventWith:ELSEventTypeEndedWithIssueDidNotOccur];
  if (qword_100049C18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100004274(v21, qword_10004C088);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "No retries remaining; advancing", v24, 2u);
  }

  v25 = swift_task_alloc();
  v0[8] = v25;
  *v25 = v0;
  v25[1] = sub_100018BCC;

  return sub_100017FC8();
}

uint64_t sub_100018A84()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100018CE8, 0, 0);
  }

  else
  {

    v3 = v2[1];
    v4 = v2[4] > 0;

    return v3(v4);
  }
}

uint64_t sub_100018BCC()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v3 + 8);
  if (v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 32) > 0;
  }

  return v4(v5);
}

uint64_t sub_100018CE8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100018D70()
{
  v36 = v0;
  if (qword_100049C18 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004274(v1, qword_10004C088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Canceling enhanced logging session", v4, 2u);
  }

  v5 = *(v0 + 40);

  [objc_opt_self() createLoggingEventWith:ELSEventTypeCancelledByUser];
  v30 = v0;
  swift_beginAccess();
  v6 = *(v5 + 136);
  v7 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  v0 = (63 - v9) >> 6;

  v11 = 0;
  v31 = v6;
  v32 = v1;
  while (v10)
  {
LABEL_13:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(*(v6 + 56) + ((v11 << 9) | (8 * v13)));
    v15 = *&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
    if (v15)
    {
      v16 = qword_100049BF8;
      v17 = v14;
      v18 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      sub_100004274(v1, qword_10004C028);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136446210;
        v24 = &v19[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
        v33 = v19;
        v34 = v18;
        v26 = *&v19[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
        v25 = *(v24 + 1);

        v27 = sub_100031FE8(v26, v25, &v35);
        v18 = v34;

        *(v22 + 4) = v27;
        v19 = v33;
        _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Canceling bug session", v22, 0xCu);
        sub_10000D154(v23);
        v6 = v31;

        v1 = v32;
      }

      [v18 cancel];
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v0)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v28 = *(v30 + 8);

  return v28();
}

uint64_t sub_100019108(uint64_t a1, void *a2)
{
  v3 = sub_10002D524((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_10001916C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[13];
  v7 = v2[14];
  v9 = v2[15];
  v8 = v2[16];

  v10 = sub_100022F8C(v6, v7, v9, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1000234C8(0, *(v10 + 16) + 1, 1, v10);
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1000234C8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 16) = v12 + 1;
  v13 = v10 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v46[4] = v10;
  sub_1000061F4(&qword_10004A3B8, &qword_100038C38);
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = String._bridgeToObjectiveC()();
  [v8 setObject:v14 forKey:v15];
  swift_endAccess();
  swift_unknownObjectRelease();

  swift_beginAccess();
  v16 = v3[9];
  v17 = v3[10];
  v18 = v3[11];
  v19 = v3[12];

  v20 = v19;
  v21 = sub_100022F8C(v16, v17, v18, v20);

  v22 = sub_100034954(v21);

  v23 = v3[13];
  v24 = v3[14];
  v25 = v3[15];
  v26 = v3[16];

  v27 = v26;
  v28 = sub_100022F8C(v23, v24, v25, v27);

  v29 = sub_100034954(v28);

  if (*(v29 + 16) <= v22[2] >> 3)
  {
    v46[0] = v22;
    sub_100028D60(v29);
  }

  else
  {
    v22 = sub_100026A28(v29, v22);
  }

  v30 = v22[2];

  if (!v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 sharedManager];
    v33 = [v32 snapshot];

    v34 = [v33 followUpOptions];
    if (v34 && (v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v34, sub_100022574(v35), v37 = v36, , v37))
    {
      if (!*(v37 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v37 = sub_10002B190(_swiftEmptyArrayStorage, &qword_10004A3C0, &qword_100038C48, &qword_10004A3D0, &qword_100038C58);

      if (!*(v37 + 16))
      {
        goto LABEL_19;
      }
    }

    v38 = sub_1000239D4(ELSFollowUpOptionFrequency);
    if (v39)
    {
      sub_10000D268(*(v37 + 56) + 32 * v38, v46);

      v40 = swift_dynamicCast();
      if (v40)
      {
        v41 = v45;
      }

      else
      {
        v41 = 0;
      }

      v42 = v40 ^ 1;
      goto LABEL_20;
    }

LABEL_19:

    v41 = 0;
    v42 = 1;
LABEL_20:
    v43 = [v31 sharedManager];
    v44 = [v43 snapshot];

    LODWORD(v43) = [v44 needsFollowup];
    sub_10001267C(v41, v42, v43);
  }
}

void sub_1000195B4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  *(v2 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 7) = _swiftEmptyArrayStorage;
  *(v2 + 8) = &_swiftEmptyDictionarySingleton;
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (!v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v2 + 9) = 0x6973736553677562;
  *(v2 + 10) = 0xEB00000000736E6FLL;
  *(v2 + 11) = _swiftEmptyArrayStorage;
  *(v2 + 12) = v8;
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
LABEL_24:
    __break(1u);
    return;
  }

  *(v2 + 13) = 0xD000000000000014;
  *(v2 + 14) = 0x800000010003A150;
  *(v2 + 15) = _swiftEmptyArrayStorage;
  *(v2 + 16) = v11;
  *(v2 + 17) = &_swiftEmptyDictionarySingleton;
  *(v2 + 18) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for NotificationController();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x40AC200000000000;
  *(v12 + 24) = 0;
  *(v2 + 19) = v12;
  *(v2 + 20) = 0x4014000000000000;
  v13 = OBJC_IVAR____TtC16enhancedloggingd17SessionController_currentDeviceType;
  v14 = [objc_opt_self() currentDevice];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 deviceType];

    v17 = type metadata accessor for TargetDevice.DeviceType();
    if (v16 > 3)
    {
      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v18 = &enum case for TargetDevice.DeviceType.appleTV(_:);
        }

        else
        {
          v18 = &enum case for TargetDevice.DeviceType.watch(_:);
        }

        goto LABEL_19;
      }

      if (v16 == 6)
      {
        v18 = &enum case for TargetDevice.DeviceType.audioAccessory(_:);
        goto LABEL_19;
      }

      if (v16 == 7)
      {
        v18 = &enum case for TargetDevice.DeviceType.reality(_:);
        goto LABEL_19;
      }
    }

    else
    {
      if (v16 > 1)
      {
        v18 = &enum case for TargetDevice.DeviceType.iOS(_:);
        goto LABEL_19;
      }

      if (v16 == 1)
      {
        v18 = &enum case for TargetDevice.DeviceType.mac(_:);
LABEL_19:
        (*(*(v17 - 8) + 104))(&v2[v13], *v18, v17);
        goto LABEL_20;
      }
    }

    v18 = &enum case for TargetDevice.DeviceType.unknown(_:);
    goto LABEL_19;
  }

  v19 = enum case for TargetDevice.DeviceType.unknown(_:);
  v20 = type metadata accessor for TargetDevice.DeviceType();
  (*(*(v20 - 8) + 104))(&v2[v13], v19, v20);
LABEL_20:
  v21 = OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___daemonTemporaryDirectoryURL;
  v22 = type metadata accessor for URL();
  v23 = *(*(v22 - 8) + 56);
  v23(&v2[v21], 1, 1, v22);
  v23(&v2[OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___consentFormURL], 1, 1, v22);
  v24 = v34;
  *(v2 + 4) = v33;
  *(v2 + 5) = v24;
  v25 = [objc_opt_self() sharedManager];
  v26 = [v25 snapshot];

  v27 = [v26 status];
  *(v2 + 6) = v27;
  v28 = [objc_opt_self() sharedInstance];
  [v28 start];

  v29 = *(v2 + 6);
  if ((v29 - 7) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v2;

    sub_1000155B0(0, 0, v5, &unk_100038D58, v31);

    v29 = *(v2 + 6);
  }

  sub_100019ADC(v29);
  v32 = [objc_opt_self() defaultCenter];
  [v32 addObserver:v2 selector:"elsDidUpdateStatusWithNotification:" name:ELSDidUpdateStatus object:0];
}

uint64_t sub_100019ADC(uint64_t result)
{
  if (result > 7)
  {
    if ((result - 8) > 1)
    {
      return result;
    }
  }

  else if (result)
  {
    if (result == 2)
    {
      [objc_opt_self() createLoggingEventWith:ELSEventTypeAskedForEnrollConsent];
      v4 = [objc_opt_self() sharedManager];
      v5 = [v4 snapshot];

      v6 = [v5 queue];
      if (v6)
      {
        sub_10001256C(0, &qword_10004A368, ELSQueueEntry_ptr);
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v7 = _swiftEmptyArrayStorage;
      }

      v8 = sub_10002B2A8(v7);

      *(v1 + 56) = v8;
    }

    else if (result == 5)
    {
      v2 = objc_opt_self();
      v3 = ELSEventTypeAskedForUploadConsent;

      return [v2 createLoggingEventWith:v3];
    }

    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000CAB0(v1, 0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100019CAC()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:ELSDidUpdateStatus object:0];

  v3 = [objc_opt_self() sharedInstance];
  [v3 stopDiscovery];

  sub_100013C84();

  sub_10001C65C(sub_1000228A0, "Failed to delete temporary files: %@");
  sub_10002D670(v1 + 16);

  v4 = OBJC_IVAR____TtC16enhancedloggingd17SessionController_currentDeviceType;
  v5 = type metadata accessor for TargetDevice.DeviceType();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  sub_100010EB8(v1 + OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___daemonTemporaryDirectoryURL, &unk_10004A630, &qword_100038A30);
  sub_100010EB8(v1 + OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___consentFormURL, &unk_10004A630, &qword_100038A30);
  return v1;
}

uint64_t sub_100019E80()
{
  sub_100019CAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionController(uint64_t a1)
{
  result = qword_10004A220;
  if (!qword_10004A220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019F2C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(sub_100019F4C, 0, 0);
}

uint64_t sub_100019F4C()
{
  v32 = v0;
  v1 = v0[22];
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_10002856C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return _swift_continuation_await(v3);
    }

    v4 = 0;
    v27 = i;
    v28 = v1 & 0xC000000000000001;
    v25 = v0[22] + 32;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v28)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(v25 + 8 * v4);
      }

      v7 = v6;
      v8 = v0[23];
      v31[0] = v6;
      sub_10001A498(v31, v8, &v29);

      v9 = v29;
      v10 = v30;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v24 = v30;
        sub_10002856C((v11 > 1), v12 + 1, 1);
        v10 = v24;
      }

      _swiftEmptyArrayStorage[2] = v1;
      v13 = &_swiftEmptyArrayStorage[3 * v12];
      v13[4] = v9;
      *(v13 + 5) = v10;
      ++v4;
      if (v5 == v27)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_14:
  if (_swiftEmptyArrayStorage[2])
  {
    sub_1000061F4(&qword_10004A438, &qword_100038D00);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = &_swiftEmptyDictionarySingleton;
  }

  v29 = v14;

  sub_100028E8C(v15, 1, &v29);
  v16 = v0[22];
  v17 = v0[23];

  v18 = v29;
  swift_beginAccess();
  *(v17 + 136) = v18;

  v19 = [objc_opt_self() sharedManager];
  v0[24] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v0[14] = sub_10002D774;
  v0[15] = v20;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001ACA8;
  v0[13] = &unk_100045CB8;
  v21 = _Block_copy(v0 + 10);
  v0[25] = v21;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10001A344;
  v22 = swift_continuation_init();
  v0[17] = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100019108;
  v0[13] = &unk_100045CE0;
  v0[14] = v22;
  [v19 transactionWithBlock:v21 completion:v0 + 10];
  v3 = v0 + 2;

  return _swift_continuation_await(v3);
}

uint64_t sub_10001A344()
{

  return _swift_task_switch(sub_10001A424, 0, 0);
}

uint64_t sub_10001A424()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

double sub_10001A498@<D0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v5 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = *a1;
  v9 = *(a2 + 40);
  v47 = *(a2 + 32);
  v10 = objc_opt_self();
  v11 = v8;

  v12 = [v10 sharedManager];
  v13 = [v12 snapshot];

  v14 = [v13 metadata];
  if (v14)
  {
    v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v48 = sub_10002B054(_swiftEmptyArrayStorage);
  }

  v15 = [v10 sharedManager];
  v16 = [v15 snapshot];

  v17 = [v16 consentHandles];
  v46[1] = a2;
  if (v17 && (sub_1000061F4(&qword_10004A318, &qword_100038B90), v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v17, v19 = *(v18 + 16), , v19))
  {
    sub_10001A9AC(v7);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  }

  v22 = type metadata accessor for BugSession(0);
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession] = 0;
  v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection] = 0;
  v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus] = 0;
  v54 = 2976869;
  v55 = 0xE300000000000000;
  v24._countAndFlagsBits = v47;
  v24._object = v9;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 45;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26 = [v11 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = v55;
  v32 = &v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
  *v32 = v54;
  v32[1] = v31;
  *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device] = v11;
  sub_100010BD4(v7, &v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_consentFormURL], &unk_10004A630, &qword_100038A30);
  v33 = ELSMetadataDeviceType;
  *&v52 = ELSMetadataDeviceType;
  type metadata accessor for ELSMetadata(0);
  sub_10002D77C(&qword_100049D60, type metadata accessor for ELSMetadata, &unk_100038688);
  v34 = v11;
  v35 = v33;
  AnyHashable.init<A>(_:)();
  v36 = [v34 productType];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v53 = &type metadata for String;
  *&v52 = v37;
  *(&v52 + 1) = v39;
  sub_10002D568(&v52, v51);
  v40 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v40;
  sub_1000256F8(v51, &v54, isUniquelyReferenced_nonNull_native);
  sub_10002D5D4(&v54);
  *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_cloudKitData] = v56;
  v50.receiver = v23;
  v50.super_class = v22;
  v42 = objc_msgSendSuper2(&v50, "init");
  sub_100010EB8(v7, &unk_10004A630, &qword_100038A30);

  *(v42 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_delegate + 8) = &off_100045AD8;
  swift_unknownObjectWeakAssign();
  v43 = *(v42 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8);
  v44 = v49;
  *v49 = *(v42 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id);
  v44[1] = v43;
  v44[2] = v42;

  return result;
}

uint64_t sub_10001A9AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v15[-v11];
  v13 = OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___consentFormURL;
  swift_beginAccess();
  sub_100010BD4(v1 + v13, v12, &unk_10004A630, &qword_100038A30);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v12, v3);
  }

  sub_100010EB8(v12, &unk_10004A630, &qword_100038A30);
  sub_1000228A0(v6);
  URL.appendingPathComponent(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v4 + 16))(v10, a1, v3);
  (*(v4 + 56))(v10, 0, 1, v3);
  swift_beginAccess();
  sub_10002D314(v10, v1 + v13);
  return swift_endAccess();
}

void sub_10001AC2C(void *a1)
{
  sub_10001256C(0, &qword_100049E88, DEDDevice_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setTargetDevices:isa];
}

void sub_10001ACA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10001AD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for TargetDevice();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  if (TargetDevice.isLocal.getter())
  {
    result = [objc_opt_self() currentDevice];
    if (result)
    {
      *v40 = result;
      return result;
    }
  }

  v37 = v8;
  v38 = a3;
  v15 = TargetDevice.id.getter();
  v17 = v16;
  swift_beginAccess();
  v18 = *(a2 + 144);
  if (*(v18 + 16))
  {
    v19 = sub_1000238C4(v15, v17);
    v21 = v20;

    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      *v40 = v22;
      return v22;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_100049C18 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100004274(v23, qword_10004C088);
  v24 = v37;
  v25 = *(v37 + 16);
  v25(v13, a1, v7);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v39[0] = v40;
    *v28 = 136315138;
    v25(v11, v13, v7);
    v29 = String.init<A>(reflecting:)();
    v31 = v30;
    (*(v24 + 8))(v13, v7);
    v32 = sub_100031FE8(v29, v31, v39);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Could not find DEDDevice for %s", v28, 0xCu);
    sub_10000D154(v40);
  }

  else
  {

    (*(v24 + 8))(v13, v7);
  }

  v33 = type metadata accessor for SessionError();
  sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  v34 = swift_allocError();
  (*(*(v33 - 8) + 104))(v35, enum case for SessionError.unknownDevice(_:), v33);
  result = swift_willThrow();
  *v38 = v34;
  return result;
}

uint64_t sub_10001B100(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_10001B124, 0, 0);
}

uint64_t sub_10001B124()
{
  v57 = v0;
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 136);
  *(v0 + 64) = v2;
  v3 = *(v2 + 32);
  *(v0 + 112) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 72) = v6;
    *(v0 + 80) = v8;
    v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 88) = v10;
    v11 = v10;
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_10001B8D4;
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);

    return sub_100021558(v11, v13, v14);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 48);
    v17 = *(v0 + 56);

    v18 = *(v17 + 136);
    v19 = v18 + 64;
    v20 = -1;
    v21 = -1 << v18[32];
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & *(v18 + 8);
    v23 = (63 - v21) >> 6;
    v24 = (v16 & 0xFFFFFFFFFFFFFFFELL);

    v25 = 0;
    v55 = v18;
    while (1)
    {
      while (1)
      {
        if (!v22)
        {
          while (1)
          {
            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v26 >= v23)
            {

              v35 = *(v0 + 8);
              goto LABEL_29;
            }

            v22 = *&v19[8 * v26];
            ++v25;
            if (v22)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v26 = v25;
LABEL_19:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = *(*(v18 + 7) + ((v26 << 9) | (8 * v27)));
        if (v24 != 2)
        {
          break;
        }

        v29 = objc_opt_self();
        v54 = v28;
        v30 = v28;
        v31 = [v29 sharedManager];
        v32 = [v31 snapshot];

        LODWORD(v31) = [v32 needsFollowup];
        v33 = *&v30[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
        if (v31)
        {
          if (!v33)
          {
            if (qword_100049BF8 != -1)
            {
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            sub_100004274(v42, qword_10004C028);
            v43 = v30;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v56[0] = swift_slowAlloc();
              *v46 = 136446466;
              *(v46 + 4) = sub_100031FE8(*&v43[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v43[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v56);
              *(v46 + 12) = 2080;
              *(v46 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, v56);
              _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s] %s called when bugSession is nil", v46, 0x16u);
              swift_arrayDestroy();

              goto LABEL_44;
            }

            goto LABEL_45;
          }

          [v33 scheduleNotification];
        }

        else
        {
          if (!v33)
          {
            if (qword_100049BF8 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_100004274(v47, qword_10004C028);
            v48 = v30;
            v44 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v44, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v56[0] = v51;
              *v50 = 136446210;
              *(v50 + 4) = sub_100031FE8(*&v48[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v48[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v56);
              _os_log_impl(&_mh_execute_header, v44, v49, "[%{public}s] called when bugSession is nil", v50, 0xCu);
              sub_10000D154(v51);

LABEL_44:
            }

LABEL_45:

            v24 = v54;
            goto LABEL_46;
          }

          [v33 commit];
        }

        v25 = v26;
        v18 = v55;
      }

      v34 = *&v28[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
      if (!v34)
      {
        break;
      }

      [v34 scheduleNotification];
      v25 = v26;
    }

    v36 = qword_100049BF8;
    v24 = *(*(v18 + 7) + ((v26 << 9) | (8 * v27)));
    v18 = v28;
    if (v36 == -1)
    {
      goto LABEL_33;
    }

LABEL_48:
    swift_once();
LABEL_33:
    v37 = type metadata accessor for Logger();
    sub_100004274(v37, qword_10004C028);
    v38 = v18;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_100031FE8(*&v38[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v38[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v56);
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, v56);
      _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}s] %s called when bugSession is nil", v41, 0x16u);
      swift_arrayDestroy();
    }

LABEL_46:
    v52 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v52 - 8) + 104))(v53, enum case for SessionError.noBugSession(_:), v52);
    swift_willThrow();

    v35 = *(v0 + 8);
LABEL_29:

    return v35();
  }
}

uint64_t sub_10001B8D4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10001C16C;
  }

  else
  {
    v2 = sub_10001B9E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B9E8()
{
  v52 = v1;

  v3 = *(v1 + 80);
  v4 = (*(v1 + 72) - 1) & *(v1 + 72);
  if (v4)
  {
    v5 = *(v1 + 64);
LABEL_7:
    *(v1 + 72) = v4;
    *(v1 + 80) = v3;
    v7 = *(*(v5 + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v4)))));
    *(v1 + 88) = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    *(v1 + 96) = v9;
    *v9 = v1;
    v9[1] = sub_10001B8D4;
    v10 = *(v1 + 56);
    v11 = *(v1 + 40);

    return sub_100021558(v8, v10, v11);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
        goto LABEL_32;
      }

      v5 = *(v1 + 64);
      if (v6 >= (((1 << *(v1 + 112)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v13 = *(v1 + 48);
    v14 = *(v1 + 56);

    v0 = *(v14 + 136);
    v15 = v0 + 64;
    v16 = -1;
    v17 = -1 << v0[32];
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & *(v0 + 8);
    v19 = (63 - v17) >> 6;
    v2 = (v13 & 0xFFFFFFFFFFFFFFFELL);

    v20 = 0;
    v50 = v0;
    while (1)
    {
      while (1)
      {
        if (!v18)
        {
          while (1)
          {
            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_47;
            }

            if (v21 >= v19)
            {

              v30 = *(v1 + 8);
              goto LABEL_28;
            }

            v18 = *&v15[8 * v21];
            ++v20;
            if (v18)
            {
              goto LABEL_18;
            }
          }
        }

        v21 = v20;
LABEL_18:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = *(*(v0 + 7) + ((v21 << 9) | (8 * v22)));
        if (v2 != 2)
        {
          break;
        }

        v24 = objc_opt_self();
        v49 = v23;
        v25 = v23;
        v26 = [v24 sharedManager];
        v27 = [v26 snapshot];

        LODWORD(v26) = [v27 needsFollowup];
        v28 = *&v25[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
        if (v26)
        {
          if (!v28)
          {
            if (qword_100049BF8 != -1)
            {
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            sub_100004274(v37, qword_10004C028);
            v38 = v25;
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v51[0] = swift_slowAlloc();
              *v41 = 136446466;
              *(v41 + 4) = sub_100031FE8(*&v38[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v38[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v51);
              *(v41 + 12) = 2080;
              *(v41 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, v51);
              _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}s] %s called when bugSession is nil", v41, 0x16u);
              swift_arrayDestroy();

              goto LABEL_43;
            }

            goto LABEL_44;
          }

          [v28 scheduleNotification];
        }

        else
        {
          if (!v28)
          {
            if (qword_100049BF8 != -1)
            {
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            sub_100004274(v42, qword_10004C028);
            v43 = v25;
            v39 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v39, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v51[0] = v46;
              *v45 = 136446210;
              *(v45 + 4) = sub_100031FE8(*&v43[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v43[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v51);
              _os_log_impl(&_mh_execute_header, v39, v44, "[%{public}s] called when bugSession is nil", v45, 0xCu);
              sub_10000D154(v46);

LABEL_43:
            }

LABEL_44:

            v2 = v49;
            goto LABEL_45;
          }

          [v28 commit];
        }

        v20 = v21;
        v0 = v50;
      }

      v29 = *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
      if (!v29)
      {
        break;
      }

      [v29 scheduleNotification];
      v20 = v21;
    }

    v31 = qword_100049BF8;
    v2 = *(*(v0 + 7) + ((v21 << 9) | (8 * v22)));
    v0 = v23;
    if (v31 != -1)
    {
      goto LABEL_48;
    }

LABEL_32:
    v32 = type metadata accessor for Logger();
    sub_100004274(v32, qword_10004C028);
    v33 = v0;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v36 = 136446466;
      *(v36 + 4) = sub_100031FE8(*&v33[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v33[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], v51);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, v51);
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] %s called when bugSession is nil", v36, 0x16u);
      swift_arrayDestroy();
    }

LABEL_45:
    v47 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, enum case for SessionError.noBugSession(_:), v47);
    swift_willThrow();

    v30 = *(v1 + 8);
LABEL_28:

    return v30();
  }
}

uint64_t sub_10001C16C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C1D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 192) = a3;
  *(v4 + 152) = a1;
  return _swift_task_switch(sub_10001C200, 0, 0);
}

uint64_t sub_10001C200()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = (v0 + 80);
  v4 = *(v1 + 160);
  v5 = *(v1 + 192);
  v6 = *(v1 + 152);
  *(*(v1 + 168) + 48) = v6;
  v7 = [objc_opt_self() sharedManager];
  *(v1 + 176) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5 & 1;
  *(v1 + 112) = sub_10002D484;
  *(v1 + 120) = v8;
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10001ACA8;
  *(v1 + 104) = &unk_100045BA0;
  v9 = _Block_copy(v3);
  *(v1 + 184) = v9;

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_10001C3D4;
  v10 = swift_continuation_init();
  *(v1 + 136) = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_100019108;
  *(v1 + 104) = &unk_100045BC8;
  *(v1 + 112) = v10;
  [v7 transactionWithBlock:v9 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_10001C3D4()
{

  return _swift_task_switch(sub_10001C4B4, 0, 0);
}

uint64_t sub_10001C4B4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_10001C524(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = *(v3 + 8);
  v7(v5, v2);
  [a1 setStartDate:isa];

  [a1 totalDuration];
  Date.init(timeIntervalSinceNow:)();
  v8 = Date._bridgeToObjectiveC()().super.isa;
  v7(v5, v2);
  [a1 setEndDate:v8];
}

void sub_10001C65C(void (*a1)(void), const char *a2, ...)
{
  v27 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  a1();
  URL.path(percentEncoded:)(1);
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v7 defaultManager];
    a1();
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v9(v6, v3);
    v28 = 0;
    v16 = [v12 removeItemAtURL:v15 error:&v28];

    v17 = v28;
    if (v16)
    {

      v18 = v17;
    }

    else
    {
      v26[1] = v28;
      v19 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100049C18 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100004274(v20, qword_10004C088);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, v27, v23, 0xCu);
        sub_100010EB8(v24, &qword_100049E70, &qword_100038FA0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10001CA24()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  v3 = [v2 consent];
  if ((v3 - 2) < 2)
  {
    v13 = swift_task_alloc();
    v0[4] = v13;
    *v13 = v0;
    v13[1] = sub_10001CE0C;
    v14 = 6;
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100004274(v17, qword_10004C088);
        v5 = Logger.logObject.getter();
        v18 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v5, v18))
        {
          goto LABEL_18;
        }

        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = v3;
        v8 = "Unknown consent: %lu";
        v9 = v18;
        v10 = v5;
        v11 = v19;
        v12 = 12;
      }

      else
      {
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100004274(v4, qword_10004C088);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_18;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Collection completed but consent is none";
        v9 = v6;
        v10 = v5;
        v11 = v7;
        v12 = 2;
      }

      _os_log_impl(&_mh_execute_header, v10, v9, v8, v11, v12);

LABEL_18:

      v20 = v0[1];

      return v20();
    }

    v15 = swift_task_alloc();
    v0[3] = v15;
    *v15 = v0;
    v15[1] = sub_10001CD18;
    v14 = 5;
  }

  return sub_10001C1D8(v14, 0, 1);
}

uint64_t sub_10001CD18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}