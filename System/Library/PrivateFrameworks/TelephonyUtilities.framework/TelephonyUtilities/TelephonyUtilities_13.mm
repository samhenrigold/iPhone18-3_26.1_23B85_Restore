void sub_1002BF35C(void **a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeConversationForCall:a2 backedByGroupSession:1];

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1002BF3E8(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - v9;
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
  swift_beginAccess();
  v15 = sub_100025C58(v12, *(v1 + v14));
  v16 = swift_endAccess();
  if (v15)
  {

    v18 = sub_10003D4D0(v17);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10057D690;
    (*(v4 + 16))(v10, v12, v3);
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100009D88();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("FT1:1 reporting session already exists for uuid %@", 50, 2, &_mh_execute_header, v18, v23, v19);

    swift_beginAccess();
    v24 = sub_100025C58(v12, *(v1 + v14));
    swift_endAccess();
    (*(v4 + 8))(v12, v3);
  }

  else
  {
    v47 = sub_10003D4D0(v16);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v25 = swift_allocObject();
    v48 = a1;
    v49 = v1;
    v26 = v25;
    *(v25 + 16) = xmmword_10057D690;
    v27 = *(v4 + 16);
    v27(v10, v12, v3);
    v28 = String.init<A>(reflecting:)();
    v29 = v3;
    v31 = v30;
    v26[7] = &type metadata for String;
    v26[8] = sub_100009D88();
    v26[4] = v28;
    v26[5] = v31;
    v32 = static os_log_type_t.default.getter();
    v33 = v47;
    os_log(_:dso:log:type:_:)("Creating call reporting session for FT1:1 call UUID %@", 54, 2, &_mh_execute_header, v47, v32, v26);

    v34 = v49;

    v27(v7, v12, v29);
    v35 = sub_1002C6B10(v48);
    swift_beginAccess();
    if (v35)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v34 + v14);
      sub_1003788C4();
      *(v34 + v14) = v50;
    }

    else
    {
      sub_100383A0C(v7, v36, v37, v38, v39, v40, v41, v42, v46, v47);
    }

    v44 = *(v4 + 8);
    v44(v7, v29);
    swift_endAccess();
    swift_beginAccess();
    v24 = sub_100025C58(v12, *(v34 + v14));
    swift_endAccess();
    v44(v12, v29);
  }

  return v24;
}

void sub_1002BF808()
{
  sub_100005EF4();
  sub_10000FD44(v4, v5, v6, v7, v8, v9);
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v11);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v0;
  v12[4] = v1;
  v32 = v3;
  v33 = v12;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v31[2] = v13;
  v31[3] = v30;
  v14 = _Block_copy(v31);
  v15 = v2;
  v16 = v0;
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v18, v19, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v20, v21, &unk_10057D6E0, v22);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = sub_100008AB0();
  sub_100018F10(v23, v24, v25);
  _Block_release(v14);
  v26 = sub_100007764();
  v27(v26);
  v28 = sub_100008AC0();
  v29(v28);

  sub_100005EDC();
}

id sub_1002BF9F8(void *a1, uint64_t a2, void *a3)
{
  result = [a1 supportsRelay];
  if (result)
  {
    v7 = [a3 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
    swift_beginAccess();
    v12 = sub_100005E74(v8, v10, *(a2 + v11));

    if (v12)
    {
      swift_endAccess();
      v13 = objc_allocWithZone(type metadata accessor for RTCCSDRelayDeviceRoute());
      v14 = sub_1003A9CA0(a1);
      if (*(v14 + OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type) == 6)
      {
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1002BFC0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 3)
  {
    v8 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v10 = sub_100025C58(v7, *(a2 + v9));
    if (v10)
    {
      v11 = v10;
      swift_endAccess();
      (*(v5 + 8))(v7, v4);
      sub_10044680C(a1);
    }

    else
    {
      swift_endAccess();
      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1002BFF4C(uint64_t a1, void *a2, void (*a3)(void *))
{
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000E598();
  v11 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v13 = sub_100025C58(v3, *(a1 + v12));
  if (v13)
  {
    v14 = v13;
    swift_endAccess();
    (*(v9 + 8))(v3, v7);
    a3(a2);
  }

  else
  {
    swift_endAccess();
    (*(v9 + 8))(v3, v7);
  }
}

uint64_t sub_1002C0138(uint64_t a1, void *a2)
{
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = __chkstk_darwin(v45);
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v38 - v7;
  v46 = a2;
  v51 = a1;
  sub_1002BD96C(a2);
  v54 = _swiftEmptyArrayStorage;
  v48 = objc_opt_self();
  v8 = [v48 sharedInstance];
  v9 = [v8 queue];

  v10 = swift_allocObject();
  *(v10 + 16) = &v54;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002C7AAC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_1006246C8;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v9, v12);

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v49 = v54;
    result = sub_10000B6F4(v54);
    if (!result)
    {
LABEL_12:
    }

    v14 = result;
    if (result >= 1)
    {
      v38[1] = v10;
      v15 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
      v47 = v49 & 0xC000000000000001;

      v42 = v15;
      swift_beginAccess();
      v16 = 0;
      v40 = (v4 + 16);
      v41 = (v4 + 8);
      v39 = xmmword_10057D6A0;
      do
      {
        if (v47)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v49 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = [v48 sharedInstance];
        v20 = [v19 activeConversationForCall:v18 backedByGroupSession:1];

        if (v20)
        {

          v21 = [v18 uniqueProxyIdentifierUUID];
          v22 = v43;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = *v41;
          v24 = v45;
          v25 = (*v41)(v22, v45);
          v50 = sub_10003D4D0(v25);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v26 = swift_allocObject();
          *(v26 + 16) = v39;
          v27 = v14;
          v28 = [v18 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v40)(v44, v22, v24);
          v29 = String.init<A>(reflecting:)();
          v30 = v18;
          v32 = v31;
          v23(v22, v24);
          *(v26 + 56) = &type metadata for String;
          v33 = sub_100009D88();
          *(v26 + 64) = v33;
          *(v26 + 32) = v29;
          *(v26 + 40) = v32;
          v14 = v27;
          v18 = v30;
          v52 = *(v51 + v42);

          sub_10026D814(&qword_1006A39D0, &qword_10057E8C8);
          v34 = String.init<A>(reflecting:)();
          *(v26 + 96) = &type metadata for String;
          *(v26 + 104) = v33;
          *(v26 + 72) = v34;
          *(v26 + 80) = v35;
          v36 = static os_log_type_t.default.getter();
          v37 = v50;
          os_log(_:dso:log:type:_:)("remapped call=%@ to callUUIDToCallReportingSessions=%@", 54, 2, &_mh_execute_header, v50, v36, v26);
        }

        ++v16;
      }

      while (v14 != v16);

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C066C(uint64_t *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 _allCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
}

uint64_t sub_1002C07B0(void *a1, uint64_t a2)
{
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v3 - 8);
  v37 = &v35 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  v13 = sub_10003D4D0(v10);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  v15 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v9, v12, v5);
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  v36 = *(v6 + 8);
  v36(v12, v5);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009D88();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("removing ReportingSession for %@", 32, 2, &_mh_execute_header, v13, v19, v14);

  v20 = a1;

  v21 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v37;
  sub_10000AF74(v37, 1, 1, v5);
  swift_beginAccess();
  sub_10003D99C(v22, v12);
  swift_endAccess();
  v23 = [v20 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v12, v24, v25, v26, v27, v28, v29, v30, v35, v36);
  v32 = v31;
  swift_endAccess();
  result = (v36)(v12, v5);
  if (v32)
  {
    v34 = sub_1002C0AFC(v20);
    sub_100055190(v32, v34);
  }

  return result;
}

void *sub_1002C0AFC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = &type metadata for Int;
  *&v29 = 0;
  sub_10003EBF0(&v29, v28);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v27;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = &type metadata for Int;
  *&v29 = 1;
  sub_10003EBF0(&v29, v28);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = v15;
  sub_100040430();

  v16 = v27;
  v17 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1003839E4();
  v19 = v18;
  swift_endAccess();
  (*(v5 + 8))(v7, v4);
  if (!v19)
  {
    return v16;
  }

  sub_100446DCC(a1);
  v20 = sub_100053730(&qword_1006A39C8, type metadata accessor for RTCCSDConversationInfo, &unk_100587A70);
  if (!v20)
  {

    return v16;
  }

  v21 = v20;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
    goto LABEL_18;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = [a1 isOneToOneModeEnabled];
  v23 = 0x6E6F6973736573;
  if (v22)
  {
    v23 = 0x7961776F7774;
  }

  v24 = 0xE700000000000000;
  v30 = &type metadata for String;
  if (v22)
  {
    v24 = 0xE600000000000000;
  }

  *&v29 = v23;
  *(&v29 + 1) = v24;
  sub_10003EBF0(&v29, v28);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = v21;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v25 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v29 = v25;
    sub_10003EBF0(&v29, v28);
    swift_isUniquelyReferenced_nonNull_native();
    v27 = v16;
    sub_100040430();

    return v27;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1002C1268(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v12 = sub_100025C58(v9, *(a1 + v11));
  if (v12)
  {
    v13 = v12;
    swift_endAccess();
    (*(v7 + 8))(v9, v6);
    if (a3)
    {
      sub_100446D00();
    }

    else
    {
      sub_100446D0C();
    }
  }

  else
  {
    swift_endAccess();
    (*(v7 + 8))(v9, v6);
  }
}

void sub_1002C14CC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v1;
  v12 = v3;
  sub_1002C1640();

  (*(v6 + 8))(v10, v4);
  sub_100005EDC();
}

void sub_1002C1640()
{
  sub_100005EF4();
  v34 = v2;
  v31[1] = v3;
  v32 = v4;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v36 = v7;
  __chkstk_darwin(v8);
  sub_10000E598();
  v35 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000E4F4();
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&v0[OBJC_IVAR___CSDRTCReporter_queue];
  (*(v14 + 16))(v18, v6, v12);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  (*(v14 + 32))(v20 + v19, v18, v12);
  v38[4] = v32;
  v38[5] = v20;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v38[2] = v21;
  v38[3] = v34;
  v22 = _Block_copy(v38);
  v23 = v0;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10000A01C();
  sub_10000ED20(v24, v25, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v26, v27, &unk_10057D6E0, v28);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  v29 = sub_100007764();
  v30(v29);
  (*(v10 + 8))(v1, v35);

  sub_100005EDC();
}

uint64_t sub_1002C1910(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  if (!*(*(a1 + v5) + 16))
  {
    return swift_endAccess();
  }

  sub_100021E24();
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = swift_endAccess();
  return a3(v7);
}

uint64_t sub_1002C19C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1002CB574();
  if (sub_100015468(v11, 1, v12) == 1)
  {
    sub_1000099A4(v11, &unk_1006A3DD0, &unk_10057C9D0);
    swift_endAccess();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    swift_endAccess();
    v21 = *(v13 + 8);
    v21(v16, v12);
    v22 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
    swift_beginAccess();
    v23 = sub_100025C58(v18, *(a1 + v22));
    if (v23)
    {
      v24 = v23;
      swift_endAccess();
      v25 = [a2 report];
      v26 = [v25 conversationID];

      if (v26)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      sub_10000AF74(v9, v27, 1, v12);
      sub_1002C1CF4(a3, v24, v9);

      sub_1000099A4(v9, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      swift_endAccess();
    }

    return (v21)(v18, v12);
  }
}

uint64_t sub_1002C1CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = *(v25 + 16);
    if (v18)
    {
      v19 = (v25 + 32);
      v25 = v8 + 32;
      v20 = (v8 + 8);
      do
      {
        v21 = *v19;
        sub_1002A5F90(v27, v6);
        if (sub_100015468(v6, 1, v7) == 1)
        {

          sub_1000099A4(v6, &unk_1006A3DD0, &unk_10057C9D0);
        }

        else
        {
          (*v25)(v10, v6, v7);

          v22 = UUID.uuidString.getter();
          v31 = &type metadata for String;
          *&v30 = v22;
          *(&v30 + 1) = v23;
          sub_10003EBF0(&v30, &v29);
          swift_isUniquelyReferenced_nonNull_native();
          v28 = v21;
          sub_100040430();
          (*v20)(v10, v7);
          v21 = v28;
        }

        v24 = sub_1002C713C(v21);

        sub_100055190(v26, v24);

        ++v19;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C2044()
{
  sub_100005EF4();
  sub_10000C6CC();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0;
  v25 = v3;
  v26 = v6;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v7;
  v24 = v2;
  v8 = _Block_copy(v23);
  v9 = v1;
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v13, v14, &unk_10057D6E0, v15);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = sub_100008AB0();
  sub_10001AB88(v16, v17, v18);
  _Block_release(v8);
  v19 = sub_100007764();
  v20(v19);
  v21 = sub_100007C7C();
  v22(v21);

  sub_100005EDC();
}

uint64_t sub_1002C2238(void *a1, char *a2)
{
  v50 = a2;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v19 - 8);
  v21 = &v48 - v20;
  v22 = [a1 dateConnected];
  if (!v22)
  {
    v29 = type metadata accessor for Date();
    sub_10000AF74(v21, 1, 1, v29);
    v26 = &qword_1006A3C70;
    v27 = &unk_10057EA80;
    v28 = v21;
    return sub_1000099A4(v28, v26, v27);
  }

  v23 = v22;
  v49 = v13;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = type metadata accessor for Date();
  sub_10000AF74(v21, 0, 1, v24);
  sub_1000099A4(v21, &qword_1006A3C70, &unk_10057EA80);
  v25 = [a1 sessionUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  if (sub_100015468(v8, 1, v9) == 1)
  {
    v26 = &unk_1006A3DD0;
    v27 = &unk_10057C9D0;
    v28 = v8;
    return sub_1000099A4(v28, v26, v27);
  }

  (*(v10 + 32))(v18, v8, v9);
  v48 = v10;
  v31 = *(v10 + 16);
  v31(v16, v18, v9);
  v32 = v31;
  v33 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v6, 0, 1, v9);
  swift_beginAccess();
  sub_10003D99C(v6, v16);
  v34 = swift_endAccess();
  v50 = sub_10003D4D0(v34);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10057D6A0;
  v32(v16, v18, v9);
  v36 = v32;
  v37 = String.init<A>(reflecting:)();
  v39 = v38;
  *(v35 + 56) = &type metadata for String;
  v40 = sub_100009D88();
  *(v35 + 64) = v40;
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  v41 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36(v49, v16, v9);
  v42 = String.init<A>(reflecting:)();
  v44 = v43;
  v45 = *(v48 + 8);
  v45(v16, v9);
  *(v35 + 96) = &type metadata for String;
  *(v35 + 104) = v40;
  *(v35 + 72) = v42;
  *(v35 + 80) = v44;
  v46 = static os_log_type_t.default.getter();
  v47 = v50;
  os_log(_:dso:log:type:_:)("recorded mapping for IDS session %@ corresponding to call %@", 60, 2, &_mh_execute_header, v50, v46, v35);

  return (v45)(v18, v9);
}

void sub_1002C27B4()
{
  sub_100005EF4();
  v3 = v2;
  v27[0] = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v30 = v5;
  __chkstk_darwin(v6);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v28 = v8;
  v29 = v7;
  __chkstk_darwin(v7);
  sub_10000E4F4();
  v9 = type metadata accessor for UUID();
  sub_100007FEC();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v27[1] = *&v0[OBJC_IVAR___CSDRTCReporter_queue];
  (*(v11 + 16))(v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v9);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  (*(v11 + 32))(v16 + v15, v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27[0];
  v32[4] = sub_1002C7728;
  v32[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v32[2] = v17;
  v32[3] = &unk_1006241A0;
  v18 = _Block_copy(v32);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000A01C();
  sub_10000ED20(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v22, v23, &unk_10057D6E0, v24);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v25 = sub_100007764();
  v26(v25);
  (*(v28 + 8))(v1, v29);

  sub_100005EDC();
}

uint64_t sub_1002C2AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  swift_beginAccess();
  sub_10003DC5C(a2, v18, v19, v20, v21, v22, v23, v24, v51, v52);
  swift_endAccess();
  if (sub_100015468(v10, 1, v11) == 1)
  {
    return sub_1000099A4(v10, &unk_1006A3DD0, &unk_10057C9D0);
  }

  (*(v12 + 32))(v17, v10, v11);
  swift_beginAccess();
  sub_100383A0C(v17, v26, v27, v28, v29, v30, v31, v32, v51, v52);
  v34 = v33;
  v35 = swift_endAccess();
  if (!v34)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v54 = sub_10003D4D0(v35);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v36 = swift_allocObject();
  v37 = v12;
  v55 = v12;
  v38 = v36;
  *(v36 + 16) = xmmword_10057D6A0;
  v53 = v8;
  v39 = *(v37 + 16);
  v39(v15, a2, v11);
  v40 = String.init<A>(reflecting:)();
  v52 = a3;
  v42 = v41;
  v38[7] = &type metadata for String;
  v43 = sub_100009D88();
  v51 = v34;
  v44 = v43;
  v38[8] = v43;
  v38[4] = v40;
  v38[5] = v42;
  v39(v15, v17, v11);
  v45 = String.init<A>(reflecting:)();
  v38[12] = &type metadata for String;
  v38[13] = v44;
  v38[9] = v45;
  v38[10] = v46;
  v47 = static os_log_type_t.default.getter();
  v48 = v54;
  os_log(_:dso:log:type:_:)("received an IDS metrics report for IDS session %@ corresponding to call %@", 74, 2, &_mh_execute_header, v54, v47, v38);

  v49 = v53;
  sub_10000AF74(v53, 1, 1, v11);
  v50 = v51;
  sub_1002C1CF4(v52, v51, v49);

  sub_1000099A4(v49, &unk_1006A3DD0, &unk_10057C9D0);
  return (*(v55 + 8))(v17, v11);
}

void sub_1002C2F8C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v18 = sub_100025C58(v15, *(a1 + v17));
  if (v18)
  {
    v48 = v18;
    swift_endAccess();
    v19 = *(v7 + 8);
    v20 = v19(v15, v6);
    v47 = sub_10003D4D0(v20);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057D6A0;
    v23 = [a2 UUID];
    v46 = a2;
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v10, v13, v6);
    v25 = String.init<A>(reflecting:)();
    v27 = v26;
    v19(v13, v6);
    *(v22 + 56) = &type metadata for String;
    v28 = sub_100009D88();
    *(v22 + 64) = v28;
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    v49 = v21;

    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v29 = String.init<A>(reflecting:)();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v28;
    *(v22 + 72) = v29;
    *(v22 + 80) = v30;
    v31 = static os_log_type_t.default.getter();
    v32 = v47;
    os_log(_:dso:log:type:_:)("received conversation uuid: %@ handoff report: %@", 49, 2, &_mh_execute_header, v47, v31, v22);

    v33 = [v46 report];
    v34 = sub_1002C33E8(v21, v33);

    if (v34[2])
    {
      v35 = v48;
      sub_100055190(v48, v34);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    v36 = a2;
    v37 = *(v7 + 8);
    v38 = v37(v15, v6);
    v39 = sub_10003D4D0(v38);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10057D690;
    v41 = [v36 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v10, v13, v6);
    v42 = String.init<A>(reflecting:)();
    v44 = v43;
    v37(v13, v6);
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_100009D88();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v45 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Dropping handoff report, could not find session for conversation uuid %@", 72, 2, &_mh_execute_header, v39, v45, v40);
  }
}

void *sub_1002C33E8(uint64_t a1, void *a2)
{
  v99 = a2;
  v4 = type metadata accessor for UUID();
  v97 = *(v4 - 8);
  __chkstk_darwin(v4);
  v96 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v6 - 8);
  v100 = &v87[-v7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v94 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v87[-v13];
  __chkstk_darwin(v12);
  v16 = &v87[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v87[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
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
    goto LABEL_45;
  }

  v95 = v4;
  v24 = sub_10003D4D0(v23);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057D690;
  v26 = [v99 timebase];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 16))(v14, v16, v8);
  v27 = String.init<A>(reflecting:)();
  v29 = v28;
  v31 = *(v9 + 8);
  v30 = v9 + 8;
  v91 = v16;
  v92 = v31;
  v31(v16, v8);
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100009D88();
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  v32 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("handoffuserInfo timebase: %@", 28, 2, &_mh_execute_header, v24, v32, v25);

  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a1 + 64);
  v37 = (v34 + 63) >> 6;
  v90 = (v30 + 24);

  v38 = 0;
  v98 = _swiftEmptyDictionarySingleton;
  v39 = a1;
  v40 = v100;
  v93 = v30;
  while (v36)
  {
    v41 = v36;
LABEL_12:
    v36 = (v41 - 1) & v41;
    if (!v39[2])
    {
      goto LABEL_17;
    }

    v44 = v8;
    v45 = (v39[6] + ((v38 << 10) | (16 * __clz(__rbit64(v41)))));
    v47 = *v45;
    v46 = v45[1];

    v48 = sub_100005208(v47, v46);
    if (v49)
    {
      sub_100006A94(v39[7] + 32 * v48, &v103);
      v50 = v100;
      v51 = swift_dynamicCast();
      sub_10000AF74(v50, v51 ^ 1u, 1, v8);
      if (sub_100015468(v50, 1, v8) == 1)
      {

        v40 = v100;
        goto LABEL_18;
      }

      v89 = v39;
      (*v90)(v94, v100, v8);
      v52 = [v99 timebase];
      v53 = v91;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v55 = v54;
      v92(v53, v44);
      v56 = v55 * 1000.0;
      if (COERCE__INT64(fabs(v55 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_40;
      }

      if (v56 <= -9.22337204e18)
      {
        goto LABEL_41;
      }

      if (v56 >= 9.22337204e18)
      {
        goto LABEL_42;
      }

      v104 = &type metadata for Int;
      *&v103 = v56;
      sub_10003EBF0(&v103, v102);
      v57 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v57;
      v58 = sub_100005208(v47, v46);
      v60 = v57[2];
      v61 = (v59 & 1) == 0;
      v98 = (v60 + v61);
      if (__OFADD__(v60, v61))
      {
        goto LABEL_43;
      }

      v62 = v58;
      v63 = v59;
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v98))
      {
        v64 = sub_100005208(v47, v46);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_48;
        }

        v62 = v64;
      }

      v66 = v63;
      v8 = v44;
      v39 = v89;
      if (v66)
      {

        v98 = v101;
        v67 = (v101[7] + 32 * v62);
        sub_100009B7C(v67);
        sub_10003EBF0(v102, v67);
        v92(v94, v44);
        v40 = v100;
      }

      else
      {
        v68 = v62;
        v69 = v101;
        v101[(v68 >> 6) + 8] |= 1 << v68;
        v70 = (v69[6] + 16 * v68);
        *v70 = v47;
        v70[1] = v46;
        sub_10003EBF0(v102, (v69[7] + 32 * v68));
        v92(v94, v44);
        v71 = v69[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_44;
        }

        v98 = v69;
        v69[2] = v73;
        v40 = v100;
      }
    }

    else
    {

      v40 = v100;
LABEL_17:
      sub_10000AF74(v40, 1, 1, v8);
LABEL_18:
      sub_1000099A4(v40, &qword_1006A3C70, &unk_10057EA80);
    }
  }

  v42 = v99;
  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v43 >= v37)
    {
      break;
    }

    v41 = *(v33 + 8 * v43);
    ++v38;
    if (v41)
    {
      v38 = v43;
      goto LABEL_12;
    }
  }

  v74 = v98;
  if (!v98[2])
  {

    v85 = sub_10003D4D0(v84);
    v86 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("empty dictionaryInfo, return", 28, 2, &_mh_execute_header, v85, v86, _swiftEmptyArrayStorage);

    return _swiftEmptyDictionarySingleton;
  }

  v75 = [v42 conversationID];
  if (v75)
  {
    v76 = v75;
    v77 = v96;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = v95;
    v104 = v95;
    v79 = sub_1002A1D5C(&v103);
    v80 = v97;
    (*(v97 + 16))(v79, v77, v78);
    sub_10003EBF0(&v103, v102);
    swift_isUniquelyReferenced_nonNull_native();
    v101 = v74;
    sub_100040430();
    v74 = v101;
    (*(v80 + 8))(v77, v78);
  }

  if (kRTCReportingMessageParametersCategory)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = &type metadata for Int;
    *&v103 = 7;
    sub_10003EBF0(&v103, v102);
    swift_isUniquelyReferenced_nonNull_native();
    v101 = _swiftEmptyDictionarySingleton;
    sub_100040430();

    if (!kRTCReportingMessageParametersType)
    {
      goto LABEL_46;
    }

    v81 = v101;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = &type metadata for Int;
    *&v103 = 1;
    sub_10003EBF0(&v103, v102);
    swift_isUniquelyReferenced_nonNull_native();
    v101 = v81;
    sub_100040430();

    if (kRTCReportingMessageParametersPayload)
    {
      v82 = v101;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
      *&v103 = v74;
      sub_10003EBF0(&v103, v102);
      swift_isUniquelyReferenced_nonNull_native();
      v101 = v82;
      sub_100040430();

      return v101;
    }

    goto LABEL_47;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002C3F14()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v4;
  v26[4] = sub_1002C7710;
  v26[5] = v9;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v10;
  v26[3] = &unk_100624100;
  v11 = _Block_copy(v26);
  v12 = v0;
  v13 = v2;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v16, v17, &unk_10057D6E0, v18);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = sub_100008AB0();
  sub_100018F10(v19, v20, v21);
  _Block_release(v11);
  v22 = sub_100007764();
  v23(v22);
  v24 = sub_100007C7C();
  v25(v24);

  sub_100005EDC();
}

uint64_t sub_1002C4140(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v20 = sub_100025C58(v17, *(a1 + v19));
  if (v20)
  {
    v21 = v20;
    swift_endAccess();
    (*(v9 + 8))(v17, v8);
    v22 = [a2 report];
    v23 = sub_1002C442C(a3, a4, v22);

    sub_100055190(v21, v23);
  }

  else
  {
    swift_endAccess();
    v24 = *(v9 + 8);
    v25 = v24(v17, v8);
    v26 = v24;
    v21 = sub_10003D4D0(v25);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10057D690;
    v28 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 16))(v12, v15, v8);
    v29 = String.init<A>(reflecting:)();
    v31 = v30;
    v26(v15, v8);
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100009D88();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Dropping ConnectionSetup report, could not find session for conversation uuid %@", 80, 2, &_mh_execute_header, v21, v32, v27);
  }
}

void *sub_1002C442C(void *a1, uint64_t a2, void *a3)
{
  v32 = a2;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for UUID();
  v31 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
    sub_10000AF74(v11, 1, 1, v12);
    v22 = a1;

LABEL_8:
    sub_1000099A4(v11, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_10;
  }

  v22 = a1;

  v23 = [a3 conversationID];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_10000AF74(v9, v25, 1, v12);
  sub_100286068(v9, v11);
  if (sub_100015468(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  v26 = v31;
  (*(v31 + 32))(v14, v11, v12);
  v36 = v12;
  v27 = sub_1002A1D5C(&v35);
  (*(v26 + 16))(v27, v14, v12);
  sub_10003EBF0(&v35, v34);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v22;
  sub_100040430();
  v22 = v33;
  (*(v26 + 8))(v14, v12);
LABEL_10:
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = &type metadata for Int;
  *&v35 = 6;
  sub_10003EBF0(&v35, v34);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = &type metadata for Int;
  *&v35 = v32;
  sub_10003EBF0(&v35, v34);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v28;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v29 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v35 = v22;
    sub_10003EBF0(&v35, v34);
    swift_isUniquelyReferenced_nonNull_native();
    v33 = v29;
    sub_100040430();

    return v33;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1002C49A8()
{
  sub_100005EF4();
  sub_10000FD44(v4, v5, v6, v7, v8, v9);
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v11);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v1;
  v12[4] = v2;
  v31 = v3;
  v32 = v12;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v13;
  v30[3] = v29;
  v14 = _Block_copy(v30);
  v15 = v0;
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v19, v20, &unk_10057D6E0, v21);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = sub_100008AB0();
  sub_100018F10(v22, v23, v24);
  _Block_release(v14);
  v25 = sub_100007764();
  v26(v25);
  v27 = sub_100008AC0();
  v28(v27);

  sub_100005EDC();
}

void sub_1002C4B9C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v18 = sub_100025C58(v15, *(a1 + v17));
  if (v18)
  {
    v19 = v18;
    swift_endAccess();
    (*(v7 + 8))(v15, v6);
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = (a3 + 32);
      do
      {
        v22 = *v21++;

        v23 = [a2 report];
        v24 = sub_1002C4EB0(v22, v23);

        sub_100055190(v19, v24);

        --v20;
      }

      while (v20);
    }
  }

  else
  {
    swift_endAccess();
    v25 = *(v7 + 8);
    v26 = v25(v15, v6);
    v27 = sub_10003D4D0(v26);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10057D690;
    v29 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v10, v13, v6);
    v30 = String.init<A>(reflecting:)();
    v32 = v31;
    v25(v13, v6);
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100009D88();
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v33 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Dropping GroupActivities reports, could not find session for conversation uuid %@", 81, 2, &_mh_execute_header, v27, v33, v28);
  }
}

void *sub_1002C4EB0(void *a1, void *a2)
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for UUID();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_10000AF74(v10, 1, 1, v11);

LABEL_8:
    sub_1000099A4(v10, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_10;
  }

  v21 = [a2 conversationID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10000AF74(v8, v23, 1, v11);
  sub_100286068(v8, v10);
  if (sub_100015468(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  v24 = v28;
  (*(v28 + 32))(v13, v10, v11);
  v32 = v11;
  v25 = sub_1002A1D5C(&v31);
  (*(v24 + 16))(v25, v13, v11);
  sub_10003EBF0(&v31, v30);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = a1;
  sub_100040430();
  a1 = v29;
  (*(v24 + 8))(v13, v11);
LABEL_10:
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for Int;
  *&v31 = 5;
  sub_10003EBF0(&v31, v30);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for Int;
  *&v31 = 7;
  sub_10003EBF0(&v31, v30);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = v26;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v27 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v31 = a1;
    sub_10003EBF0(&v31, v30);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v27;
    sub_100040430();

    return v29;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1002C5394(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a5;
  v10 = a1;
  sub_1002C49A8();
}

uint64_t sub_1002C5480(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
    __break(1u);
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = &type metadata for Int;
  *&v23 = 4;
  sub_10003EBF0(&v23, v22);
  swift_isUniquelyReferenced_nonNull_native();
  v21 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v21;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = &type metadata for Int;
  *&v23 = a1;
  sub_10003EBF0(&v23, v22);
  swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (!kRTCReportingMessageParametersPayload)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v21;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026D814(&unk_1006A61D0, &qword_100581190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100565550;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v14 = Dictionary.init(dictionaryLiteral:)();
  v24 = sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  *&v23 = v14;
  sub_10003EBF0(&v23, v22);
  swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_100040430();

  v15 = v21;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = sub_10003DF24(v16, v18, 0, 0xD000000000000012, 0x8000000100565570, 0xD000000000000021, 0x8000000100565520, 0);

  if (v19)
  {
    sub_100055190(v19, v15);
  }
}

uint64_t sub_1002C5828(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_1002C5914();
}

void sub_1002C5914()
{
  sub_100005EF4();
  sub_10000FD44(v4, v5, v6, v7, v8, v9);
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v11);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v2;
  v12[4] = v1;
  v30 = v3;
  v31 = v12;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v29[2] = v13;
  v29[3] = v28;
  v14 = _Block_copy(v29);
  v15 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v18, v19, &unk_10057D6E0, v20);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = sub_100008AB0();
  sub_10001AB88(v21, v22, v23);
  _Block_release(v14);
  v24 = sub_100007764();
  v25(v24);
  v26 = sub_100008AC0();
  v27(v26);

  sub_100005EDC();
}

void sub_1002C5B54()
{
  sub_100005EF4();
  sub_10000C6CC();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v1;
  v25 = v3;
  v26 = v6;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v7;
  v24 = v2;
  v8 = _Block_copy(v23);
  v9 = v0;
  v10 = v1;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v13, v14, &unk_10057D6E0, v15);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = sub_100008AB0();
  sub_10001AB88(v16, v17, v18);
  _Block_release(v8);
  v19 = sub_100007764();
  v20(v19);
  v21 = sub_100007C7C();
  v22(v21);

  sub_100005EDC();
}

void sub_1002C5D48(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v15 = sub_100025C58(v12, *(a1 + v14));
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    v17 = (*(v8 + 8))(v12, v6);
    a3(v17);
  }

  else
  {
    swift_endAccess();
    (*(v8 + 8))(v12, v6);
  }
}

void sub_1002C5F30()
{
  sub_100005EF4();
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v9);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v7;
  *(v10 + 32) = v5;
  v28[4] = v3;
  v28[5] = v10;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v28[2] = v11;
  v28[3] = v27;
  v12 = _Block_copy(v28);
  v13 = v0;
  v14 = v7;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v15, v16, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v17, v18, &unk_10057D6E0, v19);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = sub_100008AB0();
  sub_10001AB88(v20, v21, v22);
  _Block_release(v12);
  v23 = sub_100007764();
  v24(v23);
  v25 = sub_100008AC0();
  v26(v25);

  sub_100005EDC();
}

void sub_1002C6138(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v12 = sub_100025C58(v9, *(a1 + v11));
  if (v12)
  {
    v13 = v12;
    swift_endAccess();
    (*(v7 + 8))(v9, v6);
    sub_100446D88(a3 & 1);
  }

  else
  {
    swift_endAccess();
    (*(v7 + 8))(v9, v6);
  }
}

void sub_1002C6344(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  swift_beginAccess();
  v9 = sub_1002CB61C(a2, a3, *(a1 + v8));
  v11 = v10;
  v12 = swift_endAccess();
  if (v9 == 1)
  {
    v14 = sub_10003D4D0(v12);
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("UserScore: call UUID does not exist", 35, 2, &_mh_execute_header, v14, v16, _swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  if (v9)
  {
    *&v9[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_userScore] = a4;
    if (v11)
    {
      v17 = v11;
      v14 = v9;
      v18 = sub_1002C6558(v14, a2, a3);
      sub_100055190(v17, v18);

      swift_beginAccess();
      v19 = sub_100383A54(a2, a3);
      v21 = v20;
      swift_endAccess();
      sub_1002C7608(v19, v21);

      goto LABEL_10;
    }

LABEL_9:
    v14 = sub_10003D4D0(v12);
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("UserScore: session was RTCReporting object session was nil", 58, 2, &_mh_execute_header, v14, v22, _swiftEmptyArrayStorage);

    goto LABEL_10;
  }

  if (!v11)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v13 = v11;
  v14 = sub_10003D4D0(v13);
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("UserScore: session RTCCSDCallInfo object was nil", 48, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

LABEL_10:
}

void *sub_1002C6558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR___CSDRTCReporter_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = &type metadata for Int;
  *&v26 = 2;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = &type metadata for Int;
  *&v26 = 1;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v15;
  sub_100040430();

  v16 = v24;
  v17 = [*(v4 + OBJC_IVAR___CSDRTCReporter_appleIDUtilities) isSignedIntoiCloud];
  *(a1 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud) = v17;
  v18 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
  swift_beginAccess();
  v19 = sub_100005E74(a2, a3, *(v4 + v18));
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges) = v19;

  v20 = sub_100053730(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo, &unk_100582400);
  if (!v20)
  {
    return v16;
  }

  v21 = v20;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = &type metadata for String;
  *&v26 = 0xD000000000000021;
  *(&v26 + 1) = 0x8000000100565520;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v21;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v22 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v26 = v22;
    sub_10003EBF0(&v26, v25);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = v16;
    sub_100040430();

    return v24;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1002C69A0(void *a1)
{
  v1 = 0x6E69706F7264;
  v2 = [a1 provider];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0xD00000000000002CLL && 0x80000001005659A0 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0xD000000000000012;
    }
  }

  return v1;
}

uint64_t sub_1002C6A94(void *a1)
{
  v1 = [a1 provider];
  v2 = [v1 isTinCanProvider];

  if (v2)
  {
    return 0x6E61636E6974;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void *sub_1002C6B10(void *a1)
{
  v18 = type metadata accessor for UUID();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isVideo];
  v6 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  nw_activity_create();
  nw_activity_activate();
  v7 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivity;
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v1 + v7);
  sub_10037876C();
  *(v1 + v7) = v19;
  swift_endAccess();
  nw_activity_create();
  nw_activity_activate();
  v8 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting;
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v1 + v8);
  sub_10037876C();
  *(v1 + v8) = v19;
  swift_endAccess();
  v9 = [objc_opt_self() newHierarchyTokenFromParentToken:0];
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = sub_1002C6A94(a1);
  v15 = sub_10003DF24(v10, v12, v9, v13, v14, 0xD000000000000024, 0x8000000100565B30, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v18);
  return v15;
}

void *sub_1002C6DAC(void *a1, void *a2)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v32 - v10;
  v12 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivity;
  swift_beginAccess();
  v14 = sub_1002CB528(v11, *(v3 + v13));
  swift_endAccess();
  if (!v14)
  {
    nw_activity_create();
    nw_activity_activate();
    swift_beginAccess();
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v3 + v13);
    sub_10037876C();
    *(v3 + v13) = v35;
    swift_endAccess();
  }

  swift_unknownObjectRelease();
  v15 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting;
  swift_beginAccess();
  v16 = sub_1002CB528(v11, *(v3 + v15));
  swift_endAccess();
  v33 = v11;
  if (!v16)
  {
    nw_activity_create();
    nw_activity_activate();
    swift_beginAccess();
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v3 + v15);
    sub_10037876C();
    *(v3 + v15) = v35;
    swift_endAccess();
  }

  swift_unknownObjectRelease();
  v17 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UUID.uuidString.getter();
  v20 = v19;
  v21 = *(v6 + 8);
  v32[1] = v6 + 8;
  v21(v9, v5);
  v22 = sub_1002C69A0(a1);
  v24 = v23;
  v25 = [a1 isOneToOneModeEnabled];
  v26 = v5;
  if (v25)
  {
    v27 = 0x7961776F7774;
  }

  else
  {
    v27 = 0x6E6F6973736573;
  }

  if (v25)
  {
    v28 = 0xE600000000000000;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  v29 = [a1 report];
  v30 = sub_10003DF24(v18, v20, v34, v22, v24, v27, v28, v29);

  v21(v33, v26);
  return v30;
}

void *sub_1002C713C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CSDRTCReporter_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = &type metadata for Int;
  *&v15 = 3;
  sub_10003EBF0(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = &type metadata for Int;
  *&v15 = 2;
  sub_10003EBF0(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = v10;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v11 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v15 = a1;
    sub_10003EBF0(&v15, v14);

    swift_isUniquelyReferenced_nonNull_native();
    v13 = v11;
    sub_100040430();

    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1002C7544(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C7598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1002C7608(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1002C76AC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1002C7728()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C2AAC(v3, v0 + v2, v4);
}

uint64_t sub_1002C77C0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1002C7900()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

id sub_1002C7CD0()
{
  v1 = OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver;
  v2 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor_queue);
    v5 = objc_allocWithZone(type metadata accessor for ProcessObserver());
    v6 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 initWithBundleIdentifiers:isa queue:v6];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1002C7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = objc_allocWithZone(type metadata accessor for ProviderDisplayMonitor());
  v7 = sub_1002C7E40(a1, a2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id sub_1002C7E40(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  sub_100007FDC();
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  sub_100007FDC();
  v16 = OBJC_IVAR___CSDProviderDisplayMonitor_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v3[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor;
  v12 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v13 = [objc_opt_self() monitorWithConfiguration:v12];

  *&v4[v11] = v13;
  *&v4[OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver] = 0;
  v14 = &v4[OBJC_IVAR___CSDProviderDisplayMonitor_provider];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 4) = a3;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ProviderDisplayMonitor();
  return objc_msgSendSuper2(&v21, "init");
}

id sub_1002C80F4()
{
  [*&v0[OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProviderDisplayMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002C820C()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___CSDProviderDisplayMonitor_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1002C8A54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100624BD0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1002C8370(_BYTE *a1)
{
  v2 = sub_1002C83B4(4);
  *a1 = v2 & 1;
  if (v2)
  {
    sub_1002C86A0();
    *a1 = v3 & 1;
  }
}

uint64_t sub_1002C83B4(uint64_t a1)
{
  v3 = sub_1002C7CD0();
  v4 = v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider;
  v5 = sub_1002F43CC(*(v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider), *(v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider + 8), 1);

  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5[8];
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(v5[7] + 8 * v14);
    if (v15 <= 4)
    {
      v16 = *(v5[6] + 4 * v14);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v42 = v16;
      v39 = sub_100007558(v16);
      v17 = *(v6 + 16);
      v41 = v18;
      v19 = (v18 & 1) == 0;
      v20 = v17 + v19;
      if (__OFADD__(v17, v19))
      {
        goto LABEL_38;
      }

      sub_10026D814(&qword_1006A3A28, &qword_10057E918);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v20))
      {
        v21 = sub_100007558(v42);
        v23 = v41;
        if ((v41 & 1) != (v22 & 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v21 = v39;
        v23 = v41;
      }

      if (v23)
      {
        *(*(v6 + 56) + 8 * v21) = v15;
      }

      else
      {
        *(v6 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        *(*(v6 + 48) + 4 * v21) = v42;
        *(*(v6 + 56) + 8 * v21) = v15;
        v24 = *(v6 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        *(v6 + 16) = v26;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = v5[v12 + 8];
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = 1 << *(v6 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v6 + 64);
  v31 = (v28 + 63) >> 6;
  while (v30)
  {
    v32 = v27;
LABEL_28:
    v33 = __clz(__rbit64(v30)) | (v32 << 6);
    v34 = *(*(v6 + 48) + 4 * v33);
    v30 &= v30 - 1;
    v35 = *(*(v6 + 56) + 8 * v33);
    if (v34 == *(v4 + 16) && v35 == a1)
    {
      v37 = 1;
LABEL_35:

      return v37;
    }
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      v37 = 0;
      goto LABEL_35;
    }

    v30 = *(v6 + 64 + 8 * v32);
    ++v27;
    if (v30)
    {
      v27 = v32;
      goto LABEL_28;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002C86A0()
{
  v1 = [*(v0 + OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor) currentLayout];
  if (v1)
  {
    v19 = v1;
    v2 = [v1 elements];
    sub_100006AF0(0, &qword_1006A3A20, FBSDisplayLayoutElement_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_10000B6F4(v3);
    v5 = 0;
    v6 = (v0 + OBJC_IVAR___CSDProviderDisplayMonitor_provider);
    while (1)
    {
      if (v4 == v5)
      {

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

LABEL_26:

        return;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {

        goto LABEL_26;
      }

      v16 = sub_1002C89F0(v8);
      if (v17)
      {
        if (v16 != *v6 || v17 != v6[1])
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      ++v5;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

__n128 sub_1002C894C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002C8960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C89A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C89F0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1002C8A5C()
{
  result = qword_1006A0CB0;
  if (!qword_1006A0CB0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A0CB0);
  }

  return result;
}

uint64_t sub_1002C8B34()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = TUSilenceUnknownFaceTimeCallersDefaultValue();
  LOBYTE(v0) = sub_1000535D8(v0, v2, v3);

  return v0 & 1;
}

id sub_1002C8BC8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_1002C8C10(v0, v1, 1);

  return v2;
}

id sub_1002C8C10(uint64_t a1, uint64_t a2, id a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v9, v10);
    sub_10004975C(v10);
    v7 = String._bridgeToObjectiveC()();
    a3 = [v3 integerForKey:v7];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_10004975C(v10);
  }

  return a3;
}

uint64_t sub_1002C8CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (!v4)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_8:
    sub_10004975C(&v14);
    v10 = type metadata accessor for Date();
    v9 = a1;
    v8 = 1;
    return sub_10000AF74(v9, v8, 1, v10);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v12, &v14);
  sub_10004975C(&v14);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v1 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_8;
  }

  v7 = type metadata accessor for Date();
  v8 = swift_dynamicCast() ^ 1;
  v9 = a1;
  v10 = v7;
  return sub_10000AF74(v9, v8, 1, v10);
}

uint64_t sub_1002C8F04(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002C8FE4()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_notificationCenter);
  [v1 removeObserver:v0];
  if (qword_1006A07A0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = off_1006A3A30;
  v3 = off_1006A3A30 + 64;
  v4 = 1 << *(off_1006A3A30 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_1006A3A30 + 8);
  v7 = OBJC_IVAR___CSDCallCenterObserver_triggers;
  v8 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    if ((*(v2[7] + 8 * v12) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleTrigger:" name:*(v2[6] + 8 * v12) object:0];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1006A07A8 != -1)
  {
    swift_once();
  }

  v13 = off_1006A3A38;
  v14 = off_1006A3A38 + 64;
  v15 = 1 << *(off_1006A3A38 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(off_1006A3A38 + 8);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_22:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    if ((*(v13[7] + 8 * v22) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleChannelTrigger:" name:*(v13[6] + 8 * v22) object:0];
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_40;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *&v14[8 * v20];
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_22;
    }
  }

  if (qword_1006A07B0 != -1)
  {
    swift_once();
  }

  v23 = off_1006A3A40;
  v24 = off_1006A3A40 + 64;
  v25 = 1 << *(off_1006A3A40 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(off_1006A3A40 + 8);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
LABEL_34:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v29 << 6);
    if ((*(v23[7] + 8 * v32) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleSharePlayTrigger:" name:*(v23[6] + 8 * v32) object:0];
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_41;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *&v24[8 * v30];
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_34;
    }
  }
}

uint64_t sub_1002C93DC()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  sub_1000115CC(v1, *(v0 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8));
  return v1;
}

uint64_t sub_1002C94C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

id sub_1002C94E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CSDCallCenterObserver_triggers] = 0;
  v8 = &v3[OBJC_IVAR___CSDCallCenterObserver_callChanged];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___CSDCallCenterObserver_callContainerClosure];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___CSDCallCenterObserver_notificationCenter] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1002C9590()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_1002C94E4(sub_1000131A8, 0, v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1002C965C()
{
  result = sub_1002C967C();
  off_1006A3A30 = result;
  return result;
}

uint64_t sub_1002C967C()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  v57 = TUCallCenterCallStatusChangedNotification;
  *(inited + 32) = TUCallCenterCallStatusChangedNotification;
  *(inited + 40) = 1;
  v56 = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 48) = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 56) = 1;
  v55 = TUCallCenterCallStartedConnectingNotification;
  *(inited + 64) = TUCallCenterCallStartedConnectingNotification;
  *(inited + 72) = 2;
  v54 = TUCallCenterCallConnectedNotification;
  *(inited + 80) = TUCallCenterCallConnectedNotification;
  *(inited + 88) = 4;
  v53 = TUCallIsUsingBasebandChangedNotification;
  *(inited + 96) = TUCallIsUsingBasebandChangedNotification;
  *(inited + 104) = 8;
  v52 = TUCallCenterCallInvitationSentNotification;
  *(inited + 112) = TUCallCenterCallInvitationSentNotification;
  *(inited + 120) = 16;
  v51 = TUCallCenterVideoCallInvitationSentNotification;
  *(inited + 128) = TUCallCenterVideoCallInvitationSentNotification;
  *(inited + 136) = 16;
  v50 = TUCallCenterCallContinuityStateChangedNotification;
  *(inited + 144) = TUCallCenterCallContinuityStateChangedNotification;
  *(inited + 152) = 32;
  *(inited + 160) = @"CSDCallHasStartedOutgoingChangedNotification";
  *(inited + 168) = 64;
  v49 = TUCallCenterCallWantsHoldMusicChangedNotification;
  *(inited + 176) = TUCallCenterCallWantsHoldMusicChangedNotification;
  *(inited + 184) = 128;
  v48 = TUCallShouldSuppressRingingChangedNotification;
  *(inited + 192) = TUCallShouldSuppressRingingChangedNotification;
  *(inited + 200) = 256;
  v47 = TUCallNeedsManualInCallSoundsChangedNotification;
  *(inited + 208) = TUCallNeedsManualInCallSoundsChangedNotification;
  *(inited + 216) = 512;
  v46 = TUCallAudioPropertiesChangedNotification;
  *(inited + 224) = TUCallAudioPropertiesChangedNotification;
  *(inited + 232) = 1024;
  *(inited + 240) = @"CSDCallHasAudioInterruptionChangedNotification";
  *(inited + 248) = 2048;
  *(inited + 256) = @"CSDCallRemoteParticipantJoinedNotification";
  *(inited + 264) = 4096;
  *(inited + 272) = @"CSDCallRemoteParticipantLeftNotification";
  *(inited + 280) = 0x2000;
  v45 = TUCallMixesVoiceWithMediaChangedNotification;
  *(inited + 288) = TUCallMixesVoiceWithMediaChangedNotification;
  *(inited + 296) = 0x4000;
  v44 = TUCallBluetoothAudioFormatChangedNotification;
  *(inited + 304) = TUCallBluetoothAudioFormatChangedNotification;
  *(inited + 312) = 0x8000;
  v43 = TUCallIsUplinkMutedChangedNotification;
  *(inited + 320) = TUCallIsUplinkMutedChangedNotification;
  *(inited + 328) = 0x10000;
  v42 = TUCallIsSharingScreenChangedNotification;
  *(inited + 336) = TUCallIsSharingScreenChangedNotification;
  *(inited + 344) = 0x40000;
  v41 = TUCallScreenShareAttributesChangedNotification;
  *(inited + 352) = TUCallScreenShareAttributesChangedNotification;
  *(inited + 360) = 0x2000000;
  v1 = TUCallCenterPendingMemberAddedNotification;
  *(inited + 368) = TUCallCenterPendingMemberAddedNotification;
  *(inited + 376) = 0x80000;
  v2 = TUCallCenterHaveBeenLetInNotification;
  *(inited + 384) = TUCallCenterHaveBeenLetInNotification;
  *(inited + 392) = 0x100000;
  *(inited + 400) = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
  *(inited + 408) = 0x800000;
  *(inited + 416) = @"CSDCallTransmissionStateChangedNotification";
  *(inited + 424) = 0x1000000;
  v3 = TUCallCenterIsScreeningChangedNotification;
  *(inited + 432) = TUCallCenterIsScreeningChangedNotification;
  *(inited + 440) = 0x4000000;
  v4 = TUCallScreeningDidFinishAnnouncementNotification;
  *(inited + 448) = TUCallScreeningDidFinishAnnouncementNotification;
  *(inited + 456) = 0x8000000;
  *(inited + 464) = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
  *(inited + 472) = 0x10000000;
  *(inited + 480) = @"CSDCallInjectingAudioChangedNotification";
  *(inited + 488) = 0xFFFFFFFF80000000;
  *(inited + 504) = 0xFFFFFFFF80000000;
  v5 = TUCallCenterReceptionistStateChangedNotification;
  *(inited + 496) = TUCallCenterReceptionistStateChangedNotification;
  *(inited + 16) = xmmword_10057E9A0;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name, &unk_10057C7BC);
  v6 = v57;
  v7 = v56;
  v8 = v55;
  v9 = v54;
  v10 = v53;
  v11 = v52;
  v12 = v51;
  v13 = v50;
  v14 = @"CSDCallHasStartedOutgoingChangedNotification";
  v15 = v49;
  v16 = v48;
  v17 = v47;
  v18 = v46;
  v19 = @"CSDCallHasAudioInterruptionChangedNotification";
  v20 = @"CSDCallRemoteParticipantJoinedNotification";
  v21 = @"CSDCallRemoteParticipantLeftNotification";
  v22 = v45;
  v23 = v44;
  v24 = v43;
  v25 = v42;
  v26 = v41;
  v27 = v1;
  v28 = v2;
  v29 = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
  v30 = @"CSDCallTransmissionStateChangedNotification";
  v31 = v3;
  v32 = v4;
  v33 = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
  v34 = @"CSDCallInjectingAudioChangedNotification";
  v35 = v5;
  v36 = Dictionary.init(dictionaryLiteral:)();
  v37 = TUCallRecordingStateChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0x40000000, v37);
  v38 = TUCallTranslationStateChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, v38);
  v39 = TUCallSmartHoldingSessionChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, v39);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, @"CSDCallAudioInterruptionProviderTypeChangedNotification");
  return v36;
}

void *sub_1002C9B7C()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v1 = TUBargeCallStatusChangedNotification;
  *(inited + 32) = TUBargeCallStatusChangedNotification;
  *(inited + 40) = 1;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name, &unk_10057C7BC);
  v2 = v1;
  result = Dictionary.init(dictionaryLiteral:)();
  off_1006A3A38 = result;
  return result;
}

void *sub_1002C9C84()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = @"CSDSharePlayMediaDidHandoffNotification";
  *(inited + 40) = 0x200000;
  *(inited + 48) = @"CSDSharePlayRemoteActivityDidChangeNotification";
  *(inited + 56) = 0x400000;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name, &unk_10057C7BC);
  v1 = @"CSDSharePlayMediaDidHandoffNotification";
  v2 = @"CSDSharePlayRemoteActivityDidChangeNotification";
  result = Dictionary.init(dictionaryLiteral:)();
  off_1006A3A40 = result;
  return result;
}

uint64_t sub_1002C9D80(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v42);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  Notification.object.getter();
  if (v50)
  {
    sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    if (swift_dynamicCast())
    {
      v41 = v53;
      v15 = [v53 groupUUID];
      v40 = v2;
      v16 = v15;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = [objc_opt_self() sharedInstance];
      v38 = [v17 queue];

      v18 = *(v9 + 16);
      v19 = v14;
      v39 = v14;
      v20 = v42;
      v18(v12, v19);
      (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
      v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v22 = (v10 + *(v6 + 80) + v21) & ~*(v6 + 80);
      v23 = swift_allocObject();
      v24 = v43;
      *(v23 + 16) = v43;
      (*(v9 + 32))(v23 + v21, v12, v20);
      (*(v6 + 32))(v23 + v22, v8, v5);
      v51 = sub_1002CA9F4;
      v52 = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      v50 = &unk_100624C40;
      v25 = _Block_copy(aBlock);
      v26 = v24;
      v27 = v44;
      static DispatchQoS.unspecified.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_10000ED68(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v28 = v46;
      v29 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v38;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v48 + 8))(v28, v29);
      (*(v45 + 8))(v27, v47);
      (*(v9 + 8))(v39, v20);
    }
  }

  else
  {
    sub_10004975C(aBlock);
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v32 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10057D690;
  (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v34 = String.init<A>(reflecting:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100009D88();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v37 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Could not retrieve conversation from notification %@", 52, 2, &_mh_execute_header, v32, v37, v33);
}

void sub_1002CA3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v39 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a1 + OBJC_IVAR___CSDCallCenterObserver_callContainerClosure))(v10);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v13 callsWithGroupUUID:isa];

  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_10000B6F4(v16))
  {

LABEL_13:
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v31 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10057D690;
    (*(v6 + 16))(v8, a2, v5);
    v33 = String.init<A>(reflecting:)();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100009D88();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Could not retrieve call with conversation group UUID %@", 55, 2, &_mh_execute_header, v31, v36, v32);
    goto LABEL_16;
  }

  sub_10039C390(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v41 = v17;

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_13;
  }

  v19 = v18;
  if (qword_1006A07B0 != -1)
  {
    swift_once();
  }

  v20 = off_1006A3A40;
  v21 = v40;
  v22 = Notification.name.getter();
  v23 = sub_100027DE0(v22, v20);
  LOBYTE(v20) = v24;

  if (v20)
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v25 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10057D690;
    (*(v39 + 16))(v12, v21, v9);
    v27 = String.init<A>(reflecting:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100009D88();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    v30 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received notification %@ for unrecognized trigger", 49, 2, &_mh_execute_header, v25, v30, v26);

LABEL_16:

    return;
  }

  sub_100027FF8(v19, v23);
  v37 = v41;
}

void sub_1002CA9F4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1002CA3C4(v5, v0 + v2, v6);
}

void sub_1002CAAC4(uint64_t a1)
{
  v1 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v41 = _swiftEmptyArrayStorage;
    v43 = sub_10001E578();
    v44 = v3;
    v45 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      v38 = v2;
      v39 = v1;
      while (!__OFADD__(v5++, 1))
      {
        v9 = v43;
        v8 = v44;
        v10 = v45;
        sub_1002E944C(v43, v44, v45, v1);
        v12 = v11;
        v13 = sub_1004450C8([v11 v6[120]]);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
        }

        else
        {
          v17 = [v12 v6[120]];
          v18 = [v17 value];

          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v19;
        }

        v20 = v41;
        v46 = v41;
        v22 = v41[2];
        v21 = v41[3];
        if (v22 >= v21 >> 1)
        {
          sub_10039A2E0(v21 > 1, v22 + 1, 1);
          v20 = v46;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v15;
        v23[5] = v16;
        v41 = v20;
        if (v40)
        {
          v1 = v39;
          v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          if (!v10)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v38;
          sub_10026D814(&unk_1006A3C40, &unk_100580340);
          v29 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v29(v42, 0);
        }

        else
        {
          v1 = v39;
          v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = 1 << *(v39 + 32);
          if (v9 >= v24)
          {
            goto LABEL_36;
          }

          v25 = v9 >> 6;
          v26 = *(v37 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v39 + 36) != v8)
          {
            goto LABEL_38;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v28 = v38;
          }

          else
          {
            v30 = v25 << 6;
            v31 = v25 + 1;
            v32 = (v36 + 8 * v25);
            v28 = v38;
            while (v31 < (v24 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100010000(v9, v8, 0);
                v24 = __clz(__rbit64(v33)) + v30;
                goto LABEL_30;
              }
            }

            sub_100010000(v9, v8, 0);
LABEL_30:
            v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          }

          v35 = *(v39 + 36);
          v43 = v24;
          v44 = v35;
          v45 = 0;
        }

        if (v5 == v28)
        {
          sub_100010000(v43, v44, v45);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1002CAE68(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, a4, a5);
    sub_10000CE3C(a6, a4, a5);
    Set.Iterator.init(_cocoa:)();
    v8 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    sub_1000052DC();
    v12 = v8 + 56;
    v13 = ~v16;
    sub_1000082B4();
    v15 = v17 & v18;

    v14 = 0;
  }

  v30 = v8;
  if (v8 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = v14;
  v20 = v14;
  if (v15)
  {
LABEL_9:
    sub_100007C8C();
    v23 = v22 & v21;
    sub_10003DB58();
    v25 = v24;
    if (v25)
    {
      while (1)
      {
        v36 = v25;
        v26 = a1(&v36);
        if (v7)
        {
          break;
        }

        if (v26)
        {
          goto LABEL_20;
        }

        v14 = v20;
        v15 = v23;
        v8 = v30;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_17;
        }

        sub_100006AF0(0, a4, a5);
        swift_dynamicCast();
        v25 = v36;
        v20 = v14;
        v23 = v15;
        if (!v36)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      sub_1002DB8B8(v30);
    }

    else
    {
LABEL_18:
      v8 = v30;
LABEL_17:
      sub_1002DB8B8(v8);
    }
  }

  else
  {
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= ((v13 + 64) >> 6))
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v12 + 8 * v20))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002CB078@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v26 = a3;
  v25 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  sub_100007FEC();
  v27 = v5;
  __chkstk_darwin(v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_100007990();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  v19 = 0;
  if (v15)
  {
    while (1)
    {
      v20 = v19;
LABEL_6:
      sub_1002DB7F0(*(a2 + 48) + *(v27 + 72) * (__clz(__rbit64(v15)) | (v20 << 6)), v12, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
      sub_1002DB564(v12, v9);
      v21 = v28(v9);
      if (v3)
      {
        sub_1002DB508(v9);
      }

      if (v21)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1002DB508(v9);
      v19 = v20;
      if (!v15)
      {
        goto LABEL_3;
      }
    }

    v23 = v26;
    sub_1002DB564(v9, v26);
    v22 = 0;
    return sub_10000AF74(v23, v22, 1, v25);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v22 = 1;
        v23 = v26;
        return sub_10000AF74(v23, v22, 1, v25);
      }

      v15 = *(a2 + 64 + 8 * v20);
      ++v19;
      if (v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002CB280(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B6F4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

unint64_t sub_1002CB384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1002DA540(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1002CB3E0()
{
  sub_1000068D4();
  if (v4 && (sub_1002DA664(v3), (v5 & 1) != 0))
  {
    v6 = sub_100008928();
    v7 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(v6);
    sub_100008070();
    sub_1002DB7F0(v2 + *(v8 + 72) * v1, v0, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
    v9 = sub_10000E5E4();
    v12 = v7;
  }

  else
  {
    type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
    v9 = sub_100008D20();
  }

  return sub_10000AF74(v9, v10, v11, v12);
}

uint64_t sub_1002CB47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_100005208(a1, a2), (v3 & 1) != 0))
  {
    sub_100015CDC();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CB4C4(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1002DA6A0(), (v1 & 1) != 0))
  {
    sub_10000B89C();
    swift_unknownObjectRetain();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CB528(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1002CB574()
{
  sub_1000068D4();
  if (v2 && (v3 = v1, sub_100021E24(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for UUID();
    sub_100008070();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = sub_10000E5E4();
    v13 = v8;
  }

  else
  {
    type metadata accessor for UUID();
    v10 = sub_100008D20();
  }

  return sub_10000AF74(v10, v11, v12, v13);
}

uint64_t sub_1002CB61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_100005208(a1, a2);
    if (v5)
    {
      v6 = *(a3 + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = v7;
    }
  }

  return sub_100005ED0();
}

uint64_t sub_1002CB670(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1002CB6C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA6EC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v2);
  return v1;
}

uint64_t sub_1002CB720()
{
  sub_1000068D4();
  if (v3 && (v4 = v2, v5 = sub_1002DA750(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for URL();
    sub_100008070();
    (*(v10 + 16))(v0, v8 + *(v10 + 72) * v7, v9);
    v11 = sub_10000E5E4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for URL();
    v11 = sub_100008D20();
  }

  return sub_10000AF74(v11, v12, v13, v14);
}

uint64_t sub_1002CB7C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
}

uint64_t sub_1002CB814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_100005208(a1, a2), (v7 & 1) != 0))
  {
    v8 = sub_100008928();
    v9 = type metadata accessor for PendingMembershipInfo(v8);
    sub_100008070();
    sub_1002DB7F0(v5 + *(v10 + 72) * v4, a4, type metadata accessor for PendingMembershipInfo);
    v11 = sub_10000E5E4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for PendingMembershipInfo(0);
    v11 = sub_100008D20();
  }

  return sub_10000AF74(v11, v12, v13, v14);
}

uint64_t sub_1002CB8B4()
{
  sub_1000068D4();
  if (v3 && (sub_100021E24(), (v4 & 1) != 0))
  {
    v5 = sub_100008928();
    v6 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(v5);
    sub_100008070();
    sub_1002DB7F0(v2 + *(v7 + 72) * v1, v0, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    v8 = sub_10000E5E4();
    v11 = v6;
  }

  else
  {
    type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    v8 = sub_100008D20();
  }

  return sub_10000AF74(v8, v9, v10, v11);
}

uint64_t sub_1002CB950(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1002DA664(a1), (v3 & 1) != 0))
  {
    sub_10000B89C();
    v4 = v2;
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

void sub_1002CB9BC()
{
  sub_1000068D4();
  if (v2 && (v3 = v1, v4 = sub_1002DA7D0(), (v5 & 1) != 0))
  {
    sub_1002DB5DC(*(v3 + 56) + 8 * v4, v0);
    v6 = 0;
  }

  else
  {
    *v0 = 0;
    v6 = 1;
  }

  *(v0 + 8) = v6;
}

uint64_t sub_1002CBA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

uint64_t sub_1002CBA60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1002DA824(), (v2 & 1) != 0))
  {
    sub_100015CDC();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CBAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005208(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_100008070();
    sub_100285FC4(v9 + *(v11 + 72) * v8, a4, &qword_1006A3BF0, &qword_10057DE60);
    v12 = sub_10000E5E4();
    v15 = v10;
  }

  else
  {
    sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    v12 = sub_100008D20();
  }

  return sub_10000AF74(v12, v13, v14, v15);
}

uint64_t sub_1002CBB6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1002DA8CC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
}

uint64_t sub_1002CBBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_100005208(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CBC08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  sub_100021E24();
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002CBC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_100005208(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002CBCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_100005208(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    sub_100008070();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = sub_10000E5E4();
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    v13 = sub_100008D20();
  }

  return sub_10000AF74(v13, v14, v15, v16);
}

unint64_t sub_1002CBD84(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1006204A0, v3);
  sub_10000667C();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002CBDCC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BadgeCountCategory.missedFaceTimeGroupCalls(_:);
  v3 = type metadata accessor for BadgeCountCategory();
  sub_100008070();
  (*(v4 + 104))(a1, v2, v3);
  v5 = sub_10000E5E4();

  return sub_10000AF74(v5, v6, v7, v3);
}

id sub_1002CBE50()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 pairedDevice];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 canReceiveRelayedGFTCalls];

  return v2;
}

uint64_t sub_1002CBEE4(void *a1)
{
  v1 = [a1 displayName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1002CBF38(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v4 = [a2 executeFetchRequest:v3];

  v5 = [v4 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_10000C3E4();
}

void sub_1002CBFDC(void *a1, void *a2, void *a3)
{
  v5 = [a1 value];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v5 destinationIdIsTemporary];

  if (!v6)
  {
    goto LABEL_21;
  }

  v42 = a2;
  v7 = [a3 remoteMembers];
  sub_10000D310();
  sub_100006AF0(v8, v9, v10);
  sub_10000D310();
  sub_10000CE3C(v11, v12, v13);
  sub_100007770();
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v14 = v45;
    v15 = v46;
    v16 = v47;
    v17 = v48;
    v18 = v49;
  }

  else
  {
    sub_1000052DC();
    v15 = v14 + 56;
    v16 = ~v19;
    sub_1000082B4();
    v18 = v20 & v21;

    v17 = 0;
  }

  v22 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v17;
  v24 = v17;
  if (v18)
  {
LABEL_12:
    sub_100007C8C();
    v27 = v26 & v25;
    sub_10003DB58();
    v29 = v28;
    if (v29)
    {
      while (1)
      {
        v30 = [v29 handle];
        v31 = [v30 isEquivalentToHandle:a1];

        if (v31)
        {
          break;
        }

        v17 = v24;
        v18 = v27;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v29 = v44;
          v24 = v17;
          v27 = v18;
          if (v44)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v36 = sub_10003A58C();
      sub_100022DDC(v36);

      v37 = sub_1003EB9A8(v29);
      if (v38)
      {
        v39 = v37;
        v40 = v38;
        sub_100025BF0("MAYBE_NICKNAME_%@");
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10057D690;
        *(v41 + 56) = &type metadata for String;
        *(v41 + 64) = sub_100009D88();
        *(v41 + 32) = v39;
        *(v41 + 40) = v40;
        String.init(format:_:)();

        return;
      }
    }

    else
    {
LABEL_19:
      v32 = sub_10003A58C();
      sub_100022DDC(v32);
    }

    a2 = v42;
LABEL_21:
    v33 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
    v34 = [a2 executeFetchRequest:v33];

    v35 = [v34 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_19;
    }

    ++v23;
    if (*(v15 + 8 * v24))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1002CC398(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 1;
  }
}

void sub_1002CC3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
  }
}

void sub_1002CC3F4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, void *, uint64_t, void *))
{
  v12 = a1;
  v13 = a3;
  v14 = a5;
  a6(a1, a2, a3, a4, a5);
}

void sub_1002CC498(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  TUOpenURL();
}

void sub_1002CC4E0(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  TUUnlockAndOpenSensitiveURL();
}

void sub_1002CC528()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags;
  *(v1 + v2) = [objc_allocWithZone(TUFeatureFlags) init];
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID) = _swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID) = _swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID) = _swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter;
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  *(v1 + v3) = sub_10040BDB0();
  v4 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification);
  *v4 = sub_1002CBE50;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
  v5 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType) = 0;
  v7 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_categories;
  *(v1 + v7) = sub_1002CED8C();
  v8 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_updateBadgeValue);
  *v11 = 0;
  v11[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002CC6D4()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002CC8F0()
{
  v0 = [objc_opt_self() soundWithAlertType:1];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002FBDBC(v1, v2, v0);
  qword_1006A3AC0 = v0;
}

void sub_1002CC954(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 mergedRemoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10001E550();

  if (v8 <= 1)
  {
    v9 = [a1 link];
    if (!v9)
    {
      return;
    }
  }

  if (([a1 isLocallyCreated] & 1) == 0 && !objc_msgSend(a1, "state") && !objc_msgSend(a1, "letMeInRequestState") && (objc_msgSend(a1, "hasJoined") & 1) == 0)
  {
    v10 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver);
    v11 = [a1 localMember];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 handle];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v10 shouldShowInvitationUserNotificationForConversation:a1 handle:v13];

    if (v14)
    {
      v15 = [a1 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
      swift_beginAccess();
      sub_1002CB670(v6, *(v1 + v16));
      v18 = v17;
      swift_endAccess();
      (*(v4 + 8))(v6, v3);
      if (v18)
      {
LABEL_13:

        return;
      }

      if (([a1 isOneToOneModeEnabled] & 1) == 0 && (objc_msgSend(a1, "isFromStorage") & 1) == 0 && objc_msgSend(objc_opt_self(), "supportsConversations") && objc_msgSend(a1, "hostedOnCurrentDevice"))
      {
        v19 = [a1 activeRemoteParticipants];
        v20 = sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v36[2] = v20;
        if ((v21 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v23 = v36[5];
          v22 = v36[6];
          v24 = v36[7];
          v25 = v36[8];
          v26 = v36[9];
        }

        else
        {
          v27 = -1 << *(v21 + 32);
          v22 = v21 + 56;
          v24 = ~v27;
          v28 = -v27;
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v26 = v29 & *(v21 + 56);

          v25 = 0;
          v23 = v21;
        }

        v36[1] = v24;
        v30 = (v24 + 64) >> 6;
        while (1)
        {
          if (v23 < 0)
          {
            v34 = __CocoaSet.Iterator.next()();
            if (!v34)
            {
              goto LABEL_37;
            }

            v36[3] = v34;
            swift_dynamicCast();
            v33 = v36[4];
          }

          else
          {
            v31 = v25;
            v32 = v26;
            if (!v26)
            {
              while (1)
              {
                v25 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  break;
                }

                if (v25 >= v30)
                {
                  goto LABEL_37;
                }

                v32 = *(v22 + 8 * v25);
                ++v31;
                if (v32)
                {
                  goto LABEL_31;
                }
              }

              __break(1u);
              return;
            }

LABEL_31:
            v26 = (v32 - 1) & v32;
            v33 = *(*(v23 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v32)))));
          }

          if (!v33)
          {
LABEL_37:
            sub_100022DDC(v23);

            return;
          }

          v35 = [v33 isLocalAccountHandle];

          if (v35)
          {
            sub_100022DDC(v23);
            goto LABEL_13;
          }
        }
      }
    }
  }
}

uint64_t sub_1002CCE68(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver);
  v4 = [a1 localMember];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 handle];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 shouldShowInvitationRingingUIForConversation:a1 handle:v6];

  if (v7)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_1002CCF08(void *a1)
{
  v1 = [a1 pseudonym];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  _StringGuts.grow(_:)(23);

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000015;
}

uint64_t sub_1002CCFB0(void *a1, char a2)
{
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100007654();
  if (a2)
  {
    v5 = 0x2D79616C70726163;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = sub_100007764();
  v11(v10);

  v12._countAndFlagsBits = v7;
  v12._object = v9;
  String.append(_:)(v12);

  return v5;
}

id sub_1002CD140(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:a1 originatingUIType:24];
  [v3 setWantsStagingArea:1];
  [v3 setVideoEnabled:a2 & 1];
  return v3;
}

void *sub_1002CD1B0(void *a1)
{
  v2 = objc_allocWithZone(TUJoinConversationRequest);
  v3 = a1;
  sub_100395AD8();
  v5 = v4;
  [v4 setWantsStagingArea:1];
  [v5 setVideoEnabled:1];
  v6 = [objc_opt_self() standardInvitationPreferencesForLink];
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002DB204(v7, v5);
  return v5;
}

uint64_t sub_1002CD2AC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v62 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v66 = *(v74 - 8);
  v9 = __chkstk_darwin(v74);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v61 - v11;
  v76 = type metadata accessor for UUID();
  v12 = *(v76 - 1);
  v13 = __chkstk_darwin(v76);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v1[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v65 = v22;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  v21 = v1;
  v75 = a1;
  v25 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
  swift_beginAccess();
  v26 = sub_100025C60(v17, *&v21[v18]);
  swift_endAccess();
  if (v26)
  {

    v23 = *(v12 + 8);
    (v23)(v17, v76);
    if (qword_1006A0B70 == -1)
    {
LABEL_4:
      v27 = type metadata accessor for Logger();
      sub_10000AF9C(v27, qword_1006BA6D0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Updating conversation for pending invite notification", v30, 2u);
      }

      v31 = v75;
      v32 = [v75 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v33 = v31;
      swift_isUniquelyReferenced_nonNull_native();
      v78 = *&v21[v18];
      sub_100378EC8();
      *&v21[v18] = v78;
      (v23)(v15, v76);
      swift_endAccess();
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  v61 = v6;
  v34 = v24;
  v35 = *(v12 + 8);
  v35(v17, v76);
  v36 = *&v21[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification];

  v38 = v36(v37);

  if ((v38 & 1) == 0)
  {
    sub_1002CDCC0(v75, v21);
  }

  v39 = v34;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v40 = v35;
  v41 = type metadata accessor for Logger();
  sub_10000AF9C(v41, qword_1006BA6D0);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Delaying invite notification because a paired device is connected", v44, 2u);
  }

  v45 = v75;
  v46 = [v75 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v47 = v45;
  swift_isUniquelyReferenced_nonNull_native();
  v78 = *&v21[v18];
  sub_100378EC8();
  *&v21[v18] = v78;
  v40(v15, v76);
  swift_endAccess();
  v48 = v72;
  static DispatchTime.now()();
  result = [*&v21[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag] watchInviteNotificationDelay];
  if ((result & 0x8000000000000000) == 0)
  {
    v50 = v62;
    *v62 = result;
    v52 = v63;
    v51 = v64;
    (*(v63 + 104))(v50, enum case for DispatchTimeInterval.seconds(_:), v64);
    + infix(_:_:)();
    (*(v52 + 8))(v50, v51);
    v76 = *(v66 + 8);
    v76(v48, v74);
    v53 = swift_allocObject();
    v53[2] = v21;
    v53[3] = v47;
    v53[4] = sub_1002DB638;
    v53[5] = v39;
    aBlock[4] = sub_1002DB640;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100624DF0;
    v54 = _Block_copy(aBlock);
    v55 = v21;
    v56 = v47;

    v57 = v61;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_10000EDB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    v58 = v68;
    v59 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v60 = v73;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v54);

    (*(v70 + 8))(v58, v59);
    (*(v67 + 8))(v57, v69);
    v76(v60, v74);
  }

  __break(1u);
  return result;
}

void sub_1002CDCC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v52 = *(v4 - 1);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UUID();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CE2C4(a1);
  v9 = v8;
  v10 = sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v11 = sub_1002CCFB0(a1, 0);
  v13 = v12;
  v14 = v9;
  v50 = v10;
  v15 = sub_10044F628(v11, v13, v14, 0);
  v16 = sub_1002CCE68(a1);
  v55 = v15;
  [v15 setDestinations:v16];
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6D0);
  v18 = v14;
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58[0] = v23;
    *v22 = 136315394;
    v24 = [v19 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000EDB0(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v18;
    v28 = v27;
    (*(v54 + 8))(v7, v56);
    v29 = sub_10002741C(v25, v28, v58);
    v18 = v26;

    *(v22 + 4) = v29;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v26;
    v30 = v48;
    *v48 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Posting notification request for conversation UUID %s with content %@", v22, 0x16u);
    sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v23);
  }

  v49 = v18;
  sub_1002CE7A4(v55);
  v32 = sub_1002CD140(v19, 0);
  v33 = [v32 URL];

  v34 = v51;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  (*(v52 + 8))(v34, v53);
  [v18 setDefaultActionURL:v37];

  v38 = sub_1002CCFB0(v19, 1);
  v40 = sub_10044F628(v38, v39, v18, 0);
  v53 = v40;
  [v40 setDestinations:8];
  sub_1002CE7A4(v40);
  v41 = [v19 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002CCFB0(v19, 0);
  v42 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a2 + v42);
  sub_100378D80();
  v43 = v56;
  *(a2 + v42) = v57;
  v44 = *(v54 + 8);
  v44(v7, v43);
  swift_endAccess();
  v45 = [v19 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002CCFB0(v19, 1);
  v46 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a2 + v46);
  sub_100378D80();
  *(a2 + v46) = v57;
  v44(v7, v43);
  swift_endAccess();
}

void sub_1002CE2C4(void *a1)
{
  v3 = type metadata accessor for URL();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E958(0xD000000000000012, 0x8000000100566450);
  v37 = v1;
  v41 = sub_1002D283C(a1);

  v36 = a1;
  v5 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1002D3A04(v6);
  v35[1] = 0;

  v8 = sub_10000B6F4(v7);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v8 == v9)
    {

      v21 = v41;
      sub_100420F48(v10, v41);
      v22 = v36;
      v23 = [v36 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = sub_1002D3748(v24);

      sub_1002DB32C(v25, v21);
      strcpy(&v44, "joinRequestURL");
      HIBYTE(v44) = -18;
      AnyHashable.init<A>(_:)();
      v26 = sub_1002CD140(v22, 1);
      v27 = [v26 URL];

      v28 = v38;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = URL.absoluteString.getter();
      v31 = v30;
      (*(v39 + 8))(v28, v40);
      v45 = &type metadata for String;
      *&v44 = v29;
      *(&v44 + 1) = v31;
      v32 = [v21 userInfo];
      v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003EBF0(&v44, v43);
      swift_isUniquelyReferenced_nonNull_native();
      v42 = v33;
      sub_100378C74(v43, v46);
      sub_100006780(v46);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 setUserInfo:isa];

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v11 value];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100017840();
      v10 = v19;
    }

    v17 = v10[2];
    if (v17 >= v10[3] >> 1)
    {
      sub_100017840();
      v10 = v20;
    }

    v10[2] = v17 + 1;
    v18 = &v10[2 * v17];
    v18[4] = v14;
    v18[5] = v16;
    ++v9;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1002CE7A4(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_ftNetworkSupport) validNetworkReachable])
  {
    v3 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add + 8);

      v3(a1);

      sub_1000051F8(v3, v4);
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA6D0);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Ignoring adding notification request %@ since valid network is not reachable", v8, 0xCu);
      sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    }
  }
}

void sub_1002CE978(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31[-1] - v11;
  v13 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
  swift_beginAccess();
  v15 = sub_100025C60(v12, *(a1 + v14));
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    (*(v7 + 8))(v12, v6);
    a3(v16);
  }

  else
  {
    swift_endAccess();
    v17 = *(v7 + 8);
    v17(v12, v6);
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA6D0);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = v17;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136315138;
      v25 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000EDB0(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v30(v10, v6);
      v29 = sub_10002741C(v26, v28, v31);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "No conversation is waiting to post a notification for uuid %s so not posting invite notification", v23, 0xCu);
      sub_100009B7C(v24);
    }
  }
}

uint64_t sub_1002CECB8()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A3BD8, &unk_10057EA50);
  v2 = String.init<A>(describing:)();

  v0._countAndFlagsBits = sub_10000C3E4();
  String.append(_:)(v0);

  return v2;
}

void *sub_1002CED8C()
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  v1 = 536870914;
  v242 = v0;
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 pairedDevice];

  if (v3)
  {
    v4 = [v3 canReceiveRelayedGFTCalls];

    if (v4)
    {
      v1 = 2;
    }
  }

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(1313427274, 0xE400000000000000);
  sub_100006B5C();
  v7 = sub_10003FB20(1852403562, 0xE400000000000000, v5, v6);
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100007934();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  *(v8 + 32) = v7;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v10;
  v212 = v7;
  v11 = sub_1003890FC(0xD000000000000015, 0x80000001005662A0, v8, v9, v1);
  v18 = sub_1002DB878(v11, v11, v12, v13, v14, v15, v16, v17, v150, v163, v175, v188, v11, v212, 1, 3, v235);
  sub_10039634C(v18, v19);

  sub_10031E958(0x4C41435F57454956, 0xE90000000000004CLL);
  sub_100006B5C();
  v22 = sub_10003FB20(0x6C6C614377656976, 0xE800000000000000, v20, v21);
  v23 = sub_100007C9C();
  sub_10003DDB4(v23, v24, v25, v26, v27, v28, v29, v30, v31, v151, v164, v176, v189, v200, v213, v32);
  *(v33 + 32) = v22;
  v34 = v22;
  v35 = sub_1003890FC(0xD00000000000001FLL, v9 | 0x8000000000000000, v23, _swiftEmptyArrayStorage, 2);
  v42 = sub_1002DB878(v35, v35, v36, v37, v38, v39, v40, v41, v152, v165, v177, v35, v201, v214, v225, v230, v236);
  sub_10039634C(v42, v43);

  sub_10031E958(0xD00000000000001BLL, 0x80000001005662E0);
  sub_100006B5C();
  v46 = sub_10003FB20(0xD000000000000012, 0x8000000100560F70, v44, v45);
  v47 = sub_100007C9C();
  sub_10003DDB4(v47, v48, v49, v50, v51, v52, v53, v54, v55, v153, v166, v178, v190, v202, v215, v56);
  *(v57 + 32) = v46;
  v179 = v46;
  v58 = sub_1002DB8D8(0xD00000000000002ELL, v9 | 0x8000000000000000, v47, _swiftEmptyArrayStorage);
  v65 = sub_1002DB878(v58, v58, v59, v60, v61, v62, v63, v64, v154, v58, v179, v191, v203, v216, v226, v231, v237);
  sub_10039634C(v65, v66);

  v67 = sub_100007C9C();
  sub_10003DDB4(v67, v68, v69, v70, v71, v72, v73, v74, v75, v155, v167, v180, v192, v204, v217, v76);
  *(v77 + 32) = v34;
  v78 = v34;
  v79 = sub_1002DB8D8(0xD00000000000001ELL, v9 | 0x8000000000000000, v67, _swiftEmptyArrayStorage);
  v87 = sub_1002DB878(v79, v80, v81, v82, v83, v84, v85, v86, v156, v168, v181, v193, v205, v218, v227, v232, v238);
  sub_10039634C(v87, v79);

  v88 = sub_100007C9C();
  sub_10003DDB4(v88, v89, v90, v91, v92, v93, v94, v95, v96, v157, v169, v182, v194, v206, v219, v97);
  *(v98 + 32) = v78;
  v158 = v78;
  v99 = sub_1002DB8D8(0xD000000000000021, v9 | 0x8000000000000000, v88, _swiftEmptyArrayStorage);
  v107 = sub_1002DB878(v99, v100, v101, v102, v103, v104, v105, v106, v158, v170, v183, v195, v207, v220, v228, v233, v239);
  sub_10039634C(v107, v99);

  sub_100025BF0("VIEW_LINK_DETAILS");
  sub_100006B5C();
  v110 = sub_10003FB20(0x6B6E694C77656976, 0xEF736C6961746544, v108, v109);
  sub_100007934();
  v111 = swift_allocObject();
  sub_10003DDB4(v111, v112, v113, v114, v115, v116, v117, v118, v119, v159, v171, v184, v196, v208, v221, v120);
  *(v121 + 32) = v110;
  v122 = v110;
  v123 = sub_1002DB8D8(0xD000000000000031, 0x80000001005663A0, v111, _swiftEmptyArrayStorage);
  v131 = sub_1002DB878(v123, v124, v125, v126, v127, v128, v129, v130, v160, v172, v185, v197, v209, v222, v229, v234, v240);
  sub_10039634C(v131, v123);

  sub_10031E958(0x484354495753, 0xE600000000000000);
  sub_100006B5C();
  v134 = sub_10003FB20(0x65756E69746E6F63, 0xEF66666F646E6148, v132, v133);
  sub_100007934();
  v135 = swift_allocObject();
  sub_10003DDB4(v135, v136, v137, v138, v139, v140, v141, v142, v143, v161, v173, v186, v198, v210, v223, v144);
  *(v145 + 32) = v134;
  v146 = v134;
  v147 = sub_10031E958(0x41454E5F4C4C4143, 0xEB00000000594252);

  return v242;
}

id sub_1002CF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [swift_getObjCClassFromMetadata() actionWithIdentifier:v6 title:v7 options:a5];

  return v8;
}

id sub_1002CF3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = String._bridgeToObjectiveC()();

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = String._bridgeToObjectiveC()();

  v12 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v8 actions:isa intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:v11 options:a7];

  return v12;
}

void sub_1002CF508()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  sub_100007654();
  v21 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  sub_100009AB0(v2, v23);
  v10 = swift_allocObject();
  sub_10002F0C8(v23, v10 + 16);
  *(v10 + 56) = v0;
  v22[4] = sub_1002DA534;
  v22[5] = v10;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  sub_10000A600();
  v22[2] = v11;
  v22[3] = &unk_100624D78;
  v12 = _Block_copy(v22);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008AD0();
  sub_10000EDB0(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v16, v17, &unk_10057D6E0, v18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  v19 = sub_100007764();
  v20(v19);
  (*(v5 + 8))(v9, v21);

  sub_100005EDC();
}

void sub_1002CF788(NSObject *a1, NSObject *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  isa = a1[3].isa;
  v12 = a1[4].isa;
  sub_100009B14(a1, isa);
  v53._countAndFlagsBits = (*(v12 + 1))(isa, v12);
  if (sub_1002CBD84(v53) == 6)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA6D0);
    v47[0] = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47[0], v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v47[0], v14, "Unknown notification response received", v15, 2u);
    }

    v16 = v47[0];
  }

  else
  {
    v17 = a1[3].isa;
    v18 = a1[4].isa;
    sub_100009B14(a1, v17);
    (*(v18 + 2))(v17, v18);
    v19._countAndFlagsBits = 0x2D79616C70726163;
    v19._object = 0xE800000000000000;
    v20 = String.hasPrefix(_:)(v19);

    switch(v21)
    {
      case 1:
      case 2:
        v22 = *(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
        if (v22)
        {
          v23 = *(&a2[1].isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
          v24 = objc_opt_self();

          v25 = [v24 faceTimeShowInCallUIURL];
          if (v25)
          {
            v26 = v25;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v22(v8);
            sub_1000051F8(v22, v23);
            (*(v5 + 8))(v8, v4);
          }

          else
          {
            __break(1u);
          }
        }

        break;
      case 3:
        if (qword_1006A0B70 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000AF9C(v27, qword_1006BA6D0);
        sub_100009AB0(a1, v49);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v48 = v31;
          *v30 = 136315138;
          v32 = v50;
          v33 = v51;
          sub_100009B14(v49, v50);
          v34 = (*(v33 + 16))(v32, v33);
          v36 = v35;
          sub_100009B7C(v49);
          v37 = sub_10002741C(v34, v36, &v48);

          *(v30 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v28, v29, "continueActivity action for notification: %s", v30, 0xCu);
          sub_100009B7C(v31);
        }

        else
        {

          sub_100009B7C(v49);
        }

        break;
      case 4:
        sub_1002CFE78(a1);
        break;
      case 5:
        sub_1002D04CC(a1);
        break;
      default:
        v38 = [*(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
        sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
        sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
        v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v40);
        v47[-4] = a2;
        LOBYTE(v47[-3]) = v20;
        v47[-2] = a1;
        sub_1002CAE68(sub_1002DB14C, &v47[-6], v39, &unk_1006A0C80, TUConversation_ptr, &unk_1006A3BB8);
        v42 = v41;

        if (v42)
        {
          v43 = *(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
          if (v43)
          {
            v44 = *(&a2[1].isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);

            v45 = sub_1002CD140(v42, !v20);
            v46 = [v45 URL];

            static URL._unconditionallyBridgeFromObjectiveC(_:)();
            v43(v10);

            sub_1000051F8(v43, v44);
            (*(v5 + 8))(v10, v4);
          }

          else
          {
          }
        }

        break;
    }
  }
}

uint64_t sub_1002CFDB4(void **a1, uint64_t a2, char a3, void *a4)
{
  v5 = sub_1002CCFB0(*a1, a3);
  v7 = v6;
  v8 = a4[3];
  v9 = a4[4];
  sub_100009B14(a4, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

void sub_1002CFE78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_100009B14(a1, v11);
  (*(v12 + 24))(v11, v12);
  v47 = 0x796E6F6475657370;
  v48 = 0xE90000000000006DLL;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v49);
  if (!v46)
  {
    sub_100009A04(v45, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000AF9C(v27, qword_1006BA6D0);
    sub_100009AB0(a1, v49);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {

      sub_100009B7C(v49);
      return;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136315138;
    sub_100009AB0(v49, v45);
    sub_10026D814(&qword_1006A3BC8, &qword_10057EA48);
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
    sub_100009B7C(v49);
    v35 = sub_10002741C(v32, v34, &v47);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Ignoring notification response %s because a pseudonym is missing/could not be typecasted in userInfo", v30, 0xCu);
    sub_100009B7C(v31);

    goto LABEL_13;
  }

  v13 = v47;
  v14 = v48;
  v15 = objc_opt_self();
  v16 = sub_1002DB398(v13, v14, v15);

  if (!v16)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006BA6D0);
    v28 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v37))
    {
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v28, v37, "Failed to construct FaceTime app URL to view link details", v38, 2u);
LABEL_13:

LABEL_14:

    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6D0);
  (*(v5 + 16))(v8, v10, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49[0] = v44;
    *v20 = 136315138;
    sub_10000EDB0(&qword_1006A3BD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = v8;
    v25 = *(v5 + 8);
    v25(v24, v4);
    v26 = sub_10002741C(v21, v23, v49);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Launching FaceTime for notification response via url %s", v20, 0xCu);
    sub_100009B7C(v44);
  }

  else
  {

    v39 = v8;
    v25 = *(v5 + 8);
    v25(v39, v4);
  }

  v40 = v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL;
  swift_beginAccess();
  v41 = *v40;
  if (*v40)
  {
    v42 = *(v40 + 8);
    swift_endAccess();

    v41(v10);
    sub_1000051F8(v41, v42);
    v25(v10, v4);
  }

  else
  {
    v25(v10, v4);
    swift_endAccess();
  }
}

void sub_1002D04CC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100009B14(a1, v2);
  (*(v3 + 24))(v2, v3);
  v16[0] = 0xD000000000000018;
  v16[1] = 0x8000000100566260;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v17);
  if (v15[3])
  {
    if (swift_dynamicCast())
    {
      v4 = String._bridgeToObjectiveC()();

      v5 = [v4 tu_handoffEligibility];

      if (v5)
      {
        v6 = [objc_opt_self() sharedInstance];
        [v6 continueHandoffForConversationWithEligibility:v5];

LABEL_10:
        return;
      }
    }
  }

  else
  {
    sub_100009A04(v15, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA6D0);
  sub_100009AB0(a1, v17);
  v6 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    sub_100009AB0(v17, v15);
    sub_10026D814(&qword_1006A3BC8, &qword_10057EA48);
    v11 = String.init<A>(reflecting:)();
    v13 = v12;
    sub_100009B7C(v17);
    v14 = sub_10002741C(v11, v13, v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v8, "Ignoring notification response %s because a handoff dynamic identifier is missing/could not be typecasted in userInfo", v9, 0xCu);
    sub_100009B7C(v10);

    goto LABEL_10;
  }

  sub_100009B7C(v17);
}

void sub_1002D07AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v135 = *(v5 - 8);
  __chkstk_darwin(v5);
  v134 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v125 - v12;
  Notification.object.getter();
  if (v142)
  {
    type metadata accessor for MomentsNotification();
    if (swift_dynamicCast())
    {
      v130 = v5;
      v126 = v13;
      v127 = a1;
      v128 = v8;
      v129 = v7;
      v136 = v149[0];
      v147 = 0;
      v148 = 0xE000000000000000;
      v145 = 0;
      v146 = 0xE000000000000000;
      v131 = a2;
      v14 = [*(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
      v15 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
      sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v133 = v15;
      if ((v16 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v18 = v149[0];
        v17 = v149[1];
        v19 = v149[2];
        v20 = v149[3];
        v21 = v149[4];
      }

      else
      {
        v31 = -1 << *(v16 + 32);
        v17 = (v16 + 56);
        v19 = ~v31;
        v32 = -v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v21 = v33 & *(v16 + 56);

        v20 = 0;
        v18 = v16;
      }

      v132 = v19;
      v34 = (v19 + 64) >> 6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v35 = __CocoaSet.Iterator.next()();
      if (v35)
      {
        v137[0] = v35;
        swift_dynamicCast();
        v2 = aBlock;
        v36 = v20;
        v37 = v21;
        if (aBlock)
        {
          while (1)
          {
            v40 = [v2 avcSessionToken];
            if ((v40 & 0x8000000000000000) == 0 && v40 == *&v136[OBJC_IVAR___CSDMomentsNotification_streamToken])
            {
              break;
            }

            v20 = v36;
            v21 = v37;
            if (v18 < 0)
            {
              goto LABEL_16;
            }

LABEL_19:
            v38 = v20;
            isa = v21;
            v36 = v20;
            if (!v21)
            {
              while (1)
              {
                v36 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
                  break;
                }

                if (v36 >= v34)
                {
                  goto LABEL_28;
                }

                isa = v17[v36].isa;
                ++v38;
                if (isa)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_74:

              (*(v18 + 8))(v21, v34);
              goto LABEL_37;
            }

LABEL_23:
            v37 = (isa - 1) & isa;
            v2 = *(*(v18 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(isa)))));
            if (!v2)
            {
              goto LABEL_28;
            }
          }

          sub_100022DDC(v18);

          v71 = [v2 activeRemoteParticipants];
          v72 = sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
          sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
          v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v125[2] = v73;
          v125[3] = v72;
          if ((v73 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v74 = aBlock;
            v75 = v140;
            v76 = v141;
            v77 = v142;
            v78 = v143;
          }

          else
          {
            v79 = -1 << *(v73 + 32);
            v75 = v73 + 56;
            v76 = ~v79;
            v80 = -v79;
            if (v80 < 64)
            {
              v81 = ~(-1 << v80);
            }

            else
            {
              v81 = -1;
            }

            v78 = v81 & *(v73 + 56);

            v77 = 0;
            v74 = v73;
          }

          v125[1] = v76;
          v82 = (v76 + 64) >> 6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

LABEL_45:
          v83 = __CocoaSet.Iterator.next()();
          if (v83)
          {
            v138 = v83;
            swift_dynamicCast();
            v84 = v137[0];
            v85 = v77;
            v86 = v78;
            if (v137[0])
            {
              while (1)
              {
                v132 = v78;
                v89 = v74;
                v133 = v84;
                v90 = [v84 avcIdentifier];
                v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v93 = v92;

                if (v91 == *&v136[OBJC_IVAR___CSDMomentsNotification_requesterID] && v93 == *&v136[OBJC_IVAR___CSDMomentsNotification_requesterID + 8])
                {
                  break;
                }

                v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v74 = v89;
                if (v95)
                {
                  goto LABEL_66;
                }

                v77 = v85;
                v78 = v86;
                if (v89 < 0)
                {
                  goto LABEL_45;
                }

LABEL_48:
                v87 = v77;
                v88 = v78;
                v85 = v77;
                if (!v78)
                {
                  while (1)
                  {
                    v85 = v87 + 1;
                    if (__OFADD__(v87, 1))
                    {
                      break;
                    }

                    if (v85 >= v82)
                    {
                      goto LABEL_60;
                    }

                    v88 = *(v75 + 8 * v85);
                    ++v87;
                    if (v88)
                    {
                      goto LABEL_52;
                    }
                  }

                  __break(1u);
                  goto LABEL_76;
                }

LABEL_52:
                v86 = (v88 - 1) & v88;
                v84 = *(*(v74 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v88)))));
                if (!v84)
                {
                  goto LABEL_60;
                }
              }

              v74 = v89;
LABEL_66:
              sub_100022DDC(v74);

              v106 = v131;
              if (![*(v131 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) conversationOneToOneModeEnabled] || !objc_msgSend(v2, "isOneToOneModeEnabled"))
              {
                v115 = *(v106 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation);

                v116 = v133;
                v117 = [v133 handle];
                v118 = v115();
                v120 = v119;

                v147 = v118;
                v148 = v120;

                v121 = v134;
                UUID.init()();
                v122 = UUID.uuidString.getter();
                v124 = v123;

                (*(v135 + 8))(v121, v130);
                v145 = v122;
                v146 = v124;

                v46 = 0;
                v43 = 0;
                goto LABEL_30;
              }

              if (qword_1006A0B70 != -1)
              {
                swift_once();
              }

              v107 = type metadata accessor for Logger();
              sub_10000AF9C(v107, qword_1006BA6D0);
              v18 = v128;
              v21 = v126;
              v34 = v129;
              (*(v128 + 16))(v126, v127, v129);
              v17 = Logger.logObject.getter();
              v108 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v17, v108))
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v138 = v110;
                *v109 = 136315138;
                Notification.object.getter();
                v111 = sub_100291184();
                v113 = v112;
                sub_100009A04(v137, &unk_1006A2D10, &unk_10057D940);
                (*(v18 + 8))(v21, v34);
                v114 = sub_10002741C(v111, v113, &v138);

                *(v109 + 4) = v114;
                _os_log_impl(&_mh_execute_header, v17, v108, "Handle momentsStartedRemoteCapture in-app %s", v109, 0xCu);
                sub_100009B7C(v110);

                goto LABEL_37;
              }

              goto LABEL_74;
            }
          }

LABEL_60:
          sub_100022DDC(v74);

          if (qword_1006A0B70 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_10000AF9C(v96, qword_1006BA6D0);
          v97 = v2;
          v63 = v136;
          v64 = Logger.logObject.getter();
          v98 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v64, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v137[0] = v101;
            *v99 = 138412546;
            *(v99 + 4) = v97;
            *v100 = v2;
            *(v99 + 12) = 2080;
            v102 = *&v63[OBJC_IVAR___CSDMomentsNotification_requesterID];
            v103 = *&v63[OBJC_IVAR___CSDMomentsNotification_requesterID + 8];
            v104 = v97;

            v105 = sub_10002741C(v102, v103, v137);

            *(v99 + 14) = v105;
            _os_log_impl(&_mh_execute_header, v64, v98, "could not find participant for participant in conversation: %@ for requesterID: %s", v99, 0x16u);
            sub_100009A04(v100, &unk_1006A2630, &qword_10057CB40);

            sub_100009B7C(v101);

            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

LABEL_28:
      sub_100022DDC(v18);

      if ([*(v131 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) conversationOneToOneModeEnabled])
      {
        v41 = [objc_opt_self() sharedInstance];
        v42 = [v41 queue];

        v43 = swift_allocObject();
        v44 = v136;
        v43[2] = v136;
        v43[3] = &v147;
        v43[4] = &v145;
        v45 = swift_allocObject();
        v46 = sub_1002DB7E4;
        *(v45 + 16) = sub_1002DB7E4;
        *(v45 + 24) = v43;
        v143 = sub_1000200A4;
        v144 = v45;
        aBlock = _NSConcreteStackBlock;
        v140 = 1107296256;
        v141 = sub_10002007C;
        v142 = &unk_100624FD0;
        v47 = _Block_copy(&aBlock);
        v48 = v44;

        dispatch_sync(v42, v47);

        _Block_release(v47);
        LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

        if ((v42 & 1) == 0)
        {
LABEL_30:
          v49 = [objc_allocWithZone(UNMutableNotificationContent) init];
          sub_10031E958(0xD000000000000025, 0x8000000100566500);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_10057D690;
          v52 = v147;
          v51 = v148;
          *(v50 + 56) = &type metadata for String;
          *(v50 + 64) = sub_100009D88();
          *(v50 + 32) = v52;
          *(v50 + 40) = v51;

          String.init(format:_:)();

          v53 = String._bridgeToObjectiveC()();

          [v49 setBody:v53];

          v54 = String._bridgeToObjectiveC()();
          [v49 setCategoryIdentifier:v54];

          sub_10031E958(0xD000000000000021, 0x8000000100566530);
          v55 = String._bridgeToObjectiveC()();

          [v49 setTitle:v55];

          [v49 setShouldSuppressDefaultAction:1];
          [v49 setShouldIgnoreDoNotDisturb:1];
          v56 = sub_1002CECB8();
          sub_1004554A0(v56, v57, v49);
          [v49 setInterruptionLevel:2];
          sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
          v58 = v145;
          v59 = v146;

          v60 = v49;
          v61 = sub_10044F628(v58, v59, v60, 0);
          [v61 setDestinations:3];
          sub_1002CE7A4(v61);

          sub_1000051F8(v46, v43);
          return;
        }

LABEL_76:
        __break(1u);
      }

      else if (qword_1006A0B70 == -1)
      {
LABEL_32:
        v62 = type metadata accessor for Logger();
        sub_10000AF9C(v62, qword_1006BA6D0);
        v63 = v136;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          aBlock = v67;
          *v66 = 136315138;
          v137[0] = *&v63[OBJC_IVAR___CSDMomentsNotification_streamToken];
          v68 = String.init<A>(reflecting:)();
          v70 = sub_10002741C(v68, v69, &aBlock);

          *(v66 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v64, v65, "could not find conversation for notification stream token: %s", v66, 0xCu);
          sub_100009B7C(v67);

LABEL_34:
          goto LABEL_37;
        }

LABEL_36:
LABEL_37:

        return;
      }

      swift_once();
      goto LABEL_32;
    }
  }

  else
  {
    sub_100009A04(&aBlock, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000AF9C(v22, qword_1006BA6D0);
  (*(v8 + 16))(v11, a1, v7);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v149[0] = v26;
    *v25 = 136315138;
    Notification.object.getter();
    v27 = sub_100291184();
    v29 = v28;
    sub_100009A04(&aBlock, &unk_1006A2D10, &unk_10057D940);
    (*(v8 + 8))(v11, v7);
    v30 = sub_10002741C(v27, v29, v149);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "momentsStartedRemoteCapture received invalid notification object: %s", v25, 0xCu);
    sub_100009B7C(v26);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

void sub_1002D19F4(char *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 currentVideoCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10000B6F4(v7);
  v9 = 0;
  v10 = OBJC_IVAR___CSDMomentsNotification_streamToken;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = [v11 videoStreamToken];
    if ((v13 & 0x8000000000000000) == 0 && v13 == *&a1[v10])
    {

      v22 = sub_1002DB3E8(v12, &selRef_displayFirstName);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
      }

      else
      {
        v26 = [v12 displayName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v27;
      }

      *a2 = v24;
      a2[1] = v25;

      v28 = [v12 uniqueProxyIdentifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      *a3 = v29;
      a3[1] = v31;

      return;
    }

    ++v9;
  }

  if (qword_1006A0B70 == -1)
  {
    goto LABEL_12;
  }

LABEL_25:
  swift_once();
LABEL_12:
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA6D0);
  v15 = a1;
  osloga = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v34 = v18;
    v19 = String.init<A>(reflecting:)();
    v21 = sub_10002741C(v19, v20, &v34);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, osloga, v16, "could not find conversation or call for notification stream token: %s", v17, 0xCu);
    sub_100009B7C(v18);
  }

  else
  {
  }
}

void sub_1002D1DA0()
{
  sub_100005EF4();
  v36 = v1;
  v33 = v2;
  v34 = v3;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v39 = v6;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_100007654();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v37 = v9;
  v38 = v8;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for Notification();
  sub_100007FEC();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v19 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *&v0[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
  (*(v15 + 16))(v19, v5, v13);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v20, v19, v13);
  *(v22 + v21) = v0;
  v41[4] = v34;
  v41[5] = v22;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 1107296256;
  sub_10000A600();
  v41[2] = v23;
  v41[3] = v36;
  v24 = _Block_copy(v41);
  v25 = v0;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100008AD0();
  sub_10000EDB0(v26, v27, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v28, v29, &unk_10057D6E0, v30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  v31 = sub_100007764();
  v32(v31);
  (*(v37 + 8))(v12, v38);

  sub_100005EDC();
}

void sub_1002D20BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA6D0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v39 = a2;
    v12 = v11;
    v38 = swift_slowAlloc();
    v42[0] = v38;
    *v12 = 136315138;
    sub_10000EDB0(&unk_1006A3C80, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_10002741C(v13, v15, v42);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Handling notification for pending message did receive invite: %s", v12, 0xCu);
    sub_100009B7C(v38);

    a2 = v39;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (!Notification.userInfo.getter())
  {
    v43 = 0u;
    v44 = 0u;
    goto LABEL_15;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v17;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v42);
  if (!*(&v44 + 1))
  {
LABEL_15:
    sub_100009A04(&v43, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_16;
  }

  type metadata accessor for GroupIDSPendingChat(0);
  if (swift_dynamicCast())
  {
    v18 = v42[0];
    v19 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v20 = *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName);
    v21 = OBJC_IVAR___CSDGroupIDSPendingChat_handle;
    v22 = *&v18[OBJC_IVAR___CSDGroupIDSPendingChat_handle];

    v23 = v22;
    v20();

    v24 = String._bridgeToObjectiveC()();

    [v19 setTitle:v24];

    sub_10031E958(0xD000000000000012, 0x8000000100566450);
    v25 = String._bridgeToObjectiveC()();

    [v19 setBody:v25];

    v26 = String._bridgeToObjectiveC()();
    [v19 setCategoryIdentifier:v26];

    if (qword_1006A07B8 != -1)
    {
      swift_once();
    }

    [v19 setSound:qword_1006A3AC0];
    v27 = [*&v18[v21] value];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [v19 setThreadIdentifier:v27];

    v28 = sub_1002CECB8();
    sub_1004554A0(v28, v29, v19);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v30 = UUID.uuidString.getter();
    v32 = v31;
    v33 = v19;
    v34 = sub_10044F628(v30, v32, v33, 0);
    [v34 setDestinations:15];
    sub_1002CE7A4(v34);

    goto LABEL_18;
  }

LABEL_16:
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Did not find expected pending chat information", v36, 2u);
  }

LABEL_18:
}

uint64_t sub_1002D26EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Notification();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  sub_1002D1DA0();

  return (*(v6 + 8))(v10, v4);
}

id sub_1002D283C(void *a1)
{
  v2 = v1;
  v44 = type metadata accessor for URL();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v10 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v11 = String._bridgeToObjectiveC()();
  [v10 setBody:v11];

  v12 = String._bridgeToObjectiveC()();
  [v10 setCategoryIdentifier:v12];

  if (qword_1006A07B8 != -1)
  {
    swift_once();
  }

  [v10 setSound:qword_1006A3AC0];
  v13 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation);

  v14 = [a1 initiator];
  v13();

  v15 = String._bridgeToObjectiveC()();

  [v10 setTitle:v15];

  v16 = sub_1002CECB8();
  sub_1004554A0(v16, v17, v10);
  sub_100320858(a1);
  if (!v18)
  {
    v19 = [a1 link];
    if (v19)
    {

      v20 = [a1 link];
      if (!v20 || (v21 = v20, v22 = [v20 isLocallyCreated], v21, !v22) || (v23 = objc_msgSend(a1, "link")) == 0 || (sub_1002DB2BC(v23), !v24))
      {
        sub_10031E958(0x454D495445434146, 0xED00004B4E494C5FLL);
      }
    }

    else
    {
      v36 = sub_10031E958(0x49564E495F544647, 0xEA00000000004554);
      v43[1] = v37;
      v43[2] = v36;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10057D690;
      v39 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);

      v40 = v39(a1);
      v42 = v41;

      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_100009D88();
      *(v38 + 32) = v40;
      *(v38 + 40) = v42;
      String.init(format:_:)();
    }
  }

  v25 = String._bridgeToObjectiveC()();

  [v10 setSubtitle:v25];

  if (([a1 isVideoEnabled] & 1) != 0 || (sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr), v26 = objc_msgSend(a1, "provider"), v27 = objc_msgSend(objc_opt_self(), "expanseProvider"), v28 = static NSObject.== infix(_:_:)(), v26, v27, (v28 & 1) == 0))
  {
    v32 = sub_1002CD140(a1, 1);
    v33 = [v32 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;
    v29 = v44;
    goto LABEL_16;
  }

  sub_1002D2D98(a1, v9);
  v29 = v44;
  if (sub_100015468(v9, 1, v44) != 1)
  {
LABEL_16:
    URL._bridgeToObjectiveC()(v30);
    v31 = v34;
    (*(v4 + 8))(v9, v29);
    goto LABEL_17;
  }

  v31 = 0;
LABEL_17:
  [v10 setDefaultActionURL:v31];

  return v10;
}

uint64_t sub_1002D2D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for URLComponents();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URLQueryItem();
  v6 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = [a1 messagesGroupUUID];
  if (v18)
  {
    v19 = v18;
    v37 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 32))(v17, v15, v11);
    UUID.uuidString.getter();
    URLQueryItem.init(name:value:)();

    sub_100470158(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v20;
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_100470158(v22 > 1, v23 + 1, 1, v20);
      v21 = v35;
    }

    (*(v12 + 8))(v17, v11);
    v21[2] = v23 + 1;
    v24 = v39;
    (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v10, v39);
    v3 = v37;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    v24 = v39;
  }

  v25 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002D32DC(v26);
  v28 = v27;

  v42 = v28;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v29 = v38;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100470158(0, v21[2] + 1, 1, v21);
    v21 = v33;
  }

  v31 = v21[2];
  v30 = v21[3];
  if (v31 >= v30 >> 1)
  {
    sub_100470158(v30 > 1, v31 + 1, 1, v21);
    v21 = v34;
  }

  v21[2] = v31 + 1;
  (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v29, v24);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  return (*(v40 + 8))(v5, v3);
}

void sub_1002D32DC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v50;
    v2 = v51;
    v4 = v52;
    v3 = v53;
    v5 = v54;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = (v4 + 64) >> 6;
  v46 = _swiftEmptyArrayStorage;
  v47 = v2;
LABEL_8:
  v10 = v3;
  if (v1 < 0)
  {
    while (__CocoaSet.Iterator.next()())
    {
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      swift_dynamicCast();
      v14 = v55;
      v3 = v10;
      v13 = v5;
      if (!v55)
      {
        break;
      }

LABEL_17:
      v48 = v14;
      v49 = v13;
      v15 = [v14 handles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v16 & 0xC000000000000001;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = v1;
        v19 = __CocoaSet.startIndex.getter();
        v21 = v20;
        v22 = __CocoaSet.endIndex.getter();
        v23 = v9;
        v25 = v24;
        v26 = static __CocoaSet.Index.== infix(_:_:)();
        v27 = v22;
        v1 = v18;
        v2 = v47;
        v28 = v25;
        v9 = v23;
        sub_100010000(v27, v28, 1);
        v17 = v16 & 0xC000000000000001;
        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = 0;
        v30 = (v16 + 56);
        v19 = 1 << *(v16 + 32);
        v31 = (v19 + 63) >> 6;
        if (v31)
        {
          while (!*v30)
          {
            v29 -= 64;
            --v31;
            ++v30;
            if (!v31)
            {
              goto LABEL_23;
            }
          }

          v32 = __clz(__rbit64(*v30));
          v21 = *(v16 + 36);
          if (v32 - v19 != v29)
          {
            v19 = v32 - v29;
LABEL_28:
            v45 = v9;
            v33 = v17 != 0;
            sub_10001E580(v19, v21, v17 != 0, v16);
            v35 = v34;
            sub_100010000(v19, v21, v33);

            v36 = [v35 value];

            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40 = v2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100017840();
              v46 = v43;
            }

            v41 = v46[2];
            v9 = v45;
            if (v41 >= v46[3] >> 1)
            {
              sub_100017840();
              v46 = v44;
            }

            v46[2] = v41 + 1;
            v42 = &v46[2 * v41];
            v42[4] = v37;
            v42[5] = v39;
            v2 = v40;
            v5 = v49;
            goto LABEL_8;
          }
        }

        else
        {
LABEL_23:
          v21 = *(v16 + 36);
        }
      }

      sub_100010000(v19, v21, v17 != 0);

      v10 = v3;
      v5 = v49;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_33;
  }

LABEL_9:
  v11 = v10;
  v12 = v5;
  v3 = v10;
  if (v5)
  {
LABEL_13:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_33:
    sub_100022DDC(v1);
    return;
  }

  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v9)
    {
      goto LABEL_33;
    }

    v12 = *(v2 + 8 * v3);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1002D3748(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    result = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  v24 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_100022DDC(v24);
      return v9;
    }

    while (1)
    {
      v15 = [v14 handle];
      v16 = [v15 value];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v9 = v22;
      }

      v20 = v9[2];
      if (v20 >= v9[3] >> 1)
      {
        sub_100017840();
        v9 = v23;
      }

      v9[2] = v20 + 1;
      v21 = &v9[2 * v20];
      v21[4] = v17;
      v21[5] = v19;
      v4 = v12;
      v5 = v13;
      result = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v14 = v30;
        v12 = v4;
        v13 = v5;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002D3A04(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100022DDC(v1);
      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v15 = [v14 handles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      result = sub_100413AD4(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1002D3CA4(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v113 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.Component();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar();
  v112 = *(v15 - 8);
  __chkstk_darwin(v15);
  v110 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v17 - 8);
  v111 = &v100 - v18;
  v109 = type metadata accessor for URL();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = [a2 link];
    if (!v20)
    {
      if (qword_1006A0B70 != -1)
      {
LABEL_51:
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000AF9C(v41, qword_1006BA6D0);
      v42 = a2;
      v116 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v116, v43))
      {
        v44 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v44 = 136315394;
        v45 = sub_10029121C(a2);
        v47 = sub_10002741C(v45, v46, aBlock);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2080;
        v48 = sub_100291230(0);
        v50 = sub_10002741C(v48, v49, aBlock);

        *(v44 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v116, v43, "Failed to determine conversation link for pending member notification with conversation %s and conversationLink %s", v44, 0x16u);
        swift_arrayDestroy();

        v40 = v116;
        goto LABEL_26;
      }

      v40 = v116;
LABEL_28:

      goto LABEL_26;
    }
  }

  v106 = v14;
  v115 = v20;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v22 = a1;
    v26 = *(a1 + 16);
    v27 = a3;
    if (v26)
    {
      v101 = v15;
      v102 = v12;
      v103 = v10;
      v104 = v11;
      v105 = v8;
      v28 = -1 << *(a1 + 32);
      a2 = (a1 + 56);
      v23 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v25 = v30 & *(a1 + 56);

      v24 = 0;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v21 = a3;
  if (!__CocoaSet.count.getter())
  {
LABEL_27:
    v40 = v115;
    goto LABEL_28;
  }

  v101 = v15;
  v102 = v12;
  v103 = v10;
  v104 = v11;
  v105 = v8;
  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  Set.Iterator.init(_cocoa:)();
  v22 = v122;
  a2 = v123;
  v23 = v124;
  v24 = v125;
  v25 = v126;
LABEL_12:
  v114 = v23;
  v31 = (v23 + 64) >> 6;
  v116 = v4;
  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v32 = __CocoaSet.Iterator.next()();
  if (v32 && (*&v120 = v32, sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr), swift_dynamicCast(), v33 = aBlock[0], v34 = v24, v35 = v25, aBlock[0]))
  {
    while (1)
    {
      v38 = *(&v4->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag);
      swift_unknownObjectRetain();
      v39 = sub_1002D4A78(v33, v38);
      swift_unknownObjectRelease();
      if (v39)
      {
        break;
      }

      v24 = v34;
      v25 = v35;
      v4 = v116;
      if (v22 < 0)
      {
        goto LABEL_13;
      }

LABEL_16:
      v36 = v24;
      v37 = v25;
      v34 = v24;
      if (!v25)
      {
        while (1)
        {
          v34 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_24;
          }

          v37 = *(a2 + v34);
          ++v36;
          if (v37)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_20:
      v35 = (v37 - 1) & v37;
      v33 = *(*(v22 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v37)))));
      if (!v33)
      {
        goto LABEL_24;
      }
    }

    sub_100022DDC(v22);

    v51 = [objc_opt_self() supportsConversations];
    v52 = v116;
    if ((v51 & 1) != 0 || [*(&v116->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) greenTeaLinksEnabled])
    {
      v53 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v54 = String._bridgeToObjectiveC()();
      [v53 setCategoryIdentifier:v54];

      sub_10031E958(0xD000000000000017, 0x80000001005664A0);
      v55 = String._bridgeToObjectiveC()();

      [v53 setBody:v55];

      sub_100369588(v115);
      if (!v56)
      {
        sub_10031E958(0x454D495445434146, 0xED00004B4E494C5FLL);
      }

      v57 = v113;
      v58 = String._bridgeToObjectiveC()();

      [v53 setTitle:v58];

      [v53 setInterruptionLevel:2];
      v59 = sub_1002CECB8();
      sub_1004554A0(v59, v60, v53);
      v61 = [v115 pseudonym];
      if (!v61)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = String._bridgeToObjectiveC()();
      }

      [v53 setThreadIdentifier:v61];

      *&v120 = 0x796E6F6475657370;
      *(&v120 + 1) = 0xE90000000000006DLL;
      AnyHashable.init<A>(_:)();
      v62 = [v115 pseudonym];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v121 = &type metadata for String;
      *&v120 = v63;
      *(&v120 + 1) = v65;
      v66 = [v53 userInfo];
      v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003EBF0(&v120, v118);
      swift_isUniquelyReferenced_nonNull_native();
      v117 = v67;
      sub_100378C74(v118, aBlock);
      sub_100006780(aBlock);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v53 setUserInfo:isa];

      v69 = sub_1002CD1B0(v115);
      v70 = [v69 URL];

      v71 = v107;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v72);
      v74 = v73;
      (*(v108 + 8))(v71, v109);
      v75 = v53;
      [v53 setDefaultActionURL:v74];

      v76 = v110;
      static Calendar.current.getter();
      v77 = v102;
      v78 = v106;
      v79 = v104;
      (*(v102 + 104))(v106, enum case for Calendar.Component.hour(_:), v104);
      v80 = v103;
      Date.init()();
      v81 = v111;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v82 = *(v57 + 8);
      v83 = v80;
      v84 = v105;
      v82(v83, v105);
      (*(v77 + 8))(v78, v79);
      (*(v112 + 8))(v76, v101);
      if (sub_100015468(v81, 1, v84) == 1)
      {
        v85 = 0;
      }

      else
      {
        v85 = Date._bridgeToObjectiveC()().super.isa;
        v82(v81, v84);
      }

      [v75 setExpirationDate:v85];

      v86 = sub_1002CCF08(v115);
      v88 = v87;
      sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);

      v89 = v75;
      v90 = sub_10044F628(v86, v88, v89, 0);
      [v90 setDestinations:4];
      v91 = *(&v52->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter);
      v92 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v93 = swift_allocObject();
      v93[2] = v92;
      v93[3] = v86;
      v93[4] = v88;
      v93[5] = v90;
      aBlock[4] = sub_1002DB64C;
      aBlock[5] = v93;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D51E8;
      aBlock[3] = &unk_100624E68;
      v94 = _Block_copy(aBlock);
      v95 = v90;

      [v91 getDeliveredNotificationsWithCompletionHandler:v94];
      _Block_release(v94);

      return;
    }

    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_10000AF9C(v96, qword_1006BA6D0);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Not posting pending member notification becaue Group FaceTime is not supported (GreenTea device or doesn't support multiway)", v99, 2u);
    }
  }

  else
  {
LABEL_24:
    sub_100022DDC(v22);
  }

  v40 = v115;
LABEL_26:
}

BOOL sub_1002D4A78(void *a1, void *a2)
{
  type metadata accessor for Date();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007BAC();
  __chkstk_darwin(v7);
  v8 = [a1 dateInitiatedLetMeIn];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a1 dateReceivedLetMeIn];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v12 = v11;
  v13 = *(v5 + 8);
  v14 = sub_100005ED0();
  v13(v14);
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000075F0(v15, qword_1006BA6D0);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_100007C08();
    v32 = v13;
    v20 = sub_10000777C();
    v33 = a2;
    v34 = sub_100005E84();
    v21 = v34;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2080;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057D690;
    *(v22 + 56) = &type metadata for Double;
    *(v22 + 64) = &protocol witness table for Double;
    *(v22 + 32) = v12;
    v23 = v16;
    v24 = String.init(format:_:)();
    v26 = sub_10002741C(v24, v25, &v34);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Time since LMI initiated for member %@ is %s seconds", v19, 0x16u);
    sub_100009A04(v20, &unk_1006A2630, &qword_10057CB40);
    v27 = v20;
    v13 = v32;
    sub_100005F40(v27);
    sub_100009B7C(v21);
    v28 = v21;
    a2 = v33;
    sub_100005F40(v28);
    sub_100005F40(v19);
  }

  v29 = [a2 letMeInRequestNotificationTimeout];
  v30 = sub_100007764();
  v13(v30);
  return v12 < v29;
}

id sub_1002D4D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v38 = result;
  v39 = v15;
  v40 = v13;
  v41 = v11;
  v42 = v12;
  v43 = v9;
  v44 = v8;
  result = sub_10000B6F4(a1);
  v17 = result;
  v18 = 0;
  v46 = a1 & 0xC000000000000001;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  while (1)
  {
    if (v17 == v18)
    {
      [v45 setDestinations:{objc_msgSend(v45, "destinations") | 3}];
LABEL_17:
      v29 = v38;
      v30 = swift_allocObject();
      v31 = v45;
      *(v30 + 16) = v29;
      *(v30 + 24) = v31;
      aBlock[4] = sub_1002DB658;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100624EB8;
      v32 = _Block_copy(aBlock);
      v33 = v29;
      v34 = v31;
      v35 = v39;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      sub_10000EDB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
      v36 = v41;
      v37 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      (*(v43 + 8))(v36, v37);
      (*(v40 + 8))(v35, v42);
    }

    if (v46)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_20;
      }

      result = *(v20 + 8 * v18 + 32);
    }

    v21 = result;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v22 = [result request];
    v23 = [v22 identifier];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == a3 && v26 == a4)
    {

      goto LABEL_17;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v18;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002D51E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100006AF0(0, &qword_1006A3C78, UNNotification_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_1002D526C(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E958(0xD000000000000015, 0x80000001005664E0);
  v6 = sub_1002D283C(a1);

  v7 = [objc_opt_self() faceTimeShowInCallUIURL];
  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v8);
    v7 = v9;
    (*(v3 + 8))(v5, v2);
  }

  [v6 setDefaultActionURL:v7];

  return v6;
}

void sub_1002D53F4()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v127 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007BAC();
  v124 = (v9 - v10);
  sub_100006838();
  __chkstk_darwin(v11);
  sub_10000C0F8();
  v13 = __chkstk_darwin(v12);
  v15 = &v117 - v14;
  __chkstk_darwin(v13);
  v126 = &v117 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100007FDC();
  sub_10001C9C4();
  v21 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *v2 = v21;
  (*(v19 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v2, v17);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v125 = v7;
  sub_1002CC954(v5);
  v7 = &selRef_setWindowed_;
  if (v24)
  {
    if (qword_1006A0B70 == -1)
    {
LABEL_4:
      v25 = type metadata accessor for Logger();
      sub_1000075F0(v25, qword_1006BA6D0);
      v26 = v5;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = sub_100005274();
        v124 = sub_100005E84();
        v128 = v124;
        *v29 = 136315138;
        v30 = [v26 UUID];
        v31 = v126;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v32, v33, &protocol conformance descriptor for UUID);
        v34 = v5;
        v35 = v127;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v35;
        v5 = v34;
        v7 = &selRef_setWindowed_;
        (v125[1])(v31, v37);
        sub_100006B68();
        sub_100005EC4();

        *(v29 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "Conversation UUID %s had a state change, and we determined that we should post an invite notification", v29, 0xCu);
        sub_100009B7C(v124);
        sub_100007CBC();
        sub_100005F40(v29);
      }

      sub_1002CD2AC(v26);
      goto LABEL_35;
    }

LABEL_40:
    sub_100008288();
    swift_once();
    goto LABEL_4;
  }

  if ([v5 state] == 3)
  {
    v38 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
    sub_1000159D4(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID);
    v40 = sub_1002CB670(v15, *(v3 + v39));
    if (v41)
    {
      v42 = v41;
      v123 = v40;
      swift_endAccess();
      v43 = v125 + 1;
      v125 = v125[1];
      (v125)(v15, v127);
      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000075F0(v44, qword_1006BA6D0);
      v45 = v5;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      v48 = os_log_type_enabled(v46, v47);
      v122 = v45;
      if (v48)
      {
        v49 = sub_100007C08();
        v119 = v47;
        v50 = v49;
        v120 = swift_slowAlloc();
        v128 = v120;
        *v50 = 136315394;
        v51 = [v45 UUID];
        v118 = v46;
        v52 = v51;
        v53 = v126;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v54, v55, &protocol conformance descriptor for UUID);
        v56 = v43;
        v57 = v5;
        v58 = v127;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v39;
        v60 = v58;
        v5 = v57;
        v43 = v56;
        (v125)(v53, v60);
        sub_100006B68();
        sub_100005EC4();
        v39 = v121;

        *(v50 + 4) = v59;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_10002741C(v123, v42, &v128);
        v61 = v118;
        _os_log_impl(&_mh_execute_header, v118, v119, "Removing invite notification for conversation UUID %s with notification identifier %s", v50, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40(v50);
      }

      else
      {
      }

      v63 = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v66 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v66)
      {
        v67 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v66(v123, v42);
        sub_1000051F8(v66, v67);
      }

      v68 = [v122 UUID];
      v65 = v126;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08(v3 + v39);
      sub_100383AF0(v65);
      v64 = v127;
      v62 = v125;
      (v125)(v65, v127);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v62 = v125[1];
      v63 = (v125 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = v127;
      (v62)(v15, v127);
      v65 = v126;
    }

    v69 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
    sub_1000159D4(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID);
    v71 = sub_100025C60(v1, *(v3 + v70));
    swift_endAccess();
    v123 = v63;
    (v62)(v1, v64);
    v72 = v124;
    v125 = v62;
    if (v71)
    {

      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000075F0(v73, qword_1006BA6D0);
      v74 = v5;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = sub_100005274();
        v122 = sub_100005E84();
        v128 = v122;
        *v77 = 136315138;
        v78 = [v74 UUID];
        LODWORD(v121) = v76;
        v79 = v78;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v80, v81, &protocol conformance descriptor for UUID);
        v82 = v127;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v125;
        (v125)(v126, v82);
        sub_100006B68();
        sub_100005EC4();
        v72 = v124;

        *(v77 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v75, v121, "Removing pending notification for conversation with uuid %s since we are joined into the conversation", v77, 0xCu);
        sub_100009B7C(v122);
        sub_100007CBC();
        v84 = v77;
        v65 = v126;
        sub_100005F40(v84);

        v85 = &selRef_prewarmMediaRequest_completion_;
      }

      else
      {

        v85 = &selRef_prewarmMediaRequest_completion_;
        v62 = v125;
        v82 = v127;
      }

      v86 = [v74 v85[145]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08(v3 + v70);
      sub_100383BD0(v65, v87, v88, v89, v90, v91, v92, v93, v117, v118);
      v95 = v94;
      (v62)(v65, v82);
      swift_endAccess();
    }

    v96 = [v5 link];
    if (v96)
    {
      v97 = v96;
      v98 = sub_1002CCF08(v96);
      v100 = v99;
      v101 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v101)
      {
        v102 = v98;
        v103 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v101(v102, v100);
        sub_1000051F8(v101, v103);
      }

      v62 = v125;
    }

    v104 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v105 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
    sub_1000159D4(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID);
    v106 = sub_1002CB670(v72, *(v3 + v105));
    if (v107)
    {
      v108 = v106;
      v109 = v107;
      swift_endAccess();
      (v62)(v72, v127);
      v110 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v110)
      {
        v111 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v110(v108, v109);
        v62 = v125;
        sub_1000051F8(v110, v111);
      }

      v112 = sub_100015430();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08(v3 + v105);
      sub_100383AF0(v65);
      (v62)(v65, v127);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      (v62)(v72, v127);
    }

    v7 = &selRef_setWindowed_;
  }

LABEL_35:
  if ([v5 v7[199]])
  {
    v113 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
    if (v113)
    {

      v114 = sub_100022CB0();
      v113(v114);
      v115 = sub_100006B30();
      sub_1000051F8(v115, v116);
    }
  }

  sub_100005EDC();
}

void sub_1002D5F24(int a1, id a2)
{
  if ([a2 state] == 1 && objc_msgSend(a2, "letMeInRequestState") == 3)
  {
    v4 = [a2 link];
    if (v4)
    {

      if (*(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen))
      {
        if (qword_1006A0B70 != -1)
        {
          sub_100008288();
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000075F0(v5, qword_1006BA6D0);
        oslog = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Not posting LMI approval notification because the conversation is currently showing on screen", v7, 2u);
          sub_100007CBC();
        }
      }

      else
      {
        v8 = sub_1002D526C(a2);
        sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
        v9 = sub_1002CCFB0(a2, 0);
        v11 = v10;
        v12 = v8;
        oslog = sub_10044F628(v9, v11, v12, 0);
        [oslog setDestinations:7];
        sub_1002CE7A4(oslog);
      }
    }
  }
}

void sub_1002D617C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for URL();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v75 = v10 - v9;
  v11 = type metadata accessor for UUID();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007BAC();
  v17 = (v15 - v16);
  v19 = __chkstk_darwin(v18);
  v21 = v69 - v20;
  __chkstk_darwin(v19);
  sub_10000C0F8();
  __chkstk_darwin(v22);
  v24 = v69 - v23;
  if (([v4 hasJoined] & 1) == 0)
  {
    v74 = v11;
    v71 = v7;
    v72 = v5;
    v25 = sub_10000B91C();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
    sub_1000159D4(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID);
    v27 = sub_1002CB670(v24, *(v2 + v26));
    if (v28)
    {
      v29 = v28;
      v70 = v27;
      swift_endAccess();
      v30 = v74;
      v69[0] = *(v13 + 8);
      v69[1] = v13 + 8;
      (v69[0])(v24, v74);
      sub_1002CE2C4(v4);
      v32 = v31;
      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000AF9C(v33, qword_1006BA6D0);

      v34 = v32;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v73 = v34;
      if (v37)
      {
        v38 = sub_100007C08();
        v39 = sub_10000777C();
        v40 = sub_100005E84();
        v77 = v40;
        *v38 = 136315394;
        *(v38 + 4) = sub_10002741C(v70, v29, &v77);
        *(v38 + 12) = 2112;
        *(v38 + 14) = v34;
        *v39 = v34;
        v41 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Replacing notification id %s with content %@", v38, 0x16u);
        sub_100009A04(v39, &unk_1006A2630, &qword_10057CB40);
        v42 = v39;
        v30 = v74;
        sub_100005F40(v42);
        sub_100009B7C(v40);
        sub_100005F40(v40);
        sub_100005F40(v38);
      }

      v43 = v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace;
      v44 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace);
      if (v44)
      {
        v45 = *(v43 + 8);

        v44(v70, v29, v73);
        sub_1000051F8(v44, v45);
      }

      v46 = sub_10000B91C();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
      sub_1000159D4(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID);
      v48 = sub_1002CB670(v1, *(v2 + v47));
      if (v49)
      {
        v50 = v48;
        v51 = v49;
        swift_endAccess();
        (v69[0])(v1, v30);
        v52 = sub_1002CD140(v4, 0);
        v53 = [v52 URL];

        v54 = v75;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v55);
        v57 = v56;
        (*(v71 + 8))(v54, v72);
        v58 = v73;
        [v73 setDefaultActionURL:v57];

        v59 = *v43;
        if (*v43)
        {

          v59(v50, v51, v58);
          v60 = sub_100006B30();
          sub_1000051F8(v60, v61);
        }
      }

      else
      {
        swift_endAccess();

        (v69[0])(v1, v30);
      }
    }

    else
    {
      swift_endAccess();
      v62 = *(v13 + 8);
      v63 = v24;
      v64 = v74;
      v62(v63, v74);
      v65 = sub_10000B91C();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
      sub_1000159D4(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID);
      v67 = sub_100025C60(v21, *(v2 + v66));
      swift_endAccess();
      v62(v21, v64);
      if (v67)
      {
        v68 = sub_10000B91C();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000BA08(v2 + v66);
        v4;
        swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v2 + v66);
        sub_100378EC8();
        *(v2 + v66) = v76;
        v62(v17, v64);
        swift_endAccess();
      }
    }
  }

  sub_100005EDC();
}

void sub_1002D67B8(int a1, id a2)
{
  v4 = [a2 link];
  if (v4)
  {
    v11 = v4;
    if (([a2 hasJoined] & 1) == 0 && objc_msgSend(a2, "isAnyOtherAccountDeviceActive"))
    {
      v5 = sub_1002CCF08(v11);
      v7 = v6;
      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v8)
      {
        v9 = v5;
        v10 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v8(v9, v7);
        sub_1000051F8(v8, v10);
      }
    }
  }
}

void sub_1002D6920(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_100007654();
  v10 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *v3 = v10;
  (*(v8 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (v8 + 8);
  v13 = sub_10000F2EC();
  v14(v13);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    sub_100008288();
    swift_once();
    goto LABEL_6;
  }

  v4 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  v12 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  if (([a2 hasJoined] & 1) == 0 && objc_msgSend(a2, "state") != 1 && (objc_msgSend(a2, "ignoreLMIRequests") & 1) == 0)
  {
    v22 = [a2 pendingMembers];
    sub_1000112D0();
    sub_100006AF0(v23, v24, v25);
    sub_1000112D0();
    sub_10000CE3C(v26, v27, v28);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [a2 link];
    v29 = sub_100007764();
    sub_1002D3CA4(v29, v30, v17);

    goto LABEL_10;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v15 = type metadata accessor for Logger();
  sub_1000075F0(v15, qword_1006BA6D0);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = sub_10000777C();
    *v19 = 67109634;
    *(v19 + 4) = [v16 v4[345]];
    *(v19 + 8) = 1024;
    *(v19 + 10) = [v16 v12[438]];

    *(v19 + 14) = 2112;
    *(v19 + 16) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Skip posting pending member notification because hasJoined: %{BOOL}d, ignoreLMIRequests: %{BOOL}d for conversation: %@", v19, 0x18u);
    sub_100009A04(v20, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v20);
    sub_100007CBC();
  }

  else
  {

    v17 = v16;
  }

LABEL_10:
}

void sub_1002D6C88()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  sub_100007FEC();
  v102 = v9;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v91 = v12 - v11;
  v99 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  __chkstk_darwin(v13);
  v15 = &v84 - v14;
  v16 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v16 - 8);
  sub_100007BAC();
  v98 = v17 - v18;
  sub_100006838();
  __chkstk_darwin(v19);
  v100 = &v84 - v20;
  sub_100006838();
  __chkstk_darwin(v21);
  v103 = &v84 - v22;
  sub_100006838();
  __chkstk_darwin(v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100007FDC();
  sub_10001C9C4();
  v88 = v0;
  v30 = *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *p_isa = v30;
  (*(v28 + 104))(p_isa, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v32 = sub_10003A58C();
  v33(v32);
  if ((v30 & 1) == 0)
  {
    goto LABEL_41;
  }

  v34 = [v3 groupUUID];
  if (!v34)
  {
    sub_10000AF74(v25, 1, 1, v8);
    sub_100009A04(v25, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_38;
  }

  v35 = v34;
  p_isa = &v3->isa;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100035748();
  sub_100009A04(v25, &unk_1006A3DD0, &unk_10057C9D0);
  if (([v3 isLocallyCreated]& 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_8;
  }

  v36 = [v7 incomingPendingConversations];
  v37 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  sub_100005F0C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v96 = v3;
  v85 = v5;
  v87 = v37;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v106;
    v38 = v107;
    v40 = v108;
    v39 = v109;
    v41 = v110;
  }

  else
  {
    sub_1000052DC();
    v38 = v5 + 56;
    v40 = ~v51;
    sub_1000082B4();
    v41 = v52 & v53;

    v39 = 0;
  }

  v54 = v98;
  v84 = v40;
  p_isa = ((v40 + 64) >> 6);
  v86 = (v102 + 32);
  v90 = (v102 + 8);
  v55 = v39;
  v93 = v8;
  v94 = v38;
  v95 = v5;
  v89 = p_isa;
  while (1)
  {
    v97 = v55;
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    v62 = __CocoaSet.Iterator.next()();
    if (!v62 || (v104 = v62, swift_dynamicCast(), v61 = v105, v59 = v41, !v105))
    {
LABEL_36:
      v79 = sub_1002DB884();
      sub_100022DDC(v79);
      goto LABEL_37;
    }

LABEL_22:
    v101 = v59;
    v102 = v61;
    v92 = v41;
    v63 = [v61 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 1;
    sub_100035748();
    v65 = [v96 groupUUID];
    if (v65)
    {
      v66 = v65;
      v67 = v100;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
    }

    else
    {
      v67 = v100;
    }

    sub_10000AF74(v67, v64, 1, v8);
    v68 = *(v99 + 48);
    sub_100285FC4(v103, v15, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100285FC4(v67, &v15[v68], &unk_1006A3DD0, &unk_10057C9D0);
    sub_100033344(v15);
    if (v71)
    {
      sub_100009A04(v67, &unk_1006A3DD0, &unk_10057C9D0);
      v69 = sub_10000D6CC();
      sub_100009A04(v69, v70, &unk_10057C9D0);
      sub_100033344(&v15[v68]);
      if (v71)
      {
        sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_39:
        v80 = sub_1002DB884();
        sub_100022DDC(v80);

        v81 = v102;
        v82 = [v102 pendingMembers];
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
        v83 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1002D3CA4(v83, 0, v96);
LABEL_37:

        goto LABEL_38;
      }

      goto LABEL_33;
    }

    sub_100285FC4(v15, v54, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100033344(&v15[v68]);
    if (v71)
    {
      sub_100009A04(v67, &unk_1006A3DD0, &unk_10057C9D0);
      v72 = sub_10000D6CC();
      sub_100009A04(v72, v73, &unk_10057C9D0);
      (*v90)(v54, v8);
      p_isa = v89;
LABEL_33:
      sub_100009A04(v15, &unk_1006A2A30, &unk_10057D150);
      v38 = v94;
      v5 = v95;
      goto LABEL_35;
    }

    v74 = v91;
    (*v86)(v91, &v15[v68], v8);
    sub_10000A034();
    sub_10000EDB0(&qword_1006A2620, v75, &protocol conformance descriptor for UUID);
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *v90;
    v78 = v98;
    (*v90)(v74, v8);
    sub_100009A04(v100, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v103, &unk_1006A3DD0, &unk_10057C9D0);
    v54 = v78;
    v77(v78, v8);
    sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
    v38 = v94;
    v5 = v95;
    p_isa = v89;
    if (v76)
    {
      goto LABEL_39;
    }

LABEL_35:

    v41 = v101;
    v8 = v93;
  }

  v56 = v55;
  if (v41)
  {
LABEL_18:
    sub_100007C8C();
    v59 = v58 & v57;
    sub_10003DB58();
    v61 = v60;
    if (!v61)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v55 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v55 >= p_isa)
    {
      goto LABEL_36;
    }

    ++v56;
    if (*(v38 + 8 * v55))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_100008288();
  swift_once();
LABEL_8:
  v42 = type metadata accessor for Logger();
  sub_1000075F0(v42, qword_1006BA6D0);
  v43 = p_isa;
  v44 = v5;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = sub_100007C08();
    v48 = swift_slowAlloc();
    *v47 = 138412546;
    *(v47 + 4) = v43;
    *(v47 + 12) = 2112;
    *(v47 + 14) = v44;
    *v48 = v43;
    v48[1] = v44;
    v49 = v43;
    v50 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "Tracked pending member changed, but not a locally owned link -- ignoring %@ %@", v47, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40(v48);
    sub_100007CBC();
  }

LABEL_38:
  sub_100005EDC();
}

void sub_1002D766C()
{
  sub_100005EF4();
  v114 = v1;
  v3 = v2;
  v115 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007BAC();
  v9 = v7 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v108 - v12;
  __chkstk_darwin(v11);
  v112 = &v108 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v113 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *(v20 - v19) = v22;
  (*(v17 + 104))(v20 - v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v17 + 8);
  p_inst_meths = (v17 + 8);
  v25(v21, v15);
  if ((v22 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    sub_100008288();
    swift_once();
    goto LABEL_18;
  }

  v108 = v13;
  v109 = v9;
  v111 = v5;
  v26 = [v3 activeConversations];
  v27 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  sub_10000C3E4();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = v27;
  if ((v28 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v118[3];
    v29 = v118[4];
    v30 = v118[5];
    v31 = v118[6];
    v32 = v118[7];
  }

  else
  {
    sub_1000052DC();
    v29 = v28 + 56;
    v30 = ~v33;
    sub_1000082B4();
    v32 = v34 & v35;

    v31 = 0;
    v9 = v28;
  }

  v110 = v30;
  v36 = (v30 + 64) >> 6;
  while (1)
  {
    p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
    v15 = &off_1006A3000;
    if (v9 < 0)
    {
      break;
    }

    v37 = v31;
    v38 = v31;
    if (!v32)
    {
      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 >= v36)
        {
          goto LABEL_17;
        }

        ++v37;
        if (*(v29 + 8 * v38))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_11:
    sub_100007C8C();
    v41 = v40 & v39;
    sub_10003DB58();
    v43 = v42;
    if (!v43)
    {
      goto LABEL_22;
    }

LABEL_15:
    v45 = [v43 handoffEligibility];
    if (v45)
    {

      sub_10000BB5C();

      v50 = v113;
      v51 = v114;
      v9 = v112;
      goto LABEL_24;
    }

    v31 = v38;
    v32 = v41;
  }

  v44 = __CocoaSet.Iterator.next()();
  if (!v44)
  {
    goto LABEL_17;
  }

  v117 = v44;
  swift_dynamicCast();
  v43 = v118[0];
  v38 = v31;
  v41 = v32;
  if (v118[0])
  {
    goto LABEL_15;
  }

LABEL_22:
  v15 = &off_1006A3000;
LABEL_17:
  sub_10000BB5C();

  v9 = v112;
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_40;
  }

LABEL_18:
  v46 = type metadata accessor for Logger();
  sub_1000075F0(v46, qword_1006BA6D0);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v113;
  v51 = v114;
  if (v49)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Removing handoff notification as there are no handoff-eligible conversations left", v52, 2u);
    sub_100005F40(v52);
  }

  v53 = *(v15[368] + v50);
  if (v53)
  {

    v54 = sub_100022CB0();
    v53(v54);
    v55 = sub_100006B30();
    sub_1000051F8(v55, v56);
  }

LABEL_24:
  v57 = [v51 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
  swift_beginAccess();
  v116 = sub_1002CB670(v9, *(v50 + v58));
  if (v59)
  {
    v60 = v59;
    swift_endAccess();
    v61 = *(v111 + 8);
    v61(v9, v115);
    v62 = [v51 UUID];
    v63 = v108;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
    swift_beginAccess();
    v112 = v64;
    sub_1002CB670(v63, *(v50 + v64));
    if (v65)
    {
      swift_endAccess();
      v66 = sub_10000D6CC();
      (v61)(v66);
      v67 = v50 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification;
      v68 = *(v50 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v68)
      {
        v69 = *(v67 + 8);

        v68(v116, v60);
        sub_1000051F8(v68, v69);
      }

      v70 = *v67;
      if (*v67)
      {

        v71 = sub_10000F2EC();
        v70(v71);
        v72 = sub_100006B30();
        sub_1000051F8(v72, v73);
      }

      v74 = v114;
      v75 = [v114 UUID];
      v76 = v109;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = v113;
      sub_100027698(v113 + v58);
      sub_100383AF0(v76);
      v61(v76, v115);
      swift_endAccess();

      v78 = [v74 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100027698(&v112[v77]);
      sub_100383AF0(v76);
      v79 = sub_10000F2EC();
      (v61)(v79);
      swift_endAccess();

      v80 = [v74 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100027698(v77 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID);
      sub_100383BD0(v76, v81, v82, v83, v84, v85, v86, v87, v108, v109);
      v89 = v88;
      v90 = sub_10000F2EC();
      (v61)(v90);
      swift_endAccess();
      goto LABEL_37;
    }

    swift_endAccess();

    v91 = sub_10000D6CC();
    (v61)(v91);
    p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
    v51 = v114;
  }

  else
  {
    swift_endAccess();
    v61 = *(v111 + 8);
    v61(v9, v115);
  }

  if (p_inst_meths[366] != -1)
  {
    sub_100008288();
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_1000075F0(v92, qword_1006BA6D0);
  v93 = v51;
  v89 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v89, v94))
  {
    v95 = sub_100005274();
    v96 = sub_100005E84();
    v97 = v115;
    v98 = v96;
    v118[0] = v96;
    *v95 = 136315138;
    v99 = [v93 UUID];
    v100 = v109;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A034();
    sub_10000EDB0(v101, v102, &protocol conformance descriptor for UUID);
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    v61(v100, v97);
    sub_10002741C(v103, v105, v118);
    sub_100007770();

    *(v95 + 4) = v103;
    sub_1002DB898(&_mh_execute_header, v106, v107, "No notification for conversation UUID %s");
    sub_100009B7C(v98);
    sub_100005F40(v98);
    sub_100008AE8();
  }

LABEL_37:

  sub_100005EDC();
}