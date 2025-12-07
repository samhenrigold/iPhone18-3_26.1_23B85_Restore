uint64_t sub_100CBB8C4()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 1040);
  v4 = *(v2 + 1032);
  if (v0)
  {
    v5 = sub_100CBBE8C;
  }

  else
  {
    v5 = sub_100CBBA00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CBBA00()
{
  v1 = v0[135];
  v2 = v0[133];
  v3 = v0[131];
  v4 = v0[125];
  v5 = v0[124];
  v6 = v0[123];

  if (v5)
  {
    v7 = 0x5D6465726168535BLL;
  }

  else
  {
    v7 = 0x5D654D6F54654D5BLL;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  _StringGuts.grow(_:)(34);

  v9._countAndFlagsBits = v7;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  v11 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v2;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v13, "[Automation] %@ called activityWrapper.start() for %{public}@", 61, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 64);
  *(v4 + 64) = 0x8000000000000000;
  sub_100AA0470(v1, v6, isUniquelyReferenced_nonNull_native);
  *(v4 + 64) = v18;
  swift_endAccess();
  v15 = v0[126];
  sub_100CC2DA8(v0[123], v15, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_beginAccess();
  sub_100BC4394(2, v15);
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_100CBBC84()
{
  v1 = *v0;

  v2 = *(v1 + 1040);
  v3 = *(v1 + 1032);

  return _swift_task_switch(sub_100CBBDA4, v3, v2);
}

uint64_t sub_100CBBDA4()
{

  v1 = v0[126];
  sub_100CC2DA8(v0[123], v1, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_beginAccess();
  sub_100BC4394(2, v1);
  swift_endAccess();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100CBBE8C()
{
  v1 = v0[137];
  v2 = v0[135];
  v0[139] = v2;
  v0[138] = v1;
  v3 = v0[133];
  v4 = v0[131];
  if (v0[124])
  {
    v5 = 0x5D6465726168535BLL;
  }

  else
  {
    v5 = 0x5D654D6F54654D5BLL;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  _StringGuts.grow(_:)(34);

  v7._countAndFlagsBits = v5;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v3;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(v0[114]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v3;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v4, &_mh_execute_header, v11, "[Automation] %@ Cannot instantiate opportunistic activity with error %@", 71, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v2 && *(v2 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionObserverTask))
  {

    Task.cancel()();
  }

  v12 = swift_task_alloc();
  v0[140] = v12;
  *v12 = v0;
  v12[1] = sub_100CBBC84;
  v13 = v0[123];

  return sub_100CB952C(v13, 1);
}

char *sub_100CBC0D8(uint64_t a1)
{
  v1 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v1 - 8);
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSession.activity.getter();
  sub_100CB6748(v3);

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v50 = static OS_os_log.realTimeSync;
  v49 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  GroupSession.activity.getter();
  v5 = v54[OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe];

  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v52 = 0xD00000000000001FLL;
  v53 = 0x8000000101598010;
  if (v5)
  {
    v6 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v6 = 0x5D6465726168535BLL;
  }

  v7 = 0xE800000000000000;
  String.append(_:)(*&v6);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v52;
  v10 = v53;
  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 64) = v11;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v12 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v11;
  v48 = v11;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v50, &_mh_execute_header, v14, "[Automation] %@ createGroupSessionForConfiguration() for %{public}@", 67, 2, inited);
  swift_setDeallocating();
  v15 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  type metadata accessor for CRLBoardOpportunisticGroupSession(0);
  swift_allocObject();

  v17 = sub_100CBD6A0(v16);
  v18 = v51;
  swift_beginAccess();
  v19 = *(v18 + 64);
  if (*(v19 + 16))
  {

    v20 = sub_1007C8484(v3);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      sub_100CC2E10(v3, type metadata accessor for CRLGloballyScopedBoardIdentifier);

      *(v22 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_session) = v17;

      return v17;
    }
  }

  v46[1] = v15;
  v50 = v17;
  v51 = v3;
  v47 = objc_opt_self();
  v23 = [v47 _atomicIncrementAssertCount];
  v54 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v54, "[Automation][CRLOpportunisticGroupSession]: Received an opportunistic group session that does not have a corresponding activity wrapper. This is a logic error", 158, 2u);
  StaticString.description.getter("createGroupSessionForConfiguration(from:)", 41, 2);
  v46[0] = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLOpportunisticGroupSessionManager.swift", 109, 2);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v24 lastPathComponent];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlAssert;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_10146CA70;
  *(v30 + 56) = &type metadata for Int32;
  *(v30 + 64) = &protocol witness table for Int32;
  *(v30 + 32) = v23;
  v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v30 + 96) = v31;
  v32 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v33 = v46[0];
  *(v30 + 72) = v46[0];
  v34 = v48;
  *(v30 + 136) = &type metadata for String;
  *(v30 + 144) = v34;
  *(v30 + 104) = v32;
  *(v30 + 112) = v26;
  *(v30 + 120) = v28;
  *(v30 + 176) = &type metadata for UInt;
  *(v30 + 184) = &protocol witness table for UInt;
  *(v30 + 152) = 306;
  v35 = v54;
  *(v30 + 216) = v31;
  *(v30 + 224) = v32;
  *(v30 + 192) = v35;
  v36 = v33;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v39, "[Automation][CRLOpportunisticGroupSession]: Received an opportunistic group session that does not have a corresponding activity wrapper. This is a logic error", 158, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter("createGroupSessionForConfiguration(from:)", 41, 2);
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLOpportunisticGroupSessionManager.swift", 109, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("[Automation][CRLOpportunisticGroupSession]: Received an opportunistic group session that does not have a corresponding activity wrapper. This is a logic error", 158, 2);
  v44 = String._bridgeToObjectiveC()();

  [v47 handleFailureInFunction:v42 file:v43 lineNumber:306 isFatal:0 format:v44 args:v41];

  sub_100CBFBDC();
  swift_allocError();
  swift_willThrow();
  v17 = v50;

  sub_100CC2E10(v51, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  return v17;
}

uint64_t sub_100CBC7B8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CBC87C, v4, v3);
}

uint64_t sub_100CBC87C()
{
  v1 = v0[20];

  GroupSession.activity.getter();
  sub_100CB6748(v1);

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  GroupSession.activity.getter();
  v5 = *(v0[17] + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe);

  _StringGuts.grow(_:)(34);

  if (v5)
  {
    v6 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v6 = 0x5D6465726168535BLL;
  }

  v7 = 0xE800000000000000;
  String.append(_:)(*&v6);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  *(inited + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(inited + 64) = v9;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  v10 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v12, "[Automation] %@ didConfigureGroupSession() for %{public}@", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();

  PassthroughSubject.send(_:)();

  sub_100CC2E10(v2, type metadata accessor for CRLGloballyScopedBoardIdentifier);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CBCB10(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CBCBD4, v4, v3);
}

uint64_t sub_100CBCBD4()
{
  v1 = v0[26];
  v2 = v0[25];

  v0[19] = type metadata accessor for CRLOpportunisticGroupActivity(0);
  v0[20] = sub_10003ADF4(&qword_101A1A6E8, type metadata accessor for CRLOpportunisticGroupActivity, asc_1014AA468);
  GroupSession.activity.getter();
  sub_100020E58(v0 + 16, v0[19]);
  sub_100CB6748(v1);
  sub_100005070(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (*(v3 + 16))
  {
    v4 = v0[26];

    v5 = sub_1007C8484(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v8 = v0[26];
      v9 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
      v11 = swift_dynamicCastClass();
      _StringGuts.grow(_:)(34);

      if (v11)
      {
        v12 = 0x5D654D6F54654D5BLL;
      }

      else
      {
        v12 = 0x5D6465726168535BLL;
      }

      v13 = 0xE800000000000000;
      String.append(_:)(*&v12);

      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      *(inited + 56) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 64) = v15;
      *(inited + 32) = 0xD00000000000001FLL;
      *(inited + 40) = 0x8000000101598010;
      v16 = UUID.uuidString.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v15;
      *(inited + 72) = v16;
      *(inited + 80) = v17;
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "[Automation] %@ groupSessionConfigurationFailed() for activity on %{public}@", 76, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      sub_100CC2E10(v8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      *(v7 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_session) = 0;

      goto LABEL_13;
    }
  }

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v19 = v0[26];
  v20 = static OS_os_log.realTimeSync;
  v21 = static os_log_type_t.default.getter();
  sub_100005404(v20, &_mh_execute_header, v21, "[Automation][CRLOpportunisticGroupSession]: groupSessionConfigurationFailed() on an activity we are not tracking", 112, 2, _swiftEmptyArrayStorage);
  sub_100CC2E10(v19, type metadata accessor for CRLGloballyScopedBoardIdentifier);
LABEL_13:

  v22 = v0[1];

  return v22();
}

uint64_t sub_100CBCFB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for CRLOpportunisticGroupActivity(0);
  v43 = v11;
  v12 = sub_10003ADF4(&qword_101A1A6E8, type metadata accessor for CRLOpportunisticGroupActivity, asc_1014AA468);
  v44 = v12;
  GroupSession.activity.getter();
  sub_100020E58(&v41, v43);
  sub_100CB6748(v10);
  sub_100005070(&v41);
  swift_beginAccess();
  v13 = *(v0 + 64);
  if (*(v13 + 16))
  {

    v14 = sub_1007C8484(v10);
    if (v15)
    {
      v38 = v4;
      v39 = v2;
      v40 = v1;
      v16 = *(*(v13 + 56) + 8 * v14);

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
      v18 = swift_dynamicCastClass();
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v41 = 0xD00000000000001FLL;
      v42 = 0x8000000101598010;
      if (v18)
      {
        v19 = 0x5D654D6F54654D5BLL;
      }

      else
      {
        v19 = 0x5D6465726168535BLL;
      }

      v20 = 0xE800000000000000;
      String.append(_:)(*&v19);

      v21._countAndFlagsBits = 58;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = v41;
      v23 = v42;
      *(inited + 56) = &type metadata for String;
      v24 = sub_1000053B0();
      v36 = v16;
      v25 = v24;
      *(inited + 64) = v24;
      *(inited + 32) = v22;
      *(inited + 40) = v23;
      v43 = v11;
      v44 = v12;
      GroupSession.activity.getter();
      sub_100020E58(&v41, v43);
      sub_100CB6748(v7);
      v26 = v39;
      v27 = v38;
      v28 = v40;
      (*(v39 + 16))(v38, v7, v40);
      sub_100CC2E10(v7, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      v29 = UUID.uuidString.getter();
      v31 = v30;
      (*(v26 + 8))(v27, v28);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v25;
      *(inited + 72) = v29;
      *(inited + 80) = v31;
      sub_100005070(&v41);
      v32 = static os_log_type_t.default.getter();
      sub_100005404(v37, &_mh_execute_header, v32, "[Automation] %@ didLeaveGroupSession() for %{public}@", 53, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      sub_100CB7B88();

      return sub_100CC2E10(v10, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    }
  }

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.realTimeSync;
  v34 = static os_log_type_t.default.getter();
  sub_100005404(v33, &_mh_execute_header, v34, "[Automation][CRLOpportunisticGroupSession]: didLeaveGroupSession() on an activity we are not tracking", 101, 2, _swiftEmptyArrayStorage);
  return sub_100CC2E10(v10, type metadata accessor for CRLGloballyScopedBoardIdentifier);
}

uint64_t sub_100CBD4D0()
{
}

uint64_t sub_100CBD510()
{

  sub_1000C1024(v0 + 24);

  return v0;
}

uint64_t sub_100CBD570()
{
  sub_100CBD510();

  return swift_deallocClassInstance();
}

unint64_t sub_100CBD64C()
{
  result = qword_101A1A6D8;
  if (!qword_101A1A6D8)
  {
    result = swift_getWitnessTable(aE_48, &type metadata for CRLOpportunisticGroupActivity.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A1A6D8);
  }

  return result;
}

char *sub_100CBD6A0(uint64_t a1)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = v1 + qword_101A218A0;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = *(*v1 + 280);
  v15 = sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.realTimeSync;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v17, "CRLBoardShareSession: init.", 27, 2, _swiftEmptyArrayStorage);
  *(v1 + qword_101AD8560) = a1;

  GroupSession.id.getter();
  GroupSession.localParticipant.getter();
  Participant.id.getter();
  (*(v4 + 8))(v6, v3);
  v18 = sub_100DC82CC(v12, v9);

  sub_100CB5A68();

  return v18;
}

uint64_t sub_100CBD920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100CBD9E0, 0, 0);
}

uint64_t sub_100CBD9E0()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  GroupSession.id.getter();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v9, "CRLBoardShareSession: Calling join on group session now %@", 58, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  GroupSession.join()();

  v10 = v0[1];

  return v10();
}

double sub_100CBDB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v39 = a6;
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v34 = a1;
  v6 = type metadata accessor for UUID();
  v32 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0);
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v31 = &v28 - v12;
  v14 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v35 = &v28 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(v13, v34, v9);
  v29 = v7;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v6);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = v10;
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = v21 + v11;
  v23 = (*(v7 + 80) + v22 + 1) & ~*(v7 + 80);
  v24 = v23 + v8;
  v25 = (v23 + v8) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = &protocol witness table for MainActor;
  (*(v20 + 32))(v26 + v21, v31, v30);
  *(v26 + v22) = v37;
  (*(v29 + 32))(v26 + v23, v33, v32);
  *(v26 + v24) = v38;
  *(v26 + v25 + 8) = v18;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;

  sub_10064191C(0, 0, v35, &unk_1014AA520, v26);

  return result;
}

uint64_t sub_100CBDEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 912) = v15;
  *(v8 + 904) = a8;
  *(v8 + 1081) = a7;
  *(v8 + 896) = a6;
  *(v8 + 1080) = a5;
  *(v8 + 888) = a4;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *(v8 + 920) = swift_task_alloc();
  sub_1005B981C(&qword_101A125E0, &unk_101499080);
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = sub_1005B981C(&qword_101A1A740, &unk_1014B6200);
  *(v8 + 944) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v8 + 952) = v9;
  *(v8 + 960) = *(v9 - 8);
  *(v8 + 968) = swift_task_alloc();
  v10 = sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0);
  *(v8 + 976) = v10;
  *(v8 + 984) = *(v10 - 8);
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 1008) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1016) = v12;
  *(v8 + 1024) = v11;

  return _swift_task_switch(sub_100CBE120, v12, v11);
}

uint64_t sub_100CBE120()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 888);
  v5 = *(v2 + 16);
  *(v0 + 1032) = v5;
  *(v0 + 1040) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v111 = v5;
  v5(v1, v4, v3);
  v110 = *(v2 + 88);
  v6 = v110(v1, v3);
  v109 = enum case for GroupSession.State.invalidated<A>(_:);
  if (v6 != enum case for GroupSession.State.invalidated<A>(_:))
  {
    if (v6 == enum case for GroupSession.State.waiting<A>(_:))
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 968);
      v32 = *(v0 + 960);
      v33 = *(v0 + 952);
      v34 = *(v0 + 1081);
      v35 = *(v0 + 896);
      v36 = *(v0 + 1080);
      v37 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      (*(v32 + 16))(v31, v35, v33);
      v39 = String.init<A>(reflecting:)();
      v41 = v40;
      *(inited + 56) = &type metadata for String;
      v42 = sub_1000053B0();
      *(inited + 32) = v39;
      *(inited + 40) = v41;
      v43 = 28526;
      if (v34)
      {
        v44 = 7562617;
      }

      else
      {
        v44 = 28526;
      }

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v42;
      if (v34)
      {
        v45 = 0xE300000000000000;
      }

      else
      {
        v45 = 0xE200000000000000;
      }

      *(inited + 64) = v42;
      *(inited + 72) = v44;
      *(inited + 80) = v45;
      if (v36)
      {
        v43 = 7562617;
        v46 = 0xE300000000000000;
      }

      else
      {
        v46 = 0xE200000000000000;
      }

      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v42;
      *(inited + 112) = v43;
      *(inited + 120) = v46;
      v47 = static os_log_type_t.default.getter();
      v48 = "CRLBoardShareSession: state changed to .waiting. ID: %@, MeToMe: %{public}@, isFastSync: %@";
      v49 = v37;
      v50 = 91;
    }

    else
    {
      if (v6 != enum case for GroupSession.State.joined<A>(_:))
      {
        (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
        goto LABEL_44;
      }

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v51 = *(v0 + 968);
      v52 = *(v0 + 960);
      v53 = *(v0 + 952);
      v54 = *(v0 + 1081);
      v55 = *(v0 + 896);
      v56 = *(v0 + 1080);
      v57 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      (*(v52 + 16))(v51, v55, v53);
      v58 = String.init<A>(reflecting:)();
      v60 = v59;
      *(inited + 56) = &type metadata for String;
      v61 = sub_1000053B0();
      *(inited + 32) = v58;
      *(inited + 40) = v60;
      v62 = 28526;
      if (v54)
      {
        v63 = 7562617;
      }

      else
      {
        v63 = 28526;
      }

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v61;
      if (v54)
      {
        v64 = 0xE300000000000000;
      }

      else
      {
        v64 = 0xE200000000000000;
      }

      *(inited + 64) = v61;
      *(inited + 72) = v63;
      *(inited + 80) = v64;
      if (v56)
      {
        v62 = 7562617;
        v65 = 0xE300000000000000;
      }

      else
      {
        v65 = 0xE200000000000000;
      }

      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v61;
      *(inited + 112) = v62;
      *(inited + 120) = v65;
      v47 = static os_log_type_t.default.getter();
      v48 = "CRLBoardShareSession: state changed to .joined. ID: %@, MeToMe: %{public}@, isFastSync: %@";
      v49 = v57;
      v50 = 90;
    }

    sub_100005404(v49, &_mh_execute_header, v47, v48, v50, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    goto LABEL_44;
  }

  v7 = *(v0 + 1000);
  v8 = *(v0 + 1080);
  (*(*(v0 + 984) + 96))(v7, *(v0 + 976));
  v9 = *v7;
  *(v0 + 856) = 0;
  *(v0 + 864) = 0xE000000000000000;
  *(v0 + 872) = v9;
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  _print_unlocked<A, B>(_:_:)();
  v10 = *(v0 + 856);
  v11 = *(v0 + 864);
  if (v8)
  {
    sub_101265CC4();
  }

  v108 = v10;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 968);
  v13 = *(v0 + 960);
  v14 = *(v0 + 952);
  v15 = *(v0 + 1081);
  v16 = *(v0 + 896);
  v17 = *(v0 + 1080);
  v107 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10146CA70;
  (*(v13 + 16))(v12, v16, v14);
  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  v22 = sub_1000053B0();
  v23 = v22;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v24 = 28526;
  if (v15)
  {
    v25 = 7562617;
  }

  else
  {
    v25 = 28526;
  }

  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v22;
  if (v15)
  {
    v26 = 0xE300000000000000;
  }

  else
  {
    v26 = 0xE200000000000000;
  }

  *(v18 + 64) = v22;
  *(v18 + 72) = v25;
  *(v18 + 80) = v26;
  if (v17)
  {
    v24 = 7562617;
    v27 = 0xE300000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  *(v18 + 136) = &type metadata for String;
  *(v18 + 144) = v22;
  *(v18 + 112) = v24;
  *(v18 + 120) = v27;
  *(v18 + 176) = &type metadata for String;
  *(v18 + 184) = v22;
  *(v18 + 152) = v108;
  *(v18 + 160) = v11;
  swift_getErrorValue();
  v28 = Error.localizedDescription.getter();
  *(v18 + 216) = &type metadata for String;
  *(v18 + 224) = v23;
  *(v18 + 192) = v28;
  *(v18 + 200) = v29;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v107, &_mh_execute_header, v30, "CRLBoardShareSession: state changed to .invalidated. ID: %@, MeToMe: %{public}@, isFastSync: %@. Reason: '%{public}@': %{public}@", 129, 2, v18);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
LABEL_44:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1048) = Strong;
  if (!Strong)
  {
    v75 = *(v0 + 912);

    swift_beginAccess();
    if (*(v75 + 16))
    {

      AnyCancellable.cancel()();
    }

    v76 = *(v0 + 912);
    swift_beginAccess();
    *(v76 + 16) = 0;

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 968);
    v78 = *(v0 + 960);
    v79 = *(v0 + 952);
    v80 = *(v0 + 896);
    v81 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_10146C6B0;
    (*(v78 + 16))(v77, v80, v79);
    v83 = String.init<A>(reflecting:)();
    v85 = v84;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = sub_1000053B0();
    *(v82 + 32) = v83;
    *(v82 + 40) = v85;
    v86 = static os_log_type_t.default.getter();
    sub_100005404(v81, &_mh_execute_header, v86, "CRLBoardShareSession: Not doing anything because CRLBoardShareSession was deallocated. Session ID: %{public}@", 109, 2, v82);
    swift_setDeallocating();
    sub_100005070((v82 + 32));
    goto LABEL_69;
  }

  v67 = Strong;
  v68 = *(v0 + 992);
  v69 = *(v0 + 976);
  v111(v68, *(v0 + 888), v69);
  v70 = v110(v68, v69);
  if (v70 == v109)
  {
    v71 = *(v0 + 912);
    (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
    swift_beginAccess();
    if (*(v71 + 16))
    {

      AnyCancellable.cancel()();
    }

    v72 = *(v0 + 912);
    swift_beginAccess();
    *(v72 + 16) = 0;

    v73 = *(v67 + 32);
    *(v0 + 1072) = v73;
    if (v73)
    {

      v74 = sub_100CBEDCC;
LABEL_62:

      return _swift_task_switch(v74, v73, 0);
    }

    v89 = *(v0 + 1048);
    v90 = *(v0 + 944);
    v91 = *(*(v0 + 936) + 48);
    (*(*(v0 + 960) + 16))(v90, *(v0 + 896), *(v0 + 952));
    *(v90 + v91) = 1;

    CurrentValueSubject.value.setter();

    *(v0 + 656) = 0;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    v92 = qword_101A218A0;
    swift_beginAccess();
    sub_10002C638(v0 + 624, v89 + v92, &unk_101A08DE0, &unk_1014870D0);
    swift_endAccess();
    *(v89 + 32) = 0;

    goto LABEL_67;
  }

  if (v70 != enum case for GroupSession.State.waiting<A>(_:))
  {
    if (v70 != enum case for GroupSession.State.joined<A>(_:))
    {
      v93 = *(v0 + 968);
      v94 = *(v0 + 960);
      v95 = *(v0 + 952);
      v96 = *(v0 + 896);
      _StringGuts.grow(_:)(59);
      v97._object = 0x80000001015983D0;
      v97._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v97);
      (*(v94 + 16))(v93, v96, v95);
      v98._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v98);

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v73 = *(v67 + 32);
    *(v0 + 1064) = v73;
    if (!v73)
    {

      v105 = [objc_opt_self() defaultCenter];
      if (qword_1019F2588 != -1)
      {
        swift_once();
      }

      [v105 postNotificationName:qword_101AD86C0 object:*(v0 + 1048)];

      goto LABEL_68;
    }

    v87 = sub_100CBF2F0;
LABEL_61:
    v88 = v87;

    v74 = v88;
    goto LABEL_62;
  }

  v73 = *(v67 + 32);
  *(v0 + 1056) = v73;
  if (v73)
  {
    v87 = sub_100CBF0BC;
    goto LABEL_61;
  }

LABEL_67:

LABEL_68:
  v99 = *(v0 + 1048);
  v100 = *(v0 + 984);
  v101 = *(v0 + 976);
  v102 = *(v0 + 928);
  (*(v0 + 1032))(v102, *(v0 + 888), v101);
  (*(v100 + 56))(v102, 0, 1, v101);
  v103 = *(*v99 + 280);
  swift_beginAccess();
  sub_10002C638(v102, v99 + v103, &qword_101A125E0, &unk_101499080);
  swift_endAccess();
  sub_1005B981C(&qword_101A1A748, &qword_1014AA530);
  sub_10001A2F8(&qword_101A1A750, &qword_101A1A748, &qword_1014AA530, byte_1014B61C0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

LABEL_69:

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_100CBEDCC()
{
  v2 = v0[134];
  if (*(v2 + 210) == 1)
  {
    *(v2 + 210) = 0;
  }

  v3 = v0[128];
  v4 = v0[127];

  return _swift_task_switch(sub_100CBEE48, v4, v3);
}

uint64_t sub_100CBEE48()
{

  v1 = *(v0 + 1048);
  v2 = *(v0 + 944);
  v3 = *(*(v0 + 936) + 48);
  (*(*(v0 + 960) + 16))(v2, *(v0 + 896), *(v0 + 952));
  *(v2 + v3) = 1;

  CurrentValueSubject.value.setter();

  *(v0 + 656) = 0;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  v4 = qword_101A218A0;
  swift_beginAccess();
  sub_10002C638(v0 + 624, v1 + v4, &unk_101A08DE0, &unk_1014870D0);
  swift_endAccess();
  *(v1 + 32) = 0;

  v5 = *(v0 + 1048);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 928);
  (*(v0 + 1032))(v8, *(v0 + 888), v7);
  (*(v6 + 56))(v8, 0, 1, v7);
  v9 = *(*v5 + 280);
  swift_beginAccess();
  sub_10002C638(v8, v5 + v9, &qword_101A125E0, &unk_101499080);
  swift_endAccess();
  sub_1005B981C(&qword_101A1A748, &qword_1014AA530);
  sub_10001A2F8(&qword_101A1A750, &qword_101A1A748, &qword_1014AA530, byte_1014B61C0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CBF0BC()
{
  v2 = v0[132];
  if (*(v2 + 210) == 1)
  {
    *(v2 + 210) = 0;
  }

  v3 = v0[128];
  v4 = v0[127];

  return _swift_task_switch(sub_100CBF138, v4, v3);
}

uint64_t sub_100CBF138()
{

  v1 = *(v0 + 1048);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 928);
  (*(v0 + 1032))(v4, *(v0 + 888), v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5 = *(*v1 + 280);
  swift_beginAccess();
  sub_10002C638(v4, v1 + v5, &qword_101A125E0, &unk_101499080);
  swift_endAccess();
  sub_1005B981C(&qword_101A1A748, &qword_1014AA530);
  sub_10001A2F8(&qword_101A1A750, &qword_101A1A748, &qword_1014AA530, byte_1014B61C0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100CBF2F0()
{
  v1 = v0[133];
  if ((*(v1 + 210) & 1) == 0)
  {
    *(v1 + 210) = 1;
    v2 = v0[133];
    if (*(v1 + 208) == 1)
    {
      v3 = v0[115];
      *(v1 + 208) = 0;
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      v5 = sub_10003ADF4(&qword_101A1A758, type metadata accessor for CRLGroupSessionSyncController, byte_1014C14F8);
      v6 = swift_allocObject();
      v6[2] = v2;
      v6[3] = v5;
      v6[4] = v2;
      swift_retain_n();
      sub_10064191C(0, 0, v3, &unk_1014AA538, v6);
    }
  }

  v7 = v0[128];
  v8 = v0[127];

  return _swift_task_switch(sub_100CBF45C, v8, v7);
}

uint64_t sub_100CBF45C()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F2588 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_101AD86C0 object:*(v0 + 1048)];

  v2 = *(v0 + 1048);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 928);
  (*(v0 + 1032))(v5, *(v0 + 888), v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6 = *(*v2 + 280);
  swift_beginAccess();
  sub_10002C638(v5, v2 + v6, &qword_101A125E0, &unk_101499080);
  swift_endAccess();
  sub_1005B981C(&qword_101A1A748, &qword_1014AA530);
  sub_10001A2F8(&qword_101A1A750, &qword_101A1A748, &qword_1014AA530, byte_1014B61C0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v7 = *(v0 + 8);

  return v7();
}

double sub_100CBF688(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = a1;

  sub_10064191C(0, 0, v5, &unk_1014AA508, v9);

  return result;
}

uint64_t sub_100CBF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_1005B981C(&qword_101A125E0, &unk_101499080);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CBF8F8, v7, v6);
}

uint64_t sub_100CBF8F8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[13];
    v4 = v0[11];

    CurrentValueSubject.value.getter();

    v5 = *(v0[8] + 16);

    v0[9] = v4;

    CurrentValueSubject.value.setter();

    v6 = *(*v2 + 280);
    swift_beginAccess();
    sub_10000BE14(v2 + v6, v3, &qword_101A125E0, &unk_101499080);
    v7 = sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) != 1)
    {
      v9 = v0[12];
      sub_10000BE14(v0[13], v9, &qword_101A125E0, &unk_101499080);
      if ((*(v8 + 88))(v9, v7) != enum case for GroupSession.State.joined<A>(_:))
      {
        v11 = v0[12];

        (*(v8 + 8))(v11, v7);
        goto LABEL_10;
      }

      if (v5 != *(v0[11] + 16))
      {
        v10 = [objc_opt_self() defaultCenter];
        if (qword_1019F2588 != -1)
        {
          swift_once();
        }

        [v10 postNotificationName:qword_101AD86C0 object:v2];
      }
    }

LABEL_10:
    sub_10000CAAC(v0[13], &qword_101A125E0, &unk_101499080);
  }

  v12 = v0[1];

  return v12();
}

unint64_t sub_100CBFBDC()
{
  result = qword_101A1A6F0;
  if (!qword_101A1A6F0)
  {
    result = swift_getWitnessTable(aU_53, &type metadata for CRLOpportunisticGroupSessionManagerError, v0, v1);
    atomic_store(result, &qword_101A1A6F0);
  }

  return result;
}

double sub_100CBFC30(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_100CBDB60(a1, v6, v7, v1 + v4, v8, v9);
}

uint64_t sub_100CBFCE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100CBF81C(a1, v4, v5, v7, v6);
}

uint64_t sub_100CBFDA4(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v5);
  v12 = *(v1 + v8);
  v13 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10002D4C8;

  return sub_100CBDEEC(a1, v9, v10, v1 + v4, v11, v1 + v7, v12, v13);
}

uint64_t sub_100CBFF68(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002D4C8;

  return sub_100FF74D8();
}

uint64_t sub_100CC001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_100CC317C;

  return sub_100CC26EC(a4, a5, a6);
}

uint64_t sub_100CC00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_100CC016C;

  return sub_100CC103C(a4, a5);
}

uint64_t sub_100CC016C(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100CC0280(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = type metadata accessor for UUID();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[32] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[33] = v6;
  v2[34] = v5;

  return _swift_task_switch(sub_100CC0440, v6, v5);
}

uint64_t sub_100CC0440(uint64_t a1)
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = v1[27];
  v3 = v1[21];
  v4 = static OS_os_log.realTimeSync;
  v1[35] = static OS_os_log.realTimeSync;
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100005404(v4, &_mh_execute_header, v5, "willLeaveGroupSession called.", 29, 2, _swiftEmptyArrayStorage);
  v7 = *(*v3 + 192);
  v8 = (*v3 + 192) & 0xFFFFFFFFFFFFLL | 0xEE51000000000000;
  v1[36] = v7;
  v1[37] = v8;
  v7(v6);
  sub_100020E58(v1 + 11, v1[14]);
  sub_100CB6748(v2);
  v9 = swift_task_alloc();
  v1[38] = v9;
  *v9 = v1;
  v9[1] = sub_100CC05B4;
  v11 = v1[27];
  v10 = v1[28];

  return sub_1012393D8(v10, v11);
}

uint64_t sub_100CC05B4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];

    sub_100CC2E10(v3, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v4 = v2[33];
    v5 = v2[34];
    v6 = sub_100CC0C34;
  }

  else
  {
    sub_100CC2E10(v2[27], type metadata accessor for CRLGloballyScopedBoardIdentifier);
    sub_100005070(v2 + 11);
    v4 = v2[33];
    v5 = v2[34];
    v6 = sub_100CC0718;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100CC0718()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[22];
  (*(v0[30] + 56))(v2, 0, 1, v0[29]);
  sub_100025600(v2, v1, type metadata accessor for CRLBoardIdentifier);
  v4 = v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_realTimeCollaborationDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  v6 = *(v4 + 8);
  v0[40] = v6;
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v0[41] = ObjectType;
    v12 = (*(v6 + 24) + **(v6 + 24));
    v8 = swift_task_alloc();
    v0[42] = v8;
    *v8 = v0;
    v8[1] = sub_100CC0944;
    v9 = v0[21];

    return v12(v9, ObjectType, v6);
  }

  else
  {
    sub_100CC2E10(v0[31], type metadata accessor for CRLBoardIdentifier);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100CC0944(char a1)
{
  v2 = *v1;
  *(*v1 + 352) = a1;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);

  return _swift_task_switch(sub_100CC0A6C, v4, v3);
}

uint64_t sub_100CC0A6C()
{
  if (*(v0 + 352) == 1)
  {
    v8 = (*(*(v0 + 320) + 32) + **(*(v0 + 320) + 32));
    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_100CC0E5C;
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    v4 = *(v0 + 248);
    v5 = *(v0 + 168);

    return v8(v5, v4, v2, v3);
  }

  else
  {
    sub_100CC2E10(*(v0 + 248), type metadata accessor for CRLBoardIdentifier);
    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100CC0C34()
{
  v1 = v0[36];
  v16 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];

  sub_100005070(v0 + 11);
  (*(v3 + 56))(v4, 1, 1, v2);
  sub_10000CAAC(v4, &unk_1019F52D0, &unk_10147C1C0);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v1();
  sub_100020E58(v0 + 16, v0[19]);
  sub_100CB6748(v6);
  (*(v8 + 16))(v5, v6, v7);
  sub_100CC2E10(v6, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v8 + 8))(v5, v7);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  sub_100005070(v0 + 16);
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v13, "Failed to derive the locally scoped board identifier from the group session. Board %{public}@", 93, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));

  v14 = v0[1];

  return v14();
}

uint64_t sub_100CC0E5C()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_100CC0F7C, v3, v2);
}

uint64_t sub_100CC0F7C()
{
  v1 = *(v0 + 248);

  swift_unknownObjectRelease();
  sub_100CC2E10(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CC103C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100CC10D4, v4, v3);
}

uint64_t sub_100CC10D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100CC11DC;
    v3 = v0[6];

    return sub_100CB4AE0(v3, 0);
  }

  else
  {

    v5 = v0[10] == 0;
    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_100CC11DC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100CC1320, v3, v2);
}

uint64_t sub_100CC1320()
{

  v1 = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100CC138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  v4 = type metadata accessor for Date();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v5 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0, &qword_101486FB0);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[49] = v6;
  v3[50] = *(v6 - 8);
  v3[51] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v3[52] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  v3[53] = swift_task_alloc();
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v3[54] = v7;
  v3[55] = *(v7 - 8);
  v3[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[57] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[58] = v9;
  v3[59] = v8;

  return _swift_task_switch(sub_100CC164C, v9, v8);
}

uint64_t sub_100CC164C()
{
  v1 = *(v0 + 416);
  (*(**(v0 + 304) + 192))();
  sub_100020E58((v0 + 16), *(v0 + 40));
  sub_100CB6748(v1);
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_100CC1744;
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);

  return sub_1012393D8(v3, v4);
}

uint64_t sub_100CC1744()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[52];

    sub_100CC2E10(v3, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v4 = v2[58];
    v5 = v2[59];
    v6 = sub_100CC25D0;
  }

  else
  {
    sub_100CC2E10(v2[52], type metadata accessor for CRLGloballyScopedBoardIdentifier);
    sub_100005070(v2 + 2);
    v4 = v2[58];
    v5 = v2[59];
    v6 = sub_100CC18A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100CC18A8()
{
  v1 = v0;
  v2 = v0[56];
  v3 = v0[55];
  v5 = v1[53];
  v4 = v1[54];
  v6 = v1[39];

  (*(v3 + 56))(v5, 0, 1, v4);
  sub_100025600(v5, v2, type metadata accessor for CRLBoardIdentifier);
  v7 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (!*(v8 + 16) || (v9 = sub_1000486F0(v1[56]), (v10 & 1) == 0))
  {
    v32 = v1[56];
    swift_endAccess();
    goto LABEL_8;
  }

  v12 = v1[50];
  v11 = v1[51];
  v13 = v1[49];
  v14 = v1[38];
  v15 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  (*(v12 + 16))(v11, v14 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v13);
  v16 = &OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v17 = *(*(*(*(v15 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  v140 = v1;
  v120 = v15;
  if (!v17)
  {

LABEL_14:
    if (qword_1019F2288 != -1)
    {
      goto LABEL_82;
    }

    while (1)
    {
      v36 = v1[47];
      v37 = v1[44];
      v38 = v1[45];
      v39 = static OS_os_log.realTimeSync;
      v40 = static os_log_type_t.default.getter();
      sub_100005404(v39, &_mh_execute_header, v40, "Group Session activeParticipants updated, but we were unable to retrieve the ckShare's participants array, this could mean the owner ended the collaboration.", 157, 2, _swiftEmptyArrayStorage);
      v41 = *(*(v15 + 16) + *v16);
      v42 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
      swift_beginAccess();
      sub_10000BE14(v41 + v42, v36, &qword_101A08DF0, &qword_101486FB0);
      if ((*(v38 + 48))(v36, 1, v37))
      {
        v43 = v1[56];
        v45 = v1[50];
        v44 = v1[51];
        v46 = v1[49];
        v47 = v1[47];

        (*(v45 + 8))(v44, v46);
        sub_100CC2E10(v43, type metadata accessor for CRLBoardIdentifier);
        sub_10000CAAC(v47, &qword_101A08DF0, &qword_101486FB0);
        goto LABEL_10;
      }

      v48 = v1[46];
      v49 = v1[47];
      v50 = v1[44];
      sub_100CC2DA8(v49, v48, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v49, &qword_101A08DF0, &qword_101486FB0);
      v51 = *(v48 + *(v50 + 24));

      sub_100CC2E10(v48, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      swift_beginAccess();
      v52 = *(v51 + 16);

      v53 = *(*(v15 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator);
      v118 = v52;
      if (v52 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v119 = v53;
      if (!v16)
      {
LABEL_53:
        v72 = v1[56];
        v73 = v1[50];
        v74 = v1[51];
        v75 = v1[49];

        (*(v73 + 8))(v74, v75);
        v33 = v72;
        goto LABEL_9;
      }

      v54 = 0;
      v55 = v1[41];
      v121 = v16;
      v131 = (v55 + 8);
      v134 = (v55 + 16);
      while (1)
      {
        if ((v118 & 0xC000000000000001) != 0)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v58 = __OFADD__(v54, 1);
          v59 = v54 + 1;
          if (v58)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v54 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v57 = *(v118 + 32 + 8 * v54);
          v58 = __OFADD__(v54, 1);
          v59 = v54 + 1;
          if (v58)
          {
            goto LABEL_77;
          }
        }

        v127 = v59;
        v60 = v57;
        swift_getKeyPath();
        swift_getKeyPath();
        v125 = v60;
        static Published.subscript.getter();

        v16 = v1[35];
        if (v16 >> 62)
        {
          break;
        }

        v61 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v54 = v127;
        if (v61)
        {
          goto LABEL_28;
        }

LABEL_21:

        v56 = v125;
LABEL_22:

        if (v54 == v121)
        {
          goto LABEL_53;
        }
      }

      v61 = _CocoaArrayWrapper.endIndex.getter();
      v54 = v127;
      if (!v61)
      {
        goto LABEL_21;
      }

LABEL_28:
      v138 = v16 & 0xC000000000000001;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v62 = *(v16 + 32);
      }

      v141 = v62;
      if (v61 == 1)
      {
LABEL_32:
        v56 = v141;
LABEL_33:

        sub_100D576AC(0, v56);

        v1 = v140;
        v15 = v120;
        v54 = v127;
        goto LABEL_22;
      }

      v129 = v16 & 0xFFFFFFFFFFFFFF8;
      v15 = 1;
      v135 = v61;
      v136 = v16;
      while (2)
      {
        if (v138)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v64 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          goto LABEL_42;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_75;
        }

        if (v15 >= *(v129 + 16))
        {
          goto LABEL_76;
        }

        v63 = *(v16 + 8 * v15 + 32);
        v64 = v15 + 1;
        if (!__OFADD__(v15, 1))
        {
LABEL_42:
          v143 = v64;
          v66 = v140[42];
          v65 = v140[43];
          v67 = v140[40];
          v68 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
          v56 = v63;
          swift_beginAccess();
          v1 = v134;
          v69 = *v134;
          (*v134)(v65, &v141[v68], v67);
          v70 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
          swift_beginAccess();
          v69(v66, &v56[v70], v67);
          LOBYTE(v70) = static Date.< infix(_:_:)();
          v71 = *v131;
          (*v131)(v66, v67);
          v71(v65, v67);
          if (v70)
          {

            v141 = v56;
            v15 = v143;
            v16 = v136;
            if (v143 == v135)
            {
              goto LABEL_33;
            }
          }

          else
          {

            ++v15;
            v16 = v136;
            if (v143 == v135)
            {
              goto LABEL_32;
            }
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_75:
      __break(1u);
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
LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
    }
  }

  v18 = v17;
  [v18 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();

  sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v1[48];
  v20 = v1[44];
  v21 = v1[45];
  v22 = v1[36];
  v23 = [v22 participants];

  sub_100006370(0, &qword_1019F5520, CKShareParticipant_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = *(*(v15 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v26 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v25 + v26, v19, &qword_101A08DF0, &qword_101486FB0);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    v27 = v1[56];
    v29 = v1[50];
    v28 = v1[51];
    v31 = v1[48];
    v30 = v1[49];

    (*(v29 + 8))(v28, v30);
    sub_100CC2E10(v27, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v31, &qword_101A08DF0, &qword_101486FB0);
    goto LABEL_10;
  }

  v76 = v1[51];
  v77 = v1[48];
  v78 = v1[46];
  v79 = v1[37];
  sub_100CC2DA8(v77, v78, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v77, &qword_101A08DF0, &qword_101486FB0);

  sub_100CC2E10(v78, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  v80 = sub_1007DC930(v79, v24, v76);

  v139 = v80;
  if (v80 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v15;
    if (v16)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v16 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v81 = v15;
    if (v16)
    {
LABEL_56:
      v82 = v1[50];
      v83 = *(*(v81 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator);
      v84 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
      v137 = v83;
      swift_beginAccess();
      v15 = 0;
      v124 = v82;
      v126 = v16;
      v128 = (v82 + 8);
      v122 = v84;
      v123 = v83;
      while (1)
      {
        if ((v139 & 0xC000000000000001) != 0)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_81;
          }

          v91 = *(v139 + 8 * v15 + 32);
        }

        v90 = v91;
        v1 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_80;
        }

        v92 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
        v93 = *&v83[v84];
        if (!*(v93 + 16))
        {
          goto LABEL_68;
        }

        v94 = sub_10003E994(&v90[v92]);
        if ((v95 & 1) == 0)
        {
          break;
        }

        v96 = *(v93 + 56) + 32 * v94;
        v97 = v90;
        v98 = *(v96 + 8);
        v100 = *(v96 + 16);
        v99 = *(v96 + 24);
        v132 = *v96;
        v101 = v98;
        v90 = v97;
        v130 = v101;
        v102 = v100;
        v84 = v122;
        v103 = v102;
        v104 = v99;
        v83 = v123;
        v105 = v104;

        v144 = v105;
        if (!v105)
        {
          goto LABEL_68;
        }

        v142 = v103;

LABEL_69:
        swift_beginAccess();
        v106 = sub_10003E994(&v90[v92]);
        if (v107)
        {
          v108 = v106;
          v133 = v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = *&v83[v84];
          *&v83[v84] = 0x8000000000000000;
          v111 = v83;
          v112 = v84;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100AA53D0();
          }

          (*(v124 + 8))(*(v110 + 48) + *(v124 + 72) * v108, v140[49]);
          v85 = *(v110 + 56) + 32 * v108;
          v86 = *v85;
          v87 = *(v85 + 8);
          v88 = *(v85 + 16);
          v89 = *(v85 + 24);
          sub_100BCDD6C(v108, v110);
          *&v111[v112] = v110;

          v16 = v126;
          v83 = v111;
          v84 = v112;
          v1 = (v15 + 1);
          v90 = v133;
        }

        swift_endAccess();
        sub_100D59258(v142, 0, v90);

        ++v15;
        if (v1 == v16)
        {
          v1 = v140;
          v32 = v140[56];
          v113 = v140[51];
          v114 = v140[49];

          (*v128)(v113, v114);
          goto LABEL_8;
        }
      }

LABEL_68:
      v142 = 0;
      v144 = [objc_opt_self() mapTableWithKeyOptions:512 valueOptions:0];
      goto LABEL_69;
    }
  }

  v32 = v1[56];
  v116 = v1[50];
  v115 = v1[51];
  v117 = v1[49];

  (*(v116 + 8))(v115, v117);
LABEL_8:
  v33 = v32;
LABEL_9:
  sub_100CC2E10(v33, type metadata accessor for CRLBoardIdentifier);
LABEL_10:

  v34 = v1[1];

  return v34();
}

uint64_t sub_100CC25D0()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];

  sub_100005070(v0 + 2);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_10000CAAC(v3, &unk_1019F52D0, &unk_10147C1C0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100CC26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100CC2788, v5, v4);
}

uint64_t sub_100CC2788()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_100CC2890;
    v5 = v0[3];
    v4 = v0[4];

    return sub_100CC138C(v5, v4, v2);
  }

  else
  {

    v7 = v0[8] == 0;
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_100CC2890()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100CC29D4, v3, v2);
}

uint64_t sub_100CC29D4()
{

  v1 = *(v0 + 64) == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100CC2A40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6F54654D7369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100CC2B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100CB7D30(a1, v4, v5, v6);
}

uint64_t sub_100CC2C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100CBD920(a1, v4, v5, v6);
}

uint64_t sub_100CC2CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100CC001C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100CC2DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CC2E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100CC2E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1A740, &unk_1014B6200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CC2EE0(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A1A740, &unk_1014B6200) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100CC00CC(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100CC301C()
{
  result = qword_101A1A7D0;
  if (!qword_101A1A7D0)
  {
    result = swift_getWitnessTable(byte_1014AA724, &type metadata for CRLOpportunisticGroupActivity.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A1A7D0);
  }

  return result;
}

unint64_t sub_100CC3074()
{
  result = qword_101A1A7D8;
  if (!qword_101A1A7D8)
  {
    result = swift_getWitnessTable(aM_58, &type metadata for CRLOpportunisticGroupSessionManagerError, v0, v1);
    atomic_store(result, &qword_101A1A7D8);
  }

  return result;
}

unint64_t sub_100CC30CC()
{
  result = qword_101A1A7E0;
  if (!qword_101A1A7E0)
  {
    result = swift_getWitnessTable(byte_1014AA694, &type metadata for CRLOpportunisticGroupActivity.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A1A7E0);
  }

  return result;
}

unint64_t sub_100CC3124()
{
  result = qword_101A1A7E8;
  if (!qword_101A1A7E8)
  {
    result = swift_getWitnessTable(byte_1014AA6BC, &type metadata for CRLOpportunisticGroupActivity.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A1A7E8);
  }

  return result;
}

id sub_100CC3294(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_maskInfo] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

id sub_100CC3624(char *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v10);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v14 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:a1 geometry:a2 pathSource:a3];
  v15 = [v4 initWithId:isa maskInfo:v14];

  return v15;
}

void sub_100CC3808(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLImageItem(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        v13 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_maskInfo);
        v14 = v13;
        sub_100BB584C(v13);
        v15 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, v6);
      }

      return;
    }
  }

  v16 = objc_opt_self();
  v17 = [v16 _atomicIncrementAssertCount];
  v41 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v41, "Unable to retrieve image item", 29, 2u);
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMask.swift", 89, 2);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v26 = sub_1005CF000();
  *(inited + 96) = v26;
  v27 = sub_1005CF04C();
  *(inited + 104) = v27;
  *(inited + 72) = v18;
  *(inited + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v28;
  *(inited + 152) = 31;
  v29 = v41;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v29;
  v30 = v18;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "Unable to retrieve image item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve image item");
  type metadata accessor for __VaListBuilder();
  v34 = swift_allocObject();
  v34[2] = 8;
  v34[3] = 0;
  v34[4] = 0;
  v34[5] = 0;
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetMask.swift", 89, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to retrieve image item", 29, 2);
  v38 = String._bridgeToObjectiveC()();

  [v16 handleFailureInFunction:v36 file:v37 lineNumber:31 isFatal:1 format:v38 args:v35];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v39, v40);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100CC3CD4()
{
  v1 = OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_maskInfo);
}

id sub_100CC3D4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetMask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetMask(uint64_t a1)
{
  result = qword_101A1A818;
  if (!qword_101A1A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CC3E54(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100CC3EEC()
{
  v1 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsContext_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLWPWritingToolsContext(uint64_t a1)
{
  result = qword_101A1A858;
  if (!qword_101A1A858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CC3FF4(uint64_t a1)
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

uint64_t sub_100CC40A0()
{
  _StringGuts.grow(_:)(56);
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x8000000101599260;
  String.append(_:)(v1);
  v2 = [*(v0 + 16) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._object = 0x8000000101599290;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = _NSRange.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

void *sub_100CC41C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1019F22E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static OS_os_log.writingTools;
  Logger.init(_:)();
  v3[2] = a1;
  v9 = a1;
  sub_100A33D9C(a2, a3);
  v11 = v10;
  v13 = v12;
  v4[3] = v10;
  v4[4] = v12;
  if ((v9[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
  {
    sub_100A2A960();
  }

  v14 = *&v9[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];
  v15 = objc_allocWithZone(UIWritingToolsCoordinatorContext);
  v16 = v14;
  v4[5] = [v15 initWithAttributedString:v16 range:{v11, v13}];
  v4[6] = v16;
  return v4;
}

id sub_100CC42F4(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
  v4 = type metadata accessor for CRLFollowViewportState(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentAnnouncedViewportState], 1, 1, v4);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_hosts;
  *&v1[v6] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_announcementTimers] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyLoggingTimers] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_viewportChangeDebounceTimer] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_voiceOverRepRefocusTimer] = 0;
  swift_unknownObjectWeakAssign();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator(0);
  v7 = objc_msgSendSuper2(&v13, "init");
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:"accessibilityStatusDidChange" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v9 selector:"accessibilityStatusDidChange" name:UIAccessibilitySwitchControlStatusDidChangeNotification object:0];

  return v9;
}

id sub_100CC4544()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:UIAccessibilitySwitchControlStatusDidChangeNotification object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100CC4840(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CRLCollaborationParticipant(0);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {

      goto LABEL_7;
    }
  }

  else
  {
    v6 = a1;
  }

  sub_100CC542C();

  v8 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
  swift_beginAccess();
  *(v2 + v8) = _swiftEmptyArrayStorage;

LABEL_7:
  if ([objc_opt_self() isVoiceOverOrSwitchControlEnabled])
  {
    return sub_100CC4F54();
  }

  else
  {
    return sub_100CC542C();
  }
}

uint64_t sub_100CC4944(void *a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v28 - v16;
  v18 = *(v2 + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_hosts);
  result = [v18 containsObject:{a1, v15}];
  if ((result & 1) == 0)
  {
    sub_100CC4E3C(a1);
    result = [v18 addObject:a1];
    if (a2)
    {
      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v29 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v30 = *(v11 + 8);
      v20 = v10;
      v30(v13, v10);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = a1;
      aBlock[4] = sub_100CCED8C;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A0230;
      v23 = _Block_copy(aBlock);
      v24 = a1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100006640(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v25 = v31;
      v26 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v29;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v23);

      (*(v34 + 8))(v25, v26);
      (*(v32 + 8))(v9, v33);
      return (v30)(v17, v20);
    }
  }

  return result;
}

void sub_100CC4D70(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    CRLAccessibilityPostLayoutChangedNotification(a2, v4);
  }
}

void sub_100CC4E3C(void *a1)
{
  if ([objc_opt_self() isVoiceOverOrSwitchControlEnabled])
  {

    sub_100CC5080(a1);
  }

  else
  {
    [a1 setAccessibilityHint:0];
    [a1 setAccessibilityCustomActions:0];
    [a1 setAccessibilityRespondsToUserInteraction:0];
    v2 = [a1 text];
    [a1 setAccessibilityLabel:v2];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [a1 setAccessibilityUserInputLabels:isa];
  }
}

uint64_t sub_100CC4F54()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_hosts) allObjects];
  sub_100006370(0, &qword_101A1AAE8, UILabel_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_100CC5080(v5);

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_100CC5080(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100CC7AB0();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [a1 setAccessibilityHint:v10];

  [a1 setAccessibilityRespondsToUserInteraction:1];
  sub_1005B981C(&qword_101A1AAE0, &unk_1014AAA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v12 = [a1 text];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(inited + 32) = v14;
  *(inited + 40) = v16;
  *(inited + 48) = v6;
  *(inited + 56) = v8;

  sub_100B2D7F0(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
  swift_arrayDestroy();
  v17 = String._bridgeToObjectiveC()();

  [a1 setAccessibilityLabel:v17];

  v34[0] = v8;
  v18 = [a1 text];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = 0;
  v34[1] = v20;
  v34[2] = v22;
  v24 = _swiftEmptyArrayStorage;
LABEL_11:
  v25 = &v34[2 * v23];
  while (++v23 != 3)
  {
    v26 = v25 + 2;
    v27 = *v25;
    v25 += 2;
    if (v27)
    {
      v28 = *(v26 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_100024CBC((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
      goto LABEL_11;
    }
  }

  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setAccessibilityUserInputLabels:isa];

  sub_100CCA738();
  sub_100CC5DD8(a1);
  sub_100006370(0, &qword_101A00130, UIAccessibilityCustomAction_ptr);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setAccessibilityCustomActions:v33];
}

uint64_t sub_100CC542C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_hosts) allObjects];
  sub_100006370(0, &qword_101A1AAE8, UILabel_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 setAccessibilityHint:0];
      [v6 setAccessibilityCustomActions:0];
      [v6 setAccessibilityRespondsToUserInteraction:0];
      v8 = [v6 text];
      [v6 setAccessibilityLabel:v8];

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v6 setAccessibilityUserInputLabels:isa];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_100CC55FC(void *a1)
{
  v3 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {
    sub_100CCE8A0(v11 + *(v3 + 20) + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100CCE720(v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    }

    else
    {
      v12 = *v9;
      v13 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v9 + *(v13 + 48), &qword_101A07B80, &qword_101486FA8);
      sub_100006370(0, &qword_1019FB7A0, off_10182F798);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return;
      }
    }
  }

  v15 = &v6[*(v3 + 20)];
  v16 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
  *v15 = a1;
  v17 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
  swift_beginAccess();
  sub_10000BE14(v1 + v17, v15 + v16, &qword_101A07B80, &qword_101486FA8);
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  static Date.now.getter();
  sub_100CC8158(v6);
  sub_100CC96B0(v6);
  sub_100CCE720(v6, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
}

void sub_100CC590C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  sub_100CCE8A0(v12 + *(v4 + 20) + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100CCE720(v10, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    goto LABEL_6;
  }

  v13 = *v10;
  v14 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
  sub_10000CAAC(v10 + *(v14 + 48), &qword_101A07B80, &qword_101486FA8);
  sub_100006370(0, &qword_1019FB7A0, off_10182F798);
  v15 = static NSObject.== infix(_:_:)();

  if ((v15 & 1) == 0)
  {
LABEL_6:
    v16 = &v7[*(v4 + 20)];
    v17 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    *v16 = a1;
    v18 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
    swift_beginAccess();
    sub_10000BE14(v2 + v18, v16 + v17, &qword_101A07B80, &qword_101486FA8);
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    static Date.now.getter();
    sub_100CC8158(v7);
    sub_100CC96B0(v7);
    sub_100CCE720(v7, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
  }
}

void sub_100CC5D08()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101A1A908 = v4;
  unk_101A1A910 = v6;
}

void *sub_100CC5DD8(void *a1)
{
  v3 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v73 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v73 - v11;
  v85 = a1;
  v13 = [a1 window];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return _swiftEmptyArrayStorage;
  }

  v78 = v5;
  v80 = v4;
  v86 = Strong;
  v15 = [*&Strong[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers] allObjects];
  sub_100006370(0, &qword_1019F8508, off_10182F8A8);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = v1;
  if (v16 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v82 = v12;
    v74 = v8;
    if (!i)
    {
LABEL_19:

      return _swiftEmptyArrayStorage;
    }

    v18 = 0;
    v8 = (v16 & 0xFFFFFFFFFFFFFF8);
LABEL_8:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v22 = [v19 canvasView];
  v87 = v20;
  if (!v22 || (v23 = v22, v12 = [v22 window], v23, !v12))
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  if (!v13)
  {

    goto LABEL_7;
  }

  sub_100006370(0, &unk_101A286E0, UIWindow_ptr);
  v24 = v13;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0)
  {
LABEL_7:

    ++v18;
    if (v21 == i)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

LABEL_22:

  v27 = [objc_opt_self() configurationWithPointSize:30.0];
  v28 = String._bridgeToObjectiveC()();
  v81 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v27];

  v29 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
  v30 = v83;
  swift_beginAccess();
  v31 = *(v30 + v29);
  v32 = _swiftEmptyArrayStorage;
  v91 = _swiftEmptyArrayStorage;
  v33 = *(v31 + 16);
  if (!v33)
  {
    goto LABEL_40;
  }

  v34 = *(v80 + 80);
  v35 = v31 + ((v34 + 32) & ~v34);
  v86 = *(v80 + 72);
  v80 = v34;
  v79 = (v34 + 24) & ~v34;
  v78 = (v78 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = v90;
  v73 = v31;

  v75 = xmmword_10146C6B0;
  v36 = v74;
  v37 = v82;
  while (2)
  {
    sub_100CCE8A0(v35, v37, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    sub_100CCE8A0(v37, v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v38 = sub_100CC7568(v36);
    if (!v39)
    {
      goto LABEL_25;
    }

    v40 = v38;
    v41 = v39;
    _sSo15NSDateFormatterC8FreeformE37crlaxVoiceOverPronounceableTimeString3forSSSg10Foundation4DateV_tFZ_0();
    if (!v42)
    {

LABEL_25:
      sub_100CCE720(v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      sub_100CCE720(v37, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      goto LABEL_26;
    }

    aBlock = v40;
    v89 = v41;

    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);

    v44 = objc_allocWithZone(NSMutableAttributedString);
    v45 = String._bridgeToObjectiveC()();

    v46 = [v44 initWithString:v45];

    sub_1005B981C(&unk_101A11100, &unk_101471490);
    inited = swift_initStackObject();
    *(inited + 16) = v75;
    if (qword_1019F1D40 != -1)
    {
      swift_once();
    }

    v48 = static NSAttributedStringKey.crlaxLowPitch;
    *(inited + 32) = static NSAttributedStringKey.crlaxLowPitch;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 40) = 1;
    v49 = v48;
    sub_10006E310(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
    v50 = objc_allocWithZone(NSAttributedString);
    v51 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100006640(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v53 = [v50 initWithString:v51 attributes:isa];

    [v46 appendAttributedString:v53];
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = v84;
    sub_100CCE8A0(v36, v84, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v56 = v77;
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    sub_100CCE908(v55, v57 + v79, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v58 = v85;
    *(v57 + v78) = v85;
    v59 = v87;
    *(v57 + v56) = v87;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_100CCEB20;
    *(v60 + 24) = v57;
    v61 = objc_allocWithZone(UIAccessibilityCustomAction);
    v90[2] = sub_100CCEBBC;
    v90[3] = v60;
    aBlock = _NSConcreteStackBlock;
    v89 = *"";
    v90[0] = sub_100FDE79C;
    v90[1] = &unk_1018A0190;
    v62 = _Block_copy(&aBlock);
    v63 = v58;
    v64 = v59;

    v65 = [v61 initWithAttributedName:v46 image:v81 actionHandler:v62];
    _Block_release(v62);

    v66 = [objc_opt_self() sharedInstance];
    LOBYTE(v61) = [v66 accessibilitySupportLoaded];

    if (v61)
    {
      v67 = v65;
      v68 = [objc_opt_self() mainBundle];
      v69 = String._bridgeToObjectiveC()();
      v70 = String._bridgeToObjectiveC()();
      v71 = [v68 localizedStringForKey:v69 value:v70 table:0];

      if (!v71)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = String._bridgeToObjectiveC()();
      }

      [v67 setLocalizedActionRotorCategory:v71];
    }

    else
    {
    }

    sub_100CCE720(v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v37 = v82;
    sub_100CCE720(v82, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v32 = v91;
LABEL_26:
    v35 += v86;
    if (--v33)
    {
      continue;
    }

    break;
  }

LABEL_40:
  v72 = sub_100FE1558(v32);

  return v72;
}

uint64_t sub_100CC6880(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v71 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v67 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTime();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v60 - v12;
  v13 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v13 - 8);
  v15 = v60 - v14;
  v16 = type metadata accessor for CRLFollowViewportState(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v20);
  v22 = (v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
    sub_100CCE8A0(a2 + *(v25 + 20), v22, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v38 = sub_100CCC560(v71, a2);

      sub_100CCE720(v22, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    }

    else
    {
      v61 = a3;
      v26 = *v22;
      v27 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v22 + *(v27 + 48), &qword_101A07B80, &qword_101486FA8);
      v28 = v24;
      v29 = [v26 canvas];
      if (v29 && (v30 = v29, v31 = [v29 allReps], v30, v32 = sub_100006370(0, &qword_1019FB7A0, off_10182F798), v33 = sub_100605614(), v60[2] = v32, v60[1] = v33, v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v31, LOBYTE(v31) = sub_10079EB78(v26, v34), , (v31 & 1) != 0))
      {
        v35 = v26;
        v36 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
        swift_beginAccess();
        sub_10000BE14(v28 + v36, v15, &qword_101A07B80, &qword_101486FA8);
        if ((*(v17 + 48))(v15, 1, v16) == 1)
        {
          sub_10000CAAC(v15, &qword_101A07B80, &qword_101486FA8);
          v37 = v35;
        }

        else
        {
          sub_100CCE908(v15, v19, type metadata accessor for CRLFollowViewportState);
          v42 = v71;
          v43 = [v71 canvas];
          v44 = [v43 allReps];

          v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
          __chkstk_darwin(v46);
          v60[-2] = v19;
          v47 = sub_1005DDF74(sub_100CCEE14, &v60[-4], v45);
          v37 = v35;
          LOBYTE(v44) = sub_10079EB78(v35, v47);

          if ((v44 & 1) == 0)
          {
            sub_100CCC560(v42, a2);
          }

          sub_100CCE720(v19, type metadata accessor for CRLFollowViewportState);
        }

        sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
        v61 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v48 = v62;
        + infix(_:_:)();
        v71 = *(v63 + 8);
        v49 = v10;
        v50 = v64;
        (v71)(v49, v64);
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = swift_allocObject();
        v52[2] = v51;
        v52[3] = v37;
        v52[4] = v28;
        v74 = sub_100CCED80;
        v75 = v52;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        v73 = &unk_1018A01E0;
        v53 = _Block_copy(aBlock);
        v54 = v28;

        v55 = v65;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100006640(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
        sub_10000D494();
        v56 = v67;
        v57 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v58 = v61;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v53);

        (*(v69 + 8))(v56, v57);
        (*(v66 + 8))(v55, v68);
        (v71)(v48, v50);
        v38 = 1;
      }

      else
      {
        sub_100CCA738();
        v39 = v61;
        sub_100CC5DD8(v61);
        sub_100006370(0, &qword_101A00130, UIAccessibilityCustomAction_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v39 setAccessibilityCustomActions:isa];

        v73 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator(0);
        aBlock[0] = v28;
        v41 = v28;
        sub_100CCEBE8(v26, aBlock);

        sub_10000CAAC(aBlock, &unk_1019F4D00, &unk_10146E7F0);
        v38 = 0;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

void *sub_100CC71E8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v5 - 8);
  v7 = &v29[-1] - v6;
  v8 = type metadata accessor for CRLFollowViewportState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_6;
  }

  v13 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
  v14 = Strong;
  swift_beginAccess();
  sub_10000BE14(v14 + v13, v7, &qword_101A07B80, &qword_101486FA8);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_6:
    sub_10000CAAC(v7, &qword_101A07B80, &qword_101486FA8);
    goto LABEL_7;
  }

  sub_100CCE908(v7, v11, type metadata accessor for CRLFollowViewportState);
  v15 = &v11[*(v8 + 28)];
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  [a2 frameInUnscaledCanvas];
  v31.origin.x = v20;
  v31.origin.y = v21;
  v31.size.width = v22;
  v31.size.height = v23;
  v30.origin.x = v16;
  v30.origin.y = v17;
  v30.size.width = v18;
  v30.size.height = v19;
  if (CGRectContainsRect(v30, v31))
  {
    CRLAccessibilityPostLayoutChangedNotification(a2, v24);
    return sub_100CCE720(v11, type metadata accessor for CRLFollowViewportState);
  }

  sub_100CCE720(v11, type metadata accessor for CRLFollowViewportState);
LABEL_7:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v29[3] = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator(0);
    v29[0] = a3;
    v27 = a3;
    sub_100CCEBE8(a2, v29);

    return sub_10000CAAC(v29, &unk_1019F4D00, &unk_10146E7F0);
  }

  return result;
}

uint64_t sub_100CC7568(uint64_t a1)
{
  v2 = type metadata accessor for CRLFollowViewportState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  sub_100CCE8A0(a1 + *(v8 + 20), v7, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100CCE908(v7, v4, type metadata accessor for CRLFollowViewportState);
    v19 = [objc_opt_self() mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = sub_100CCBB0C(v4);
    v17 = v23;
    sub_100CCE720(v4, type metadata accessor for CRLFollowViewportState);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_5:

    return v15;
  }

  v9 = *v7;
  v10 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
  sub_10000CAAC(v7 + *(v10 + 48), &qword_101A07B80, &qword_101486FA8);
  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = sub_1005E0110(v9, 0);
  v17 = v16;

  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10146C6B0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1000053B0();
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v15 = static String.localizedStringWithFormat(_:_:)();

  return v15;
}

void sub_100CC78DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD7A80 = v4;
  *algn_101AD7A88 = v6;
}

uint64_t sub_100CC7AB0()
{
  v0 = sub_1005B981C(&qword_101A0DE80, qword_101487000);
  __chkstk_darwin(v0 - 8);
  v2 = &v28[-v1];
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  sub_1007D6EB8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A0DE80, qword_101487000);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v9 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v11 = [v9 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    (*(v4 + 8))(v6, v3);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      goto LABEL_10;
    }
  }

  v12 = sub_1007D7988();
  v14 = v16;
LABEL_10:

  v17 = [objc_opt_self() mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10146C6B0;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1000053B0();
  *(v21 + 32) = v12;
  *(v21 + 40) = v14;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  sub_1005B981C(&qword_101A1AAE0, &unk_1014AAA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  if (qword_1019F1FF0 != -1)
  {
    swift_once();
  }

  v26 = *algn_101AD7A88;
  *(inited + 48) = qword_101AD7A80;
  *(inited + 56) = v26;

  v8 = sub_100B2D7F0(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
  swift_arrayDestroy();
  return v8;
}

void sub_100CC7EB8()
{
  v1 = [objc_opt_self() currentlyFocusedElement];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_voiceOverRepRefocusTimer;
  [*(v0 + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_voiceOverRepRefocusTimer) invalidate];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100064288(v11, v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_10000BF3C(v10, (v5 + 24));
  v9[4] = sub_100CCEB14;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = *"";
  v9[2] = sub_10068B39C;
  v9[3] = &unk_1018A0118;
  v6 = _Block_copy(v9);

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:0.25];
  _Block_release(v6);
  sub_100005070(v11);
  v8 = *(v0 + v2);
  *(v0 + v2) = v7;
}

double sub_100CC8050(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_voiceOverRepRefocusTimer;
    v7 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_voiceOverRepRefocusTimer) invalidate];
    v8 = *&v7[v6];
    *&v7[v6] = 0;

    LODWORD(v6) = UIAccessibilityLayoutChangedNotification;
    sub_100020E58(a3, a3[3]);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    UIAccessibilityPostNotification(v6, v9);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100CC8158(uint64_t a1)
{
  v3 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v6);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&aBlock[-1] - v10);
  result = [objc_opt_self() isVoiceOverOrSwitchControlEnabled];
  if (result)
  {
    v13 = *(v3 + 20);
    sub_100CCE8A0(a1 + v13, v11, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v4;
    if (EnumCaseMultiPayload > 1)
    {
      sub_100CCE720(v11, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    }

    else
    {

      v15 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v11 + *(v15 + 48), &qword_101A07B80, &qword_101486FA8);
    }

    v16 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_announcementTimers;
    swift_beginAccess();
    v17 = *(v1 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_1007CF10C();
      if (v19)
      {
        [*(*(v17 + 56) + 8 * v18) invalidate];
      }
    }

    sub_100CCE8A0(a1 + v13, v8, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20)
    {
      if (v20 == 1)
      {

        v21 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
        sub_10000CAAC(v8 + *(v21 + 48), &qword_101A07B80, &qword_101486FA8);
        v22 = 1;
      }

      else
      {
        sub_100CCE720(v8, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
        v22 = 2;
      }
    }

    else
    {

      v23 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v8 + *(v23 + 48), &qword_101A07B80, &qword_101486FA8);
      v22 = 0;
    }

    v24 = objc_opt_self();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100CCE8A0(a1, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v26 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    sub_100CCE908(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    aBlock[4] = sub_100CCEAA0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_1018A00C8;
    v28 = _Block_copy(aBlock);

    v29 = [v24 scheduledTimerWithTimeInterval:0 repeats:v28 block:0.5];
    _Block_release(v28);
    swift_beginAccess();
    sub_100BC465C(v29, v22);
    return swift_endAccess();
  }

  return result;
}

void sub_100CC8614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (&v22 - v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) + 20);
    sub_100CCE8A0(a3 + v12, v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_100CCE720(v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    }

    else
    {

      v13 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v9 + *(v13 + 48), &qword_101A07B80, &qword_101486FA8);
    }

    v14 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_announcementTimers;
    swift_beginAccess();
    v15 = *&v11[v14];
    if (*(v15 + 16))
    {
      v16 = sub_1007CF10C();
      if (v17)
      {
        [*(*(v15 + 56) + 8 * v16) invalidate];
      }
    }

    sub_100CCE8A0(a3 + v12, v6, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v19 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
        sub_10000CAAC(v6 + *(v19 + 48), &qword_101A07B80, &qword_101486FA8);
        v20 = 1;
      }

      else
      {
        sub_100CCE720(v6, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
        v20 = 2;
      }
    }

    else
    {

      v21 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v6 + *(v21 + 48), &qword_101A07B80, &qword_101486FA8);
      v20 = 0;
    }

    swift_beginAccess();
    sub_100BC465C(0, v20);
    swift_endAccess();
    sub_100CCB380(a3);
  }
}

void sub_100CC8928(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CRLFollowViewportState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v8 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_viewportChangeDebounceTimer;
  [*(v1 + OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_viewportChangeDebounceTimer) invalidate];
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100CCE8A0(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLFollowViewportState);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100CCE908(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CRLFollowViewportState);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_100CCE9BC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018A0078;
  v13 = _Block_copy(aBlock);

  v14 = [v9 scheduledTimerWithTimeInterval:0 repeats:v13 block:0.5];
  _Block_release(v13);
  v15 = *(v1 + v8);
  *(v1 + v8) = v14;
}

char *sub_100CC8B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLFollowViewportState(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v70 - v10;
  v11 = sub_1005B981C(&qword_101A07B88, qword_101487060);
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  v78 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v78);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v16 - 8);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v70 - v19;
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v80 = &v70 - v24;
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v72 = v5;
    v30 = v7;
    v31 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_viewportChangeDebounceTimer;
    [*&result[OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_viewportChangeDebounceTimer] invalidate];
    v32 = *&v29[v31];
    *&v29[v31] = 0;

    v81 = a3;
    sub_100CCE8A0(a3, v27, type metadata accessor for CRLFollowViewportState);
    v71 = v30;
    v33 = *(v30 + 56);
    v33(v27, 0, 1, v6);
    v34 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
    swift_beginAccess();
    sub_100CCE7F0(v27, &v29[v34]);
    swift_endAccess();
    v35 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
    swift_beginAccess();
    v36 = *&v29[v35];
    v37 = *(v36 + 16);
    if (!v37)
    {
      goto LABEL_44;
    }

    v70 = *(v36 + 16);
    sub_100CCE8A0(v36 + *(v79 + 20) + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v15, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v39 = v80;
      if (EnumCaseMultiPayload != 1)
      {
        sub_100CCE908(v15, v80, type metadata accessor for CRLFollowViewportState);
        v33(v39, 0, 1, v6);
LABEL_9:
        sub_100CCE8A0(v81, v22, type metadata accessor for CRLFollowViewportState);
        v33(v22, 0, 1, v6);
        v41 = *(v11 + 48);
        sub_10000BE14(v39, v13, &qword_101A07B80, &qword_101486FA8);
        sub_10000BE14(v22, &v13[v41], &qword_101A07B80, &qword_101486FA8);
        v42 = *(v71 + 48);
        if (v42(v13, 1, v6) == 1)
        {
          sub_10000CAAC(v22, &qword_101A07B80, &qword_101486FA8);
          if (v42(&v13[v41], 1, v6) == 1)
          {

            sub_10000CAAC(v13, &qword_101A07B80, &qword_101486FA8);
            return sub_10000CAAC(v80, &qword_101A07B80, &qword_101486FA8);
          }
        }

        else
        {
          v43 = v75;
          sub_10000BE14(v13, v75, &qword_101A07B80, &qword_101486FA8);
          if (v42(&v13[v41], 1, v6) != 1)
          {
            v45 = &v13[v41];
            v46 = v73;
            sub_100CCE908(v45, v73, type metadata accessor for CRLFollowViewportState);
            v47 = static UUID.== infix(_:_:)();
            v44 = v81;
            if ((v47 & 1) != 0 && *(v43 + *(v6 + 24)) == *(v46 + *(v6 + 24)))
            {
              LODWORD(v77) = CGRectEqualToRect(*(v43 + *(v6 + 28)), *(v46 + *(v6 + 28)));
              sub_100CCE720(v46, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v22, &qword_101A07B80, &qword_101486FA8);
              sub_100CCE720(v43, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v13, &qword_101A07B80, &qword_101486FA8);
              if (v77)
              {

                return sub_10000CAAC(v80, &qword_101A07B80, &qword_101486FA8);
              }
            }

            else
            {
              sub_100CCE720(v46, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v22, &qword_101A07B80, &qword_101486FA8);
              sub_100CCE720(v43, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v13, &qword_101A07B80, &qword_101486FA8);
            }

LABEL_20:
            v48 = v76;
            sub_10000BE14(v80, v76, &qword_101A07B80, &qword_101486FA8);
            if (v42(v48, 1, v6) == 1)
            {
              sub_10000CAAC(v48, &qword_101A07B80, &qword_101486FA8);
LABEL_43:
              v37 = v70;
LABEL_44:
              v69 = v72;
              sub_100CCE8A0(v81, &v72[*(v79 + 20)], type metadata accessor for CRLFollowViewportState);
              swift_storeEnumTagMultiPayload();
              static Date.now.getter();
              sub_100CC8158(v69);
              sub_100CC96B0(v69);

              result = sub_100CCE720(v69, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              if (!v37)
              {
                return result;
              }

              return sub_10000CAAC(v80, &qword_101A07B80, &qword_101486FA8);
            }

            v49 = v48;
            v50 = v74;
            sub_100CCE908(v49, v74, type metadata accessor for CRLFollowViewportState);
            v51 = vabds_f32(*(v50 + *(v6 + 24)), *(v44 + *(v6 + 24)));
            v52 = sub_100120090(*(v50 + *(v6 + 28)), *(v50 + *(v6 + 28) + 8), *(v44 + *(v6 + 28)), *(v44 + *(v6 + 28) + 8));
            if (v51 >= 0.1 || v52 >= 50.0)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (!Strong)
              {
LABEL_42:
                sub_100CCE720(v50, type metadata accessor for CRLFollowViewportState);
                goto LABEL_43;
              }

              v55 = Strong;
              v56 = [*(Strong + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
              sub_100006370(0, &qword_1019F8508, off_10182F8A8);
              v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v57 >> 62)
              {
                goto LABEL_49;
              }

              for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
              {
                v59 = 0;
                v77 = v57 & 0xFFFFFFFFFFFFFF8;
                while (1)
                {
                  if ((v57 & 0xC000000000000001) != 0)
                  {
                    v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v59 >= *(v77 + 16))
                    {
                      goto LABEL_48;
                    }

                    v60 = *(v57 + 8 * v59 + 32);
                  }

                  v61 = v60;
                  v62 = v59 + 1;
                  if (__OFADD__(v59, 1))
                  {
                    break;
                  }

                  v63 = [v60 canvas];
                  v64 = [v63 allReps];

                  sub_100006370(0, &qword_1019FB7A0, off_10182F798);
                  sub_100605614();
                  v65 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  __chkstk_darwin(v66);
                  *(&v70 - 2) = v81;
                  v67 = sub_1005DDF74(sub_100CCEE14, (&v70 - 4), v65);
                  if ((v67 & 0xC000000000000001) != 0)
                  {
                    v68 = __CocoaSet.count.getter();
                  }

                  else
                  {
                    v68 = *(v67 + 16);
                  }

                  if (v68)
                  {

                    v50 = v74;
                    goto LABEL_42;
                  }

                  ++v59;
                  if (v62 == i)
                  {
                    goto LABEL_39;
                  }
                }

                __break(1u);
LABEL_48:
                __break(1u);
LABEL_49:
                ;
              }

LABEL_39:

              v53 = v74;
            }

            else
            {

              v53 = v50;
            }

            sub_100CCE720(v53, type metadata accessor for CRLFollowViewportState);
            return sub_10000CAAC(v80, &qword_101A07B80, &qword_101486FA8);
          }

          sub_10000CAAC(v22, &qword_101A07B80, &qword_101486FA8);
          sub_100CCE720(v43, type metadata accessor for CRLFollowViewportState);
        }

        sub_10000CAAC(v13, &qword_101A07B88, qword_101487060);
        v44 = v81;
        goto LABEL_20;
      }

      v40 = v15 + *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    }

    else
    {

      v40 = v15 + *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
      v39 = v80;
    }

    sub_100CCE780(v40, v39);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100CC96B0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v6 = v5 - 8;
  v33 = *(v5 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v32 - v12);
  v14 = *(v6 + 28);
  sub_100CCE8A0(a1 + v14, &v32 - v12, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = ObjectType;
  if (EnumCaseMultiPayload > 1)
  {
    sub_100CCE720(v13, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  }

  else
  {

    v16 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
    sub_10000CAAC(v13 + *(v16 + 48), &qword_101A07B80, &qword_101486FA8);
  }

  v17 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyLoggingTimers;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (*(v18 + 16))
  {
    v19 = sub_1007CF10C();
    if (v20)
    {
      [*(*(v18 + 56) + 8 * v19) invalidate];
    }
  }

  sub_100CCE8A0(a1 + v14, v10, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21)
  {
    if (v21 == 1)
    {

      v22 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v10 + *(v22 + 48), &qword_101A07B80, &qword_101486FA8);
      v23 = 1;
    }

    else
    {
      sub_100CCE720(v10, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      v23 = 2;
    }
  }

  else
  {

    v24 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
    sub_10000CAAC(v10 + *(v24 + 48), &qword_101A07B80, &qword_101486FA8);
    v23 = 0;
  }

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100CCE8A0(a1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
  v27 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  sub_100CCE908(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
  *(v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  aBlock[4] = sub_100CCE970;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018A0028;
  v29 = _Block_copy(aBlock);

  v30 = [v25 scheduledTimerWithTimeInterval:0 repeats:v29 block:1.0];
  _Block_release(v29);
  swift_beginAccess();
  sub_100BC465C(v30, v23);
  return swift_endAccess();
}

void sub_100CC9B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019F6DF8, &unk_10146FBE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v33 - v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
    v16 = *(v15 + 20);
    sub_100CCE8A0(a3 + v16, v12, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_100CCE720(v12, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    }

    else
    {

      v17 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v12 + *(v17 + 48), &qword_101A07B80, &qword_101486FA8);
    }

    v18 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyLoggingTimers;
    swift_beginAccess();
    v19 = *&v14[v18];
    if (*(v19 + 16))
    {
      v20 = sub_1007CF10C();
      if (v21)
      {
        [*(*(v19 + 56) + 8 * v20) invalidate];
      }
    }

    sub_100CCE8A0(a3 + v16, v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v23 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
        sub_10000CAAC(v9 + *(v23 + 48), &qword_101A07B80, &qword_101486FA8);
        v24 = 1;
      }

      else
      {
        sub_100CCE720(v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
        v24 = 2;
      }
    }

    else
    {

      v25 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v9 + *(v25 + 48), &qword_101A07B80, &qword_101486FA8);
      v24 = 0;
    }

    swift_beginAccess();
    sub_100BC465C(0, v24);
    v26 = swift_endAccess();
    __chkstk_darwin(v26);
    *(&v33 - 2) = a3;
    v27 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
    swift_beginAccess();
    v28 = sub_100CCD6E4(sub_100CCE99C, (&v33 - 4));
    v29 = *(*&v14[v27] + 16);
    if (v29 < v28)
    {
      __break(1u);
    }

    else
    {
      sub_100678C98(v28, v29);
      swift_endAccess();
      sub_100CCA738();
      swift_beginAccess();
      sub_100CCE8A0(a3, v6, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      sub_100676E34(0, 0, v6);
      swift_endAccess();
      v30 = *&v14[v27];
      if (*(v30 + 16) <= 6uLL)
      {
      }

      else
      {
        sub_100676980(v30, v30 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), 0, 0xDuLL);
        v32 = v31;
      }

      *&v14[v27] = v32;

      if ([objc_opt_self() isVoiceOverOrSwitchControlEnabled])
      {
        sub_100CC4F54();
      }

      else
      {
        sub_100CC542C();
      }
    }
  }
}

BOOL sub_100CCA044(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A07B88, qword_101487060);
  __chkstk_darwin(v5);
  v61 = &v56 - v6;
  v7 = sub_1005B981C(&qword_101A1AAD0, &qword_1014AAA30);
  __chkstk_darwin(v7);
  v9 = (&v56 - v8);
  v10 = type metadata accessor for CRLFollowViewportState(0);
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v15 - 8);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  __chkstk_darwin(v20);
  v62 = &v56 - v21;
  v22 = *(type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) + 20);
  if (sub_100CCDA3C((a1 + v22), (a2 + v22)))
  {
    return 1;
  }

  v56 = v2;
  v24 = (v9 + *(v7 + 48));
  sub_100CCE8A0(a2 + v22, v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  sub_100CCE8A0(a1 + v22, v24, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100CCE720(v9, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      sub_100CCE720(v24, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      return 0;
    }

    v26 = *v9;
    v27 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    v28 = v9 + v27;
    if (swift_getEnumCaseMultiPayload() < 2)
    {
LABEL_6:
      v29 = *v24;
      sub_10000CAAC(v24 + v27, &qword_101A07B80, &qword_101486FA8);
      sub_10000CAAC(v28, &qword_101A07B80, &qword_101486FA8);
      [v26 frameInUnscaledCanvas];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      [v29 frameInUnscaledCanvas];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v63.origin.x = v31;
      v63.origin.y = v33;
      v63.size.width = v35;
      v63.size.height = v37;
      v64.origin.x = v39;
      v64.origin.y = v41;
      v64.size.width = v43;
      v64.size.height = v45;
      return CGRectEqualToRect(v63, v64);
    }
  }

  else
  {
    v26 = *v9;
    v27 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    v28 = v9 + v27;
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      goto LABEL_6;
    }
  }

  v46 = v62;
  sub_100CCE780(v28, v62);
  sub_100CCE908(v24, v14, type metadata accessor for CRLFollowViewportState);
  sub_100CCE908(v14, v19, type metadata accessor for CRLFollowViewportState);
  v47 = v59;
  v48 = v60;
  (*(v59 + 56))(v19, 0, 1, v60);
  v49 = *(v5 + 48);
  v50 = v61;
  sub_10000BE14(v46, v61, &qword_101A07B80, &qword_101486FA8);
  sub_10000BE14(v19, v50 + v49, &qword_101A07B80, &qword_101486FA8);
  v51 = *(v47 + 48);
  if (v51(v50, 1, v48) == 1)
  {
    sub_10000CAAC(v19, &qword_101A07B80, &qword_101486FA8);
    sub_10000CAAC(v46, &qword_101A07B80, &qword_101486FA8);
    if (v51(v50 + v49, 1, v48) == 1)
    {
      sub_10000CAAC(v50, &qword_101A07B80, &qword_101486FA8);
      return 1;
    }

    goto LABEL_14;
  }

  v52 = v58;
  sub_10000BE14(v50, v58, &qword_101A07B80, &qword_101486FA8);
  if (v51(v50 + v49, 1, v48) == 1)
  {
    sub_10000CAAC(v19, &qword_101A07B80, &qword_101486FA8);
    sub_10000CAAC(v62, &qword_101A07B80, &qword_101486FA8);
    sub_100CCE720(v52, type metadata accessor for CRLFollowViewportState);
LABEL_14:
    sub_10000CAAC(v50, &qword_101A07B88, qword_101487060);
    return 0;
  }

  v53 = v50 + v49;
  v54 = v57;
  sub_100CCE908(v53, v57, type metadata accessor for CRLFollowViewportState);
  v55 = (static UUID.== infix(_:_:)() & 1) != 0 && *(v52 + *(v48 + 24)) == *(v54 + *(v48 + 24)) && CGRectEqualToRect(*(v52 + *(v48 + 28)), *(v54 + *(v48 + 28)));
  sub_100CCE720(v54, type metadata accessor for CRLFollowViewportState);
  sub_10000CAAC(v19, &qword_101A07B80, &qword_101486FA8);
  sub_10000CAAC(v62, &qword_101A07B80, &qword_101486FA8);
  sub_100CCE720(v52, type metadata accessor for CRLFollowViewportState);
  sub_10000CAAC(v50, &qword_101A07B80, &qword_101486FA8);
  return v55;
}

void sub_100CCA738()
{
  v86 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v86);
  v85 = (&v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v84 = &v82 - v3;
  v89 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v82 - v7;
  __chkstk_darwin(v8);
  v92 = &v82 - v9;
  __chkstk_darwin(v10);
  v96 = &v82 - v11;
  __chkstk_darwin(v12);
  v93 = &v82 - v13;
  __chkstk_darwin(v14);
  v97 = &v82 - v15;
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
  swift_beginAccess();
  v91 = v0;
  v94 = v19;
  v20 = *(v0 + v19);
  v21 = v20 + 2;
  v22 = v20[2];
  v83 = v4;
  if (v22)
  {
    v23 = 0;
    v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25 = *(v4 + 72);
    v95 = v24;
    while (1)
    {
      Date.timeIntervalSinceNow.getter();
      if (v26 < -300.0)
      {
        break;
      }

      ++v23;
      v24 += v25;
      if (v22 == v23)
      {
        goto LABEL_5;
      }
    }

    v27 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      v29 = *v21;
      if (v27 == *v21)
      {
        v28 = v91;
LABEL_9:
        if (v27 >= v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v75 = v25 + v24;
        v28 = v91;
        v76 = v93;
        while (v27 < v29)
        {
          sub_100CCE8A0(v20 + v75, v18, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
          Date.timeIntervalSinceNow.getter();
          v78 = v77;
          sub_100CCE720(v18, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
          if (v78 >= -300.0)
          {
            if (v27 != v23)
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_90;
              }

              v79 = *v21;
              if (v23 >= *v21)
              {
                goto LABEL_91;
              }

              sub_100CCE8A0(v20 + v95 + v23 * v25, v97, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              if (v27 >= v79)
              {
                goto LABEL_92;
              }

              sub_100CCE8A0(v20 + v75, v76, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v28 + v94) = v20;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v20 = sub_10113CEE4(v20);
                *(v28 + v94) = v20;
              }

              sub_100CCED94(v76, v20 + v95 + v23 * v25, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              v81 = v94;
              *(v28 + v94) = v20;
              if (v27 >= v20[2])
              {
                goto LABEL_93;
              }

              sub_100CCED94(v97, v20 + v75, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              *(v28 + v81) = v20;
            }

            ++v23;
          }

          ++v27;
          v21 = v20 + 2;
          v29 = v20[2];
          v75 += v25;
          if (v27 == v29)
          {
            goto LABEL_9;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
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
LABEL_93:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_5:
  v23 = *v21;
  v27 = *v21;
  v28 = v91;
LABEL_10:
  v30 = v94;
  sub_100678C98(v23, v27);
  v31 = *(v30 + v28);
  v90 = v31[2];
  v32 = 0;
  if (!v90)
  {
    goto LABEL_64;
  }

  v34 = v83;
  v33 = v84;
  v95 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v93 = v31 + v95;
  v36 = v85;
  v35 = v86;
  v37 = v89;
  v38 = v92;
  while (1)
  {
    if (v32 >= v31[2])
    {
      goto LABEL_84;
    }

    v97 = *(v34 + 72);
    v39 = v96;
    sub_100CCE8A0(&v93[v97 * v32], v96, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    sub_100CCE8A0(v39 + *(v37 + 5), v33, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      sub_100CCE720(v39, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      sub_100CCE720(v33, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      goto LABEL_13;
    }

    v40 = v31;
    v41 = v33;
    v33 = *v33;
    v42 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
    sub_10000CAAC(v41 + *(v42 + 48), &qword_101A07B80, &qword_101486FA8);
    v43 = [v33 canvas];
    if (!v43)
    {
      goto LABEL_28;
    }

    v41 = v43;
    v44 = [v43 allReps];

    sub_100006370(0, &qword_1019FB7A0, off_10182F798);
    sub_100605614();
    v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v45 & 0xC000000000000001) == 0)
    {
      break;
    }

    v46 = v33;
    v41 = __CocoaSet.contains(_:)();

    sub_100CCE720(v96, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
    v37 = v89;
    v38 = v92;
    v30 = v94;
    v34 = v83;
    v33 = v84;
    if ((v41 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (++v32 == v90)
    {
      v32 = v31[2];
      v52 = v32;
      goto LABEL_79;
    }
  }

  if (*(v45 + 16))
  {
    v41 = v33;
    v47 = NSObject._rawHashValue(seed:)(*(v45 + 40));
    v48 = -1 << *(v45 + 32);
    v49 = v47 & ~v48;
    if ((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      v50 = ~v48;
      while (1)
      {
        v51 = *(*(v45 + 48) + 8 * v49);
        v41 = static NSObject.== infix(_:_:)();

        if (v41)
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_100CCE720(v96, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      v36 = v85;
      v35 = v86;
      v37 = v89;
      v38 = v92;
      v30 = v94;
      v31 = v40;
      v34 = v83;
      v33 = v84;
      goto LABEL_13;
    }
  }

LABEL_27:

  v36 = v85;
  v35 = v86;
  v37 = v89;
  v38 = v92;
  v30 = v94;
LABEL_28:

  sub_100CCE720(v96, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
  v31 = v40;
LABEL_29:
  v52 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  while (2)
  {
    v54 = v31[2];
    if (v52 != v54)
    {
      if (v52 >= v54)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v55 = v31 + v95;
      v96 = v52 * v97;
      sub_100CCE8A0(v31 + v95 + v52 * v97, v38, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      sub_100CCE8A0(v38 + *(v37 + 5), v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v93 = v55;
        sub_100CCE720(v38, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
        sub_100CCE720(v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
        goto LABEL_43;
      }

      v90 = v31;
      v56 = *v36;
      v57 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_10000CAAC(v36 + *(v57 + 48), &qword_101A07B80, &qword_101486FA8);
      v58 = [v56 canvas];
      if (v58)
      {
        v93 = v55;
        v59 = v58;
        v60 = [v58 allReps];

        sub_100006370(0, &qword_1019FB7A0, off_10182F798);
        sub_100605614();
        v61 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v61 & 0xC000000000000001) != 0)
        {
          v62 = v56;
          v63 = __CocoaSet.contains(_:)();

          v38 = v92;
          sub_100CCE720(v92, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
          v37 = v89;
          v31 = v90;
          v30 = v94;
          if (v63)
          {
LABEL_43:
            if (v32 != v52)
            {
              goto LABEL_44;
            }

            goto LABEL_33;
          }

          goto LABEL_34;
        }

        if (*(v61 + 16))
        {
          v69 = NSObject._rawHashValue(seed:)(*(v61 + 40));
          v70 = -1 << *(v61 + 32);
          v71 = v69 & ~v70;
          if ((*(v61 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
          {
            v72 = ~v70;
            while (1)
            {
              v73 = *(*(v61 + 48) + 8 * v71);
              v74 = static NSObject.== infix(_:_:)();

              if (v74)
              {
                break;
              }

              v71 = (v71 + 1) & v72;
              if (((*(v61 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            v38 = v92;
            sub_100CCE720(v92, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
            v36 = v85;
            v35 = v86;
            v37 = v89;
            v31 = v90;
            v30 = v94;
            if (v32 != v52)
            {
LABEL_44:
              if ((v32 & 0x8000000000000000) != 0)
              {
                goto LABEL_85;
              }

              v64 = v31[2];
              if (v32 >= v64)
              {
                goto LABEL_86;
              }

              v38 = v36;
              v36 = v37;
              v37 = v30;
              v65 = v35;
              v66 = v32 * v97;
              v67 = v93;
              sub_100CCE8A0(&v93[v32 * v97], v88, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              if (v52 >= v64)
              {
                goto LABEL_87;
              }

              sub_100CCE8A0(&v67[v96], v87, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              v68 = swift_isUniquelyReferenced_nonNull_native();
              *(v37 + v91) = v31;
              if ((v68 & 1) == 0)
              {
                v31 = sub_10113CEE4(v31);
                *(v37 + v91) = v31;
              }

              v35 = v65;
              if (v32 >= v31[2])
              {
                goto LABEL_88;
              }

              v41 = v31 + v95;
              sub_100CCED94(v87, v31 + v95 + v66, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              v33 = v91;
              *(v37 + v91) = v31;
              if (v52 >= v31[2])
              {
                goto LABEL_89;
              }

LABEL_32:
              v30 = v37;
              sub_100CCED94(v88, v41 + v96, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
              *(v37 + v33) = v31;
              v37 = v36;
              v36 = v38;
              v38 = v92;
            }

LABEL_33:
            v53 = __OFADD__(v32++, 1);
            if (v53)
            {
              goto LABEL_83;
            }

LABEL_34:
            v53 = __OFADD__(v52++, 1);
            if (v53)
            {
              goto LABEL_81;
            }

            continue;
          }
        }

LABEL_58:

        v38 = v92;
        sub_100CCE720(v92, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
        v36 = v85;
        v35 = v86;
        v37 = v89;
        v30 = v94;
      }

      else
      {
        sub_100CCE720(v38, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
      }

      v31 = v90;
      goto LABEL_34;
    }

    break;
  }

  if (v52 >= v32)
  {
    goto LABEL_79;
  }

  __break(1u);
LABEL_64:
  v52 = 0;
LABEL_79:
  sub_100678C98(v32, v52);
  swift_endAccess();
}

void sub_100CCB380(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0DE80, qword_101487000);
  __chkstk_darwin(v3 - 8);
  v68 = &v62 - v4;
  v5 = type metadata accessor for PersonNameComponents();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - v8;
  v10 = type metadata accessor for CRLFollowViewportState(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v14);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
    sub_100CCE8A0(a1 + *(v19 + 20), v16, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v64 = v5;
    v65 = v1;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_100CCE908(v16, v13, type metadata accessor for CRLFollowViewportState);
        v41 = [objc_opt_self() mainBundle];
        v42 = String._bridgeToObjectiveC()();
        v43 = String._bridgeToObjectiveC()();
        v44 = [v41 localizedStringForKey:v42 value:v43 table:0];

        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v65;
        v46 = sub_100CCBB0C(v13);
        v35 = v47;
        sub_100CCE908(v13, v9, type metadata accessor for CRLFollowViewportState);
        (*(v11 + 56))(v9, 0, 1, v10);
        v48 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentAnnouncedViewportState;
        swift_beginAccess();
        v49 = v9;
        v33 = v46;
        sub_100CCE7F0(v49, v45 + v48);
        swift_endAccess();
        v36 = v68;
        if (v35)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }

      v21 = *v16;
      v22 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
      v23 = [objc_opt_self() mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v21;
      v28 = 0;
    }

    else
    {
      v21 = *v16;
      v22 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
      v29 = [objc_opt_self() mainBundle];
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v21;
      v28 = 1;
    }

    v33 = sub_1005E0110(v27, v28);
    v35 = v34;

    sub_10000CAAC(v16 + v22, &qword_101A07B80, &qword_101486FA8);
    v36 = v68;
    if (v35)
    {
LABEL_7:
      v37 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v37 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_10146BDE0;
        sub_1007D6EB8(v36);
        v39 = v67;
        v40 = v64;
        if ((*(v67 + 48))(v36, 1, v64) == 1)
        {
          sub_10000CAAC(v36, &qword_101A0DE80, qword_101487000);
        }

        else
        {
          v62 = v33;
          v50 = v66;
          (*(v39 + 32))(v66, v36, v40);
          v51 = objc_opt_self();
          v52 = v39;
          isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v54 = [v51 localizedStringFromPersonNameComponents:isa style:1 options:0];

          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          (*(v52 + 8))(v50, v40);
          v58 = HIBYTE(v57) & 0xF;
          if ((v57 & 0x2000000000000000) == 0)
          {
            v58 = v55 & 0xFFFFFFFFFFFFLL;
          }

          if (v58)
          {
            v33 = v62;
LABEL_22:
            *(v38 + 56) = &type metadata for String;
            v60 = sub_1000053B0();
            *(v38 + 32) = v55;
            *(v38 + 40) = v57;
            *(v38 + 96) = &type metadata for String;
            *(v38 + 104) = v60;
            *(v38 + 64) = v60;
            *(v38 + 72) = v33;
            *(v38 + 80) = v35;
            static String.localizedStringWithFormat(_:_:)();

            v61 = String._bridgeToObjectiveC()();

            CRLAccessibilityPostAnnouncementNotification(v65, v61);

            return;
          }

          v33 = v62;
        }

        v55 = sub_1007D7988();
        v57 = v59;
        goto LABEL_22;
      }

LABEL_15:

      return;
    }

LABEL_13:

    goto LABEL_15;
  }
}

uint64_t sub_100CCBB0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v4 - 8);
  v6 = v38 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [*(result + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
    sub_100006370(0, &qword_1019F8508, off_10182F8A8);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v11);
    v38[-2] = v2;
    v38[-1] = a1;
    v12 = sub_101107CA8(sub_100CCE880, &v38[-4], v10);

    result = 0;
    if (v12)
    {
      type metadata accessor for CRLAccessibilitySceneDescriptionHelper();
      v13 = type metadata accessor for CRLFollowViewportState(0);
      v14 = (a1 + *(v13 + 28));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = [v12 canvas];
      v20 = [v19 allReps];

      sub_100006370(0, &qword_1019FB7A0, off_10182F798);
      sub_100605614();
      v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = sub_1005DC808(v21, 1, v15, v16, v17, v18);
      v24 = v23;

      v25 = *(a1 + *(v13 + 24));
      v26 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentAnnouncedViewportState;
      swift_beginAccess();
      sub_10000BE14(v2 + v26, v6, &qword_101A07B80, &qword_101486FA8);
      if ((*(*(v13 - 8) + 48))(v6, 1, v13))
      {
        sub_10000CAAC(v6, &qword_101A07B80, &qword_101486FA8);
      }

      else
      {
        v35 = *&v6[*(v13 + 24)];
        sub_10000CAAC(v6, &qword_101A07B80, &qword_101486FA8);
        if (v25 == v35)
        {
          v32 = 0;
          v34 = 0;
          goto LABEL_12;
        }
      }

      v27 = [objc_opt_self() mainBundle];
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      result = swift_allocObject();
      *(result + 16) = xmmword_10146C6B0;
      v31 = roundf(v25 * 100.0);
      if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v31 > -9.2234e18)
      {
        if (v31 < 9.2234e18)
        {
          *(result + 56) = &type metadata for Int;
          *(result + 64) = &protocol witness table for Int;
          *(result + 32) = v31;
          v32 = static String.localizedStringWithFormat(_:_:)();
          v34 = v33;

LABEL_12:
          sub_1005B981C(&qword_101A1AAE0, &unk_1014AAA40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          *(inited + 32) = v22;
          *(inited + 40) = v24;
          *(inited + 48) = v32;
          *(inited + 56) = v34;
          v37 = sub_100B2D7F0(inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
          swift_arrayDestroy();
          return v37;
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

BOOL sub_100CCC000(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 canvas];
  v5 = [v4 allReps];

  sub_100006370(0, &qword_1019FB7A0, off_10182F798);
  sub_100605614();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10[2] = a3;
  v7 = sub_1005DDF74(sub_100CCEE14, v10, v6);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  return v8 != 0;
}

BOOL sub_100CCC100(id *a1, uint64_t a2)
{
  v3 = *a1;
  if ([*a1 hasBeenRemoved])
  {
    return 0;
  }

  [v3 frameInUnscaledCanvas];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(a2 + *(type metadata accessor for CRLFollowViewportState(0) + 28));
  v13.origin.x = v6;
  v13.origin.y = v8;
  v13.size.width = v10;
  v13.size.height = v12;
  return CGRectIntersectsRect(v13, v14);
}

uint64_t sub_100CCC1AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLFollowViewportState(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v45 - v17;
  (*(v5 + 16))(&v45 - v17, a2 + v8[5], v4, v16);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(a2 + v8[6]);
  [v45 frameInUnscaledCanvas];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(a2 + v8[7] + 16);
  v29 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  sub_10000BE14(v18, v14, &qword_1019F6990, &qword_10146D2F0);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_10000CAAC(v14, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v18, &qword_1019F6990, &qword_10146D2F0);
    v30 = 1;
    v31 = v46;
  }

  else
  {
    v32 = sub_100120414(v21, v23, v25, v27);
    v34 = sub_10011EC70(v32, v33, v28);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = *(v5 + 32);
    v41(v7, v14, v4);
    sub_10000CAAC(v18, &qword_1019F6990, &qword_10146D2F0);
    v41(v11 + v8[5], v7, v4);
    *(v11 + v8[6]) = v19;
    v42 = (v11 + v8[7]);
    *v42 = v34;
    *(v42 + 1) = v36;
    *(v42 + 2) = v38;
    *(v42 + 3) = v40;
    *v11 = v29;
    v43 = v46;
    sub_100CCE908(v11, v46, type metadata accessor for CRLFollowViewportState);
    v30 = 0;
    v31 = v43;
  }

  return (*(v9 + 56))(v31, v30, 1, v8);
}

uint64_t sub_100CCC560(void *a1, uint64_t a2)
{
  v66 = a1;
  v4 = type metadata accessor for CRLFollowViewportState(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v59 - v8;
  __chkstk_darwin(v10);
  v62 = v59 - v11;
  v12 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v12);
  v14 = (v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v15 - 8);
  v68 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = v59 - v18;
  __chkstk_darwin(v19);
  v63 = v59 - v20;
  __chkstk_darwin(v21);
  v23 = v59 - v22;
  __chkstk_darwin(v24);
  v26 = v59 - v25;
  __chkstk_darwin(v27);
  v29 = v59 - v28;
  v67 = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    v61 = v9;
    sub_1008FEE94(1);

    v32 = *(v5 + 56);
    v32(v29, 1, 1, v4);
    v33 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
    sub_100CCE8A0(a2 + *(v33 + 20), v14, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_10000CAAC(v29, &qword_101A07B80, &qword_101486FA8);
      sub_100CCE908(v14, v29, type metadata accessor for CRLFollowViewportState);
      v32(v29, 0, 1, v4);
    }

    else
    {
      v59[0] = v32;
      v59[1] = v5 + 56;
      v34 = *v14;
      v35 = sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38);
      sub_100CCE780(v14 + *(v35 + 48), v26);
      sub_100CCE780(v26, v23);
      v60 = v5;
      v36 = *(v5 + 48);
      v37 = v4;
      if (v36(v23, 1, v4) == 1)
      {
        sub_10000CAAC(v23, &qword_101A07B80, &qword_101486FA8);
LABEL_10:
        v4 = v37;
        v46 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
        v47 = v67;
        swift_beginAccess();
        v48 = v47 + v46;
        v49 = v63;
        sub_10000BE14(v48, v63, &qword_101A07B80, &qword_101486FA8);
        v50 = v36(v49, 1, v37);
        v51 = v61;
        if (v50 == 1)
        {

          sub_10000CAAC(v49, &qword_101A07B80, &qword_101486FA8);
        }

        else
        {
          sub_100CCE908(v49, v61, type metadata accessor for CRLFollowViewportState);
          v52 = v65;
          sub_100CCC1AC(v34, v51, v65);

          sub_100CCE720(v51, type metadata accessor for CRLFollowViewportState);
          sub_10000CAAC(v29, &qword_101A07B80, &qword_101486FA8);
          sub_100CCE780(v52, v29);
        }

        v5 = v60;
        v38 = v68;
        v32 = v59[0];
        goto LABEL_14;
      }

      v39 = v62;
      sub_100CCE908(v23, v62, type metadata accessor for CRLFollowViewportState);
      v40 = [v66 canvas];
      v41 = [v40 allReps];

      sub_100006370(0, &qword_1019FB7A0, off_10182F798);
      sub_100605614();
      v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v43);
      v59[-2] = v39;
      v44 = sub_1005DDF74(sub_100CCE860, &v59[-4], v42);
      LOBYTE(v41) = sub_10079EB78(v34, v44);

      if ((v41 & 1) == 0)
      {
        sub_100CCE720(v39, type metadata accessor for CRLFollowViewportState);
        goto LABEL_10;
      }

      sub_10000CAAC(v29, &qword_101A07B80, &qword_101486FA8);

      sub_100CCE908(v39, v29, type metadata accessor for CRLFollowViewportState);
      v4 = v37;
      v45 = v37;
      v32 = v59[0];
      (v59[0])(v29, 0, 1, v45);
      v5 = v60;
    }

    v38 = v68;
LABEL_14:
    sub_10000BE14(v29, v38, &qword_101A07B80, &qword_101486FA8);
    if ((*(v5 + 48))(v38, 1, v4) == 1)
    {
      sub_10000CAAC(v29, &qword_101A07B80, &qword_101486FA8);
      sub_10000CAAC(v38, &qword_101A07B80, &qword_101486FA8);
      return 0;
    }

    else
    {
      v53 = v38;
      v54 = v64;
      sub_100CCE908(v53, v64, type metadata accessor for CRLFollowViewportState);
      v55 = v67;
      sub_100CC7EB8();
      [v66 zoomWithAnimationToUnscaledRect:*(v54 + *(v4 + 28)) withDuration:{*(v54 + *(v4 + 28) + 8), *(v54 + *(v4 + 28) + 16), *(v54 + *(v4 + 28) + 24), 0.0}];
      sub_10000CAAC(v29, &qword_101A07B80, &qword_101486FA8);
      v56 = v54;
      v57 = v65;
      sub_100CCE908(v56, v65, type metadata accessor for CRLFollowViewportState);
      v32(v57, 0, 1, v4);
      v58 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_mostRecentViewportState;
      swift_beginAccess();
      sub_100CCE7F0(v57, v55 + v58);
      swift_endAccess();
      return 1;
    }
  }

  return result;
}

void sub_100CCCDAC(uint64_t a1)
{
  sub_100CCCE78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100CCCE78(uint64_t a1)
{
  if (!qword_101A07B60)
  {
    type metadata accessor for CRLFollowViewportState(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A07B60);
    }
  }
}

void sub_100CCCEF0(uint64_t a1)
{
  sub_100CCCF64(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRLFollowViewportState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100CCCF64(uint64_t a1)
{
  if (!qword_101A1AA08)
  {
    sub_100006370(255, &qword_1019FB7A0, off_10182F798);
    sub_1005C4E5C(&qword_101A07B80, &qword_101486FA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A1AA08);
    }
  }
}

uint64_t sub_100CCD048(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100CCD0D0()
{
  result = qword_101A1AAC8;
  if (!qword_101A1AAC8)
  {
    result = swift_getWitnessTable(byte_1014AA9D4, &type metadata for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event.EventType, v0, v1);
    atomic_store(result, &qword_101A1AAC8);
  }

  return result;
}

uint64_t sub_100CCD124(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_10097EE7C(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_10113E260();
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_10113E260();
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100CCD38C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_10097EFBC(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v12;
    v37 = v9;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_100CCE8A0(v23 + v24 * v19, v39, type metadata accessor for CRLBoardIdentifier);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_100CCE720(v25, type metadata accessor for CRLBoardIdentifier);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_100CCE8A0(v23 + v24 * v43, v36, type metadata accessor for CRLBoardIdentifier);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_100CCE8A0(v23 + v42, v37, type metadata accessor for CRLBoardIdentifier);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10113CE94(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_100CCED94(v37, v16 + v41 + v31, type metadata accessor for CRLBoardIdentifier);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_100CCED94(v36, v33 + v32, type metadata accessor for CRLBoardIdentifier);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100CCD6E4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_10097F334(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v12;
    v37 = v9;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_100CCE8A0(v23 + v24 * v19, v39, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_100CCE720(v25, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_100CCE8A0(v23 + v24 * v43, v36, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_100CCE8A0(v23 + v42, v37, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10113CEE4(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_100CCED94(v37, v16 + v41 + v31, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_100CCED94(v36, v33 + v32, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100CCDA3C(char *a1, char *a2)
{
  v91 = a1;
  v92 = a2;
  v89 = type metadata accessor for CRLFollowViewportState(0);
  v85 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v79 - v4;
  __chkstk_darwin(v5);
  v80 = &v79 - v6;
  v84 = sub_1005B981C(&qword_101A07B88, qword_101487060);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v79 - v9;
  v10 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  __chkstk_darwin(v10 - 8);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v79 - v13;
  __chkstk_darwin(v14);
  v87 = &v79 - v15;
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  __chkstk_darwin(v19);
  v21 = &v79 - v20;
  __chkstk_darwin(v22);
  v24 = &v79 - v23;
  v25 = type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event(0);
  __chkstk_darwin(v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = (&v79 - v29);
  __chkstk_darwin(v31);
  v33 = (&v79 - v32);
  v34 = sub_1005B981C(&qword_101A1AAD0, &qword_1014AAA30);
  __chkstk_darwin(v34 - 8);
  v36 = &v79 - v35;
  v38 = (&v79 + *(v37 + 56) - v35);
  sub_100CCE8A0(v91, &v79 - v35, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  sub_100CCE8A0(v92, v38, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v92 = v24;
    v52 = v90;
    sub_100CCE8A0(v36, v33, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    v53 = *v33;
    v54 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000CAAC(v33 + v54, &qword_101A07B80, &qword_101486FA8);

      goto LABEL_17;
    }

    v58 = *v38;
    v59 = v92;
    sub_100CCE780(v33 + v54, v92);
    sub_100CCE780(v38 + v54, v21);
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v60 = static NSObject.== infix(_:_:)();

    if ((v60 & 1) == 0)
    {
      sub_10000CAAC(v21, &qword_101A07B80, &qword_101486FA8);
      v65 = v59;
LABEL_26:
      sub_10000CAAC(v65, &qword_101A07B80, &qword_101486FA8);
LABEL_27:
      v51 = v36;
LABEL_46:
      sub_100CCE720(v51, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
      return 0;
    }

    v91 = v36;
    v61 = *(v84 + 48);
    sub_10000BE14(v59, v52, &qword_101A07B80, &qword_101486FA8);
    sub_10000BE14(v21, v52 + v61, &qword_101A07B80, &qword_101486FA8);
    v62 = *(v85 + 48);
    v63 = v89;
    if (v62(v52, 1, v89) == 1)
    {
      sub_10000CAAC(v21, &qword_101A07B80, &qword_101486FA8);
      sub_10000CAAC(v59, &qword_101A07B80, &qword_101486FA8);
      if (v62(v52 + v61, 1, v63) == 1)
      {
        sub_10000CAAC(v52, &qword_101A07B80, &qword_101486FA8);
        v51 = v91;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10000BE14(v52, v18, &qword_101A07B80, &qword_101486FA8);
      if (v62(v52 + v61, 1, v63) != 1)
      {
        v76 = v52 + v61;
        v77 = v80;
        sub_100CCE908(v76, v80, type metadata accessor for CRLFollowViewportState);
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *&v18[*(v63 + 24)] == *(v77 + *(v63 + 24)))
        {
          v78 = CGRectEqualToRect(*&v18[*(v63 + 28)], *(v77 + *(v63 + 28)));
          sub_100CCE720(v77, type metadata accessor for CRLFollowViewportState);
          sub_10000CAAC(v21, &qword_101A07B80, &qword_101486FA8);
          sub_10000CAAC(v92, &qword_101A07B80, &qword_101486FA8);
          sub_100CCE720(v18, type metadata accessor for CRLFollowViewportState);
          sub_10000CAAC(v52, &qword_101A07B80, &qword_101486FA8);
          v51 = v91;
          if (v78)
          {
            goto LABEL_22;
          }

          goto LABEL_46;
        }

        sub_100CCE720(v77, type metadata accessor for CRLFollowViewportState);
        sub_10000CAAC(v21, &qword_101A07B80, &qword_101486FA8);
        sub_10000CAAC(v92, &qword_101A07B80, &qword_101486FA8);
        sub_100CCE720(v18, type metadata accessor for CRLFollowViewportState);
        v72 = v52;
        v70 = &qword_101A07B80;
        v71 = &qword_101486FA8;
        goto LABEL_45;
      }

      sub_10000CAAC(v21, &qword_101A07B80, &qword_101486FA8);
      sub_10000CAAC(v92, &qword_101A07B80, &qword_101486FA8);
      sub_100CCE720(v18, type metadata accessor for CRLFollowViewportState);
    }

    v70 = &qword_101A07B88;
    v71 = qword_101487060;
    v72 = v52;
LABEL_45:
    sub_10000CAAC(v72, v70, v71);
    v51 = v91;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100CCE8A0(v36, v30, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    v40 = *v30;
    v41 = *(sub_1005B981C(&qword_101A1AAD8, &qword_1014AAA38) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *v38;
      v43 = v87;
      sub_100CCE780(v30 + v41, v87);
      v44 = v88;
      sub_100CCE780(v38 + v41, v88);
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v45 = static NSObject.== infix(_:_:)();

      if (v45)
      {
        v46 = v36;
        v47 = v83;
        v48 = *(v84 + 48);
        sub_10000BE14(v43, v83, &qword_101A07B80, &qword_101486FA8);
        sub_10000BE14(v44, v47 + v48, &qword_101A07B80, &qword_101486FA8);
        v49 = *(v85 + 48);
        v50 = v89;
        if (v49(v47, 1, v89) == 1)
        {
          sub_10000CAAC(v44, &qword_101A07B80, &qword_101486FA8);
          sub_10000CAAC(v43, &qword_101A07B80, &qword_101486FA8);
          if (v49(v47 + v48, 1, v50) == 1)
          {
            sub_10000CAAC(v47, &qword_101A07B80, &qword_101486FA8);
            v51 = v46;
LABEL_22:
            sub_100CCE720(v51, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
            return 1;
          }
        }

        else
        {
          v66 = v82;
          sub_10000BE14(v47, v82, &qword_101A07B80, &qword_101486FA8);
          if (v49(v47 + v48, 1, v50) != 1)
          {
            v73 = v47 + v48;
            v74 = v81;
            sub_100CCE908(v73, v81, type metadata accessor for CRLFollowViewportState);
            if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v66 + *(v50 + 24)) == *(v74 + *(v50 + 24)))
            {
              v75 = CGRectEqualToRect(*(v66 + *(v50 + 28)), *(v74 + *(v50 + 28)));
              sub_100CCE720(v74, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v88, &qword_101A07B80, &qword_101486FA8);
              sub_10000CAAC(v43, &qword_101A07B80, &qword_101486FA8);
              sub_100CCE720(v66, type metadata accessor for CRLFollowViewportState);
              sub_10000CAAC(v47, &qword_101A07B80, &qword_101486FA8);
              v51 = v46;
              if (v75)
              {
                goto LABEL_22;
              }

              goto LABEL_46;
            }

            sub_100CCE720(v74, type metadata accessor for CRLFollowViewportState);
            sub_10000CAAC(v88, &qword_101A07B80, &qword_101486FA8);
            sub_10000CAAC(v43, &qword_101A07B80, &qword_101486FA8);
            sub_100CCE720(v66, type metadata accessor for CRLFollowViewportState);
            v69 = v47;
            v67 = &qword_101A07B80;
            v68 = &qword_101486FA8;
            goto LABEL_43;
          }

          sub_10000CAAC(v88, &qword_101A07B80, &qword_101486FA8);
          sub_10000CAAC(v43, &qword_101A07B80, &qword_101486FA8);
          sub_100CCE720(v66, type metadata accessor for CRLFollowViewportState);
        }

        v67 = &qword_101A07B88;
        v68 = qword_101487060;
        v69 = v47;
LABEL_43:
        sub_10000CAAC(v69, v67, v68);
        v51 = v46;
        goto LABEL_46;
      }

      sub_10000CAAC(v44, &qword_101A07B80, &qword_101486FA8);
      v65 = v43;
      goto LABEL_26;
    }

    sub_10000CAAC(v30 + v41, &qword_101A07B80, &qword_101486FA8);
  }

  else
  {
    sub_100CCE8A0(v36, v27, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb.Event);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v55 = v86;
      sub_100CCE908(v38, v86, type metadata accessor for CRLFollowViewportState);
      v56 = v89;
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *&v27[*(v56 + 24)] == *(v55 + *(v56 + 24)))
      {
        v57 = CGRectEqualToRect(*&v27[*(v56 + 28)], *(v55 + *(v56 + 28)));
        sub_100CCE720(v55, type metadata accessor for CRLFollowViewportState);
        sub_100CCE720(v27, type metadata accessor for CRLFollowViewportState);
        if (v57)
        {
          v51 = v36;
          goto LABEL_22;
        }
      }

      else
      {
        sub_100CCE720(v55, type metadata accessor for CRLFollowViewportState);
        sub_100CCE720(v27, type metadata accessor for CRLFollowViewportState);
      }

      goto LABEL_27;
    }

    sub_100CCE720(v27, type metadata accessor for CRLFollowViewportState);
  }

LABEL_17:
  sub_10000CAAC(v36, &qword_101A1AAD0, &qword_1014AAA30);
  return 0;
}

uint64_t sub_100CCE720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100CCE780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CCE7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07B80, &qword_101486FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CCE8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CCE908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CCE9E8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v7, v3 + v6, v8);
}

void sub_100CCEAA0(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100CC8614(a1, v4, v5);
}

uint64_t sub_100CCEB20()
{
  v1 = *(type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100CC6880(v4, v0 + v2, v5, v6);
}

uint64_t sub_100CCEBE8(void *a1, uint64_t a2)
{
  sub_10000BE14(a2, &v11, &unk_1019F4D00, &unk_10146E7F0);
  if (!v12)
  {
    return sub_10000CAAC(&v11, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_10000BF3C(&v11, &v13);
  v3 = sub_1005E0110(a1, 0);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (qword_1019F1FE8 != -1)
    {
      swift_once();
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10146C6B0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000053B0();
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    static String.localizedStringWithFormat(_:_:)();

    sub_100020E58(&v13, v14);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    v9 = String._bridgeToObjectiveC()();

    CRLAccessibilityPostAnnouncementNotification(v8, v9);
    swift_unknownObjectRelease();
  }

  return sub_100005070(&v13);
}

uint64_t sub_100CCED94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_100CCEE48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v14 = v1;
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = a1 + 32;
    do
    {
      sub_10000630C(v3, v19);
      sub_100050F74(v19, v18);
      sub_1005B981C(&qword_1019F5870, &qword_101470360);
      sub_1005B981C(&qword_101A11AD8, &qword_1014AAAB0);
      if (swift_dynamicCast())
      {
        if (*(&v16 + 1))
        {
          sub_1007896EC(&v15, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_100B36A50(0, v2[2] + 1, 1, v2);
          }

          v5 = v2[2];
          v4 = v2[3];
          if (v5 >= v4 >> 1)
          {
            v2 = sub_100B36A50((v4 > 1), v5 + 1, 1, v2);
          }

          v2[2] = v5 + 1;
          sub_1007896EC(v18, &v2[6 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      sub_10000CAAC(&v15, &unk_101A1AAF0, &qword_1014AAAB8);
LABEL_5:
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  v6 = v2[2];
  v7 = v14 - v6;
  if (v14 != v6)
  {
    if (qword_1019F2208 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlLayerAnimation;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v7;
    v10 = sub_1000053B0();
    v11 = 0xEF6572657720736ELL;
    if (v7 == 1)
    {
      v11 = 0xED0000736177206ELL;
    }

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = 0x6F6974616D696E61;
    *(inited + 80) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v12, "timingModifiableLayerAnimations was called, but not all layerAnimations are timing-modifiable. Non-timing-modifiable animations should only be added after the animation has been fully processed(). %@ non-timing-modifiable %@ dropped on the floor.", 246, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  return v2;
}

void *sub_100CCF120(uint64_t a1, double a2)
{
  v3 = sub_100CCEE48(a1);
  v4 = v3[2];
  if (v4)
  {
    v23[1] = v3;
    v5 = (v3 + 4);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_1007894E0(v5, v30);
      v7 = v32;
      v24 = v31;
      v8 = v31;
      sub_100020E58(v30, v31);
      v9 = *(v7 + 16);
      v26 = v24;
      v27 = v7;
      sub_10002C58C(v25);
      v9(v8, v7, a2);
      v24 = v26;
      v10 = v26;
      v11 = sub_100020E58(v25, v26);
      v29 = v24;
      v12 = sub_10002C58C(&v28);
      (*(*(v10 - 8) + 16))(v12, v11, v10);
      sub_100005070(v25);
      sub_100005070(v30);
      if (v29)
      {
        sub_100050F74(&v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_100B36A2C(0, v6[2] + 1, 1, v6);
          v33 = v6;
        }

        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_100B36A2C((v14 > 1), v15 + 1, 1, v6);
          v33 = v6;
        }

        v16 = v26;
        v17 = sub_10002A948(v25, v26);
        v18 = __chkstk_darwin(v17);
        v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 16))(v20, v18);
        sub_100725200(v15, v20, &v33, v16, *(&v16 + 1));
        sub_100005070(v25);
      }

      else
      {
        sub_10000CAAC(&v28, &qword_1019F57A0, &unk_10146DA10);
      }

      v5 += 48;
      --v4;
    }

    while (v4);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

uint64_t sub_100CCF400(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    result = sub_10000630C(result + 32, &v13);
    if (v1 == 1)
    {
LABEL_3:
      sub_100050F74(&v13, &v16);
      v3 = v17;
      v4 = v18;
      sub_100020E58(&v16, v17);
      (*(*(*(v4 + 24) + 8) + 40))(v3);
      return sub_100005070(&v16);
    }

    else
    {
      v5 = v2 + 72;
      v6 = 1;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_10000630C(v5, &v16);
        v9 = v14;
        v8 = v15;
        sub_100020E58(&v13, v14);
        v10 = (*(*(*(v8 + 24) + 8) + 40))(v9);
        v12 = v17;
        v11 = v18;
        sub_100020E58(&v16, v17);
        if (v10 >= (*(*(*(v11 + 24) + 8) + 40))(v12))
        {
          result = sub_100005070(&v16);
        }

        else
        {
          sub_100005070(&v13);
          result = sub_100050F74(&v16, &v13);
        }

        ++v6;
        v5 += 40;
        if (v7 == v1)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  return result;
}

double sub_100CCF57C()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_100CCF5B0(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100CCF7AC(v4, &v22);
      v17[0] = v22;
      v17[1] = v23;
      v18 = v24;
      if (*(&v23 + 1))
      {
        sub_100050F74(v17, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_100B36A2C(0, v5[2] + 1, 1, v5);
          v25 = v5;
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          v5 = sub_100B36A2C((v7 > 1), v8 + 1, 1, v5);
          v25 = v5;
        }

        v9 = v20;
        v10 = v21;
        v11 = sub_10002A948(v19, v20);
        v12 = __chkstk_darwin(v11);
        v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14, v12);
        sub_100725200(v8, v14, &v25, v9, v10);
        sub_100005070(v19);
      }

      else
      {
        sub_10000CAAC(v17, &qword_1019F57A0, &unk_10146DA10);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return a2;
}

uint64_t sub_100CCF7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F57A0, &unk_10146DA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CCF82C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100CCF87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100CCF8D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t *CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1019F1FF8 != -1)
  {
    swift_once();
  }

  return &static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName;
}

NSString sub_100CCF948()
{
  result = String._bridgeToObjectiveC()();
  static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName = result;
  return result;
}

uint64_t CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_100CCFC68()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() sharedConnection];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000505D0(v4);
  }

  sub_1000505E0(v2);
  return v3;
}

id CRLDeviceManagementRestrictionsManager.__deallocating_deinit()
{
  v1 = sub_100CCFC68();
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100CCFDE4()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLDeviceManagementRestrictionsManager()) init];
  CRLDeviceManagementRestrictionsManager.registerObserver()();
  qword_101A1AB00 = v0;
}

Swift::Void __swiftcall CRLDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = sub_100CCFC68();
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver:v0];
  }

  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v4)
  {
    v5 = [v4 isMathPaperSolvingAllowed];
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  v7 = 1;
  swift_beginAccess();
  *(v0 + v6) = v5;
  v8 = *(v0 + v3);
  if (v8)
  {
    v7 = [v8 isKeyboardMathSolvingAllowed];
  }

  v9 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  v10 = 1;
  swift_beginAccess();
  *(v0 + v9) = v7;
  v11 = *(v0 + v3);
  if (v11)
  {
    v10 = [v11 isDefinitionLookupAllowed];
  }

  v12 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(v0 + v12) = v10;
}

id CRLDeviceManagementRestrictionsManager.init()()
{
  v0[OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v2, "init");
}

void _s8Freeform38CRLDeviceManagementRestrictionsManagerC63profileConnectionDidReceiveEffectiveSettingsChangedNotification_8userInfoySo09MCProfileG0CSg_SDys11AnyHashableVypGSgtF_0(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isMathPaperSolvingAllowed];
  v4 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  v5 = v3 ^ *(v1 + v4);
  if (v5)
  {
    *(v1 + v4) = [a1 isMathPaperSolvingAllowed];
  }

  v6 = [a1 isKeyboardMathSolvingAllowed];
  v7 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  if (v6 != *(v1 + v7))
  {
    *(v1 + v7) = [a1 isKeyboardMathSolvingAllowed];
    v5 = 1;
  }

  v8 = [a1 isDefinitionLookupAllowed];
  v9 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  if (v8 == *(v1 + v9))
  {
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(v1 + v9) = [a1 isDefinitionLookupAllowed];
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_1019F1FF8 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0 userInfo:0];
}

void sub_100CD02E4(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_100CD0338(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

id sub_100CD0388()
{
  result = [objc_allocWithZone(type metadata accessor for CRLWPObjcUserDefaults()) init];
  static CRLWPObjcUserDefaults.shared = result;
  return result;
}

uint64_t *CRLWPObjcUserDefaults.shared.unsafeMutableAddressor()
{
  if (qword_1019F2008 != -1)
  {
    swift_once();
  }

  return &static CRLWPObjcUserDefaults.shared;
}

id static CRLWPObjcUserDefaults.shared.getter()
{
  if (qword_1019F2008 != -1)
  {
    swift_once();
  }

  v1 = static CRLWPObjcUserDefaults.shared;

  return v1;
}

Swift::Bool __swiftcall CRLWPObjcUserDefaults.spellCheckingEnabled()()
{
  if (qword_1019F2BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_100CD06A0();
  return (v0 == 2) | v0 & 1;
}

id CRLWPObjcUserDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100CD0630@<X0>(void *a1@<X8>)
{
  if (qword_1019F2008 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = static CRLWPObjcUserDefaults.shared;
  *a1 = static CRLWPObjcUserDefaults.shared;

  return v1;
}

uint64_t sub_100CD06A0()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000BF3C(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1005B981C(&unk_1019F4D00, &unk_10146E7F0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t type metadata accessor for CRLPKStrokePathData(uint64_t a1)
{
  result = qword_101A1AC30;
  if (!qword_101A1AC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CD0894(uint64_t a1)
{
  sub_100CD0A64(319, &qword_101A1AC40, &type metadata for UInt16, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100CD0A64(319, &qword_101A1AC48, &type metadata for Float, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100CD0A64(319, &qword_101A1AC50, &type metadata for CRLBezierPathData, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_10000E68C(319);
          if (v5 <= 0x3F)
          {
            sub_100CD0A64(319, &unk_101A1AC58, &type metadata for CRLPointData, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100CD0A64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_100CD0AFC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);

  v15(a2, a3, a4, a5, a6, a7, a8);

  return result;
}

void sub_100CD0B98(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v85 - v7;
  v98 = type metadata accessor for Date();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = _swiftEmptyArrayStorage;
  *(a3 + 8) = _swiftEmptyArrayStorage;
  *(a3 + 16) = _swiftEmptyArrayStorage;
  *(a3 + 24) = _swiftEmptyArrayStorage;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = _swiftEmptyArrayStorage;
  *(a3 + 48) = _swiftEmptyArrayStorage;
  *(a3 + 56) = _swiftEmptyArrayStorage;
  *(a3 + 64) = _swiftEmptyArrayStorage;
  *(a3 + 72) = _swiftEmptyArrayStorage;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v10 = type metadata accessor for CRLPKStrokePathData(0);
  v93 = v10[17];
  static Date.now.getter();
  v94 = v10[18];
  *(a3 + v94) = 1065353216;
  v95 = v10[19];
  *(a3 + v95) = 1065353216;
  v11 = v10[20];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v102 = v11;
  v101 = v12;
  v100 = v14;
  v99 = v13 + 56;
  (v14)(a3 + v11, 1, 1);
  v15 = a3 + v10[21];
  *v15 = 0;
  v92 = v15;
  *(v15 + 8) = 1;
  v16 = v10[22];
  *(a3 + v16) = 0;
  v17 = v10[23];
  *(a3 + v17) = 0;
  v103 = v10[24];
  *(a3 + v103) = 0;
  v18 = v10[25];
  *(a3 + v18) = 0;
  v105 = a1;
  v104 = [a1 pointCount];
  if (v104)
  {
    v86 = v18;
    v87 = v16;
    v88 = v17;
    v89 = v8;
    v90 = a2;
    v91 = a3;
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage;
    v112 = _swiftEmptyArrayStorage;
    v113 = _swiftEmptyArrayStorage;
    v114 = _swiftEmptyArrayStorage;
    do
    {
      v110 = v26;
      v111 = v24;
      v27 = v23;
      v28 = v22;
      [v105 strokePointCompactDataAtIndex:v19];
      v29 = aBlock;
      v30 = WORD2(aBlock);
      v31 = HIWORD(aBlock);
      v32 = v116;
      v33 = v117;
      v106 = WORD1(aBlock);
      v107 = v118;
      v108 = WORD1(v118);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v114 = sub_100B3593C(0, *(v114 + 2) + 1, 1, v114);
      }

      v36 = *(v114 + 2);
      v35 = *(v114 + 3);
      if (v36 >= v35 >> 1)
      {
        v114 = sub_100B3593C((v35 > 1), v36 + 1, 1, v114);
      }

      v37 = v114;
      *(v114 + 2) = v36 + 1;
      *&v37[2 * v36 + 32] = v31;
      v38 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100B3593C(0, *(v21 + 2) + 1, 1, v21);
      }

      v39 = v112;
      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_100B3593C((v40 > 1), v41 + 1, 1, v38);
      }

      *(v38 + 2) = v41 + 1;
      *&v38[2 * v41 + 32] = v30;
      v22 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100B3593C(0, *(v28 + 2) + 1, 1, v28);
      }

      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      if (v43 >= v42 >> 1)
      {
        v22 = sub_100B3593C((v42 > 1), v43 + 1, 1, v22);
      }

      *(v22 + 2) = v43 + 1;
      *&v22[2 * v43 + 32] = v29;
      v23 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100B3593C(0, *(v27 + 2) + 1, 1, v27);
      }

      v26 = v110;
      v24 = v111;
      v45 = *(v23 + 2);
      v44 = *(v23 + 3);
      if (v45 >= v44 >> 1)
      {
        v23 = sub_100B3593C((v44 > 1), v45 + 1, 1, v23);
      }

      *(v23 + 2) = v45 + 1;
      *&v23[2 * v45 + 32] = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100B35838(0, *(v24 + 2) + 1, 1, v24);
      }

      v47 = *(v24 + 2);
      v46 = *(v24 + 3);
      if (v47 >= v46 >> 1)
      {
        v24 = sub_100B35838((v46 > 1), v47 + 1, 1, v24);
      }

      *(v24 + 2) = v47 + 1;
      *&v24[4 * v47 + 32] = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100B35838(0, *(v25 + 2) + 1, 1, v25);
      }

      v49 = *(v25 + 2);
      v48 = *(v25 + 3);
      if (v49 >= v48 >> 1)
      {
        v25 = sub_100B35838((v48 > 1), v49 + 1, 1, v25);
      }

      *(v25 + 2) = v49 + 1;
      *&v25[4 * v49 + 32] = HIDWORD(v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_100B35838(0, *(v26 + 2) + 1, 1, v26);
      }

      v51 = *(v26 + 2);
      v50 = *(v26 + 3);
      if (v51 >= v50 >> 1)
      {
        v26 = sub_100B35838((v50 > 1), v51 + 1, 1, v26);
      }

      *(v26 + 2) = v51 + 1;
      *&v26[4 * v51 + 32] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100B35838(0, *(v39 + 2) + 1, 1, v39);
      }

      v53 = *(v39 + 2);
      v52 = *(v39 + 3);
      if (v53 >= v52 >> 1)
      {
        v39 = sub_100B35838((v52 > 1), v53 + 1, 1, v39);
      }

      *(v39 + 2) = v53 + 1;
      *&v39[4 * v53 + 32] = HIDWORD(v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_100B3593C(0, *(v113 + 2) + 1, 1, v113);
      }

      v55 = *(v113 + 2);
      v54 = *(v113 + 3);
      if (v55 >= v54 >> 1)
      {
        v113 = sub_100B3593C((v54 > 1), v55 + 1, 1, v113);
      }

      v112 = v39;
      v56 = v113;
      *(v113 + 2) = v55 + 1;
      *&v56[2 * v55 + 32] = v107;
      v20 = v109;
      v21 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100B3593C(0, *(v20 + 2) + 1, 1, v20);
      }

      v58 = *(v20 + 2);
      v57 = *(v20 + 3);
      if (v58 >= v57 >> 1)
      {
        v20 = sub_100B3593C((v57 > 1), v58 + 1, 1, v20);
      }

      ++v19;
      *(v20 + 2) = v58 + 1;
      *&v20[2 * v58 + 32] = v108;
    }

    while (v104 != v19);
    a3 = v91;
    v59 = v112;
    *(v91 + 64) = v113;
    *(a3 + 72) = v20;
    *(a3 + 48) = v26;
    *(a3 + 56) = v59;
    *(a3 + 32) = v24;
    *(a3 + 40) = v25;
    *(a3 + 16) = v22;
    *(a3 + 24) = v23;
    *a3 = v114;
    *(a3 + 8) = v21;
    a2 = v90;
    v8 = v89;
    v17 = v88;
    v16 = v87;
    v18 = v86;
  }

  v60 = v105;
  v61 = [v105 shouldSolveMath];
  *(a3 + v103) = v61;
  *(a3 + v18) = [v60 isSynthesizedStroke];
  v62 = [v60 pointCount];
  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 80) = v62;
    sub_100CD1644();
    if (a2)
    {
      v63 = swift_allocObject();
      *(v63 + 16) = _swiftEmptyArrayStorage;
      v64 = (v63 + 16);
      v119 = sub_1009CEBEC;
      v120 = v63;
      aBlock = _NSConcreteStackBlock;
      v116 = *"";
      v117 = sub_100CD0AFC;
      v118 = &unk_1018A0490;
      v65 = _Block_copy(&aBlock);
      v66 = a2;

      [v66 iteratePathElementsWithBlock:v65];

      _Block_release(v65);
      swift_beginAccess();
      v67 = *v64;
    }

    else
    {
      v67 = 0;
    }

    *(a3 + 88) = v67;
    v68 = v105;
    *(a3 + 96) = [v105 randomSeed];
    v69 = [v68 creationDate];
    v70 = v96;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v97 + 40))(a3 + v93, v70, v98);
    [v68 renderScaleX];
    *(a3 + v94) = v71;
    [v68 renderScaleY];
    *(a3 + v95) = v72;
    v73 = [v68 renderGroupID];
    if (v73)
    {
      v74 = v73;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = 0;
    }

    else
    {
      v75 = 1;
    }

    v100(v8, v75, 1, v101);
    sub_100803880(v8, a3 + v102);
    [v105 anchorPointForTexture];
    if (v76 != 0.0 || v77 != 0.0)
    {
      *&v78 = v76;
      *&v79 = v77;
      v80 = v92;
      *v92 = v78 | (v79 << 32);
      *(v80 + 8) = 0;
    }

    v81 = v105;
    [v105 particleOffset];
    *(a3 + v16) = v82;
    [v81 secondaryParticleOffset];
    v84 = v83;

    *(a3 + v17) = v84;
  }
}

void sub_100CD1644()
{
  v1 = v0[10];
  if (v1 != *(*v0 + 16) || v1 != *(v0[1] + 16) || v1 != *(v0[2] + 16) || v1 != *(v0[3] + 16) || v1 != *(v0[4] + 16) || v1 != *(v0[5] + 16) || v1 != *(v0[6] + 16))
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2u);
    StaticString.description.getter("verifyConsistentPointCount()", 28, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathData.swift", 89, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_100CD7ADC(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 141;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("verifyConsistentPointCount()", 28, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathData.swift", 89, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("The CRLPKStrokePathData object has inconsistent point counts.", 61, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:141 isFatal:0 format:v24 args:v21];
  }
}

void sub_100CD1A6C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46 - v3;
  v5 = *(v0 + 80);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v0 + 96);
  v7 = type metadata accessor for CRLPKStrokePathData(0);
  v8 = objc_allocWithZone(CRLPKStrokePathCompactData);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithCapacity:v5 randomSeed:v6 creationDate:isa];

  LODWORD(v11) = *(v1 + v7[18]);
  [v10 setRenderScaleX:v11];
  LODWORD(v12) = *(v1 + v7[19]);
  [v10 setRenderScaleY:v12];
  sub_10000BE14(v1 + v7[20], v4, &qword_1019F6990, &qword_10146D2F0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v4, 1, v13) != 1)
  {
    v15 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v4, v13);
  }

  [v10 setRenderGroupID:v15];

  [v10 setShouldSolveMath:*(v1 + v7[24])];
  [v10 setIsSynthesizedStroke:*(v1 + v7[25])];
  v16 = (v1 + v7[21]);
  if ((v16[2] & 1) == 0)
  {
    [v10 setAnchorPointForTexture:{*v16, v16[1]}];
  }

  [v10 setParticleOffset:*(v1 + v7[22])];
  [v10 setSecondaryParticleOffset:*(v1 + v7[23])];
  if (v5)
  {
    v17 = v1[2];
    if (v5 <= *(v17 + 16))
    {
      v18 = v1[3];
      if (v5 <= *(v18 + 16))
      {
        v19 = v1[1];
        if (v5 <= *(v19 + 16))
        {
          v20 = *v1;
          if (v5 <= *(*v1 + 16))
          {
            v21 = v1[4];
            if (v5 <= *(v21 + 16))
            {
              v22 = v1[5];
              if (v5 <= *(v22 + 16))
              {
                v23 = v1[6];
                if (v5 <= *(v23 + 16))
                {
                  v24 = v1[7];
                  if (v5 <= *(v24 + 16))
                  {
                    v25 = v1[8];
                    if (v5 <= *(v25 + 16))
                    {
                      v26 = v1[9];
                      if (v5 <= *(v26 + 16))
                      {
                        v27 = 0;
                        v49 = v17 + 32;
                        v48 = v18 + 32;
                        v47 = v19 + 32;
                        v28 = v20 + 32;
                        v29 = v21 + 32;
                        v30 = v5;
                        v31 = v22 + 32;
                        v32 = v23 + 32;
                        v33 = v24 + 32;
                        v34 = v25 + 32;
                        v35 = v26 + 32;
                        do
                        {
                          v36 = *(v48 + 2 * v27);
                          v37 = *(v47 + 2 * v27);
                          v38 = *(v28 + 2 * v27);
                          v39 = *(v29 + 4 * v27);
                          v40 = *(v31 + 4 * v27);
                          v41 = *(v32 + 4 * v27);
                          v42 = *(v33 + 4 * v27);
                          v43 = *(v34 + 2 * v27);
                          v44 = *(v35 + 2 * v27);
                          v45 = v27 + 1;
                          v50[0] = *(v49 + 2 * v27);
                          v50[1] = v36;
                          v50[2] = v37;
                          v50[3] = v38;
                          v51 = v39;
                          v52 = v40;
                          v53 = v41;
                          v54 = v42;
                          v55 = v43;
                          v56 = v44;
                          [v10 appendStrokePointCompactData:v50];
                          v27 = v45;
                        }

                        while (v30 != v45);
                        return;
                      }

LABEL_30:
                      __break(1u);
                      return;
                    }

LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_100CD1E58(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v3 = result;
    if (result > result >> 32)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
LABEL_20:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, v6))
    {
      goto LABEL_17;
    }

    v7 = (v3 - v6 + v5);
    result = __DataStorage._length.getter();
    if (v7)
    {
      return *v7;
    }

    __break(1u);
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_18:
      __DataStorage._length.getter();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      __DataStorage._length.getter();
      if (v7)
      {
        return *v7;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_100CD1F3C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = *(result + 16);
    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (!__OFSUB__(v3, v6))
    {
      v7 = v3 - v6 + v5;
      result = __DataStorage._length.getter();
      if (v7)
      {
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v2)
  {
    return result;
  }

  v8 = result;
  if (result > result >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __DataStorage._length.getter();
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_19:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  if (__OFSUB__(v8, v11))
  {
    goto LABEL_16;
  }

  v12 = v8 - v11 + v10;
  result = __DataStorage._length.getter();
  if (!v12)
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_100CD2028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLProto_Path(0);
  v356 = *(v4 - 8);
  v357 = v4;
  __chkstk_darwin(v4);
  v343 = (&v330 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  v364 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v363 = (&v330 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1005B981C(&qword_101A1ACF8, &unk_1014B5900);
  __chkstk_darwin(v8 - 8);
  v342 = &v330 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v361 = &v330 - v11;
  v12 = type metadata accessor for CRLProto_Point(0);
  v358 = *(v12 - 8);
  v359 = v12;
  __chkstk_darwin(v12);
  v345 = (&v330 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v14 - 8);
  v344 = &v330 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v373 = &v330 - v17;
  v374 = type metadata accessor for CRLProto_Data(0);
  v372 = *(v374 - 1);
  __chkstk_darwin(v374);
  v354 = (&v330 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v19 - 8);
  v355 = &v330 - v20;
  v21 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v21 - 8);
  v353 = &v330 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v371 = &v330 - v24;
  v25 = type metadata accessor for CRLProto_Date(0);
  v369 = *(v25 - 1);
  v370 = v25;
  __chkstk_darwin(v25);
  v349 = (&v330 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Date();
  v350 = *(v27 - 8);
  v351 = v27;
  __chkstk_darwin(v27);
  v348 = &v330 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1005B981C(&qword_101A1ACE8, &unk_1014AAE10);
  __chkstk_darwin(v29 - 8);
  v347 = &v330 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v360 = &v330 - v32;
  v33 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v33 - 8);
  v375 = &v330 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for CRLProto_PKStrokePathData(0);
  __chkstk_darwin(v365);
  v366 = (&v330 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = _swiftEmptyArrayStorage;
  *(a2 + 72) = _swiftEmptyArrayStorage;
  v36 = type metadata accessor for CRLPKStrokePathData(0);
  *(a2 + 80) = 0;
  v362 = (a2 + 80);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v346 = v36[17];
  static Date.now.getter();
  v367 = v36[18];
  *&v367[a2] = 1065353216;
  v368 = v36[19];
  *&v368[a2] = 1065353216;
  v37 = v36[20];
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v352 = v37;
  v340 = v40;
  v341 = v38;
  v339 = v39 + 56;
  (v40)(a2 + v37, 1, 1);
  v41 = a2 + v36[21];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = a1;
  v43 = v36[22];
  *(a2 + v43) = 0;
  v44 = v36[23];
  *(a2 + v44) = 0;
  v45 = v36[24];
  *(a2 + v45) = 0;
  v46 = v36[25];
  v46[a2] = 0;
  v47 = v376;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v47)
  {

    return sub_100CD7954(a2, type metadata accessor for CRLPKStrokePathData);
  }

  v333 = v41;
  v334 = v43;
  v335 = v44;
  v336 = v45;
  v376 = v46;
  v337 = v42;
  v338 = a2;
  v48 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v50 = v49;

  memset(__src, 0, sizeof(__src));
  sub_100024E98(v48, v50);
  BinaryDecodingOptions.init()();
  sub_100CD7ADC(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData, byte_1014B4E78);
  v51 = v366;
  v52 = v365;
  Message.init(serializedData:extensions:partial:options:)();
  v330 = v48;
  v331 = v50;
  v54 = v51 + v52[7];
  if ((*(v54 + 4) & 1) == 0)
  {
    *(v338 + 96) = *v54;
  }

  v55 = v52[8];
  v56 = v366;
  v57 = v360;
  sub_10000BE14(v366 + v55, v360, &qword_101A1ACE8, &unk_1014AAE10);
  v58 = v370;
  v59 = *(v369 + 6);
  v60 = v59(v57, 1, v370);
  v61 = v57;
  v62 = v56;
  sub_10000CAAC(v61, &qword_101A1ACE8, &unk_1014AAE10);
  v332 = 0;
  if (v60 != 1)
  {
    v63 = v56 + v55;
    v64 = v347;
    sub_10000BE14(v63, v347, &qword_101A1ACE8, &unk_1014AAE10);
    if (v59(v64, 1, v58) == 1)
    {
      v65 = v59;
      v66 = v349;
      *v349 = 0;
      UnknownStorage.init()();
      v67 = v65(v64, 1, v58);
      v68 = v338;
      v70 = v350;
      v69 = v351;
      v71 = v348;
      if (v67 != 1)
      {
        sub_10000CAAC(v64, &qword_101A1ACE8, &unk_1014AAE10);
      }
    }

    else
    {
      v66 = v349;
      sub_100CD78EC(v64, v349, type metadata accessor for CRLProto_Date);
      v68 = v338;
      v70 = v350;
      v69 = v351;
      v71 = v348;
    }

    sub_100CD7954(v66, type metadata accessor for CRLProto_Date);
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v70 + 40))(v68 + v346, v71, v69);
  }

  v72 = v365;
  v73 = v62 + v365[9];
  if ((*(v73 + 4) & 1) == 0)
  {
    *&v367[v338] = *v73;
  }

  v74 = v62 + v72[10];
  v75 = v374;
  v76 = v371;
  if ((*(v74 + 4) & 1) == 0)
  {
    *&v368[v338] = *v74;
  }

  v77 = v72[12];
  sub_10000BE14(v62 + v77, v76, &qword_1019F67C0, &unk_10146F3E0);
  v78 = *(v372 + 6);
  v79 = v78(v76, 1, v75);
  v80 = v62;
  v81 = v79;
  sub_10000CAAC(v76, &qword_1019F67C0, &unk_10146F3E0);
  if (v81 == 1)
  {
    v82 = v80;
    v83 = v338;
    v84 = v373;
  }

  else
  {
    v85 = v353;
    sub_10000BE14(v80 + v77, v353, &qword_1019F67C0, &unk_10146F3E0);
    v86 = v374;
    v82 = v80;
    if (v78(v85, 1, v374) == 1)
    {
      v87 = v354;
      *v354 = xmmword_10146F370;
      UnknownStorage.init()();
      v88 = v78(v85, 1, v86);
      v89 = v331;
      v84 = v373;
      v90 = v352;
      if (v88 != 1)
      {
        sub_10000CAAC(v85, &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      v87 = v354;
      sub_100CD78EC(v85, v354, type metadata accessor for CRLProto_Data);
      v89 = v331;
      v84 = v373;
      v90 = v352;
    }

    v91 = *v87;
    v92 = v87[1];
    sub_100024E98(*v87, v92);
    sub_100CD7954(v87, type metadata accessor for CRLProto_Data);
    v93 = v355;
    v94 = v332;
    UUID.init(crl_data:)(v91, v92);
    v332 = v94;
    if (v94)
    {
      sub_10002640C(v330, v89);

      sub_100CD7954(v82, type metadata accessor for CRLProto_PKStrokePathData);
      a2 = v338;
      return sub_100CD7954(a2, type metadata accessor for CRLPKStrokePathData);
    }

    v340(v93, 0, 1, v341);
    v83 = v338;
    sub_100803880(v93, v338 + v90);
  }

  v95 = v365[11];
  sub_10000BE14(v82 + v95, v84, &qword_101A15CE8, &qword_1014AAE20);
  v96 = v359;
  v375 = *(v358 + 48);
  v97 = (v375)(v84, 1, v359);
  sub_10000CAAC(v84, &qword_101A15CE8, &qword_1014AAE20);
  v98 = v366;
  if (v97 != 1)
  {
    v99 = v344;
    sub_10000BE14(v366 + v95, v344, &qword_101A15CE8, &qword_1014AAE20);
    v100 = v375;
    if ((v375)(v99, 1, v96) == 1)
    {
      v101 = v345;
      *v345 = 0;
      UnknownStorage.init()();
      v102 = (v100)(v99, 1, v96);
      v103 = v333;
      if (v102 != 1)
      {
        sub_10000CAAC(v99, &qword_101A15CE8, &qword_1014AAE20);
      }
    }

    else
    {
      v101 = v345;
      sub_100CD78EC(v99, v345, type metadata accessor for CRLProto_Point);
      v103 = v333;
    }

    v104 = *v101;
    sub_100CD7954(v101, type metadata accessor for CRLProto_Point);
    *v103 = v104;
    *(v103 + 8) = 0;
  }

  v105 = v365;
  v106 = v98 + v365[15];
  if ((*(v106 + 8) & 1) == 0)
  {
    *(v83 + v334) = *v106;
  }

  v107 = v98 + v105[16];
  v109 = v362;
  v108 = v363;
  v110 = v361;
  v111 = v336;
  if ((*(v107 + 8) & 1) == 0)
  {
    *(v83 + v335) = *v107;
  }

  v112 = *(v98 + v105[13]);
  v113 = v364;
  if (v112 != 2)
  {
    *(v83 + v111) = v112 & 1;
  }

  v114 = *(v98 + v105[14]);
  if (v114 != 2)
  {
    v376[v83] = v114 & 1;
  }

  v115 = 2;
  v116 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v116[2] = 2;
  v116[4] = 0;
  v117 = *v366;
  v350 = *(*v366 + 16);
  v351 = v117;
  if (v350)
  {
    LODWORD(v358) = 0;
    LODWORD(v359) = 0;
    LODWORD(v352) = 0;
    LODWORD(v353) = 0;
    LODWORD(v354) = 0;
    LODWORD(v355) = 0;
    v118 = 0;
    v349 = (v117 + ((*(v113 + 80) + 32) & ~*(v113 + 80)));
    v119 = 0.0;
    v120 = 0.0;
    v367 = _swiftEmptyArrayStorage;
    v368 = _swiftEmptyArrayStorage;
    v369 = _swiftEmptyArrayStorage;
    v370 = _swiftEmptyArrayStorage;
    v371 = _swiftEmptyArrayStorage;
    v372 = _swiftEmptyArrayStorage;
    v373 = _swiftEmptyArrayStorage;
    v374 = _swiftEmptyArrayStorage;
    v375 = _swiftEmptyArrayStorage;
    v376 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v118 >= *(v117 + 16))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        swift_once();
LABEL_322:
        v315 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v116;
        v317 = sub_1005CF000();
        *(inited + 96) = v317;
        v318 = sub_100CD7ADC(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v318;
        *(inited + 72) = v115;
        *(inited + 136) = &type metadata for String;
        v319 = sub_1000053B0();
        *(inited + 112) = v83;
        *(inited + 120) = v110;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v319;
        *(inited + 152) = 277;
        v320 = __src[0];
        *(inited + 216) = v317;
        *(inited + 224) = v318;
        *(inited + 192) = v320;
        v321 = v115;
        v322 = v320;
        v323 = static os_log_type_t.error.getter();
        sub_100005404(v315, &_mh_execute_header, v323, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v324 = static os_log_type_t.error.getter();
        sub_100005404(v315, &_mh_execute_header, v324, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v325 = swift_allocObject();
        v325[2] = 8;
        v325[3] = 0;
        v325[4] = 0;
        v325[5] = 0;
        v326 = __VaListBuilder.va_list()();
        StaticString.description.getter("init(from:)", 11, 2);
        v327 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathData.swift", 89, 2);
        v328 = String._bridgeToObjectiveC()();

        StaticString.description.getter("The CRLPKStrokePathData object has inconsistent point counts.", 61, 2);
        v329 = String._bridgeToObjectiveC()();

        [v376 handleFailureInFunction:v327 file:v328 lineNumber:277 isFatal:0 format:v329 args:v326];

        goto LABEL_323;
      }

      v121 = *(v113 + 72);
      v360 = v118;
      sub_100CD7A08(v349 + v121 * v118, v108, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      v122 = *v108;
      v123 = v108[1];
      v124 = v123 >> 62;
      if ((v123 >> 62) > 1)
      {
        if (v124 == 2)
        {
          v126 = *(v122 + 16);
          v125 = *(v122 + 24);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          if (v127)
          {
            goto LABEL_328;
          }

          if (v128 == 2)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v124)
      {
        if (__OFSUB__(HIDWORD(v122), v122))
        {
          goto LABEL_327;
        }

        if (HIDWORD(v122) - v122 == 2)
        {
LABEL_50:
          v115 = v83;
          LODWORD(v355) = sub_100CD1E58(v122, v123);
        }
      }

      else if (BYTE6(v123) == 2)
      {
        goto LABEL_50;
      }

      v129 = v108[2];
      v130 = v108[3];
      v131 = v130 >> 62;
      if ((v130 >> 62) > 1)
      {
        if (v131 == 2)
        {
          v133 = *(v129 + 16);
          v132 = *(v129 + 24);
          v127 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v127)
          {
            goto LABEL_329;
          }

          if (v134 == 2)
          {
            goto LABEL_58;
          }
        }
      }

      else if (v131)
      {
        if (__OFSUB__(HIDWORD(v129), v129))
        {
          goto LABEL_330;
        }

        if (HIDWORD(v129) - v129 == 2)
        {
LABEL_58:
          v115 = v83;
          LODWORD(v354) = sub_100CD1E58(v129, v130);
        }
      }

      else if (BYTE6(v130) == 2)
      {
        goto LABEL_58;
      }

      v135 = v108[4];
      v136 = v108[5];
      v137 = v136 >> 62;
      if ((v136 >> 62) > 1)
      {
        if (v137 == 2)
        {
          v139 = *(v135 + 16);
          v138 = *(v135 + 24);
          v127 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v127)
          {
            goto LABEL_332;
          }

          if (v140 == 2)
          {
            goto LABEL_66;
          }
        }
      }

      else if (v137)
      {
        if (__OFSUB__(HIDWORD(v135), v135))
        {
          goto LABEL_331;
        }

        if (HIDWORD(v135) - v135 == 2)
        {
LABEL_66:
          v115 = v83;
          LODWORD(v353) = sub_100CD1E58(v135, v136);
        }
      }

      else if (BYTE6(v136) == 2)
      {
        goto LABEL_66;
      }

      v141 = v108[6];
      v142 = v108[7];
      v143 = v142 >> 62;
      if ((v142 >> 62) > 1)
      {
        if (v143 == 2)
        {
          v145 = *(v141 + 16);
          v144 = *(v141 + 24);
          v127 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v127)
          {
            goto LABEL_333;
          }

          if (v146 == 2)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v143)
      {
        if (__OFSUB__(HIDWORD(v141), v141))
        {
          goto LABEL_334;
        }

        if (HIDWORD(v141) - v141 == 2)
        {
LABEL_74:
          v115 = v83;
          LODWORD(v352) = sub_100CD1E58(v141, v142);
        }
      }

      else if (BYTE6(v142) == 2)
      {
        goto LABEL_74;
      }

      v147 = v108[14];
      v148 = v108[15];
      v149 = v148 >> 62;
      if ((v148 >> 62) > 1)
      {
        if (v149 == 2)
        {
          v151 = *(v147 + 16);
          v150 = *(v147 + 24);
          v127 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v127)
          {
            goto LABEL_335;
          }

          if (v152 >= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else if (v149)
      {
        if (__OFSUB__(HIDWORD(v147), v147))
        {
          goto LABEL_336;
        }

        if (HIDWORD(v147) - v147 >= 1)
        {
LABEL_82:
          v115 = v83;
          LODWORD(v359) = sub_100CD1E58(v147, v148);
        }
      }

      else if (BYTE6(v148))
      {
        goto LABEL_82;
      }

      v153 = v108[16];
      v154 = v108[17];
      v155 = v154 >> 62;
      if ((v154 >> 62) > 1)
      {
        if (v155 == 2)
        {
          v157 = *(v153 + 16);
          v156 = *(v153 + 24);
          v127 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v127)
          {
            goto LABEL_338;
          }

          if (v158 >= 1)
          {
            goto LABEL_90;
          }
        }
      }

      else if (v155)
      {
        if (__OFSUB__(HIDWORD(v153), v153))
        {
          goto LABEL_337;
        }

        if (HIDWORD(v153) - v153 >= 1)
        {
LABEL_90:
          v115 = v83;
          LODWORD(v358) = sub_100CD1E58(v153, v154);
        }
      }

      else if (BYTE6(v154))
      {
        goto LABEL_90;
      }

      v159 = v108[10];
      v160 = v108[11];
      v161 = v160 >> 62;
      if ((v160 >> 62) > 1)
      {
        if (v161 != 2)
        {
          goto LABEL_127;
        }

        v163 = *(v159 + 16);
        v162 = *(v159 + 24);
        v127 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v127)
        {
          goto LABEL_340;
        }

        if (v164 == 4)
        {
LABEL_102:
          v115 = v83;
          sub_100CD1F3C(v159, v160);
          v120 = v165;
          goto LABEL_127;
        }
      }

      else if (v161)
      {
        if (__OFSUB__(HIDWORD(v159), v159))
        {
          goto LABEL_339;
        }

        if (HIDWORD(v159) - v159 == 4)
        {
          goto LABEL_102;
        }
      }

      else if (BYTE6(v160) == 4)
      {
        goto LABEL_102;
      }

      if (v161 == 2)
      {
        v167 = *(v159 + 16);
        v166 = *(v159 + 24);
        v127 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v127)
        {
          goto LABEL_347;
        }

        if (v168 == 2)
        {
LABEL_126:
          v115 = v83;
          v120 = sub_100CD1E58(v159, v160);
        }
      }

      else if (v161 == 1)
      {
        if (__OFSUB__(HIDWORD(v159), v159))
        {
          goto LABEL_348;
        }

        if (HIDWORD(v159) - v159 == 2)
        {
          goto LABEL_126;
        }
      }

      else if (BYTE6(v160) == 2)
      {
        goto LABEL_126;
      }

LABEL_127:
      v169 = v108[12];
      v170 = v108[13];
      v171 = v170 >> 62;
      if ((v170 >> 62) > 1)
      {
        if (v171 != 2)
        {
          goto LABEL_147;
        }

        v173 = *(v169 + 16);
        v172 = *(v169 + 24);
        v127 = __OFSUB__(v172, v173);
        v174 = v172 - v173;
        if (v127)
        {
          goto LABEL_342;
        }

        if (v174 == 4)
        {
LABEL_138:
          v115 = v83;
          sub_100CD1F3C(v169, v170);
          v119 = v175;
          goto LABEL_147;
        }
      }

      else if (v171)
      {
        if (__OFSUB__(HIDWORD(v169), v169))
        {
          goto LABEL_341;
        }

        if (HIDWORD(v169) - v169 == 4)
        {
          goto LABEL_138;
        }
      }

      else if (BYTE6(v170) == 4)
      {
        goto LABEL_138;
      }

      if (v171 == 2)
      {
        v177 = *(v169 + 16);
        v176 = *(v169 + 24);
        v127 = __OFSUB__(v176, v177);
        v178 = v176 - v177;
        if (v127)
        {
          goto LABEL_349;
        }

        if (v178 == 2)
        {
LABEL_146:
          v115 = v83;
          v119 = sub_100CD1E58(v169, v170);
        }
      }

      else if (v171 == 1)
      {
        if (__OFSUB__(HIDWORD(v169), v169))
        {
          goto LABEL_350;
        }

        if (HIDWORD(v169) - v169 == 2)
        {
          goto LABEL_146;
        }
      }

      else if (BYTE6(v170) == 2)
      {
        goto LABEL_146;
      }

LABEL_147:
      v179 = v108[8];
      v180 = v108[9];
      v181 = v180 >> 62;
      if ((v180 >> 62) > 1)
      {
        if (v181 != 2)
        {
          goto LABEL_259;
        }

        v183 = *(v179 + 16);
        v182 = *(v179 + 24);
        v127 = __OFSUB__(v182, v183);
        v184 = v182 - v183;
        if (v127)
        {
          goto LABEL_344;
        }

        if (v184 < 1)
        {
          goto LABEL_259;
        }
      }

      else if (v181)
      {
        if (__OFSUB__(HIDWORD(v179), v179))
        {
          goto LABEL_343;
        }

        if (HIDWORD(v179) - v179 < 1)
        {
          goto LABEL_259;
        }
      }

      else if (!BYTE6(v180))
      {
        goto LABEL_259;
      }

      if (v181 == 2)
      {
        v188 = v179 + 16;
        v186 = *(v179 + 16);
        v187 = *(v188 + 8);
        v127 = __OFSUB__(v187, v186);
        v189 = v187 - v186;
        if (v127)
        {
          goto LABEL_346;
        }

        if (v189 != 4)
        {
          goto LABEL_212;
        }

        goto LABEL_166;
      }

      if (v181 == 1)
      {
        v127 = __OFSUB__(HIDWORD(v179), v179);
        v185 = HIDWORD(v179) - v179;
        if (v127)
        {
          goto LABEL_345;
        }

        if (v185 != 4)
        {
          goto LABEL_212;
        }

LABEL_166:

        v190 = v108[8];
        v191 = v108[9];
        v192 = v191 >> 62;
        if ((v191 >> 62) > 1)
        {
          if (v192 != 2)
          {
            goto LABEL_197;
          }

          v195 = *(v190 + 16);
          v196 = *(v190 + 24);
          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v197 = __DataStorage._bytes.getter();
          if (v197)
          {
            v116 = v197;
            v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
            v198 = __DataStorage._offset.getter();
            if (__OFSUB__(v195, v198))
            {
              goto LABEL_358;
            }

            v199 = v116 + v195 - v198;
          }

          else
          {
            v199 = 0;
          }

          v127 = __OFSUB__(v196, v195);
          v211 = v196 - v195;
          if (v127)
          {
            goto LABEL_354;
          }

          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v212 = __DataStorage._length.getter();
          if (!v199)
          {
            goto LABEL_197;
          }

          v213 = v212 >= v211 ? v211 : v212;
          if ((v213 + 1) < 3)
          {
            goto LABEL_197;
          }

          v214 = v213;
          v115 = v213 / 2;
          v193 = sub_100B39C1C(v213 / 2, 0);
          sub_100F867B8(v193 + 4, v214 / 2, v199, v214 / 2);
          if (v215 != v115)
          {
            goto LABEL_364;
          }
        }

        else
        {
          if (!v192)
          {
            __src[0] = v108[8];
            LOWORD(__src[1]) = v191;
            BYTE2(__src[1]) = BYTE2(v191);
            BYTE3(__src[1]) = BYTE3(v191);
            BYTE4(__src[1]) = BYTE4(v191);
            v115 = (v191 >> 49) & 0x7F;
            BYTE5(__src[1]) = BYTE5(v191);
            if (v115)
            {
              v193 = sub_100B39C1C((v191 >> 49) & 0x7F, 0);
              sub_100F867B8(v193 + 4, (v191 >> 49) & 0x7F, __src, (v191 >> 49) & 0x7F);
              if (v194 != v115)
              {
                goto LABEL_359;
              }

              goto LABEL_198;
            }

LABEL_197:
            v193 = _swiftEmptyArrayStorage;
            goto LABEL_198;
          }

          v200 = v190;
          v201 = v190 >> 32;
          v202 = v201 - v200;
          if (v201 < v200)
          {
            goto LABEL_353;
          }

          v203 = __DataStorage._bytes.getter();
          if (!v203)
          {
            v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
            __DataStorage._length.getter();
            goto LABEL_197;
          }

          v204 = v203;
          v205 = __DataStorage._offset.getter();
          if (__OFSUB__(v200, v205))
          {
            goto LABEL_360;
          }

          v206 = (v200 - v205 + v204);
          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v207 = __DataStorage._length.getter();
          if (!v206)
          {
            goto LABEL_197;
          }

          v208 = v207 >= v202 ? v202 : v207;
          if ((v208 + 1) < 3)
          {
            goto LABEL_197;
          }

          v209 = v208;
          v115 = v208 / 2;
          v193 = sub_100B39C1C(v208 / 2, 0);
          sub_100F867B8(v193 + 4, v209 / 2, v206, v209 / 2);
          if (v210 != v115)
          {
            goto LABEL_366;
          }
        }

LABEL_198:
        v216 = v193[2];
        if (v216)
        {
          __src[0] = _swiftEmptyArrayStorage;
          v115 = __src;
          sub_100776CA4(0, v216, 0);
          v217 = __src[0];
          v218 = *(__src[0] + 2);
          v219 = 32;
          do
          {
            v220 = *(v193 + v219);
            __src[0] = v217;
            v221 = v217[3];
            if (v218 >= v221 >> 1)
            {
              v115 = __src;
              sub_100776CA4((v221 > 1), v218 + 1, 1);
              v217 = __src[0];
            }

            v217[2] = v218 + 1;
            *(v217 + v218 + 16) = v220;
            v219 += 2;
            ++v218;
            --v216;
          }

          while (v216);

          v110 = v361;
          v222 = v217[2];
          if (v222)
          {
LABEL_204:
            __src[0] = _swiftEmptyArrayStorage;
            v115 = __src;
            sub_100776624(0, v222, 0);
            v116 = __src[0];
            v223 = *(__src[0] + 2);
            v224 = 32;
            do
            {
              v225 = *(v217 + v224);
              __src[0] = v116;
              v226 = v116[3];
              if (v223 >= v226 >> 1)
              {
                v115 = __src;
                sub_100776624((v226 > 1), v223 + 1, 1);
                v116 = __src[0];
              }

              v116[2] = v223 + 1;
              *(v116 + v223 + 8) = v225;
              v224 += 2;
              ++v223;
              --v222;
            }

            while (v222);

            v83 = v338;
            v110 = v361;
            goto LABEL_211;
          }
        }

        else
        {

          v217 = _swiftEmptyArrayStorage;
          v222 = _swiftEmptyArrayStorage[2];
          if (v222)
          {
            goto LABEL_204;
          }
        }

        v116 = _swiftEmptyArrayStorage;
        v83 = v338;
LABEL_211:
        v108 = v363;
        v113 = v364;
        v109 = v362;
        goto LABEL_212;
      }

      if (BYTE6(v180) == 4)
      {
        goto LABEL_166;
      }

LABEL_212:
      v227 = v108[8];
      v228 = v108[9];
      v229 = v228 >> 62;
      if ((v228 >> 62) > 1)
      {
        if (v229 != 2)
        {
          goto LABEL_259;
        }

        v232 = v227 + 16;
        v230 = *(v227 + 16);
        v231 = *(v232 + 8);
        v127 = __OFSUB__(v231, v230);
        v233 = v231 - v230;
        if (v127)
        {
          goto LABEL_351;
        }

        if (v233 != 8)
        {
          goto LABEL_259;
        }

LABEL_222:

        v235 = v108[8];
        v236 = v108[9];
        v237 = v236 >> 62;
        if ((v236 >> 62) > 1)
        {
          if (v237 == 2)
          {
            v241 = *(v235 + 16);
            v242 = *(v235 + 24);
            v243 = __DataStorage._bytes.getter();
            if (v243)
            {
              v244 = __DataStorage._offset.getter();
              if (__OFSUB__(v241, v244))
              {
                goto LABEL_362;
              }

              v243 += v241 - v244;
            }

            v127 = __OFSUB__(v242, v241);
            v245 = v242 - v241;
            if (v127)
            {
              goto LABEL_357;
            }

            v246 = __DataStorage._length.getter();
            if (v243)
            {
              v247 = v246 >= v245 ? v245 : v246;
              if ((v247 + 3) >= 7)
              {
                v248 = v247 / 4;
                v239 = sub_100B39FD8(v247 / 4, 0);
                sub_100F86748(v239 + 4, v248, v243, v248);
                if (v249 != v248)
                {
                  goto LABEL_365;
                }

                goto LABEL_251;
              }
            }
          }
        }

        else if (v237)
        {
          v250 = v235;
          v251 = v235 >> 32;
          v252 = v251 - v250;
          if (v251 < v250)
          {
            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
          }

          v253 = __DataStorage._bytes.getter();
          if (v253)
          {
            v254 = v253;
            v255 = __DataStorage._offset.getter();
            if (__OFSUB__(v250, v255))
            {
              goto LABEL_363;
            }

            v256 = (v250 - v255 + v254);
            v257 = __DataStorage._length.getter();
            if (v256)
            {
              v258 = v257 >= v252 ? v252 : v257;
              if ((v258 + 3) >= 7)
              {
                v259 = v258 / 4;
                v239 = sub_100B39FD8(v258 / 4, 0);
                sub_100F86748(v239 + 4, v259, v256, v259);
                if (v260 != v259)
                {
                  goto LABEL_367;
                }

                goto LABEL_251;
              }
            }
          }

          else
          {
            __DataStorage._length.getter();
          }
        }

        else
        {
          __src[0] = v235;
          LOWORD(__src[1]) = v236;
          BYTE2(__src[1]) = BYTE2(v236);
          BYTE3(__src[1]) = BYTE3(v236);
          BYTE4(__src[1]) = BYTE4(v236);
          v238 = (v236 >> 50) & 0x3F;
          BYTE5(__src[1]) = BYTE5(v236);
          if (v238)
          {
            v239 = sub_100B39FD8((v236 >> 50) & 0x3F, 0);
            sub_100F86748(v239 + 4, (v236 >> 50) & 0x3F, __src, (v236 >> 50) & 0x3F);
            if (v240 != v238)
            {
              goto LABEL_361;
            }

            goto LABEL_251;
          }
        }

        v239 = _swiftEmptyArrayStorage;
LABEL_251:
        v261 = v239[2];
        if (v261)
        {
          __src[0] = _swiftEmptyArrayStorage;
          sub_100776624(0, v261, 0);
          v116 = __src[0];
          v262 = *(__src[0] + 2);
          v263 = 32;
          do
          {
            v264 = *(v239 + v263);
            __src[0] = v116;
            v265 = v116[3];
            if (v262 >= v265 >> 1)
            {
              sub_100776624((v265 > 1), v262 + 1, 1);
              v116 = __src[0];
            }

            v116[2] = v262 + 1;
            *(v116 + v262 + 8) = v264;
            v263 += 4;
            ++v262;
            --v261;
          }

          while (v261);

          v110 = v361;
        }

        else
        {

          v116 = _swiftEmptyArrayStorage;
        }

        v108 = v363;
        v113 = v364;
        v109 = v362;
        goto LABEL_259;
      }

      if (v229)
      {
        v127 = __OFSUB__(HIDWORD(v227), v227);
        v234 = HIDWORD(v227) - v227;
        if (v127)
        {
          goto LABEL_352;
        }

        if (v234 != 8)
        {
          goto LABEL_259;
        }

        goto LABEL_222;
      }

      if (BYTE6(v228) == 8)
      {
        goto LABEL_222;
      }

LABEL_259:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v375 = sub_100B3593C(0, *(v375 + 2) + 1, 1, v375);
      }

      v267 = *(v375 + 2);
      v266 = *(v375 + 3);
      if (v267 >= v266 >> 1)
      {
        v375 = sub_100B3593C((v266 > 1), v267 + 1, 1, v375);
      }

      v268 = v375;
      *(v375 + 2) = v267 + 1;
      *&v268[2 * v267 + 32] = v355;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v376 = sub_100B3593C(0, *(v376 + 2) + 1, 1, v376);
      }

      v270 = *(v376 + 2);
      v269 = *(v376 + 3);
      if (v270 >= v269 >> 1)
      {
        v376 = sub_100B3593C((v269 > 1), v270 + 1, 1, v376);
      }

      v271 = v376;
      *(v376 + 2) = v270 + 1;
      *&v271[2 * v270 + 32] = v354;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v374 = sub_100B3593C(0, *(v374 + 2) + 1, 1, v374);
      }

      v273 = *(v374 + 2);
      v272 = *(v374 + 3);
      if (v273 >= v272 >> 1)
      {
        v374 = sub_100B3593C((v272 > 1), v273 + 1, 1, v374);
      }

      v274 = v374;
      *(v374 + 2) = v273 + 1;
      *&v274[2 * v273 + 32] = v353;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_100B3593C(0, *(v373 + 2) + 1, 1, v373);
      }

      v276 = *(v373 + 2);
      v275 = *(v373 + 3);
      if (v276 >= v275 >> 1)
      {
        v373 = sub_100B3593C((v275 > 1), v276 + 1, 1, v373);
      }

      v277 = v373;
      *(v373 + 2) = v276 + 1;
      *&v277[2 * v276 + 32] = v352;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v372 = sub_100B35838(0, *(v372 + 2) + 1, 1, v372);
      }

      v279 = *(v372 + 2);
      v278 = *(v372 + 3);
      if (v279 >= v278 >> 1)
      {
        v372 = sub_100B35838((v278 > 1), v279 + 1, 1, v372);
      }

      v280 = v372;
      *(v372 + 2) = v279 + 1;
      *&v280[4 * v279 + 32] = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v371 = sub_100B35838(0, *(v371 + 2) + 1, 1, v371);
      }

      v282 = *(v371 + 2);
      v281 = *(v371 + 3);
      if (v282 >= v281 >> 1)
      {
        v371 = sub_100B35838((v281 > 1), v282 + 1, 1, v371);
      }

      v283 = v371;
      *(v371 + 2) = v282 + 1;
      *&v283[4 * v282 + 32] = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_100B3593C(0, *(v370 + 2) + 1, 1, v370);
      }

      v285 = *(v370 + 2);
      v284 = *(v370 + 3);
      if (v285 >= v284 >> 1)
      {
        v370 = sub_100B3593C((v284 > 1), v285 + 1, 1, v370);
      }

      v286 = v370;
      *(v370 + 2) = v285 + 1;
      *&v286[2 * v285 + 32] = v359;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_100B3593C(0, *(v369 + 2) + 1, 1, v369);
      }

      v288 = *(v369 + 2);
      v287 = *(v369 + 3);
      v115 = v288 + 1;
      if (v288 >= v287 >> 1)
      {
        v369 = sub_100B3593C((v287 > 1), v288 + 1, 1, v369);
      }

      v289 = v369;
      *(v369 + 2) = v115;
      *&v289[2 * v288 + 32] = v358;
      if (!v116[2])
      {
        goto LABEL_325;
      }

      v290 = *(v116 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v368 = sub_100B35838(0, *(v368 + 2) + 1, 1, v368);
      }

      v292 = *(v368 + 2);
      v291 = *(v368 + 3);
      v115 = v292 + 1;
      if (v292 >= v291 >> 1)
      {
        v368 = sub_100B35838((v291 > 1), v292 + 1, 1, v368);
      }

      v293 = v368;
      *(v368 + 2) = v115;
      *&v293[4 * v292 + 32] = v290;
      if (v116[2] < 2uLL)
      {
        goto LABEL_326;
      }

      v294 = *(v116 + 9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v367 = sub_100B35838(0, *(v367 + 2) + 1, 1, v367);
      }

      v296 = *(v367 + 2);
      v295 = *(v367 + 3);
      v297 = v360;
      if (v296 >= v295 >> 1)
      {
        v299 = sub_100B35838((v295 > 1), v296 + 1, 1, v367);
        v297 = v360;
        v367 = v299;
      }

      v298 = v367;
      *(v367 + 2) = v296 + 1;
      *&v298[4 * v296 + 32] = v294;
      v115 = v297 + 1;
      sub_100CD7954(v108, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      v118 = v115;
      v117 = v351;
      if (v115 == v350)
      {

        v300 = v367;
        *(v83 + 32) = v368;
        *(v83 + 40) = v300;
        v301 = v369;
        *(v83 + 64) = v370;
        *(v83 + 72) = v301;
        v302 = v371;
        *(v83 + 48) = v372;
        *(v83 + 56) = v302;
        v303 = v373;
        *(v83 + 16) = v374;
        *(v83 + 24) = v303;
        v304 = v375;
        *v83 = v376;
        *(v83 + 8) = v304;
        goto LABEL_304;
      }
    }
  }

  v368 = _swiftEmptyArrayStorage;
  v369 = _swiftEmptyArrayStorage;
  v370 = _swiftEmptyArrayStorage;
  v371 = _swiftEmptyArrayStorage;
  v372 = _swiftEmptyArrayStorage;
  v373 = _swiftEmptyArrayStorage;
  v374 = _swiftEmptyArrayStorage;
  v375 = _swiftEmptyArrayStorage;
  v367 = _swiftEmptyArrayStorage;
  v376 = _swiftEmptyArrayStorage;
LABEL_304:
  v364 = *(v351 + 16);
  *v109 = v364;
  v305 = v365[6];
  sub_10000BE14(v366 + v305, v110, &qword_101A1ACF8, &unk_1014B5900);
  v306 = v357;
  v307 = *(v356 + 48);
  v308 = v307(v110, 1, v357);
  sub_10000CAAC(v110, &qword_101A1ACF8, &unk_1014B5900);
  if (v308 != 1)
  {
    v309 = v342;
    sub_10000BE14(v366 + v305, v342, &qword_101A1ACF8, &unk_1014B5900);
    if (v307(v309, 1, v306) == 1)
    {
      v310 = v306;
      v311 = v343;
      *v343 = _swiftEmptyArrayStorage;
      UnknownStorage.init()();
      if (v307(v309, 1, v310) != 1)
      {
        sub_10000CAAC(v309, &qword_101A1ACF8, &unk_1014B5900);
      }
    }

    else
    {
      v311 = v343;
      sub_100CD78EC(v309, v343, type metadata accessor for CRLProto_Path);
    }

    *(v83 + 88) = sub_100C59324(v311);
  }

  if (v364 != *(v376 + 2) || v364 != *(v375 + 2) || v364 != *(v374 + 2) || v364 != *(v373 + 2) || v364 != *(v372 + 2) || v364 != *(v371 + 2) || v364 != *(v370 + 2) || v364 != *(v369 + 2) || v364 != *(v368 + 2) || v364 != *(v367 + 2))
  {
    v376 = objc_opt_self();
    LODWORD(v116) = [v376 _atomicIncrementAssertCount];
    __src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2u);
    StaticString.description.getter("init(from:)", 11, 2);
    v115 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathData.swift", 89, 2);
    v312 = String._bridgeToObjectiveC()();

    v313 = [v312 lastPathComponent];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v314;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_355;
    }

    goto LABEL_322;
  }

LABEL_323:
  sub_10002640C(v330, v331);
  return sub_100CD7954(v366, type metadata accessor for CRLProto_PKStrokePathData);
}