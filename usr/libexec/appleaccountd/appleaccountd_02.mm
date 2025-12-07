uint64_t sub_100046128(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v24 = type metadata accessor for URL();
  v9 = *(v24 - 8);
  v10 = __chkstk_darwin(v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_1000080F8((v2 + 16), *(v2 + 40));
  sub_100040738(*v15 + 64, v26);
  v16 = sub_1000080F8(v26, v26[3]);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = sub_1000080F8((*v16 + 16), *(*v16 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v9 + 8);
  v20 = v12;
  v21 = v24;
  v19(v20, v24);
  (*(v6 + 16))(v8, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v25, v25[3]);
  sub_1000328BC(v14, sub_100052854, v17);

  v19(v14, v21);
  sub_10000839C(v25);
  return sub_10000839C(v26);
}

uint64_t sub_1000465FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v29 = type metadata accessor for URL();
  v9 = *(v29 - 8);
  v10 = __chkstk_darwin(v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v14;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetching health status for all custodians & custodianships.", v18, 2u);
    v14 = v27;
  }

  v19 = sub_1000080F8((v3 + 144), *(v3 + 168));
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  v22 = sub_1000080F8((*v19 + 16), *(*v19 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v23 = *(v9 + 8);
  v24 = v12;
  v25 = v29;
  v23(v24, v29);
  (*(v6 + 16))(v8, *v22 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v30, v30[3]);
  sub_100032894(v14, sub_100052848, v20);

  v23(v14, v25);
  return sub_10000839C(v30);
}

uint64_t sub_10004699C(uint64_t a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for CustodianHealthRecord(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a3(_swiftEmptyArrayStorage, a1);
  }

  v16 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v25[1] = a4;
    v26 = a3;
    v27 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    do
    {
      sub_10005AA4C(v18, v14, type metadata accessor for CustodianHealthRecord);
      v20 = *(v11 + 24);
      v21 = type metadata accessor for Date();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v10, &v14[v20], v21);
      (*(v22 + 56))(v10, 0, 1, v21);
      v23.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      isa = 0;
      if ((*(v22 + 48))(v10, 1, v21) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v22 + 8))(v10, v21);
      }

      [objc_allocWithZone(AATrustedContactHealthInfo) initWithID:v23.super.isa lastValidCheckTimeStamp:isa];

      sub_10005AD7C(v14, type metadata accessor for CustodianHealthRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v19;
      --v16;
    }

    while (v16);
    a3 = v26;
    v17 = v27;
  }

  a3(v17, 0);
}

uint64_t sub_100046CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecord(0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100046E14, 0, 0);
}

uint64_t sub_100046E14()
{
  if ([*(v0 + 24) isAccountRecovery])
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1000080F8((*(v0 + 32) + 144), *(*(v0 + 32) + 168));
    v3 = type metadata accessor for CustodianStorageController();
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_100046FC0;

    return (sub_1000308CC)(v3, &off_1003A4C78);
  }
}

uint64_t sub_100046FC0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000474B4;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1000470EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_1000470EC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = kAAAnalyticsEventCustodianRecoveryExperimentalHasCachedCustodianList;
  v4 = [v2 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [*(v0 + 24) telemetryFlowID];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  result = sub_100245D38(v3, v6, v8, v11, v13);
  v15 = result;
  if (v1)
  {
    v16 = *(v1 + 16);
    if (v16)
    {
      v33 = result;
      v17 = 0;
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);
      v34 = v19;
      do
      {
        if (v17 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = *(v0 + 88);
        v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v22 = *(v18 + 72);
        sub_10005AA4C(v1 + v21 + v22 * v17, v20, type metadata accessor for CustodianRecord);
        v23 = *(v0 + 88);
        if (*(v20 + *(v19 + 36)) == 2)
        {
          sub_10005ABD0(v23, *(v0 + 80), type metadata accessor for CustodianRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1002E0288(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          if (v25 >= v24 >> 1)
          {
            sub_1002E0288((v24 > 1), v25 + 1, 1);
          }

          v26 = *(v0 + 80);
          _swiftEmptyArrayStorage[2] = v25 + 1;
          result = sub_10005ABD0(v26, _swiftEmptyArrayStorage + v21 + v25 * v22, type metadata accessor for CustodianRecord);
          v19 = v34;
        }

        else
        {
          result = sub_10005AD7C(v23, type metadata accessor for CustodianRecord);
        }

        ++v17;
      }

      while (v16 != v17);

      v15 = v33;
      if (!v33)
      {
        goto LABEL_27;
      }

      if (!_swiftEmptyArrayStorage)
      {
        goto LABEL_23;
      }

LABEL_25:
      v27 = v15;

      goto LABEL_26;
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!result)
  {
    goto LABEL_27;
  }

LABEL_23:
  v27 = v15;
LABEL_26:
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setObject:isa forKeyedSubscript:kAAFDidSucceed];

LABEL_28:
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  v31 = *(v0 + 40);
  (*(v29 + 16))(v30, *(v0 + 32) + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v31);
  Dependency.wrappedValue.getter();
  (*(v29 + 8))(v30, v31);
  swift_getObjectType();
  sub_100246FA8(v15);
  swift_unknownObjectRelease();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000474B4()
{
  v1 = *(v0 + 24);
  v2 = kAAAnalyticsEventCustodianRecoveryExperimentalHasCachedCustodianList;
  v3 = [v1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(v0 + 24) telemetryFlowID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v13 = sub_100245D38(v2, v5, v7, v10, v12);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v15 setObject:isa forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {

    v15 = 0;
  }

  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  v19 = *(v0 + 40);
  (*(v18 + 16))(v17, *(v0 + 32) + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  swift_getObjectType();
  sub_100246FA8(v14);

  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

void sub_1000476C8(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void *), uint64_t a7, void *a8, void *a9)
{
  v43 = a8;
  v44 = a6;
  v45 = a7;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  if (a4)
  {
    sub_1000D2748(a1, a2, a3 & 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v14 + 16))(v16, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v16, v13);
    swift_getObjectType();
    sub_100246FA8(a4);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v18 = v43;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAA88);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_10005A720(a1, a2, 1);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = _convertErrorToNSError(_:)();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to obtain Push Token with error: %@, continuing without AA Push Token", v22, 0xCu);
        sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
      }
    }

    else
    {
      v47 = sub_100166018(a1, a2);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      BidirectionalCollection<>.joined(separator:)();

      v20 = String._bridgeToObjectiveC()();

      v18 = v43;
      [v43 setPushToken:v20];
    }

    v30 = [a9 altDSID];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = [a9 telemetryFlowID];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v40;
    v41[5] = a9;

    v42 = a9;
    sub_100047F5C(v18, v32, v34, v37, v39, sub_10005A714, v41);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "startCustodianRecovery: Custodian Daemon Service is no longer retained, nothing to do here", v28, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v46 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v47;
    v44(0, 0, v47);
  }
}

uint64_t sub_100047CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t, uint64_t), uint64_t, uint64_t, void *), uint64_t a5, uint64_t a6, void *a7)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [a7 altDSID];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      swift_beginAccess();
      v20 = *(v13 + 288);
      v19 = *(v13 + 296);
      sub_10003E968(v13 + 264, v20);
      (*(v19 + 40))(v16, v18, v20, v19);
      swift_endAccess();
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = [a7 telemetryFlowID];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      swift_beginAccess();
      v28 = *(v22 + 288);
      v29 = *(v22 + 296);
      sub_10003E968(v22 + 264, v28);
      (*(v29 + 64))(v25, v27, v28, v29);
      swift_endAccess();
    }

    v8 = a1;
    v9 = a2;
    a3 = 0;
  }

  return a4(v8, v9, a3, a4, a5, a6, a7);
}

void sub_100047ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100047F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *v7;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Calling out to IdMS to initiate a custodian recovery", v19, 2u);
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v20 = kAAAnalyticsEventCustodianRecoveryInitializeWithServer;

  v21 = v20;

  v22 = sub_100245D38(v21, a2, a3, a4, a5);
  v23 = sub_1000080F8(v8 + 8, v8[11]);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v8;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = v15;
  v25 = *v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10005282C;
  *(v26 + 24) = v24;
  aBlock[4] = sub_100052840;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011A43C;
  aBlock[3] = &unk_1003A58F8;
  v27 = _Block_copy(aBlock);
  v28 = v22;

  [v25 startCustodianRecoveryRequestWithContext:a1 completion:v27];
  _Block_release(v27);
}

void sub_10004824C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, unint64_t, uint64_t))
{
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  if (a3)
  {
    sub_1000D284C(a1, a2 & 1);
  }

  (*(v11 + 16))(v13, a4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  sub_100246FA8(a3);
  swift_unknownObjectRelease();
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to initiate recovery with IdMS with error: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    a5(0, 0, a1);
    return;
  }

  v39 = 0xD000000000000011;
  v40 = 0x800000010032D480;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v20 = sub_10031B060(v41), (v21 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v20, v42);
    sub_1000526B0(v41);
    if (swift_dynamicCast())
    {
      v23 = v39;
      v22 = v40;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA88);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_10021145C(v23, v22, v41);
        _os_log_impl(&_mh_execute_header, v25, v26, "IdMS came back with a recovery session ID: %s", v27, 0xCu);
        sub_10000839C(v28);
      }

      a5(v23, v22, 0);

      return;
    }
  }

  else
  {
    sub_1000526B0(v41);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAA88);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41[0] = v33;
    *v32 = 136315138;
    v34 = Dictionary.description.getter();
    v36 = sub_10021145C(v34, v35, v41);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "IdMS came back with a result, but transaction ID was not found there: %s", v32, 0xCu);
    sub_10000839C(v33);
  }

  type metadata accessor for AACustodianError(0);
  v42[0] = -7009;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v37 = v41[0];
  a5(0, 0, v41[0]);
}

uint64_t sub_100048894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Calling out to IdMS to fetch Custodian recovery configuration", v9, 2u);
  }

  sub_1000080F8((v3 + 64), *(v3 + 88));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_10011A4E8(0, 0, 0, 0, sub_100052804, v10);
}

void sub_1000489F4(uint64_t a1, char a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch Custodian recovery configuration with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    a3(0, a1);
  }

  else
  {
    v11 = objc_allocWithZone(AACustodianRecoveryConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v13 = [v11 initWithConfigurationDictionary:isa];

    if ([v13 codeLength] <= 0)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA88);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      sub_1000399DC(a1, 0);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31 = v25;
        *v24 = 136315138;
        v26 = Dictionary.description.getter();
        v28 = sub_10021145C(v26, v27, &v31);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "IdMS came back with a result, but codeLength was missing or 0: %s", v24, 0xCu);
        sub_10000839C(v25);
      }

      type metadata accessor for AACustodianError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = v31;
      a3(0, v31);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA88);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "IdMS came back with configuration: %@", v18, 0xCu);
        sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
      }

      v30 = v15;
      a3(v15, 0);
    }
  }
}

uint64_t sub_100048F38(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_100048FD0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004909C, 0, 0);
}

uint64_t sub_10004909C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  LOBYTE(v1) = sub_10031A5C8(*(v4 + 56));
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v5 = v0[17];
    swift_beginAccess();
    sub_1000080F8((v5 + 264), *(v5 + 288));
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_10004935C;
    v7 = v0[16];

    return sub_1001056C8(v7);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Client is missing management entitlement, rejecting request to generateCustodianRecoveryCode", v12, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[15] = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10004935C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;
  v4[22] = v2;

  if (v2)
  {
    v5 = sub_100049610;
  }

  else
  {
    v5 = sub_100049478;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100049478()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated code for context: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = v0[1];

  return v12(v10, v11);
}

uint64_t sub_100049610()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    v10 = _convertErrorToNSError(_:)();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate code for context: %@ with error: %@", v7, 0x16u);
    sub_100005814(&unk_1003D9140, &qword_10033E640);
    swift_arrayDestroy();
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100049970(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100049A34;

  return sub_100048FD0(v5);
}

uint64_t sub_100049A34(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100049BE0(void *a1, char a2, uint64_t (*a3)(void *, void *))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10005A40C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Code validation completed with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    v11 = 0;
    v12 = a1;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_10005A40C(a1, 0);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = a1;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Code validation completed with context: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    v11 = a1;
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_100049E7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching existing custodian recovery token for sessionID: %s", v13, 0xCu);
    sub_10000839C(v14);
  }

  sub_1000080F8((v5 + 144), *(v5 + 168));
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;

  sub_10002CD28(a1, a2, sub_1000527B0, v15);
}

uint64_t sub_10004A05C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(id, uint64_t))
{
  v34 = a4;
  v7 = type metadata accessor for CustodianRecoverySessionRecord(0);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v10);
  v12 = (&v33 - v11);
  sub_100012D04(a1, &v33 - v11, &qword_1003DA0F0, qword_100342AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10021145C(a2, a3, &v36);
      _os_log_impl(&_mh_execute_header, v15, v16, "No record found for the requested SessionID: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    swift_errorRetain();
    v34(0, v13);
  }

  else
  {
    sub_10005ABD0(v12, v9, type metadata accessor for CustodianRecoverySessionRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(a2, a3, &v36);
      _os_log_impl(&_mh_execute_header, v21, v22, "Found record matching sessionID: %s, getting token", v23, 0xCu);
      sub_10000839C(v24);
    }

    if (*&v9[*(v7 + 44) + 8])
    {
      v25 = objc_allocWithZone(AACustodianPasswordResetInformation);
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v25 initWithRecoveryToken:v26 ownerAppleID:v27];

      v29 = v28;
      v34(v28, 0);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Record did not contain CRT, failing...", v32, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v35 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = v36;
      v34(0, v36);
    }

    return sub_10005AD7C(v9, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

uint64_t sub_10004A664(uint64_t a1, void *a2)
{
  v4 = sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - v6;
  v8 = [a2 recoverySessionID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    (*(v5 + 16))(v7, a1, v4);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    (*(v5 + 32))(v14 + v13, v7, v4);
    sub_10004B030(v10, v12, sub_10005A380, v14);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Missing recovery session ID in request context: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v23[1] = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004A98C(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for AACustodianRecoveryError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    swift_errorRetain();
    sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004AC34(void *a1, void *aBlock, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v5 = a1;

  return _swift_task_switch(sub_10004ACC4, 0, 0);
}

uint64_t sub_10004ACC4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_100016034(0, &qword_1003DA1C8, AACustodianDataRecoveryKeys_ptr);
  *v2 = v0;
  v2[1] = sub_10004ADD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010032D4C0, sub_10005A2E4, v1, v3);
}

uint64_t sub_10004ADD0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10004AF7C;
  }

  else
  {

    v2 = sub_10004AEEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004AEEC()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[2];
  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004AF7C()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v3);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10004B030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching existing custodian recovery keys for sessionID: %s", v13, 0xCu);
    sub_10000839C(v14);
  }

  sub_1000080F8((v5 + 144), *(v5 + 168));
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v15;

  sub_10002CD28(a1, a2, sub_100052760, v16);
}

uint64_t sub_10004B248(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a4;
  v39 = a2;
  v8 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CustodianRecoverySessionRecord(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v14);
  v16 = (&v38 - v15);
  sub_100012D04(a1, &v38 - v15, &qword_1003DA0F0, qword_100342AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10021145C(v39, a3, v42);
      _os_log_impl(&_mh_execute_header, v19, v20, "No record found for the requested SessionID: %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    swift_errorRetain();
    v41(0, v17);
  }

  else
  {
    sub_10005ABD0(v16, v13, type metadata accessor for CustodianRecoverySessionRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10021145C(v39, a3, v42);
      _os_log_impl(&_mh_execute_header, v25, v26, "Found record matching sessionID: %s, getting keys", v27, 0xCu);
      sub_10000839C(v28);
    }

    if (*&v13[*(v11 + 36) + 8] >> 60 == 15)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Record did not contain RKC, seems to be a non CDP account ?...", v31, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v42[3] = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v32 = v42[0];
      v41(0, v42[0]);
    }

    else
    {
      sub_100012D04(&v13[*(v11 + 48)], v10, &qword_1003D8B60, &unk_10033F210);
      v33 = type metadata accessor for UUID();
      v34 = (*(*(v33 - 8) + 48))(v10, 1, v33);
      sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
      if (v34 == 1)
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "decoupleCRK: CustodianRecoverySessionRecord does not contain otCustodianID, either using first created CRK or custodian device running pre DawnburstE", v37, 2u);
        }
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_10004B884(v39, a3, v13, v41, v40);
      }
    }

    return sub_10005AD7C(v13, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

void sub_10004B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v28 = a5;
  v26 = *v5;
  v8 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = [objc_allocWithZone(AKCustodianContext) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v11 setCustodianUUID:isa];

  v13 = String._bridgeToObjectiveC()();
  [v11 setRecoverySessionID:v13];

  if (*(a3 + *(v8 + 44) + 8))
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v11 setCustodianRecoveryToken:v14];

  if ([v11 respondsToSelector:Selector.init(_:)()])
  {
    if (*(a3 + *(v8 + 52) + 8))
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    [v11 setRecordBuildVersion:v15];
  }

  v16 = sub_1000080F8(v6 + 8, v6[11]);
  sub_10005AA4C(a3, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoverySessionRecord);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_10005ABD0(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for CustodianRecoverySessionRecord);
  v20 = (v19 + v18);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v22 = *v16;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1000525EC;
  *(v23 + 24) = v19;
  aBlock[4] = sub_1000526A8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011A43C;
  aBlock[3] = &unk_1003A5808;
  v24 = _Block_copy(aBlock);

  [v22 fetchCustodianDataRecoveryKeyWithContext:v11 completion:v24];
  _Block_release(v24);
}

void sub_10004BC08(uint64_t a1, char a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &isa - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch custodian recovery wrapping key with error: %@", v16, 0xCu);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
    }

    a4(0, a1);
    return;
  }

  v19 = v10;
  strcpy(v54, "wrappingKeyRKC");
  v54[15] = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_10031B060(v55), (v21 & 1) == 0))
  {
    sub_1000526B0(v55);
    goto LABEL_14;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v20, v56);
  sub_1000526B0(v55);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = Data.init(base64Encoded:options:)();
  v24 = v23;

  if (v24 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v53 = v22;
  v26 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v27 = a3 + *(v26 + 36);
  v28 = *(v27 + 8);
  if (v28 >> 60 == 15)
  {
    sub_100015D58(v53, v25);
LABEL_14:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 0);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55[0] = v33;
      *v32 = 136315138;
      v34 = Dictionary.description.getter();
      v36 = sub_10021145C(v34, v35, v55);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not parse wrapping key from result dictionary: %s", v32, 0xCu);
      sub_10000839C(v33);
    }

    type metadata accessor for AACustodianError(0);
    v56[0] = -7009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v55[0];
    a4(0, v55[0]);

    return;
  }

  v38 = v26;
  v39 = *v27;
  sub_100015D6C(*v27, *(v27 + 8));
  sub_100052704(v39, v28);
  v52 = v25;
  sub_100052704(v53, v25);
  sub_1000A8BBC(v12);
  v40 = *(a3 + *(v38 + 52) + 8);
  v50 = v39;
  v51 = v28;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v41.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v42.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (v40)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  v43 = objc_allocWithZone(AACustodianDataRecoveryKeys);
  v44 = isa;
  v45 = [v43 initWithWrappedRKC:isa wrappingKey:v41.super.isa custodianUUID:v42.super.isa recordBuildVersion:v40];

  sub_100015D58(v53, v52);
  v47 = v50;
  v46 = v51;
  sub_100015D58(v50, v51);
  (*(v9 + 8))(v12, v19);
  v48 = v45;
  a4(v45, 0);

  sub_100015D58(v47, v46);
  sub_100015D58(v53, v52);
}

uint64_t sub_10004C224(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10004C2B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8((v3 + 144), *(v3 + 168));
  v11 = [a1 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  v14 = a1;

  sub_1000259E4(v10, sub_1000518C8, v13);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10004C450(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v109 = a4;
  v110 = a5;
  v108 = a3;
  v106 = a2;
  v6 = type metadata accessor for UUID();
  v104 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord(0);
  v105 = *(v9 - 8);
  v10 = *(v105 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v107 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v98 - v12;
  v14 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v100 = *(v14 - 8);
  v15 = *(v100 + 64);
  v16 = __chkstk_darwin(v14);
  v101 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v98 - v17);
  v102 = a1;
  sub_100012D04(a1, &v98 - v17, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch custodianship info: %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v109(v19);
  }

  else
  {
    v99 = v10;
    sub_10005ABD0(v18, v13, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_100008D04(v27, qword_1003FAA88);
    v29 = v106;
    v106 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v103 = v13;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v111[0] = v34;
      *v33 = 136315138;
      v35 = [v29 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v104 + 8))(v8, v6);
      v39 = sub_10021145C(v36, v38, v111);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Found custodianship info: %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    v40 = v107;
    v41 = kAAAnalyticsEventCustodianSetupCustodianUpdatedCustodianshipRecord;
    v42 = [v29 altDSID];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = v29;
    v48 = [v29 telemetryFlowID];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = v99;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v54 = sub_100245D38(v41, v44, v46, v50, v52);
    v55 = v47;
    v56 = [v47 isAccepted];
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    v59 = os_log_type_enabled(v57, v58);
    if (v56)
    {
      v60 = v40;
      if (v59)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Accepting invitation.", v61, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v106 = Strong;
        v63 = v101;
        v64 = v54;
        sub_100012D04(v102, v101, &unk_1003DA0E0, &unk_10033F1D0);
        sub_10005AA4C(v103, v60, type metadata accessor for CustodianshipInfoRecord);
        v65 = (*(v100 + 80) + 24) & ~*(v100 + 80);
        v66 = (v15 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
        v68 = v55;
        v69 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
        v70 = v110;
        v71 = (*(v105 + 80) + v69 + 8) & ~*(v105 + 80);
        v72 = swift_allocObject();
        *(v72 + 16) = v64;
        sub_100051EF4(v63, v72 + v65);
        v73 = v109;
        *(v72 + v66) = v108;
        v74 = (v72 + v67);
        *v74 = v73;
        v74[1] = v70;
        *(v72 + v69) = v68;
        sub_10005ABD0(v107, v72 + v71, type metadata accessor for CustodianshipInfoRecord);
        sub_1000080F8(v106 + 23, v106[26]);
        v75 = swift_allocObject();
        *(v75 + 16) = sub_100051F64;
        *(v75 + 24) = v72;
        v76 = v64;

        v77 = v68;
        v78 = v103;
        sub_100277DDC(v103, sub_10004E244, 0, 0, sub_10005207C, v75);

        sub_10005AD7C(v78, type metadata accessor for CustodianshipInfoRecord);
      }

      v97 = v103;
    }

    else
    {
      v79 = v103;
      v80 = v40;
      if (v59)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Declining invitation.", v81, 2u);
      }

      sub_10005AA4C(v79, v40, type metadata accessor for CustodianshipInfoRecord);
      v82 = *(v105 + 80);
      v83 = swift_allocObject();
      sub_10005ABD0(v40, v83 + ((v82 + 16) & ~v82), type metadata accessor for CustodianshipInfoRecord);
      v84 = v108;
      swift_beginAccess();
      v85 = swift_weakLoadStrong();
      if (v85)
      {
        sub_100040738(v85 + 184, v111);

        sub_1000080F8(v111, v111[3]);
        sub_10005AA4C(v79, v80, type metadata accessor for CustodianshipInfoRecord);
        v86 = (v82 + 40) & ~v82;
        v87 = v53 + v86 + 7;
        v88 = v54;
        v89 = v55;
        v90 = v79;
        v91 = v87 & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        v92[2] = v88;
        v92[3] = v84;
        v92[4] = v89;
        sub_10005ABD0(v80, v92 + v86, type metadata accessor for CustodianshipInfoRecord);
        v93 = (v92 + v91);
        v94 = v110;
        *v93 = v109;
        v93[1] = v94;
        v95 = v88;

        v96 = v89;
        sub_100277DDC(v90, sub_1000519FC, v83, 0, sub_100051BCC, v92);

        sub_10005AD7C(v90, type metadata accessor for CustodianshipInfoRecord);
        return sub_10000839C(v111);
      }

      v97 = v79;
    }

    return sub_10005AD7C(v97, type metadata accessor for CustodianshipInfoRecord);
  }
}

uint64_t sub_10004CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v31 = a8;
  v32 = a7;
  v33 = a5;
  v12 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  if (a2)
  {
    sub_1000D2720(a3);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v16 + 16))(v18, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v15);
    Dependency.wrappedValue.getter();

    (*(v16 + 8))(v18, v15);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    swift_errorRetain();
    v33(a1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = (v31 + *(type metadata accessor for CustodianshipInfoRecord(0) + 24));
      v23 = *v22;
      v24 = v22[1];
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v28 = v32;
      v27 = v33;
      v26[4] = v21;
      v26[5] = v28;
      v26[6] = v23;
      v26[7] = v24;
      v26[8] = v27;
      v26[9] = a6;
      v29 = v28;

      sub_1000BCD5C(0, 0, v14, &unk_10033F1E8, v26);
    }
  }

  return result;
}

uint64_t sub_10004D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CustodianshipInfoRecord(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA4C(a1, v9, type metadata accessor for CustodianshipInfoRecord);
  v10 = (a2 + v7[8]);
  v12 = *v10;
  v11 = v10[1];
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);
  v14(a3, v9, v13);
  v14(a3 + v7[7], &v9[v7[7]], v13);
  v15 = v7[10];
  v16 = *&v9[v15];
  v17 = *&v9[v15 + 8];
  v18 = (a3 + v15);
  *v18 = v16;
  v18[1] = v17;
  v19 = (a3 + v7[8]);
  *v19 = v12;
  v19[1] = v11;
  *(a3 + v7[9]) = 4;
  LOBYTE(v12) = v9[v7[11]];

  sub_100015D6C(v16, v17);
  result = sub_10005AD7C(v9, type metadata accessor for CustodianshipInfoRecord);
  *(a3 + v7[11]) = v12;
  return result;
}

id sub_10004D3F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v44 = a5;
  v46 = a4;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v45 = &v43 - v10;
  v11 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v11);
  v13 = (&v43 - v12);
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (a2)
  {
    sub_1000D2720(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v15 + 16))(v17, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v14);
    Dependency.wrappedValue.getter();

    (*(v15 + 8))(v17, v14);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v13, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v13;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error updating custodianship %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v47(v19);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Custodianship status updated!", v29, 2u);
    }

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = (v44 + *(type metadata accessor for CustodianshipInfoRecord(0) + 24));
      v34 = *v32;
      v33 = v32[1];
      v35 = type metadata accessor for TaskPriority();
      v36 = v45;
      (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v39 = v46;
      v38 = v47;
      v37[4] = v31;
      v37[5] = v39;
      v37[6] = v34;
      v37[7] = v33;
      v40 = v48;
      v37[8] = v38;
      v37[9] = v40;
      v41 = v39;

      sub_1000BCD5C(0, 0, v36, &unk_10033F208, v37);
    }

    sub_100008D3C(v13, &unk_1003DA0E0, &unk_10033F1D0);
  }

  return [objc_opt_self() postRecoveryContactChangedNotification];
}

uint64_t sub_10004D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v12;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_10004DA48, 0, 0);
}

uint64_t sub_10004DA48()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v8 = v0[2];
  v0[13] = v8;
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v6;
  v10 = swift_task_alloc();
  v0[15] = v10;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v5;
  v10[5] = v4;
  v11 = type metadata accessor for ExponentialRetryScheduler();
  v12 = v6;
  v13 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[16] = v13;
  v14 = swift_allocObject();
  v0[17] = v14;
  *(v14 + 16) = 0;
  v0[3] = v13;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v14;
  v15[3] = sub_1000521AC;
  v15[4] = v9;
  v15[5] = 0xD000000000000016;
  v15[6] = 0x800000010032D410;
  v15[7] = &unk_10033F1F8;
  v15[8] = v10;
  v15[9] = v8;
  v15[10] = 1;
  v16 = swift_allocObject();
  v0[19] = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_10004DCB0;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v17, &unk_10033F200, v15, sub_10005237C, v16, v11, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_10004DCB0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10004DE80;
  }

  else
  {

    v2 = sub_10004DDD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004DDD4()
{
  v1 = v0[16];
  v2 = v0[8];

  v2(0);

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004DE80()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[8];

  v3(v1);

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

id sub_10004DF54(void *a1)
{
  v2 = [a1 isAccepted];
  v3 = &kAAAnalyticsEventCustodianSetupSendInvitationAcceptanceMessage;
  if (!v2)
  {
    v3 = &kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;
  }

  v4 = *v3;
  v5 = [a1 altDSID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 telemetryFlowID];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  return sub_100245D38(v4, v7, v9, v12, v14);
}

uint64_t sub_10004E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return _swift_task_switch(sub_10004E088, 0, 0);
}

uint64_t sub_10004E088()
{
  sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10004E150;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_1002627F8(v4, v2, v3, 4, 0);
}

uint64_t sub_10004E150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA4C(a1, v7, type metadata accessor for CustodianshipInfoRecord);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v9(a2, v7, v8);
  v9(a2 + v5[7], &v7[v5[7]], v8);
  v10 = v5[10];
  v11 = *&v7[v10];
  v12 = *&v7[v10 + 8];
  v13 = (a2 + v10);
  *v13 = v11;
  v13[1] = v12;
  v14 = v5[8];
  v15 = *&v7[v14];
  v16 = *&v7[v14 + 8];
  v17 = (a2 + v14);
  *v17 = v15;
  v17[1] = v16;
  *(a2 + v5[9]) = 2;
  LOBYTE(v9) = v7[v5[11]];
  sub_100015D6C(v11, v12);

  result = sub_10005AD7C(v7, type metadata accessor for CustodianshipInfoRecord);
  *(a2 + v5[11]) = v9;
  return result;
}

uint64_t sub_10004E3AC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  sub_100012D04(a1, &v19 - v5, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error updating custodianship %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(v7);
  }

  else
  {
    [objc_opt_self() postRecoveryContactChangedNotification];
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "CustodianRequest record updated!", v18, 2u);
    }

    a2(0);
    return sub_100008D3C(v6, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_10004E6DC(char a1, uint64_t (*a2)(void))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Completed triggered sync of trusted contacts with CloudKit. Success: %{BOOL}d.", v7, 8u);
  }

  return a2(0);
}

uint64_t sub_10004E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Displaying trusted contact flow using Springboard.", v15, 2u);
  }

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v16 = aBlock[0];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100051848;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003A55D8;
  v18 = _Block_copy(aBlock);

  [v16 presentModel:a1 completion:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_10004EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Launching custodian invite UI.", v11, 2u);
  }

  sub_1000080F8((v4 + 144), *(v4 + 168));
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a2;
  v12[4] = a3;

  sub_1000259E4(a1, sub_1000517C0, v12);
}

uint64_t sub_10004ECAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v55 = a2;
  v5 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v8 = type metadata accessor for UUID();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianshipInfoRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v17);
  v19 = (&v52 - v18);
  sub_100012D04(a1, &v52 - v18, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch custodianship info: %@", v24, 0xCu);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v58(v20);
  }

  else
  {
    sub_10005ABD0(v19, v16, type metadata accessor for CustodianshipInfoRecord);
    sub_10005AA4C(v16, v14, type metadata accessor for CustodianshipInfoRecord);
    v28 = objc_allocWithZone(AACustodianshipInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v30 = *&v14[*(v11 + 28)];
    v31 = String._bridgeToObjectiveC()();
    v32 = [v28 initWithID:isa status:v30 ownerHandle:v31];

    sub_10005AD7C(v14, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v16;
      v39 = v38;
      aBlock[0] = v38;
      *v37 = 136315138;
      v40 = [v34 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = v54;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v53 + 8))(v10, v41);
      v45 = sub_10021145C(v42, v44, aBlock);

      *(v37 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "Custodianship info found: %s", v37, 0xCu);
      sub_10000839C(v39);
      v16 = v52;
    }

    v46 = v56;
    v47 = v57;
    (*(v56 + 16))(v7, v55 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter, v57);
    Dependency.wrappedValue.getter();
    (*(v46 + 8))(v7, v47);
    v48 = aBlock[0];
    v49 = swift_allocObject();
    v50 = v59;
    *(v49 + 16) = v58;
    *(v49 + 24) = v50;
    aBlock[4] = sub_100051804;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A5588;
    v51 = _Block_copy(aBlock);

    [v48 presentInvitationUIWithCustodianshipInfo:v34 completion:v51];
    _Block_release(v51);

    swift_unknownObjectRelease();
    return sub_10005AD7C(v16, type metadata accessor for CustodianshipInfoRecord);
  }
}

uint64_t sub_10004F3C4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a5, v19, 2u);
    }

    return (a2)(0);
  }
}

uint64_t sub_10004F664(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  a7(v13, a6, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10004FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a8;
  v48 = a6;
  v49 = a7;
  v47 = a5;
  v50 = a3;
  v51 = a4;
  v11 = sub_100005814(&unk_1003DA1A0, &unk_10033F2B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v16, v17);
  v46 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v44 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v43 = v12;
    v22 = v21;
    v52[0] = v21;
    *v20 = 136315138;
    swift_beginAccess();

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v23 = Dictionary.description.getter();
    v25 = v24;

    v26 = sub_10021145C(v23, v25, v52);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Errors from Repair custodians: %s", v20, 0xCu);
    sub_10000839C(v22);
    v12 = v43;

    v11 = v44;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v15, qword_1003FAA88);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "RepairCustodians: 2/2 Starting preflight", v29, 2u);
  }

  (*(v12 + 16))(v14, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianPreflight, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  v31 = v53;
  v30 = v54;
  v44 = sub_1000080F8(v52, v53);
  v32 = swift_allocObject();
  v33 = v47;
  v32[2] = v46;
  v32[3] = a2;
  v34 = v48;
  v35 = v49;
  v32[4] = v33;
  v32[5] = v34;
  v36 = v45;
  v32[6] = v35;
  v32[7] = v36;
  v32[8] = a9;
  v37 = *(v30 + 8);
  v38 = *(v37 + 16);
  v39 = v33;
  v40 = v34;

  v38(v50, v51, sub_10005A1C8, v32, v31, v37);

  return sub_10000839C(v52);
}

uint64_t sub_10004FE44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RepairCustodians: 2/2 Finished preflight", v14, 2u);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "RepairCustodians: Posting Recovery Contact Changed Notification", v17, 2u);
  }

  [objc_opt_self() postRecoveryContactChangedNotification];
  swift_beginAccess();
  v18 = *(a2 + 24);
  v19 = *(v18 + 16);
  if (v19 && (v20 = sub_100306DE8(v19, 0), v21 = sub_1002FD388(&v25, v20 + 4, v19, v18), v22 = v25, , sub_10005A1DC(v22), result = , v21 != v19))
  {
    __break(1u);
  }

  else
  {
    sub_100059740(a4);
    [a5 unlock];
    swift_beginAccess();
    if (*(a6 + 16))
    {
      swift_beginAccess();
      *(a6 + 16) = 0;
      swift_unknownObjectRelease();
    }

    return a7(0);
  }

  return result;
}

uint64_t sub_1000500E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA88);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = sub_10021145C(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v10 + 14) = v16;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);

    if (!a1)
    {
      return a3();
    }
  }

  else
  {

    if (!a1)
    {
      return a3();
    }
  }

  v20 = 0x3A726961706552;
  v21 = 0xE700000000000000;
  swift_errorRetain();
  type metadata accessor for UUID();
  v18._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v18);

  sub_10031F174(v20, v21, a1, a3, a4);
}

uint64_t sub_10005045C(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_1000504D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = [*(*sub_1000080F8((v2 + 224) *(v2 + 248)) + 16)];
  if (v10 && (v11 = v10, v12 = [v10 aa_altDSID], v11, v12))
  {
    v36 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v2;
    (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    v14 = kAACustodianRepairCFUActionBeginEvent;
    v15 = objc_opt_self();
    v16 = v14;

    v17 = String._bridgeToObjectiveC()();

    v18 = String._bridgeToObjectiveC()();

    v19 = [v15 analyticsEventWithName:v16 altDSID:v17 flowID:v18];

    sub_10000839C(v38);
    if (v19)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      [v19 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      if (qword_1003D7F50 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAAD0);
      v22 = v19;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      v25 = os_log_type_enabled(v23, v24);
      v26 = v36;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v22;
        *v28 = v19;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Reporting Repair CFU Action End Event %@", v27, 0xCu);
        sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
      }

      v30 = v37;
      (v37[2].isa)(v5, v13 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v26);
      Dependency.wrappedValue.getter();
      (v30[1].isa)(v5, v26);
      [v38[0] sendEvent:v22];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAD0);
    v37 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v37, v32, "Account is nil. Not reporting Repair action begin Event.", v33, 2u);
    }

    v34 = v37;
  }
}

id sub_100050A18(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - v5;
  v7 = [*(*sub_1000080F8((v2 + 224) *(v2 + 248)) + 16)];
  if (v7 && (v8 = v7, v9 = [v7 aa_altDSID], v8, v9))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v6, v3);
    v10 = kAACustodianRepairCFUActionEndEvent;
    v11 = objc_opt_self();
    v12 = v10;

    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();

    v15 = [v11 analyticsEventWithName:v12 altDSID:v13 flowID:v14];

    sub_10000839C(v22);
    return v15;
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Account is nil. Not reporting Repair action end Event.", v20, 2u);
    }

    return 0;
  }
}

uint64_t sub_100050CF8()
{
  sub_10000839C((v0 + 16));

  sub_10000839C((v0 + 64));
  sub_10000839C((v0 + 104));
  sub_10000839C((v0 + 144));
  sub_10000839C((v0 + 184));
  sub_10000839C((v0 + 224));
  sub_10000839C((v0 + 264));
  sub_10000839C((v0 + 304));
  sub_10000839C((v0 + 344));
  sub_10000839C((v0 + 384));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__healthCheckScheduler;
  v2 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__preflightScheduler;
  v4 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__recoveryFactorsController;
  v6 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__cloudStorage;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__idmsHandler;
  v10 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__syncManager;
  v12 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianFetcher;
  v14 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__keyRepair;
  v16 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianPreflight;
  v18 = sub_100005814(&unk_1003DA1A0, &unk_10033F2B0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory;
  v20 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter;
  v22 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider;
  v24 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__pushService;
  v26 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter;
  v28 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  return v0;
}

uint64_t sub_1000511A8()
{
  sub_100050CF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianDaemonService(uint64_t a1)
{
  result = qword_1003D99F8;
  if (!qword_1003D99F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051254(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DC950, &qword_1003D9A10, &qword_100343D80);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003D9A18, &qword_1003D9A20, &unk_10033F170);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &qword_1003D9A48, &unk_1003D9A50, qword_100343CC0);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, &qword_1003D9A68, &unk_1003D9A70, &unk_10033F060);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                    if (v10 <= 0x3F)
                    {
                      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                      if (v11 <= 0x3F)
                      {
                        sub_10000DAB8(319, &qword_1003D9AE8, &qword_1003D9AF0, &qword_10033F198);
                        if (v12 <= 0x3F)
                        {
                          sub_10000DAB8(319, &qword_1003D9AF8, &qword_1003D9B00, &unk_10033F1A0);
                          if (v13 <= 0x3F)
                          {
                            sub_10000DAB8(319, &qword_1003D9B08, &unk_1003D9B70, &unk_10033F1B0);
                            if (v14 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100051780()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000517CC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100051830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000518D4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000519FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10004D278(a1, v6, a2);
}

uint64_t sub_100051A7C()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

id sub_100051BCC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_10004D3F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_100051C74()
{
  v1 = *(sub_100005814(&unk_1003DA0E0, &unk_10033F1D0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);

  v7 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v15 = v6;
    v9 = *(*(v8 - 8) + 8);
    v9(v0 + v2, v8);
    v9(v7 + *(v4 + 20), v8);
    v6 = v15;

    sub_100012324(*(v7 + *(v4 + 32)), *(v7 + *(v4 + 32) + 8));
  }

  v10 = (((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v5 + v10 + 8) & ~v5;

  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + v11 + *(v4 + 20), v12);

  sub_100012324(*(v0 + v11 + *(v4 + 32)), *(v0 + v11 + *(v4 + 32) + 8));

  return _swift_deallocObject(v0, v11 + v6);
}

uint64_t sub_100051EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051F64(uint64_t a1)
{
  v3 = *(sub_100005814(&unk_1003DA0E0, &unk_10033F1D0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + v7);
  v14 = v1 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80));

  return sub_10004CF8C(a1, v9, v1 + v4, v10, v11, v12, v13, v14);
}

uint64_t sub_100052088(uint64_t a1)
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
  v11[1] = sub_10000EF88;

  return sub_10004D96C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100052174()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000521B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_10004E064(a1, v4, v5, v7, v6);
}

uint64_t sub_100052284(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_10012F118(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100052384()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000523DC()
{
  v1 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);
  v6(v0 + v2 + v1[6], v4);

  v7 = (v0 + v2 + v1[9]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  v9 = v1[12];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000525EC(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecoverySessionRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10004BC08(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_100052704(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100015D6C(result, a2);
  }

  return result;
}

uint64_t sub_100052718()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100052770()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000527BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052854(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_1000528A0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v27 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);

  v26 = (v27 + 32) & ~v27;
  v2 = v0 + v26;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v26, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v26 + v6[5], v3);

  v7 = (v0 + v26 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v24 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v24 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  v22 = (v25 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100052C60(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1000421D0(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_100052D10()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v25 = (v26 + 40) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000530C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000EF88;

  return sub_10002D6D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100053200(uint64_t a1)
{
  type metadata accessor for CustodianRecord(0);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_100042884(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_100053364()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000533B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_100043074(a1, v5, v4);
}

uint64_t sub_100053460(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v67 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v67 - v14;
  __chkstk_darwin(v13);
  v17 = &v67 - v16;
  v18 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v68 = swift_allocObject();
  *(v68 + 16) = a3;
  (*(v19 + 16))(v21, &a2[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider], v18);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v21, v18);
  sub_1000080F8(v70, v70[3]);
  LOBYTE(v21) = sub_10031A5C8(*(a2 + 7));
  sub_10000839C(v70);
  if ((v21 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is missing management entitlement, rejecting request to setupCustodianship", v31, 2u);
    }

    v32 = type metadata accessor for UUID();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v12, 1, 1, v32);
    type metadata accessor for AACustodianRecoveryError(0);
    v69 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = v70[0];
    sub_100012D04(v12, v9, &qword_1003D8B60, &unk_10033F210);
    isa = 0;
    if ((*(v33 + 48))(v9, 1, v32) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v33 + 8))(v9, v32);
    }

    v36 = _convertErrorToNSError(_:)();
    (a3)[2](a3, isa, v36);

    v37 = v12;
    goto LABEL_26;
  }

  v22 = [*(*sub_1000080F8(a2 + 28 *(a2 + 31)) + 16)];
  if (v22 && (v23 = v22, v24 = [v22 aa_primaryEmail], v23, v24))
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v38 = [a1 handle];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v27)
  {
    if (v25 == v39 && v27 == v41)
    {

LABEL_19:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAA88);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Cannot invite self as Custodian.", v46, 2u);
      }

      v47 = type metadata accessor for UUID();
      v48 = *(v47 - 8);
      (*(v48 + 56))(v17, 1, 1, v47);
      type metadata accessor for AACustodianError(0);
      v69 = -7020;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v49 = v70[0];
      sub_100012D04(v17, v15, &qword_1003D8B60, &unk_10033F210);
      v50 = 0;
      if ((*(v48 + 48))(v15, 1, v47) != 1)
      {
        v50 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v48 + 8))(v15, v47);
      }

      v51 = _convertErrorToNSError(_:)();
      (a3)[2](a3, v50, v51);

      v37 = v17;
LABEL_26:
      sub_100008D3C(v37, &qword_1003D8B60, &unk_10033F210);
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100008D04(v52, qword_1003FAA88);
  v53 = a1;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315138;
    v58 = [v53 handle];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = sub_10021145C(v59, v61, v70);

    *(v56 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v54, v55, "Begin custodianship setup for %s.", v56, 0xCu);
    sub_10000839C(v57);
  }

  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  v64[2] = v53;
  v64[3] = sub_10005B7A8;
  v64[4] = v68;
  v64[5] = v63;
  v65 = v53;

  sub_100040D94(v65, sub_10005B7F8, v64);
}

void *sub_100053E08(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CustodianDaemonContainer();
  v30 = v6;
  v31 = &off_1003A54A0;
  v29[0] = a2;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  a3[22] = a1;
  v7 = sub_1000080F8(v29, v6);
  sub_100040738(*v7 + 104, (a3 + 2));
  v8 = sub_1000080F8(v29, v30);
  sub_100040738(*v8 + 144, (a3 + 7));
  v9 = sub_1000080F8(v29, v30);
  sub_100040738(*v9 + 144, v28);
  v10 = sub_10003E968(v28, v28[3]);
  __chkstk_darwin(v10);
  v12 = (&v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for DaemonAccountStore();
  v27[3] = v15;
  v27[4] = &off_1003AB0B8;
  v27[0] = v14;
  v16 = type metadata accessor for DaemonSecurityController(0);
  v17 = swift_allocObject();
  v18 = sub_10003E968(v27, v15);
  __chkstk_darwin(v18);
  v20 = (&v27[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v17[5] = v15;
  v17[6] = &off_1003AB0B8;
  v17[2] = v22;
  sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  v23 = a1;
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9870, &qword_10033F000);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v27);
  sub_10000839C(v28);
  a3[15] = v16;
  a3[16] = &off_1003A49D8;
  a3[12] = v17;
  v24 = sub_1000080F8(v29, v30);
  sub_100040738(*v24 + 24, (a3 + 17));
  sub_10000839C(v29);
  return a3;
}

void sub_100054154(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v80 = a1;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v77 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = &v64 - v6;
  v7 = type metadata accessor for URL();
  v78 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v64 - v10;
  v79 = type metadata accessor for UUID();
  v11 = *(v79 - 8);
  v12 = __chkstk_darwin(v79);
  v71 = v13;
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  (*(v17 + 16))(v19, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v16);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  sub_1000080F8(v82, v83);
  v73 = a2;
  LOBYTE(v16) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v82);
  if (v16)
  {
    v70 = v7;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v69 = v5;
    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    v22 = v11;
    v23 = *(v11 + 16);
    v24 = v79;
    v68 = v23;
    v23(v15, v80, v79);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v67 = v22;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v22;
      v30 = swift_slowAlloc();
      v82[0] = v30;
      *v28 = 136315138;
      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v20;
      v34 = v33;
      (*(v29 + 8))(v15, v79);
      v35 = sub_10021145C(v31, v34, v82);
      v20 = v32;
      v36 = v79;

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "Resending custodian invitation to %s.", v28, 0xCu);
      sub_10000839C(v30);
    }

    else
    {

      v36 = v24;
      (*(v22 + 8))(v15, v24);
    }

    v43 = swift_allocObject();
    v79 = v43;
    *(v43 + 16) = sub_10005B8F8;
    *(v43 + 24) = v20;
    v65 = sub_1000080F8((v73 + 144), *(v73 + 168));
    v64 = swift_allocObject();
    swift_weakInit();
    v44 = v72;
    v68(v72, v80, v36);
    v45 = v67;
    v46 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v47 = (v71 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v20;
    v49 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    (*(v45 + 32))(v50 + v46, v44, v36);
    v51 = (v50 + v47);
    *v51 = sub_10005B8F8;
    v51[1] = v48;
    v66 = v48;
    *(v50 + v49) = v64;
    v52 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
    v53 = v79;
    *v52 = sub_10005B220;
    v52[1] = v53;
    v54 = sub_1000080F8((*v65 + 16), *(*v65 + 40));
    type metadata accessor for LocalCache();
    swift_retain_n();

    v55 = v74;
    sub_100307F40();
    v56 = v75;
    URL.appendingPathComponent(_:isDirectory:)();
    v57 = *(v78 + 8);
    v58 = v55;
    v59 = v70;
    v57(v58, v70);
    v60 = v76;
    v61 = v77;
    v62 = *v54 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
    v63 = v69;
    (*(v77 + 16))(v76, v62, v69);
    Dependency.wrappedValue.getter();
    (*(v61 + 8))(v60, v63);
    sub_1000080F8(v82, v83);
    sub_1000324D8(v56, sub_10005B318, v50);

    v57(v56, v59);
    sub_10000839C(v82);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAA88);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Client is missing management entitlement, rejecting request to reSendCustodianInvitation", v40, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v81 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v41 = v82[0];
    v42 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v42);
  }
}

uint64_t sub_100054A54(void *a1, char *a2, void *a3)
{
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v6 - 8);
  v106 = &v96 - v7;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v9 = *(updated - 8);
  v101 = updated;
  v102 = v9;
  v10 = __chkstk_darwin(updated);
  v103 = v11;
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v96 - v12;
  v13 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v96 - v15;
  v17 = type metadata accessor for UUID();
  v113 = *(v17 - 8);
  v114 = v17;
  v18 = *(v113 + 64);
  v19 = __chkstk_darwin(v17);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v99 = (&v96 - v21);
  v22 = __chkstk_darwin(v20);
  v98 = &v96 - v23;
  __chkstk_darwin(v22);
  v25 = &v96 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  v27 = swift_allocObject();
  v108 = a3;
  _Block_copy(a3);
  *(v27 + 16) = os_transaction_create();
  v107 = (v27 + 16);
  v28 = [objc_opt_self() lock];
  v109 = a1;
  v29 = [a1 custodianID];
  v112 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = swift_allocObject();
  *(v30 + 2) = v28;
  *(v30 + 3) = v27;
  *(v30 + 4) = sub_10005B8F8;
  *(v30 + 5) = v26;
  (*(v14 + 16))(v16, &a2[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider], v13);
  v110 = v26;

  v111 = v27;

  v31 = v28;
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v32 = a2;
  sub_1000080F8(v116, v116[3]);
  LOBYTE(v16) = sub_10031A5C8(*(a2 + 7));
  sub_10000839C(v116);
  if (v16)
  {
    v33 = [*(*sub_1000080F8(a2 + 28 *(a2 + 31)) + 16)];
    if (v33)
    {
      v108 = v31;

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAA88);
      v35 = v113;
      v36 = *(v113 + 16);
      v37 = v98;
      v107 = (v113 + 16);
      v96 = v36;
      v36(v98, v112, v114);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v116[0] = v41;
        *v40 = 136315138;
        v42 = UUID.uuidString.getter();
        v43 = v32;
        v45 = v44;
        (*(v113 + 8))(v37, v114);
        v46 = sub_10021145C(v42, v45, v116);
        v32 = v43;

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing custodian %s.", v40, 0xCu);
        sub_10000839C(v41);

        v35 = v113;
      }

      else
      {

        (*(v35 + 8))(v37, v114);
      }

      v64 = v109;
      v65 = [v109 custodianID];
      v66 = v99;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = [v64 telemetryFlowID];
      v97 = v30;
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      v72 = v35;
      v98 = *(v35 + 32);
      v73 = v105;
      v74 = v114;
      (v98)(v105, v66, v114);
      v75 = v101;
      *(v73 + v101[5]) = 4;
      *(v73 + v75[6]) = 0;
      *(v73 + v75[7]) = 0;
      v76 = (v73 + v75[8]);
      *v76 = v69;
      v76[1] = v71;
      *(v73 + v75[9]) = 1;
      v77 = v73 + v75[10];
      *v77 = 0;
      *(v77 + 8) = 1;
      v99 = sub_1000080F8(v32 + 48, *(v32 + 51));
      v78 = swift_allocObject();
      v101 = v78;
      swift_weakInit();
      v79 = v100;
      v96(v100, v112, v74);
      v80 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v81 = (v18 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      (v98)(v83 + v80, v79, v74);
      *(v83 + v81) = v78;
      *(v83 + v82) = v109;
      v84 = (v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8));
      v85 = v97;
      *v84 = sub_10005A8C0;
      v84[1] = v85;
      v86 = *v99;
      v87 = type metadata accessor for TaskPriority();
      v88 = v106;
      (*(*(v87 - 8) + 56))(v106, 1, 1, v87);
      v89 = v104;
      sub_10005AA4C(v73, v104, type metadata accessor for CustodianStatusUpdateRequest);
      v90 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v91 = (v103 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      *(v92 + 16) = 0;
      *(v92 + 24) = 0;
      sub_10005ABD0(v89, v92 + v90, type metadata accessor for CustodianStatusUpdateRequest);
      *(v92 + v91) = v86;
      v93 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v93 = sub_10005A994;
      v93[1] = v83;

      v94 = v109;

      sub_1000BCD5C(0, 0, v88, &unk_10033F360, v92);

      sub_10005AD7C(v73, type metadata accessor for CustodianStatusUpdateRequest);
      (*(v113 + 8))(v112, v114);
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100008D04(v56, qword_1003FAA88);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = os_log_type_enabled(v57, v58);
    v51 = v113;
    if (v59)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Not logged in to AppleAccount, unable to remove custodian", v60, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v116[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    v53 = &qword_1003D8140;
    v54 = type metadata accessor for AACustodianError;
    v55 = &unk_10033DF94;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA88);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v113;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Client is missing management entitlement, rejecting request to removeCustodian", v52, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v116[0] = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    v53 = &unk_1003DA100;
    v54 = type metadata accessor for AACustodianRecoveryError;
    v55 = &unk_10033E000;
  }

  sub_1000527BC(v53, v54, v55);
  _BridgedStoredNSError.init(_:userInfo:)();
  v61 = v115;
  [v31 unlock];
  v62 = v107;
  swift_beginAccess();
  if (*v62)
  {
    *v62 = 0;
    swift_unknownObjectRelease();
  }

  v63 = _convertErrorToNSError(_:)();
  (*(v108 + 2))(v108, v63);

  (*(v51 + 8))(v112, v114);
}

void sub_1000556A0(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v11 + 16))(v13, &a2[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider], v10);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  sub_1000080F8(v51, v51[3]);
  LOBYTE(v13) = sub_10031A5C8(*(a2 + 7));
  sub_10000839C(v51);
  if ((v13 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Client is missing management entitlement, rejecting request to stopBeingCustodian", v38, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v50 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    v39 = &unk_1003DA100;
    v40 = type metadata accessor for AACustodianRecoveryError;
    v41 = &unk_10033E000;
    goto LABEL_18;
  }

  v15 = [*(*sub_1000080F8(a2 + 28 *(a2 + 31)) + 16)];
  if (!v15)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAA88);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not logged in to AppleAccount, unable to end custodianship", v45, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v50 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    v39 = &qword_1003D8140;
    v40 = type metadata accessor for AACustodianError;
    v41 = &unk_10033DF94;
LABEL_18:
    sub_1000527BC(v39, v40, v41);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v51[0];
    v47 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v47);

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v7;
    v23 = v22;
    v51[0] = v22;
    *v21 = 136315138;
    v24 = [v17 custodianID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v49 + 8))(v9, v6);
    v28 = sub_10021145C(v25, v27, v51);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Ending custodianship %s.", v21, 0xCu);
    sub_10000839C(v23);
    v7 = v49;

    v14 = v48;
  }

  v29 = [v17 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v32 = [v30 initWithCustodianID:isa didAccept:0];

  (*(v7 + 8))(v9, v6);
  v33 = [v17 altDSID];
  [v32 setAltDSID:v33];

  v34 = [v17 telemetryFlowID];
  [v32 setTelemetryFlowID:v34];

  sub_10004C2B0(v32, sub_10005B8F8, v14);
}

void sub_100055DA4(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v6 = [v5 aa_primaryAppleAccount];
  if (v6)
  {

    v7 = swift_allocObject();
    *(v7 + 16) = sub_10005A798;
    *(v7 + 24) = v4;

    sub_100046128(sub_10005A7A0, v7);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not logged in to AppleAccount, unable to fetch", v11, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v12);
  }
}

void sub_100056018(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v73 = a2;
  v5 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  v71 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v72 = swift_allocObject();
  *(v72 + 16) = a3;
  _Block_copy(a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting recovery with IdMS with context: %@", v15, 0xCu);
    sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
  }

  if (![v12 isAccountRecovery])
  {
    goto LABEL_18;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "This is account recovery", v20, 2u);
  }

  v21 = [v12 recoverySessionID];
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = [v12 recoverySessionID];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
LABEL_20:
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Recovery session ID is missing in account recovery context", v50, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v51 = -9008;
      goto LABEL_31;
    }
  }

  v28 = [v12 ownerAppleID];
  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = [v12 ownerAppleID];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
LABEL_28:
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Account owner information is missing in account recovery context", v67, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v51 = -9037;
LABEL_31:
      v74 = v51;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
      _BridgedStoredNSError.init(_:userInfo:)();
      v68 = v75[0];
      v69 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v69);

      return;
    }
  }

LABEL_18:
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v37 = v73;
  v36[4] = v12;
  v36[5] = v37;
  v38 = v12;

  sub_1000BCD5C(0, 0, v10, &unk_10033F330, v36);

  v39 = [objc_allocWithZone(AKCustodianContext) init];
  v40 = [v38 ownerAppleID];
  [v39 setOwnerAppleID:v40];

  v41 = [v38 recoverySessionID];
  [v39 setRecoverySessionID:v41];

  [v39 set_cliMode:{objc_msgSend(v38, "CLIMode")}];
  v42 = kAAAnalyticsEventCustodianRecoveryFetchAPSToken;
  v43 = [v38 altDSID];
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v52 = [v38 telemetryFlowID];
  if (v52)
  {
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v57 = sub_100245D38(v42, v45, v47, v54, v56);
  v58 = v71;
  (*(v71 + 16))(v7, v73 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__pushService, v5);
  Dependency.wrappedValue.getter();
  (*(v58 + 8))(v7, v5);
  sub_1000080F8(v75, v75[3]);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v60[2] = v57;
  v60[3] = v59;
  v61 = v72;
  v60[4] = sub_10005A4CC;
  v60[5] = v61;
  v60[6] = v39;
  v60[7] = v38;
  v62 = v57;

  v63 = v39;
  v64 = v38;
  sub_1002C6068(sub_10005A634, v60);

  sub_10000839C(v75);
}

void sub_100056890(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 recoverySessionID];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10021145C(v8, v10, v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "Canceling recovery session with id: %s", v14, 0xCu);
      sub_10000839C(v15);
    }

    swift_beginAccess();
    sub_1000080F8((a2 + 264), *(a2 + 288));
    sub_1001086D8(v8, v10);

    (*(a3 + 16))(a3, 0);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Canceling recovery request missing session id: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v25[3] = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v25[0];
    v24 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v24);
  }
}

void sub_100056DB0(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10005A40C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Code validation completed with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    v19 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v19);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_10005A40C(a1, 0);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a1;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Code validation completed with context: %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    v18 = *(a3 + 16);

    v18(a3, v12, 0);
  }
}

void sub_100057090(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting Custodian recovery verification with context: %@", v10, 0xCu);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
  }

  swift_beginAccess();
  v13 = *sub_1000080F8((a2 + 264), *(a2 + 288));
  _Block_copy(aBlock);
  sub_10010D708(v7, v13, aBlock);
  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_10005723C(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-1] - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v7 + 16))(v9, &a2[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider], v6);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v23, v23[3]);
  LOBYTE(v9) = sub_10031A5C8(*(a2 + 7));
  sub_10000839C(v23);
  if (v9)
  {
    v11 = [*(*sub_1000080F8(a2 + 28 *(a2 + 31)) + 16)];
    if (v11)
    {

      sub_10004C2B0(a1, sub_10005B8F8, v10);

      return;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not logged in to AppleAccount, unable to fetch", v21, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v22 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v23[0];
    v17 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v17);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Client is missing management entitlement, rejecting request to respondToInvite", v15, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v22 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v23[0];
    v17 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v17);
  }
}

void sub_1000576B4(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v10 = [v9 aa_primaryAppleAccount];
  if (v10)
  {

    (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__healthCheckScheduler, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    v11 = v20;
    v12 = v21;
    sub_1000080F8(v19, v20);
    (*(v12 + 24))(sub_10005B8F8, v8, v11, v12);
    sub_10000839C(v19);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Not logged in to AppleAccount, unable to fetch", v16, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v22 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = v19[0];
    v18 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v18);
  }
}

void sub_1000579D4(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Kicking off manatee migration.", v8, 2u);
  }

  v9 = [*(*sub_1000080F8(a1 + 28 a1[31]) + 16)];
  if (v9)
  {

    v10 = a1[41];
    v11 = a1[42];
    sub_1000080F8(a1 + 38, v10);
    (*(v11 + 8))(sub_10005B8F8, v4, v10, v11);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not logged in to AppleAccount, unable to fetch", v14, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v15);
  }
}

void sub_100057CA8(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v10 = [v9 aa_primaryAppleAccount];
  if (v10)
  {

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Triggering a sync of trusted contacts with CloudKit.", v14, 2u);
    }

    (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__syncManager, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    sub_1000080F8(v22, v22[3]);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10005B8F8;
    *(v15 + 24) = v8;

    sub_1002E93B4(3, 1, sub_10005A220, v15);

    sub_10000839C(v22);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not logged in to AppleAccount, cannot trigger sync with CloudKit", v19, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v22[5] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v22[0];
    v21 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v21);
  }
}

void sub_1000580A8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v148 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v136 - v6;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v153 = *(v7 - 8);
  v154 = v7;
  __chkstk_darwin(v7);
  v152 = (&v136 - v8);
  v9 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v150 = *(v9 - 1);
  v151 = v9;
  __chkstk_darwin(v9);
  v11 = &v136 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v136 - v18;
  v157 = swift_allocObject();
  *(v157 + 16) = a3;
  (*(v17 + 16))(v19, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v16);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  v20 = a2;
  sub_1000080F8(v162, v163);
  LOBYTE(v19) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v162);
  if ((v19 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAA88);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "RepairCustodians: Client is missing management entitlement, rejecting request to repairCustodians", v48, 2u);
    }

    a3[2](a3, 0);
    goto LABEL_43;
  }

  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v13 + 8))(v15, v12);
  sub_1000504D0(v21, v23);
  v145 = v21;
  v24 = sub_100050A18(v21, v23);
  v25 = v24;
  if (a1)
  {
    v26 = a1;
    v27 = swift_allocObject();
    *(v27 + 16) = os_transaction_create();
    v28 = [objc_opt_self() lock];
    type metadata accessor for PartialErrorHandler();
    swift_allocObject();
    v29 = sub_10031FD1C();
    v30 = qword_1003D7F38;
    v149 = v29;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v143 = v25;
    v31 = v25;
    v32 = v28;
    v156 = v27;
    swift_retain_n();
    v33 = v157;
    swift_retain_n();
    v139 = v32;
    v138 = v31;
    if (v30 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    v34 = sub_100008D04(v137, qword_1003FAA88);

    v140 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    v37 = os_log_type_enabled(v35, v36);
    v144 = v23;
    v142 = v12;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v162[0] = v39;
      *v38 = 136315138;
      v40 = Array.description.getter();
      v42 = v26;
      v43 = v20;
      v44 = sub_10021145C(v40, v41, v162);

      *(v38 + 4) = v44;
      v20 = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "RepairCustodians: 1/2 Repairing custodians %s", v38, 0xCu);
      sub_10000839C(v39);
      v33 = v157;

      v23 = v144;
    }

    else
    {

      v42 = v26;
    }

    v155 = v42;
    v55 = v150;
    v54 = v151;
    (v150[2])(v11, v20 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__keyRepair, v151);
    Dependency.wrappedValue.getter();
    v55[1](v11, v54);
    v56 = *sub_1000080F8(v162, v163);
    v57 = swift_allocObject();
    v58 = v149;
    v57[2] = v149;
    v57[3] = v20;
    v57[4] = v145;
    v57[5] = v23;
    v59 = v139;
    v57[6] = v143;
    v57[7] = v59;
    v57[8] = v156;
    v57[9] = sub_10005B8F8;
    v57[10] = v33;
    v60 = swift_allocObject();
    v60[2] = v42;
    v60[3] = sub_10005A010;
    v60[4] = v57;
    v60[5] = v58;
    v141 = v60;
    v61 = v153;
    v62 = v153[2];
    v136 = v56;
    v63 = v56 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore;
    v64 = v152;
    v65 = v154;
    v62(v152, v63, v154);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v66 = v59;
    v67 = v138;
    v68 = v66;
    swift_bridgeObjectRetain_n();
    v151 = v68;
    v150 = v67;
    v139 = v57;

    Dependency.wrappedValue.getter();
    (v61[1])(v64, v65);
    v69 = [*(*sub_1000080F8(&v159 v161) + 16)];
    if (v69)
    {

      sub_10000839C(&v159);
      v70 = v147;
      v71 = v136;
      v72 = v146;
      v73 = v148;
      (*(v147 + 16))(v146, v136 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController, v148);
      Dependency.wrappedValue.getter();
      (*(v70 + 8))(v72, v73);
      v74 = *(*sub_1000080F8(&v159, v161) + 24);
      v158 = 0;
      if ([v74 isManateeAvailable:&v158])
      {
        v75 = v158;
        sub_10000839C(&v159);

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v159 = v79;
          *v78 = 136315138;
          v80 = Array.description.getter();
          v82 = sub_10021145C(v80, v81, &v159);

          *(v78 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v76, v77, "Starting Custodian Repair for UUIDs: %s", v78, 0xCu);
          sub_10000839C(v79);

          v83 = v144;
        }

        else
        {

          v83 = v144;
        }

        v131 = swift_allocObject();
        v132 = v155;
        v131[2] = v71;
        v131[3] = v132;
        v131[4] = v145;
        v131[5] = v83;
        v133 = v141;
        v131[6] = sub_10005A05C;
        v131[7] = v133;

        sub_100083C6C(v132, sub_10005A158, v131);

        goto LABEL_42;
      }

      v109 = v158;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10000839C(&v159);
      v110 = v149;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v137, qword_1003FAAB8);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v157;
      if (v113)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v159 = v116;
        *v115 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v115 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v159);
        _os_log_impl(&_mh_execute_header, v111, v112, "%s - no manatee available, stopping custodian key repair.", v115, 0xCu);
        sub_10000839C(v116);
      }

      type metadata accessor for AACustodianError(0);
      v159 = -7024;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v117 = v158;
      v92 = swift_allocObject();
      v92[2] = v110;
      v92[3] = v20;
      v118 = v144;
      v92[4] = v145;
      v92[5] = v118;
      v119 = v151;
      v92[6] = v143;
      v92[7] = v119;
      v92[8] = v156;
      v92[9] = sub_10005B8F8;
      v92[10] = v114;
      swift_retain_n();
      v154 = v20;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v120 = v150;
      v121 = v119;
      swift_retain_n();
      swift_retain_n();
      v97 = v121;
      v98 = v120;

      v99 = v117;
      v100 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v100, v122))
      {
        v123 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v159 = v153;
        *v123 = 136315394;
        v124 = Array.description.getter();
        v126 = v97;
        v127 = sub_10021145C(v124, v125, &v159);

        *(v123 + 4) = v127;
        v97 = v126;
        *(v123 + 12) = 2112;
        swift_errorRetain();
        v128 = _swift_stdlib_bridgeErrorToNSError();
        *(v123 + 14) = v128;
        v129 = v152;
        *v152 = v128;
        _os_log_impl(&_mh_execute_header, v100, v122, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v123, 0x16u);
        sub_100008D3C(v129, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v153);
      }
    }

    else
    {
      sub_10000839C(&v159);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v137, qword_1003FAAB8);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      v86 = os_log_type_enabled(v84, v85);
      v87 = v157;
      v88 = v149;
      if (v86)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v159 = v90;
        *v89 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v89 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v159);
        _os_log_impl(&_mh_execute_header, v84, v85, "%s - not logged in to AppleAccount, unable to repair keys", v89, 0xCu);
        sub_10000839C(v90);
      }

      type metadata accessor for AACustodianError(0);
      v159 = -7002;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v91 = v158;
      v92 = swift_allocObject();
      v92[2] = v88;
      v92[3] = v20;
      v93 = v144;
      v92[4] = v145;
      v92[5] = v93;
      v94 = v151;
      v92[6] = v143;
      v92[7] = v94;
      v92[8] = v156;
      v92[9] = sub_10005B8F8;
      v92[10] = v87;
      swift_retain_n();
      v154 = v20;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v95 = v150;
      v96 = v94;
      swift_retain_n();
      swift_retain_n();
      v97 = v96;
      v98 = v95;

      v99 = v91;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v159 = v153;
        *v102 = 136315394;
        v103 = Array.description.getter();
        v105 = v97;
        v106 = sub_10021145C(v103, v104, &v159);

        *(v102 + 4) = v106;
        v97 = v105;
        *(v102 + 12) = 2112;
        swift_errorRetain();
        v107 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 14) = v107;
        v108 = v152;
        *v152 = v107;
        _os_log_impl(&_mh_execute_header, v100, v101, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v102, 0x16u);
        sub_100008D3C(v108, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v153);
      }
    }

    v159 = 0x3A726961706552;
    v160 = 0xE700000000000000;
    swift_errorRetain();
    v130._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v130);

    sub_10031F174(v159, v160, v99, sub_10005B8AC, v92);

    swift_bridgeObjectRelease_n();

LABEL_42:

    swift_bridgeObjectRelease_n();
    v134 = v150;

    v135 = v151;

    sub_10000839C(v162);

LABEL_43:

    return;
  }

  v49 = v24;

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100008D04(v50, qword_1003FAA88);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "RepairCustodians: Nothing to repair", v53, 2u);
  }

  a3[2](a3, 0);
}

void sub_100059740(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  if (a1)
  {
    v8 = a1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v8 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAD0);
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a1;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Reporting Repair CFU Action End Event %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    [v21[1] sendEvent:v11];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);
    v21[0] = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21[0], v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v21[0], v18, "Event creation failed. Not reporting Repair Event.", v19, 2u);
    }

    v20 = v21[0];
  }
}

void sub_100059AB4(char *a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-1] - v6;
  v8 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-1] - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v9 + 16))(v11, &a1[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider], v8);
  _Block_copy(a2);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v27, v28);
  LOBYTE(v11) = sub_10031A5C8(*(a1 + 7));
  sub_10000839C(v27);
  if ((v11 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "PreflightCustodianRecovery: Client is missing management entitlement, rejecting request to preflight", v19, 2u);
    }

    a2[2](a2, 0);
    goto LABEL_9;
  }

  v13 = [*(*sub_1000080F8(a1 + 28 *(a1 + 31)) + 16)];
  if (v13)
  {

    (*(v5 + 16))(v7, &a1[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__preflightScheduler], v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    v14 = v28;
    v15 = v29;
    sub_1000080F8(v27, v28);
    (*(*(v15 + 8) + 24))(sub_100008DD4, v12, v14);
    sub_10000839C(v27);
LABEL_9:

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA88);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Not logged in to AppleAccount, unable to fetch", v23, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v26 = -7002;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v24 = v27[0];
  v25 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v25);
}

uint64_t sub_100059F9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100059FD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005A014()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005A068()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_10005A108()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10005A168()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10005A1E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_10005A22C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10004AC34(v2, v3, v4);
}

uint64_t sub_10005A2EC()
{
  v1 = sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005A380(void *a1, void *a2)
{
  sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);

  return sub_10004A98C(a1, a2);
}

void sub_10005A40C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_100049970(v2, v3, v4);
}

uint64_t sub_10005A4D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005A51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_100046CE0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005A5DC()
{

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_10005A668()
{
  result = qword_1003DA1E8;
  if (!qword_1003DA1E8)
  {
    sub_100008CBC(&qword_1003DA1E0, &qword_100345E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA1E8);
  }

  return result;
}

uint64_t sub_10005A6CC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005A720(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100012324(a1, a2);
  }
}

uint64_t sub_10005A740(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_10005A7A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_1000452B0(v2, v3, v4);
}

uint64_t sub_10005A85C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_10005A8CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005A994(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100043B7C(a1, (v1 + v4), v7, v8, v10, v11);
}

uint64_t sub_10005AA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AAB4()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10005ABD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AC38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000EF88;

  return sub_10013F41C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10005AD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005ADDC()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005AFE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianRecord(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000EF88;

  return sub_1000442F0(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10005B134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_100044998(a1, v5, v4);
}

uint64_t sub_10005B1E0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005B24C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_10005B318(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *(v2 + v8);
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_100043238(a1, a2 & 1, v2 + v6, v11, v12, v10, v14, v15);
}

uint64_t sub_10005B434()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 80) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005B644(uint64_t a1)
{
  type metadata accessor for CustodianRecord(0);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_100042884(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_10005B7B0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005B8FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10005B9C8, 0, 0);
}

uint64_t sub_10005B9C8()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching trusted contacts with request: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  v14 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (!v14)
  {
    sub_10000839C(v0 + 2);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount, unable to fetch", v22, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[8] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
LABEL_20:
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  v15 = v0[11];

  sub_10000839C(v0 + 2);
  v16 = [v15 contactType];
  if (v16 != 1)
  {
    if (!v16)
    {
      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      v17[1] = sub_10005BEC8;
      v18 = v0[11];

      return sub_10005C120(v18);
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unknown contactType is requested in the fetch trusted contact request", v27, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[10] = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    goto LABEL_20;
  }

  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_10005BFF4;
  v24 = v0[11];

  return sub_10006C4A0(v24);
}

uint64_t sub_10005BEC8(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10005BFF4(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10005C120(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10005C1E0, 0, 0);
}

uint64_t sub_10005C1E0()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe.", v4, 2u);
  }

  v5 = v0[19];

  v6 = [v5 cachePolicy];
  if (v6 == 1)
  {
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_10005CD04;

    return sub_10005EDD4();
  }

  else if (v6)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unknown cachePolicy is requested in the fetch trusted contact request", v12, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[17] = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_10005C4F0;

    return sub_10005D518();
  }
}

uint64_t sub_10005C4F0(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v4 = *v2;
  v3[25] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10005C648, 0, 0);
  }
}

uint64_t sub_10005C648()
{
  v48 = *(v0 + 200);
  v49 = *(v0 + 88);
  v1 = [*(v0 + 152) includedStatuses];
  v2 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 40))
  {
    sub_100070AF0((v0 + 16), (v0 + 48));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = _swiftEmptyArrayStorage;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);

  (*(v3 + 8))(v4, v5);
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = _swiftEmptyArrayStorage;
    if (i)
    {
      v8 = 0;
      v50 = v2 & 0xC000000000000001;
      v9 = v2 & 0xFFFFFFFFFFFFFF8;
      v10 = v2;
      while (1)
      {
        if (v50)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v2 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v14 = [v11 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100306104(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_100306104((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = v14;
        ++v8;
        v2 = v10;
        if (v13 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_24:

    v2 = sub_1002E2014(v7);

    if (!*(v2 + 16))
    {

      v30 = v49;
      goto LABEL_52;
    }

    if (!(v49 >> 62))
    {
      v17 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        break;
      }

      goto LABEL_27;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (!v17)
    {
      break;
    }

LABEL_27:
    v18 = 0;
    v19 = (v49 + 32);
    v20 = v2 + 56;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v21 = v19[v18];
      }

      v22 = v21;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v24 = [v21 status];
      if (*(v2 + 16) && (v25 = v24, v26 = static Hasher._hash(seed:_:)(), v27 = -1 << *(v2 + 32), v28 = v26 & ~v27, ((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v29 = ~v27;
        while (*(*(v2 + 48) + 8 * v28) != v25)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v19 = (v49 + 32);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v18 == v17)
        {
LABEL_42:
          v30 = _swiftEmptyArrayStorage;
          goto LABEL_51;
        }
      }

      else
      {
LABEL_28:

        if (v18 == v17)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_51:

LABEL_52:
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    if (v30 >> 62)
    {
      goto LABEL_76;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      while (2)
      {
        v32 = v30 & 0xFFFFFFFFFFFFFF8;
        v33 = v30 & 0xC000000000000001;
        v34 = v30;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
          v36 = v35;
          v37 = sub_10006F874(v35, *(v0 + 152));
          if (v48)
          {

            v38 = *(v0 + 8);

            return v38();
          }

          v40 = v37;
          [v36 setLocalContactRepresentation:v37];

          if (v31 == 1)
          {
            break;
          }

          v42 = 5;
          while (1)
          {
            v43 = v42 - 4;
            if (v33)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v43 >= *(v32 + 16))
              {
                goto LABEL_74;
              }

              v44 = *(v30 + 8 * v42);
            }

            v45 = v44;
            v46 = v42 - 3;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            v47 = sub_10006F874(v44, *(v0 + 152));
            [v45 setLocalContactRepresentation:v47];

            ++v42;
            v30 = v34;
            if (v46 == v31)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v35 = *(v30 + 32);
            goto LABEL_58;
          }

LABEL_74:
          __break(1u);
        }

        __break(1u);
LABEL_76:
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (!v31)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_63:

  v41 = *(v0 + 8);

  return v41(v30);
}

uint64_t sub_10005CD04(uint64_t a1)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = v1;
  v4 = *v2;
  v3[27] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10005CE5C, 0, 0);
  }
}

uint64_t sub_10005CE5C()
{
  v48 = *(v0 + 216);
  v49 = *(v0 + 112);
  v1 = [*(v0 + 152) includedStatuses];
  v2 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 40))
  {
    sub_100070AF0((v0 + 16), (v0 + 48));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = _swiftEmptyArrayStorage;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);

  (*(v3 + 8))(v4, v5);
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = _swiftEmptyArrayStorage;
    if (i)
    {
      v8 = 0;
      v50 = v2 & 0xC000000000000001;
      v9 = v2 & 0xFFFFFFFFFFFFFF8;
      v10 = v2;
      while (1)
      {
        if (v50)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v2 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v14 = [v11 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100306104(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_100306104((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = v14;
        ++v8;
        v2 = v10;
        if (v13 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_24:

    v2 = sub_1002E2014(v7);

    if (!*(v2 + 16))
    {

      v30 = v49;
      goto LABEL_52;
    }

    if (!(v49 >> 62))
    {
      v17 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        break;
      }

      goto LABEL_27;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (!v17)
    {
      break;
    }

LABEL_27:
    v18 = 0;
    v19 = (v49 + 32);
    v20 = v2 + 56;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v21 = v19[v18];
      }

      v22 = v21;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v24 = [v21 status];
      if (*(v2 + 16) && (v25 = v24, v26 = static Hasher._hash(seed:_:)(), v27 = -1 << *(v2 + 32), v28 = v26 & ~v27, ((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v29 = ~v27;
        while (*(*(v2 + 48) + 8 * v28) != v25)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v19 = (v49 + 32);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v18 == v17)
        {
LABEL_42:
          v30 = _swiftEmptyArrayStorage;
          goto LABEL_51;
        }
      }

      else
      {
LABEL_28:

        if (v18 == v17)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_51:

LABEL_52:
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    if (v30 >> 62)
    {
      goto LABEL_76;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      while (2)
      {
        v32 = v30 & 0xFFFFFFFFFFFFFF8;
        v33 = v30 & 0xC000000000000001;
        v34 = v30;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
          v36 = v35;
          v37 = sub_10006F874(v35, *(v0 + 152));
          if (v48)
          {

            v38 = *(v0 + 8);

            return v38();
          }

          v40 = v37;
          [v36 setLocalContactRepresentation:v37];

          if (v31 == 1)
          {
            break;
          }

          v42 = 5;
          while (1)
          {
            v43 = v42 - 4;
            if (v33)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v43 >= *(v32 + 16))
              {
                goto LABEL_74;
              }

              v44 = *(v30 + 8 * v42);
            }

            v45 = v44;
            v46 = v42 - 3;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            v47 = sub_10006F874(v44, *(v0 + 152));
            [v45 setLocalContactRepresentation:v47];

            ++v42;
            v30 = v34;
            if (v46 == v31)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v35 = *(v30 + 32);
            goto LABEL_58;
          }

LABEL_74:
          __break(1u);
        }

        __break(1u);
LABEL_76:
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (!v31)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_63:

  v41 = *(v0 + 8);

  return v41(v30);
}

uint64_t sub_10005D518()
{
  v1[18] = v0;
  v2 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for CustodianRecord(0);
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_10005D71C, 0, 0);
}

uint64_t sub_10005D71C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe from local cache.", v4, 2u);
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[18];

  v9 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v0[33] = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v10 = *(v6 + 16);
  v0[34] = v10;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v8 + v9, v7);
  Dependency.wrappedValue.getter();
  v11 = *(v6 + 8);
  v0[36] = v11;
  v0[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  sub_1000080F8(v0 + 2, v0[5]);
  v12 = type metadata accessor for CustodianStorageController();
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v13[1] = sub_10005D98C;

  return (sub_1000308CC)(v12, &off_1003A4C78);
}

uint64_t sub_10005D98C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_10005E8F0;
  }

  else
  {
    v4 = sub_10005DAA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005DAA0()
{
  v1 = *(v0 + 312);
  result = sub_10000839C((v0 + 16));
  v3 = *(v1 + 16);
  *(v0 + 328) = v3;
  if (v3)
  {
    v4 = *(v0 + 312);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 144);
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 336) = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler;
    v9 = *(v5 + 80);
    *(v0 + 384) = v9;
    *(v0 + 344) = 0;
    *(v0 + 352) = _swiftEmptyArrayStorage;
    if (*(v4 + 16))
    {
      v28 = *(v0 + 288);
      v10 = *(v0 + 272);
      v11 = *(v0 + 264);
      v12 = *(v0 + 248);
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = *(v0 + 192);
      sub_100070E78(v4 + ((v9 + 32) & ~v9), v14, type metadata accessor for CustodianRecord);
      v16 = *(v6 + 20);
      *(v0 + 388) = v16;
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 16))(v15, v14 + v16, v17);
      *(v15 + v7[5]) = 0;
      v18 = v15 + v7[6];
      *v18 = 0;
      *(v18 + 8) = 1;
      *(v15 + v7[7]) = 1;
      v19 = (v15 + v7[8]);
      *v19 = 0;
      v19[1] = 0;
      v20 = (v15 + v7[9]);
      *v20 = 0;
      v20[1] = 0;
      v10(v12, v8 + v11, v13);
      Dependency.wrappedValue.getter();
      v28(v12, v13);
      sub_1000080F8((v0 + 56), *(v0 + 80));
      v21 = swift_task_alloc();
      *(v0 + 360) = v21;
      *v21 = v0;
      v21[1] = sub_10005DDC8;
      v22 = *(v0 + 192);
      v23 = *(v0 + 176);

      return sub_100021548(v23, v22, 0, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "FetchCustodians found 0 records", v26, 2u);
    }

    v27 = *(v0 + 8);

    return v27(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10005DDC8()
{

  if (v0)
  {

    v1 = sub_10005E050;
  }

  else
  {
    v1 = sub_10005DEE0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10005DEE0()
{
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 56));
  v3 = *(v0 + 388);
  v4 = *(v0 + 224);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v6 + 16))(v5, *(v0 + 144) + *(v0 + 336), v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_1000080F8((v0 + 96), *(v0 + 120));
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *v8 = v0;
  v8[1] = sub_10005E1C0;

  return sub_100080620(v4 + v3, 1);
}

uint64_t sub_10005E050()
{
  v1 = *(v0 + 176);
  sub_10000839C((v0 + 56));
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 388);
  v4 = *(v0 + 224);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v6 + 16))(v5, *(v0 + 144) + *(v0 + 336), v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_1000080F8((v0 + 96), *(v0 + 120));
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *v8 = v0;
  v8[1] = sub_10005E1C0;

  return sub_100080620(v4 + v3, 1);
}

uint64_t sub_10005E1C0(char a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {

    v5 = sub_10005E7E8;
  }

  else
  {
    *(v4 + 392) = a1;
    v5 = sub_10005E2FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005E2FC()
{
  if (*(v0 + 392) && *(v0 + 392) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 176);

  sub_10000839C((v0 + 96));
  sub_100070E78(v2, v3, type metadata accessor for CustodianRecord);
  v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
  v7 = sub_10005E9A0(v3, v6, v1 & 1, 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v8 = *(v0 + 328);
  v9 = *(v0 + 224);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 344) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100070B00(v10, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_100070B00(v9, type metadata accessor for CustodianRecord);
  v13 = *(v0 + 136);
  result = sub_100008D3C(v11, &unk_1003D91B0, qword_1003444F0);
  if (v12 == v8)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Returning cached trusted contacts", v17, 2u);
    }

    v18 = *(v0 + 8);

    return v18(v13);
  }

  else
  {
    v19 = *(v0 + 344) + 1;
    *(v0 + 344) = v19;
    *(v0 + 352) = v13;
    v20 = *(v0 + 312);
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = *(v0 + 288);
      v21 = *(v0 + 272);
      v22 = *(v0 + 264);
      v23 = *(v0 + 248);
      v25 = *(v0 + 224);
      v24 = *(v0 + 232);
      v26 = *(v0 + 200);
      v28 = *(v0 + 184);
      v27 = *(v0 + 192);
      v29 = *(v0 + 144);
      sub_100070E78(v20 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(*(v0 + 208) + 72) * v19, v25, type metadata accessor for CustodianRecord);
      v30 = *(v26 + 20);
      *(v0 + 388) = v30;
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 16))(v27, v25 + v30, v31);
      *(v27 + v28[5]) = 0;
      v32 = v27 + v28[6];
      *v32 = 0;
      *(v32 + 8) = 1;
      *(v27 + v28[7]) = 1;
      v33 = (v27 + v28[8]);
      *v33 = 0;
      v33[1] = 0;
      v34 = (v27 + v28[9]);
      *v34 = 0;
      v34[1] = 0;
      v21(v23, v29 + v22, v24);
      Dependency.wrappedValue.getter();
      v38(v23, v24);
      sub_1000080F8((v0 + 56), *(v0 + 80));
      v35 = swift_task_alloc();
      *(v0 + 360) = v35;
      *v35 = v0;
      v35[1] = sub_10005DDC8;
      v36 = *(v0 + 192);
      v37 = *(v0 + 176);

      return sub_100021548(v37, v36, 0, 0);
    }
  }

  return result;
}

uint64_t sub_10005E7E8()
{
  v1 = v0[28];
  v2 = v0[22];
  sub_100070B00(v0[24], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_100070B00(v1, type metadata accessor for CustodianRecord);
  sub_100008D3C(v2, &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 12);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005E8F0()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

id sub_10005E9A0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v46 = a4;
  v44 = a3;
  v45 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for PersonNameComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianRecord(0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v41 = *(a1 + v12[9]);
  v42 = String._bridgeToObjectiveC()();
  v13 = (a1 + v12[7]);
  v14 = *v13;
  v15 = v13[1];
  if (v15)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  v16 = (a1 + v12[8]);
  v17 = *v16;
  v18 = v16[1];
  if (v18)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  PersonNameComponents.init()();
  if (v15)
  {
    sub_1002576F0(v14, v15);
  }

  PersonNameComponents.givenName.setter();
  if (v18)
  {
    sub_1002576F0(v17, v18);
  }

  PersonNameComponents.familyName.setter();
  v19 = objc_opt_self();
  v20 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v21 = [v19 localizedStringFromPersonNameComponents:v20 style:0 options:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 8))(v11, v8);
  v22 = String._bridgeToObjectiveC()();

  sub_100012D04(a1 + v12[16], v7, &qword_1003D8B60, &unk_10033F210);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v7, 1, v23) != 1)
  {
    v25 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v7, v23);
  }

  if (*(a1 + v12[13] + 8))
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  if (*(a1 + v12[14] + 8))
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = (a1 + v12[15]);
  if (*(v28 + 8))
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28;
  }

  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v38 = v29;
  BYTE1(v37) = v44 & 1;
  LOBYTE(v37) = v45 & 1;
  v32 = v42;
  v31 = isa;
  v33 = v40;
  v34 = v39;
  v35 = [v30 initWithID:isa status:v41 handle:v42 firstName:v40 lastName:v39 displayName:v22 isAcceptedAndShared:v37 isIdMSConfirmed:v46 preflightStatus:v25 otCustodianID:v26 keyCreatedOnBuild:v27 repairDate:v38 repairCount:?];

  sub_100070B00(a1, type metadata accessor for CustodianRecord);
  return v35;
}

uint64_t sub_10005EDD4()
{
  v1[22] = v0;
  v2 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v5 = type metadata accessor for CustodianRecord(0);
  v1[46] = v5;
  v1[47] = *(v5 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v6 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v1[62] = v6;
  v1[63] = *(v6 - 8);
  v1[64] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v1[65] = v7;
  v1[66] = *(v7 - 8);
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_10005F20C, 0, 0);
}

uint64_t sub_10005F20C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[68] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe by refreshing record state from cloud", v4, 2u);
  }

  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[22];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_1000080F8(v0 + 2, v0[5]);
  v9 = type metadata accessor for CustodianStorageController();
  v10 = swift_task_alloc();
  v0[69] = v10;
  *v10 = v0;
  v10[1] = sub_10005F464;

  return (sub_1000308CC)(v9, &off_1003A4C78);
}

uint64_t sub_10005F464(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v4 = sub_100066898;
  }

  else
  {
    v4 = sub_10005F57C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005F57C()
{
  v134 = v0;
  v1 = *(v0 + 560);
  sub_10000839C((v0 + 16));
  v2 = *(v1 + 16);
  *(v0 + 576) = v2;
  if (v2)
  {
    v4 = *(v0 + 504);
    v3 = *(v0 + 512);
    v5 = *(v0 + 496);
    v6 = *(v0 + 376);
    (*(v4 + 16))(v3, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler, v5);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    v7 = sub_1000080F8((v0 + 56), *(v0 + 80));
    v8 = *v7;
    os_unfair_lock_lock(*(*v7 + 40));
    *(v8 + 16) = 0;

    os_unfair_lock_unlock(*(v8 + 40));
    sub_10000839C((v0 + 56));
    v9 = sub_100308BAC(_swiftEmptyArrayStorage);
    v10 = 0;
    *(v0 + 864) = *(v6 + 80);
    *(v0 + 584) = *(v6 + 72);
    while (1)
    {
      *(v0 + 608) = v9;
      *(v0 + 600) = v10;
      *(v0 + 876) = 1;
      *(v0 + 592) = v9;
      v11 = *(v0 + 488);
      v12 = *(v0 + 368);
      sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v10, v11, type metadata accessor for CustodianRecord);
      if (*(v11 + *(v12 + 36)) == 2)
      {
        break;
      }

      sub_100070B00(*(v0 + 488), type metadata accessor for CustodianRecord);
      *(v0 + 624) = v9;
      *(v0 + 616) = v9;
      v10 = *(v0 + 600) + 1;
      if (v10 == *(v0 + 576))
      {
        *(v0 + 752) = v9;
        type metadata accessor for CustodianDefaults();
        result = swift_initStackObject();
        *(v0 + 760) = result;
        *(v0 + 152) = _swiftEmptyArrayStorage;
        *(v0 + 776) = _swiftEmptyArrayStorage;
        *(v0 + 768) = 0;
        v14 = *(v0 + 560);
        if (*(v14 + 16))
        {
          v16 = *(v0 + 464);
          v15 = *(v0 + 472);
          v18 = *(v0 + 448);
          v17 = *(v0 + 456);
          sub_100070E78(v14 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v15, type metadata accessor for CustodianRecord);
          sub_100070E78(v15, v16, type metadata accessor for CustodianRecord);
          sub_100070E78(v15, v17, type metadata accessor for CustodianRecord);
          sub_100070E78(v15, v18, type metadata accessor for CustodianRecord);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          v21 = os_log_type_enabled(v19, v20);
          v22 = *(v0 + 456);
          v23 = *(v0 + 464);
          v24 = *(v0 + 448);
          if (v21)
          {
            v25 = *(v0 + 368);
            v26 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v133[0] = v132;
            *v26 = 134218498;
            v131 = v20;
            v27 = *(v23 + *(v25 + 36));
            sub_100070B00(v23, type metadata accessor for CustodianRecord);
            *(v26 + 4) = v27;
            *(v26 + 12) = 1024;
            LODWORD(v27) = *(v22 + *(v25 + 36)) == 2;
            sub_100070B00(v22, type metadata accessor for CustodianRecord);
            *(v26 + 14) = v27;
            *(v26 + 18) = 2080;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v28 = dispatch thunk of CustomStringConvertible.description.getter();
            v30 = v29;
            sub_100070B00(v24, type metadata accessor for CustodianRecord);
            v31 = sub_10021145C(v28, v30, v133);

            *(v26 + 20) = v31;
            _os_log_impl(&_mh_execute_header, v19, v131, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v26, 0x1Cu);
            sub_10000839C(v132);
          }

          else
          {
            sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
            sub_100070B00(v23, type metadata accessor for CustodianRecord);

            sub_100070B00(v24, type metadata accessor for CustodianRecord);
          }

          v50 = *(v0 + 472);
          if (*(v50 + *(*(v0 + 368) + 36)) == 2)
          {
            sub_100070E78(v50, *(v0 + 440), type metadata accessor for CustodianRecord);
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();
            v53 = os_log_type_enabled(v51, v52);
            v54 = *(v0 + 440);
            if (v53)
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v133[0] = v56;
              *v55 = 136315138;
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v57 = dispatch thunk of CustomStringConvertible.description.getter();
              v59 = v58;
              sub_100070B00(v54, type metadata accessor for CustodianRecord);
              v60 = sub_10021145C(v57, v59, v133);

              *(v55 + 4) = v60;
              _os_log_impl(&_mh_execute_header, v51, v52, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v55, 0xCu);
              sub_10000839C(v56);
            }

            else
            {

              sub_100070B00(v54, type metadata accessor for CustodianRecord);
            }

            if (*(*(v0 + 752) + 16) && (v76 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v77 & 1) != 0))
            {
              sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v76, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
              v78 = 0;
            }

            else
            {
              v78 = 1;
            }

            v79 = *(v0 + 272);
            v80 = *(v0 + 280);
            v81 = *(v0 + 208);
            v82 = *(v0 + 216);
            (*(v82 + 56))(v80, v78, 1, v81);
            sub_100012D04(v80, v79, &unk_1003D91B0, qword_1003444F0);
            v83 = (*(v82 + 48))(v79, 1, v81);
            v84 = *(v0 + 472);
            v85 = *(v0 + 272);
            if (v83 == 1)
            {
              v86 = *(v0 + 424);
              sub_100008D3C(v85, &unk_1003D91B0, qword_1003444F0);
              sub_100070E78(v84, v86, type metadata accessor for CustodianRecord);
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.error.getter();
              v89 = os_log_type_enabled(v87, v88);
              v90 = *(v0 + 424);
              if (v89)
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v133[0] = v92;
                *v91 = 136315138;
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v93 = dispatch thunk of CustomStringConvertible.description.getter();
                v95 = v94;
                sub_100070B00(v90, type metadata accessor for CustodianRecord);
                v96 = sub_10021145C(v93, v95, v133);

                *(v91 + 4) = v96;
                _os_log_impl(&_mh_execute_header, v87, v88, "CustodianRecoveryInfoRecord not found for custodianID: %s", v91, 0xCu);
                sub_10000839C(v92);
              }

              else
              {

                sub_100070B00(v90, type metadata accessor for CustodianRecord);
              }

              *(v0 + 878) = 0;
              sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
              v115 = Logger.logObject.getter();
              v116 = static os_log_type_t.default.getter();
              v117 = os_log_type_enabled(v115, v116);
              v118 = *(v0 + 416);
              if (v117)
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v133[0] = v120;
                *v119 = 136315138;
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v121 = dispatch thunk of CustomStringConvertible.description.getter();
                v123 = v122;
                sub_100070B00(v118, type metadata accessor for CustodianRecord);
                v124 = sub_10021145C(v121, v123, v133);

                *(v119 + 4) = v124;
                _os_log_impl(&_mh_execute_header, v115, v116, "Checking if setup finalized from server for custodianID: %s", v119, 0xCu);
                sub_10000839C(v120);
              }

              else
              {

                sub_100070B00(v118, type metadata accessor for CustodianRecord);
              }

              v128 = *(v0 + 472);
              v129 = *(v0 + 176);
              v99 = swift_task_alloc();
              *(v0 + 808) = v99;
              *(v99 + 16) = v129;
              *(v99 + 24) = v128;
              v130 = swift_task_alloc();
              *(v0 + 816) = v130;
              *v130 = v0;
              v130[1] = sub_100064B38;
              v101 = &unk_10033F4D0;
              v102 = 0x800000010032D620;
              v103 = 0xD000000000000015;
            }

            else
            {
              v104 = *(v0 + 432);
              sub_100070D64(v85, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
              sub_100070E78(v84, v104, type metadata accessor for CustodianRecord);
              v105 = Logger.logObject.getter();
              v106 = static os_log_type_t.default.getter();
              v107 = os_log_type_enabled(v105, v106);
              v108 = *(v0 + 432);
              if (v107)
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v133[0] = v110;
                *v109 = 136315138;
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v111 = dispatch thunk of CustomStringConvertible.description.getter();
                v113 = v112;
                sub_100070B00(v108, type metadata accessor for CustodianRecord);
                v114 = sub_10021145C(v111, v113, v133);

                *(v109 + 4) = v114;
                _os_log_impl(&_mh_execute_header, v105, v106, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v109, 0xCu);
                sub_10000839C(v110);
              }

              else
              {

                sub_100070B00(v108, type metadata accessor for CustodianRecord);
              }

              v125 = *(v0 + 224);
              v126 = *(v0 + 176);
              v99 = swift_task_alloc();
              *(v0 + 784) = v99;
              *(v99 + 16) = v126;
              *(v99 + 24) = v125;
              v127 = swift_task_alloc();
              *(v0 + 792) = v127;
              *v127 = v0;
              v127[1] = sub_100064734;
              v101 = &unk_10033F4E0;
              v103 = 0xD000000000000016;
              v102 = 0x800000010032D640;
            }
          }

          else
          {
            *(v0 + 880) = 0;
            *(v0 + 832) = v9;
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 67109376;
              *(v63 + 8) = 1024;
              *(v63 + 10) = 0;
              _os_log_impl(&_mh_execute_header, v61, v62, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v63, 0xEu);
            }

            v64 = *(v0 + 472);
            v65 = *(v0 + 408);

            sub_100070E78(v64, v65, type metadata accessor for CustodianRecord);
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.default.getter();
            v68 = os_log_type_enabled(v66, v67);
            v69 = *(v0 + 408);
            if (v68)
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v133[0] = v71;
              *v70 = 136315138;
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v72 = dispatch thunk of CustomStringConvertible.description.getter();
              v74 = v73;
              sub_100070B00(v69, type metadata accessor for CustodianRecord);
              v75 = sub_10021145C(v72, v74, v133);

              *(v70 + 4) = v75;
              _os_log_impl(&_mh_execute_header, v66, v67, " Checking if CRK exist at security layer for custodianID: %s", v70, 0xCu);
              sub_10000839C(v71);
            }

            else
            {

              sub_100070B00(v69, type metadata accessor for CustodianRecord);
            }

            v97 = *(v0 + 472);
            v98 = *(v0 + 176);
            v99 = swift_task_alloc();
            *(v0 + 840) = v99;
            *(v99 + 16) = v98;
            *(v99 + 24) = v97;
            v100 = swift_task_alloc();
            *(v0 + 848) = v100;
            *v100 = v0;
            v100[1] = sub_100064FE4;
            v101 = &unk_10033F4B8;
            v102 = 0xEF74736978652D52;
            v103 = 0x4B432D6B63656863;
          }

          return sub_1000699F4(v103, v102, v101, v99);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v36 = *(v0 + 488);
    v37 = *(v0 + 360);
    v38 = *(v0 + 344);
    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    v41 = *(v0 + 176);
    v42 = *(*(v0 + 368) + 20);
    *(v0 + 868) = v42;
    v43 = *(v40 + 16);
    *(v0 + 632) = v43;
    *(v0 + 640) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v37, v36 + v42, v39);
    *(v37 + v38[5]) = 0;
    v44 = v37 + v38[6];
    *v44 = 0;
    *(v44 + 8) = 1;
    *(v37 + v38[7]) = 1;
    v45 = (v37 + v38[8]);
    *v45 = 0;
    v45[1] = 0;
    v46 = (v37 + v38[9]);
    *v46 = 0;
    v46[1] = 0;
    v47 = swift_task_alloc();
    *(v0 + 648) = v47;
    *(v47 + 16) = v41;
    *(v47 + 24) = v37;
    v48 = swift_task_alloc();
    *(v0 + 656) = v48;
    *v48 = v0;
    v48[1] = sub_100060884;
    v49 = *(v0 + 336);

    return sub_10006A3C0(v49, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v47);
  }

  else
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "FetchCustodians found 0 records", v34, 2u);
    }

    v35 = *(v0 + 8);

    return v35(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100060884()
{

  if (v0)
  {

    v1 = sub_100066A98;
  }

  else
  {

    v1 = sub_1000609CC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000609CC()
{
  v166 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 868);
  v3 = *(v0 + 488);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v162 = *(v9 + 56);
  v162(v5, 0, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {
    v11 = *(v0 + 264);
    sub_100008D3C(*(v0 + 328), &unk_1003D91B0, qword_1003444F0);
    v12 = sub_10031AF8C(v11);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 592);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 168) = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
        v17 = (v0 + 592);
      }

      else
      {
LABEL_56:
        v17 = (v0 + 168);
        sub_1002D0004();
      }

      v18 = *v17;
      v19 = *(v0 + 320);
      v20 = *(v0 + 216);
      (*(*(v0 + 248) + 8))(*(v18 + 48) + *(*(v0 + 248) + 72) * v14, *(v0 + 240));
      sub_100070D64(*(v18 + 56) + *(v20 + 72) * v14, v19, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001C3F38(v14, v18);
      v21 = 0;
      v22 = v18;
    }

    else
    {
      v22 = *(v0 + 608);
      v18 = *(v0 + 592);
      v21 = 1;
    }

    v29 = *(v0 + 488);
    v30 = *(v0 + 320);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v162(v30, v21, 1, *(v0 + 208));
    sub_100008D3C(v30, &unk_1003D91B0, qword_1003444F0);
    (*(v33 + 8))(v31, v32);
    sub_100070B00(v29, type metadata accessor for CustodianRecord);
  }

  else
  {
    v18 = *(v0 + 592);
    v23 = *(v0 + 488);
    v24 = *(v0 + 264);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 232);
    sub_100070D64(*(v0 + 328), v27, type metadata accessor for CustodianRecoveryInfoRecord);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v18;
    sub_1002CF140(v27, v24, v28);
    (*(v26 + 8))(v24, v25);
    sub_100070B00(v23, type metadata accessor for CustodianRecord);
    v22 = v18;
  }

  v34 = *(v0 + 876);
  v14 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = (v10(v35, 1, *(v0 + 208)) != 1) & v34;
  sub_100008D3C(v35, &unk_1003D91B0, qword_1003444F0);
  v37 = type metadata accessor for FetchRecoveryRecordsRequest;
  v38 = v14;
  while (1)
  {
    sub_100070B00(v38, v37);
    *(v0 + 624) = v22;
    *(v0 + 616) = v18;
    v39 = *(v0 + 600) + 1;
    if (v39 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 608) = v22;
    *(v0 + 600) = v39;
    *(v0 + 876) = v36;
    *(v0 + 592) = v18;
    v14 = *(v0 + 488);
    v40 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v39, v14, type metadata accessor for CustodianRecord);
    v38 = *(v0 + 488);
    if (*(v14 + *(v40 + 36)) == 2)
    {
      v68 = *(v0 + 360);
      v69 = *(v0 + 344);
      v70 = *(v0 + 240);
      v71 = *(v0 + 248);
      v72 = *(v0 + 176);
      v73 = *(*(v0 + 368) + 20);
      *(v0 + 868) = v73;
      v74 = *(v71 + 16);
      *(v0 + 632) = v74;
      *(v0 + 640) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v74(v68, v38 + v73, v70);
      *(v68 + v69[5]) = 0;
      v75 = v68 + v69[6];
      *v75 = 0;
      *(v75 + 8) = 1;
      *(v68 + v69[7]) = 1;
      v76 = (v68 + v69[8]);
      *v76 = 0;
      v76[1] = 0;
      v77 = (v68 + v69[9]);
      *v77 = 0;
      v77[1] = 0;
      v78 = swift_task_alloc();
      *(v0 + 648) = v78;
      *(v78 + 16) = v72;
      *(v78 + 24) = v68;
      v79 = swift_task_alloc();
      *(v0 + 656) = v79;
      *v79 = v0;
      v79[1] = sub_100060884;
      v80 = *(v0 + 336);

      return sub_10006A3C0(v80, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v78);
    }

    v37 = type metadata accessor for CustodianRecord;
  }

  if (v36)
  {
    *(v0 + 752) = v22;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v41 = *(v0 + 560);
    if (!*(v41 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v43 = *(v0 + 464);
    v42 = *(v0 + 472);
    v45 = *(v0 + 448);
    v44 = *(v0 + 456);
    sub_100070E78(v41 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v42, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v43, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v44, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v45, type metadata accessor for CustodianRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 456);
    v50 = *(v0 + 464);
    v51 = *(v0 + 448);
    if (v48)
    {
      v52 = *(v0 + 368);
      v53 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v165 = v164;
      *v53 = 134218498;
      v163 = v47;
      v54 = *(v50 + *(v52 + 36));
      sub_100070B00(v50, type metadata accessor for CustodianRecord);
      *(v53 + 4) = v54;
      *(v53 + 12) = 1024;
      LODWORD(v54) = *(v49 + *(v52 + 36)) == 2;
      sub_100070B00(v49, type metadata accessor for CustodianRecord);
      *(v53 + 14) = v54;
      *(v53 + 18) = 2080;
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_100070B00(v51, type metadata accessor for CustodianRecord);
      v58 = sub_10021145C(v55, v57, &v165);

      *(v53 + 20) = v58;
      _os_log_impl(&_mh_execute_header, v46, v163, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v53, 0x1Cu);
      sub_10000839C(v164);
    }

    else
    {
      sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
      sub_100070B00(v50, type metadata accessor for CustodianRecord);

      sub_100070B00(v51, type metadata accessor for CustodianRecord);
    }

    v81 = *(v0 + 472);
    if (*(v81 + *(*(v0 + 368) + 36)) == 2)
    {
      sub_100070E78(v81, *(v0 + 440), type metadata accessor for CustodianRecord);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 440);
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v165 = v87;
        *v86 = 136315138;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        sub_100070B00(v85, type metadata accessor for CustodianRecord);
        v91 = sub_10021145C(v88, v90, &v165);

        *(v86 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v82, v83, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v86, 0xCu);
        sub_10000839C(v87);
      }

      else
      {

        sub_100070B00(v85, type metadata accessor for CustodianRecord);
      }

      if (*(*(v0 + 752) + 16) && (v107 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v108 & 1) != 0))
      {
        sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v107, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(v0 + 272);
      v111 = *(v0 + 280);
      v112 = *(v0 + 208);
      v113 = *(v0 + 216);
      (*(v113 + 56))(v111, v109, 1, v112);
      sub_100012D04(v111, v110, &unk_1003D91B0, qword_1003444F0);
      v114 = (*(v113 + 48))(v110, 1, v112);
      v115 = *(v0 + 472);
      v116 = *(v0 + 272);
      if (v114 == 1)
      {
        v117 = *(v0 + 424);
        sub_100008D3C(v116, &unk_1003D91B0, qword_1003444F0);
        sub_100070E78(v115, v117, type metadata accessor for CustodianRecord);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 424);
        if (v120)
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v165 = v123;
          *v122 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          sub_100070B00(v121, type metadata accessor for CustodianRecord);
          v127 = sub_10021145C(v124, v126, &v165);

          *(v122 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v118, v119, "CustodianRecoveryInfoRecord not found for custodianID: %s", v122, 0xCu);
          sub_10000839C(v123);
        }

        else
        {

          sub_100070B00(v121, type metadata accessor for CustodianRecord);
        }

        *(v0 + 878) = 0;
        sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();
        v148 = os_log_type_enabled(v146, v147);
        v149 = *(v0 + 416);
        if (v148)
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v165 = v151;
          *v150 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v152 = dispatch thunk of CustomStringConvertible.description.getter();
          v154 = v153;
          sub_100070B00(v149, type metadata accessor for CustodianRecord);
          v155 = sub_10021145C(v152, v154, &v165);

          *(v150 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v146, v147, "Checking if setup finalized from server for custodianID: %s", v150, 0xCu);
          sub_10000839C(v151);
        }

        else
        {

          sub_100070B00(v149, type metadata accessor for CustodianRecord);
        }

        v159 = *(v0 + 472);
        v160 = *(v0 + 176);
        v130 = swift_task_alloc();
        *(v0 + 808) = v130;
        *(v130 + 16) = v160;
        *(v130 + 24) = v159;
        v161 = swift_task_alloc();
        *(v0 + 816) = v161;
        *v161 = v0;
        v161[1] = sub_100064B38;
        v132 = &unk_10033F4D0;
        v133 = 0x800000010032D620;
        v134 = 0xD000000000000015;
      }

      else
      {
        v135 = *(v0 + 432);
        sub_100070D64(v116, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_100070E78(v115, v135, type metadata accessor for CustodianRecord);
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.default.getter();
        v138 = os_log_type_enabled(v136, v137);
        v139 = *(v0 + 432);
        if (v138)
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v165 = v141;
          *v140 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v142 = dispatch thunk of CustomStringConvertible.description.getter();
          v144 = v143;
          sub_100070B00(v139, type metadata accessor for CustodianRecord);
          v145 = sub_10021145C(v142, v144, &v165);

          *(v140 + 4) = v145;
          _os_log_impl(&_mh_execute_header, v136, v137, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v140, 0xCu);
          sub_10000839C(v141);
        }

        else
        {

          sub_100070B00(v139, type metadata accessor for CustodianRecord);
        }

        v156 = *(v0 + 224);
        v157 = *(v0 + 176);
        v130 = swift_task_alloc();
        *(v0 + 784) = v130;
        *(v130 + 16) = v157;
        *(v130 + 24) = v156;
        v158 = swift_task_alloc();
        *(v0 + 792) = v158;
        *v158 = v0;
        v158[1] = sub_100064734;
        v132 = &unk_10033F4E0;
        v134 = 0xD000000000000016;
        v133 = 0x800000010032D640;
      }
    }

    else
    {
      *(v0 + 880) = 0;
      *(v0 + 832) = v22;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 67109376;
        *(v94 + 8) = 1024;
        *(v94 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v94, 0xEu);
      }

      v95 = *(v0 + 472);
      v96 = *(v0 + 408);

      sub_100070E78(v95, v96, type metadata accessor for CustodianRecord);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 408);
      if (v99)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v165 = v102;
        *v101 = 136315138;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        sub_100070B00(v100, type metadata accessor for CustodianRecord);
        v106 = sub_10021145C(v103, v105, &v165);

        *(v101 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v97, v98, " Checking if CRK exist at security layer for custodianID: %s", v101, 0xCu);
        sub_10000839C(v102);
      }

      else
      {

        sub_100070B00(v100, type metadata accessor for CustodianRecord);
      }

      v128 = *(v0 + 472);
      v129 = *(v0 + 176);
      v130 = swift_task_alloc();
      *(v0 + 840) = v130;
      *(v130 + 16) = v129;
      *(v130 + 24) = v128;
      v131 = swift_task_alloc();
      *(v0 + 848) = v131;
      *v131 = v0;
      v131[1] = sub_100064FE4;
      v132 = &unk_10033F4B8;
      v133 = 0xEF74736978652D52;
      v134 = 0x4B432D6B63656863;
    }

    return sub_1000699F4(v134, v133, v132, v130);
  }

  else
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "One or more CustodianRecoveryInfoRecord not found in local disk, so fetching sharedDB records from cloud", v61, 2u);
    }

    v63 = *(v0 + 192);
    v62 = *(v0 + 200);
    v65 = *(v0 + 176);
    v64 = *(v0 + 184);

    (*(v63 + 16))(v62, v65 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController, v64);
    Dependency.wrappedValue.getter();
    (*(v63 + 8))(v62, v64);
    sub_1000080F8((v0 + 96), *(v0 + 120));
    v66 = swift_task_alloc();
    *(v0 + 664) = v66;
    *v66 = v0;
    v66[1] = sub_100061DFC;

    return sub_10030D2B0();
  }
}

uint64_t sub_100061DFC()
{
  *(*v1 + 672) = v0;

  if (v0)
  {

    v2 = sub_100063058;
  }

  else
  {
    v2 = sub_100061F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100061F18()
{
  v135 = v0;
  sub_10000839C((v0 + 96));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Refetching the missing CustodianRecoveryInfoRecord from local disk after fetching sharedDB records from cloud", v3, 2u);
  }

  v4 = 0;
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  while (1)
  {
    *(v0 + 696) = v5;
    *(v0 + 688) = v4;
    *(v0 + 680) = v6;
    v7 = *(v0 + 480);
    v8 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v4, v7, type metadata accessor for CustodianRecord);
    v9 = *(v8 + 20);
    *(v0 + 872) = v9;
    if (!*(v5 + 16))
    {
      break;
    }

    v10 = sub_10031AF8C(v7 + v9);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v0 + 480);
    v13 = *(v0 + 312);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    sub_100070E78(*(v5 + 56) + *(v15 + 72) * v10, v13, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_100070B00(v12, type metadata accessor for CustodianRecord);
    sub_100008D3C(v13, &unk_1003D91B0, qword_1003444F0);
    v4 = *(v0 + 688) + 1;
    if (v4 == *(v0 + 576))
    {
      *(v0 + 752) = v5;
      type metadata accessor for CustodianDefaults();
      result = swift_initStackObject();
      *(v0 + 760) = result;
      *(v0 + 152) = _swiftEmptyArrayStorage;
      *(v0 + 776) = _swiftEmptyArrayStorage;
      *(v0 + 768) = 0;
      v17 = *(v0 + 560);
      if (*(v17 + 16))
      {
        v19 = *(v0 + 464);
        v18 = *(v0 + 472);
        v21 = *(v0 + 448);
        v20 = *(v0 + 456);
        sub_100070E78(v17 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v18, type metadata accessor for CustodianRecord);
        sub_100070E78(v18, v19, type metadata accessor for CustodianRecord);
        sub_100070E78(v18, v20, type metadata accessor for CustodianRecord);
        sub_100070E78(v18, v21, type metadata accessor for CustodianRecord);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 456);
        v26 = *(v0 + 464);
        v27 = *(v0 + 448);
        if (v24)
        {
          v28 = *(v0 + 368);
          v29 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v134 = v133;
          *v29 = 134218498;
          v132 = v23;
          v30 = *(v26 + *(v28 + 36));
          sub_100070B00(v26, type metadata accessor for CustodianRecord);
          *(v29 + 4) = v30;
          *(v29 + 12) = 1024;
          LODWORD(v30) = *(v25 + *(v28 + 36)) == 2;
          sub_100070B00(v25, type metadata accessor for CustodianRecord);
          *(v29 + 14) = v30;
          *(v29 + 18) = 2080;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v32;
          sub_100070B00(v27, type metadata accessor for CustodianRecord);
          v34 = sub_10021145C(v31, v33, &v134);

          *(v29 + 20) = v34;
          _os_log_impl(&_mh_execute_header, v22, v132, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v29, 0x1Cu);
          sub_10000839C(v133);
        }

        else
        {
          sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
          sub_100070B00(v26, type metadata accessor for CustodianRecord);

          sub_100070B00(v27, type metadata accessor for CustodianRecord);
        }

        v51 = *(v0 + 472);
        if (*(v51 + *(*(v0 + 368) + 36)) == 2)
        {
          sub_100070E78(v51, *(v0 + 440), type metadata accessor for CustodianRecord);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          v54 = os_log_type_enabled(v52, v53);
          v55 = *(v0 + 440);
          if (v54)
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v134 = v57;
            *v56 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v58 = dispatch thunk of CustomStringConvertible.description.getter();
            v60 = v59;
            sub_100070B00(v55, type metadata accessor for CustodianRecord);
            v61 = sub_10021145C(v58, v60, &v134);

            *(v56 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v52, v53, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v56, 0xCu);
            sub_10000839C(v57);
          }

          else
          {

            sub_100070B00(v55, type metadata accessor for CustodianRecord);
          }

          if (*(*(v0 + 752) + 16) && (v77 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v78 & 1) != 0))
          {
            sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v77, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
            v79 = 0;
          }

          else
          {
            v79 = 1;
          }

          v80 = *(v0 + 272);
          v81 = *(v0 + 280);
          v82 = *(v0 + 208);
          v83 = *(v0 + 216);
          (*(v83 + 56))(v81, v79, 1, v82);
          sub_100012D04(v81, v80, &unk_1003D91B0, qword_1003444F0);
          v84 = (*(v83 + 48))(v80, 1, v82);
          v85 = *(v0 + 472);
          v86 = *(v0 + 272);
          if (v84 == 1)
          {
            v87 = *(v0 + 424);
            sub_100008D3C(v86, &unk_1003D91B0, qword_1003444F0);
            sub_100070E78(v85, v87, type metadata accessor for CustodianRecord);
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();
            v90 = os_log_type_enabled(v88, v89);
            v91 = *(v0 + 424);
            if (v90)
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v134 = v93;
              *v92 = 136315138;
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v94 = dispatch thunk of CustomStringConvertible.description.getter();
              v96 = v95;
              sub_100070B00(v91, type metadata accessor for CustodianRecord);
              v97 = sub_10021145C(v94, v96, &v134);

              *(v92 + 4) = v97;
              _os_log_impl(&_mh_execute_header, v88, v89, "CustodianRecoveryInfoRecord not found for custodianID: %s", v92, 0xCu);
              sub_10000839C(v93);
            }

            else
            {

              sub_100070B00(v91, type metadata accessor for CustodianRecord);
            }

            *(v0 + 878) = 0;
            sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.default.getter();
            v118 = os_log_type_enabled(v116, v117);
            v119 = *(v0 + 416);
            if (v118)
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v134 = v121;
              *v120 = 136315138;
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v122 = dispatch thunk of CustomStringConvertible.description.getter();
              v124 = v123;
              sub_100070B00(v119, type metadata accessor for CustodianRecord);
              v125 = sub_10021145C(v122, v124, &v134);

              *(v120 + 4) = v125;
              _os_log_impl(&_mh_execute_header, v116, v117, "Checking if setup finalized from server for custodianID: %s", v120, 0xCu);
              sub_10000839C(v121);
            }

            else
            {

              sub_100070B00(v119, type metadata accessor for CustodianRecord);
            }

            v129 = *(v0 + 472);
            v130 = *(v0 + 176);
            v100 = swift_task_alloc();
            *(v0 + 808) = v100;
            *(v100 + 16) = v130;
            *(v100 + 24) = v129;
            v131 = swift_task_alloc();
            *(v0 + 816) = v131;
            *v131 = v0;
            v131[1] = sub_100064B38;
            v102 = &unk_10033F4D0;
            v103 = 0x800000010032D620;
            v104 = 0xD000000000000015;
          }

          else
          {
            v105 = *(v0 + 432);
            sub_100070D64(v86, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
            sub_100070E78(v85, v105, type metadata accessor for CustodianRecord);
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();
            v108 = os_log_type_enabled(v106, v107);
            v109 = *(v0 + 432);
            if (v108)
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v134 = v111;
              *v110 = 136315138;
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v112 = dispatch thunk of CustomStringConvertible.description.getter();
              v114 = v113;
              sub_100070B00(v109, type metadata accessor for CustodianRecord);
              v115 = sub_10021145C(v112, v114, &v134);

              *(v110 + 4) = v115;
              _os_log_impl(&_mh_execute_header, v106, v107, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v110, 0xCu);
              sub_10000839C(v111);
            }

            else
            {

              sub_100070B00(v109, type metadata accessor for CustodianRecord);
            }

            v126 = *(v0 + 224);
            v127 = *(v0 + 176);
            v100 = swift_task_alloc();
            *(v0 + 784) = v100;
            *(v100 + 16) = v127;
            *(v100 + 24) = v126;
            v128 = swift_task_alloc();
            *(v0 + 792) = v128;
            *v128 = v0;
            v128[1] = sub_100064734;
            v102 = &unk_10033F4E0;
            v104 = 0xD000000000000016;
            v103 = 0x800000010032D640;
          }
        }

        else
        {
          *(v0 + 880) = 0;
          *(v0 + 832) = v5;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 67109376;
            *(v64 + 8) = 1024;
            *(v64 + 10) = 0;
            _os_log_impl(&_mh_execute_header, v62, v63, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v64, 0xEu);
          }

          v65 = *(v0 + 472);
          v66 = *(v0 + 408);

          sub_100070E78(v65, v66, type metadata accessor for CustodianRecord);
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();
          v69 = os_log_type_enabled(v67, v68);
          v70 = *(v0 + 408);
          if (v69)
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v134 = v72;
            *v71 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v73 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v74;
            sub_100070B00(v70, type metadata accessor for CustodianRecord);
            v76 = sub_10021145C(v73, v75, &v134);

            *(v71 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v67, v68, " Checking if CRK exist at security layer for custodianID: %s", v71, 0xCu);
            sub_10000839C(v72);
          }

          else
          {

            sub_100070B00(v70, type metadata accessor for CustodianRecord);
          }

          v98 = *(v0 + 472);
          v99 = *(v0 + 176);
          v100 = swift_task_alloc();
          *(v0 + 840) = v100;
          *(v100 + 16) = v99;
          *(v100 + 24) = v98;
          v101 = swift_task_alloc();
          *(v0 + 848) = v101;
          *v101 = v0;
          v101[1] = sub_100064FE4;
          v102 = &unk_10033F4B8;
          v103 = 0xEF74736978652D52;
          v104 = 0x4B432D6B63656863;
        }

        return sub_1000699F4(v104, v103, v102, v100);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v37 = *(v0 + 312);
  v38 = *(v0 + 240);
  v39 = *(v0 + 248);
  v40 = *(v0 + 208);
  v41 = *(v0 + 216);
  v42 = *(v0 + 176);
  v43 = *(v41 + 56);
  *(v0 + 704) = v43;
  *(v0 + 712) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v43(v37, 1, 1, v40);
  sub_100008D3C(v37, &unk_1003D91B0, qword_1003444F0);
  v44 = *(v39 + 16);
  *(v0 + 720) = v44;
  *(v0 + 728) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v35, v7 + v9, v38);
  *(v35 + v36[5]) = 0;
  v45 = v35 + v36[6];
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v35 + v36[7]) = 1;
  v46 = (v35 + v36[8]);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v35 + v36[9]);
  *v47 = 0;
  v47[1] = 0;
  v48 = swift_task_alloc();
  *(v0 + 736) = v48;
  *(v48 + 16) = v42;
  *(v48 + 24) = v35;
  v49 = swift_task_alloc();
  *(v0 + 744) = v49;
  *v49 = v0;
  v49[1] = sub_100063264;
  v50 = *(v0 + 304);

  return sub_10006A3C0(v50, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v48);
}

uint64_t sub_100063058()
{
  sub_10000839C((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100063264()
{

  if (v0)
  {

    v1 = sub_100067EC8;
  }

  else
  {

    v1 = sub_1000633AC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000633AC()
{
  v164 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 872);
  v3 = *(v0 + 480);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  (*(v0 + 704))(v5, 0, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  if ((*(v9 + 48))(v4, 1, v8) != 1)
  {
    v21 = *(v0 + 680);
    v22 = *(v0 + 480);
    v23 = *(v0 + 304);
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    sub_100070D64(*(v0 + 296), v27, type metadata accessor for CustodianRecoveryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v21;
    sub_1002CF140(v27, v24, isUniquelyReferenced_nonNull_native);
    (*(v25 + 8))(v24, v26);
    sub_100008D3C(v23, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v22, type metadata accessor for CustodianRecord);
    v17 = v21;
    v13 = v21;
    goto LABEL_9;
  }

  v10 = *(v0 + 256);
  sub_100008D3C(*(v0 + 296), &unk_1003D91B0, qword_1003444F0);
  v11 = sub_10031AF8C(v10);
  if ((v12 & 1) == 0)
  {
    v13 = *(v0 + 696);
    v17 = *(v0 + 680);
    v20 = 1;
    goto LABEL_8;
  }

  v13 = v11;
  v14 = *(v0 + 680);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 160) = v14;
  if (!v15)
  {
    goto LABEL_50;
  }

  v16 = (v0 + 680);
  while (1)
  {
    v17 = *v16;
    v18 = *(v0 + 288);
    v19 = *(v0 + 216);
    (*(*(v0 + 248) + 8))(*(v17 + 48) + *(*(v0 + 248) + 72) * v13, *(v0 + 240));
    sub_100070D64(*(v17 + 56) + *(v19 + 72) * v13, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001C3F38(v13, v17);
    v20 = 0;
    v13 = v17;
LABEL_8:
    v161 = *(v0 + 480);
    v29 = *(v0 + 304);
    v30 = *(v0 + 288);
    v31 = *(v0 + 248);
    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    (*(v0 + 704))(v30, v20, 1, *(v0 + 208));
    sub_100008D3C(v30, &unk_1003D91B0, qword_1003444F0);
    (*(v31 + 8))(v32, v33);
    sub_100008D3C(v29, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v161, type metadata accessor for CustodianRecord);
LABEL_9:
    sub_100070B00(*(v0 + 352), type metadata accessor for FetchRecoveryRecordsRequest);
    v34 = *(v0 + 688) + 1;
    if (v34 != *(v0 + 576))
    {
      break;
    }

LABEL_13:
    *(v0 + 752) = v13;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v44 = *(v0 + 560);
    if (*(v44 + 16))
    {
      v46 = *(v0 + 464);
      v45 = *(v0 + 472);
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      sub_100070E78(v44 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v45, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v46, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v47, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v48, type metadata accessor for CustodianRecord);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 456);
      v53 = *(v0 + 464);
      v54 = *(v0 + 448);
      if (v51)
      {
        v55 = *(v0 + 368);
        v56 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v163 = v162;
        *v56 = 134218498;
        v160 = v50;
        v57 = *(v53 + *(v55 + 36));
        sub_100070B00(v53, type metadata accessor for CustodianRecord);
        *(v56 + 4) = v57;
        *(v56 + 12) = 1024;
        LODWORD(v57) = *(v52 + *(v55 + 36)) == 2;
        sub_100070B00(v52, type metadata accessor for CustodianRecord);
        *(v56 + 14) = v57;
        *(v56 + 18) = 2080;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        sub_100070B00(v54, type metadata accessor for CustodianRecord);
        v61 = sub_10021145C(v58, v60, &v163);

        *(v56 + 20) = v61;
        _os_log_impl(&_mh_execute_header, v49, v160, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v56, 0x1Cu);
        sub_10000839C(v162);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v53, type metadata accessor for CustodianRecord);

        sub_100070B00(v54, type metadata accessor for CustodianRecord);
      }

      v79 = *(v0 + 472);
      if (*(v79 + *(*(v0 + 368) + 36)) == 2)
      {
        sub_100070E78(v79, *(v0 + 440), type metadata accessor for CustodianRecord);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 440);
        if (v82)
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v163 = v85;
          *v84 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          sub_100070B00(v83, type metadata accessor for CustodianRecord);
          v89 = sub_10021145C(v86, v88, &v163);

          *(v84 + 4) = v89;
          _os_log_impl(&_mh_execute_header, v80, v81, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v84, 0xCu);
          sub_10000839C(v85);
        }

        else
        {

          sub_100070B00(v83, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v105 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v106 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v105, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v107 = 0;
        }

        else
        {
          v107 = 1;
        }

        v108 = *(v0 + 272);
        v109 = *(v0 + 280);
        v110 = *(v0 + 208);
        v111 = *(v0 + 216);
        (*(v111 + 56))(v109, v107, 1, v110);
        sub_100012D04(v109, v108, &unk_1003D91B0, qword_1003444F0);
        v112 = (*(v111 + 48))(v108, 1, v110);
        v113 = *(v0 + 472);
        v114 = *(v0 + 272);
        if (v112 == 1)
        {
          v115 = *(v0 + 424);
          sub_100008D3C(v114, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v113, v115, type metadata accessor for CustodianRecord);
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();
          v118 = os_log_type_enabled(v116, v117);
          v119 = *(v0 + 424);
          if (v118)
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v163 = v121;
            *v120 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v123;
            sub_100070B00(v119, type metadata accessor for CustodianRecord);
            v125 = sub_10021145C(v122, v124, &v163);

            *(v120 + 4) = v125;
            _os_log_impl(&_mh_execute_header, v116, v117, "CustodianRecoveryInfoRecord not found for custodianID: %s", v120, 0xCu);
            sub_10000839C(v121);
          }

          else
          {

            sub_100070B00(v119, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.default.getter();
          v146 = os_log_type_enabled(v144, v145);
          v147 = *(v0 + 416);
          if (v146)
          {
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v163 = v149;
            *v148 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v150 = dispatch thunk of CustomStringConvertible.description.getter();
            v152 = v151;
            sub_100070B00(v147, type metadata accessor for CustodianRecord);
            v153 = sub_10021145C(v150, v152, &v163);

            *(v148 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v144, v145, "Checking if setup finalized from server for custodianID: %s", v148, 0xCu);
            sub_10000839C(v149);
          }

          else
          {

            sub_100070B00(v147, type metadata accessor for CustodianRecord);
          }

          v157 = *(v0 + 472);
          v158 = *(v0 + 176);
          v128 = swift_task_alloc();
          *(v0 + 808) = v128;
          *(v128 + 16) = v158;
          *(v128 + 24) = v157;
          v159 = swift_task_alloc();
          *(v0 + 816) = v159;
          *v159 = v0;
          v159[1] = sub_100064B38;
          v130 = &unk_10033F4D0;
          v131 = 0x800000010032D620;
          v132 = 0xD000000000000015;
        }

        else
        {
          v133 = *(v0 + 432);
          sub_100070D64(v114, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v113, v133, type metadata accessor for CustodianRecord);
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();
          v136 = os_log_type_enabled(v134, v135);
          v137 = *(v0 + 432);
          if (v136)
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v163 = v139;
            *v138 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v140 = dispatch thunk of CustomStringConvertible.description.getter();
            v142 = v141;
            sub_100070B00(v137, type metadata accessor for CustodianRecord);
            v143 = sub_10021145C(v140, v142, &v163);

            *(v138 + 4) = v143;
            _os_log_impl(&_mh_execute_header, v134, v135, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v138, 0xCu);
            sub_10000839C(v139);
          }

          else
          {

            sub_100070B00(v137, type metadata accessor for CustodianRecord);
          }

          v154 = *(v0 + 224);
          v155 = *(v0 + 176);
          v128 = swift_task_alloc();
          *(v0 + 784) = v128;
          *(v128 + 16) = v155;
          *(v128 + 24) = v154;
          v156 = swift_task_alloc();
          *(v0 + 792) = v156;
          *v156 = v0;
          v156[1] = sub_100064734;
          v130 = &unk_10033F4E0;
          v132 = 0xD000000000000016;
          v131 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v13;
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 67109376;
          *(v92 + 8) = 1024;
          *(v92 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v92, 0xEu);
        }

        v93 = *(v0 + 472);
        v94 = *(v0 + 408);

        sub_100070E78(v93, v94, type metadata accessor for CustodianRecord);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.default.getter();
        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 408);
        if (v97)
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v163 = v100;
          *v99 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          sub_100070B00(v98, type metadata accessor for CustodianRecord);
          v104 = sub_10021145C(v101, v103, &v163);

          *(v99 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v95, v96, " Checking if CRK exist at security layer for custodianID: %s", v99, 0xCu);
          sub_10000839C(v100);
        }

        else
        {

          sub_100070B00(v98, type metadata accessor for CustodianRecord);
        }

        v126 = *(v0 + 472);
        v127 = *(v0 + 176);
        v128 = swift_task_alloc();
        *(v0 + 840) = v128;
        *(v128 + 16) = v127;
        *(v128 + 24) = v126;
        v129 = swift_task_alloc();
        *(v0 + 848) = v129;
        *v129 = v0;
        v129[1] = sub_100064FE4;
        v130 = &unk_10033F4B8;
        v131 = 0xEF74736978652D52;
        v132 = 0x4B432D6B63656863;
      }

      return sub_1000699F4(v132, v131, v130, v128);
    }

    __break(1u);
LABEL_50:
    v16 = (v0 + 160);
    sub_1002D0004();
  }

  while (1)
  {
    *(v0 + 696) = v13;
    *(v0 + 688) = v34;
    *(v0 + 680) = v17;
    v35 = *(v0 + 480);
    v36 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v34, v35, type metadata accessor for CustodianRecord);
    v37 = *(v36 + 20);
    *(v0 + 872) = v37;
    if (!*(v13 + 16))
    {
      break;
    }

    v38 = sub_10031AF8C(v35 + v37);
    if ((v39 & 1) == 0)
    {
      break;
    }

    v40 = *(v0 + 480);
    v41 = *(v0 + 312);
    v42 = *(v0 + 208);
    v43 = *(v0 + 216);
    sub_100070E78(*(v13 + 56) + *(v43 + 72) * v38, v41, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v43 + 56))(v41, 0, 1, v42);
    sub_100070B00(v40, type metadata accessor for CustodianRecord);
    sub_100008D3C(v41, &unk_1003D91B0, qword_1003444F0);
    v34 = *(v0 + 688) + 1;
    if (v34 == *(v0 + 576))
    {
      goto LABEL_13;
    }
  }

  v63 = *(v0 + 344);
  v62 = *(v0 + 352);
  v64 = *(v0 + 312);
  v65 = *(v0 + 240);
  v66 = *(v0 + 248);
  v67 = *(v0 + 208);
  v68 = *(v0 + 216);
  v69 = *(v0 + 176);
  v70 = *(v68 + 56);
  *(v0 + 704) = v70;
  *(v0 + 712) = (v68 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v70(v64, 1, 1, v67);
  sub_100008D3C(v64, &unk_1003D91B0, qword_1003444F0);
  v71 = *(v66 + 16);
  *(v0 + 720) = v71;
  *(v0 + 728) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v62, v35 + v37, v65);
  *(v62 + v63[5]) = 0;
  v72 = v62 + v63[6];
  *v72 = 0;
  *(v72 + 8) = 1;
  *(v62 + v63[7]) = 1;
  v73 = (v62 + v63[8]);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v62 + v63[9]);
  *v74 = 0;
  v74[1] = 0;
  v75 = swift_task_alloc();
  *(v0 + 736) = v75;
  *(v75 + 16) = v69;
  *(v75 + 24) = v62;
  v76 = swift_task_alloc();
  *(v0 + 744) = v76;
  *v76 = v0;
  v76[1] = sub_100063264;
  v77 = *(v0 + 304);

  return sub_10006A3C0(v77, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v75);
}