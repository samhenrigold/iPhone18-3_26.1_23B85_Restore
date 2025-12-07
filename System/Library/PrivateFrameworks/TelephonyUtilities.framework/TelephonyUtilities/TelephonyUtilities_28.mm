uint64_t sub_100420EEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_100017E1C(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_100017E1C(v3);
    return v4 | 8;
  }
}

void sub_100420F48(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRemoteParticipantHandles:isa];
}

uint64_t sub_100420FB4(void *a1)
{
  v1 = [a1 subscriptionsInUse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &unk_1006AB3B0, CTXPCServiceSubscriptionContext_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100421024()
{
  type metadata accessor for UUID();
  sub_1000060F0();

  return sub_10041D5B4(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100421108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10026D814(a3, a4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return a2;
}

uint64_t sub_1004211E8()
{

  sub_100009B7C((v0 + 48));

  return _swift_deallocObject(v0);
}

uint64_t sub_100421254()
{
  sub_100009B7C((v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_1004212CC(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_100007BF0(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_10041E700(a1, v5, v6);
}

id sub_100421378()
{
  sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates:isa];

  return v1;
}

const char *sub_1004213FC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___CSDCommunicationHistoryCallFilter_usTollFreePrefixes] = &off_100620D88;
  *&v2[OBJC_IVAR___CSDCommunicationHistoryCallFilter_callHistoryManager] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CommunicationHistoryCallFilter();
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v5, "initWithFeatureFlags:", a2);
  sub_10000D6C0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return "initWithFeatureFlags:";
}

uint64_t sub_1004214DC(void *a1)
{
  v3 = sub_100421A10(a1);
  if (!v3)
  {
    v20 = sub_100004778(0);
    v21 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v22 = sub_100009F24(v21);
    *(v22 + 16) = xmmword_10057D6A0;
    *(v22 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
    *(v22 + 64) = sub_1004225B0();
    *(v22 + 32) = v1;
    sub_100006844();
    *(v22 + 96) = sub_100006AF0(v23, v24, v25);
    sub_100006844();
    *(v22 + 104) = sub_100290B1C(v26, v27, v28);
    *(v22 + 72) = a1;
    v29 = v1;
    v30 = a1;
    v31 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ Could not create call history handle from update %@", 54, 2, &_mh_execute_header, v20, v31, v22);

    return 0;
  }

  v4 = v3;
  v5 = [objc_msgSend(v1 "featureFlags")];
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
    v33 = [v4 value];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10001B8C8(v4, &selRef_normalizedValue);
    LOBYTE(v34) = sub_100422344(v34, v36, v37, v38);

    if (v34)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = sub_100004778(v6);
    v39 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v40 = sub_100009F24(v39);
    *(v40 + 16) = xmmword_10057D6A0;
    *(v40 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
    *(v40 + 64) = sub_1004225B0();
    *(v40 + 32) = v1;
    sub_100009F18();
    *(v40 + 96) = sub_100006AF0(v41, v42, v43);
    sub_100009F18();
    *(v40 + 104) = sub_100290B1C(v44, v45, v46);
    *(v40 + 72) = a1;
    v47 = v1;
    v48 = a1;
    v49 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ Found communication history with handle; call filter will allow update %@", 76, 2, &_mh_execute_header, v7, v49, v40);
    v19 = 1;
    goto LABEL_8;
  }

  v6 = [a1 commTrustScore];
  if (v6 >= 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = sub_100004778(v6);
  v8 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = sub_100009F24(v8);
  *(v9 + 16) = xmmword_10057D6A0;
  *(v9 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
  *(v9 + 64) = sub_1004225B0();
  *(v9 + 32) = v1;
  sub_100009F18();
  *(v9 + 96) = sub_100006AF0(v10, v11, v12);
  sub_100009F18();
  *(v9 + 104) = sub_100290B1C(v13, v14, v15);
  *(v9 + 72) = a1;
  v16 = v1;
  v17 = a1;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@ Did not find communication history with handle; call filter will not allow update %@", 87, 2, &_mh_execute_header, v7, v18, v9);
  v19 = 0;
LABEL_8:

  v50 = [objc_msgSend(v1 "featureFlags")];
  swift_unknownObjectRelease();
  if (v50)
  {
    v51 = [a1 silencingUserInfo];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    v55 = [objc_allocWithZone(NSNumber) initWithBool:v19];
    [v51 __swift_setObject:v55 forKeyedSubscript:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v52, v54}];

    swift_unknownObjectRelease();
  }

  return v19 ^ 1;
}

id sub_100421A10(void *a1)
{
  v2 = [a1 remoteMember];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 handle];

  v5 = [v4 tuHandle];
  if (!v5)
  {
    return 0;
  }

  v6 = sub_10001B8C8(v5, &selRef_isoCountryCode);
  if (v7)
  {
    if (v6 == 29557 && v7 == 0xE200000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ([v5 type] == 2)
    {
      v11 = *(v1 + OBJC_IVAR___CSDCommunicationHistoryCallFilter_usTollFreePrefixes);
      v12 = (v11 + 40);
      v13 = -*(v11 + 16);
      v14 = -1;
      while (v13 + v14 != -1)
      {
        if (++v14 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v15 = v12 + 2;
        v16 = *(v12 - 1);
        v17 = *v12;

        v18 = [v5 value];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v5;
        v22 = v21;

        v53 = v19;
        v54 = v22;
        v51 = v16;
        v52 = v17;
        sub_1002A7E94();
        sub_1002A7EE8();
        LOBYTE(v18) = BidirectionalCollection<>.starts<A>(with:)();

        v5 = v20;

        v12 = v15;
        if (v18)
        {
          [objc_opt_self() handleTypeForTUHandle:{v20, v16, v17, v19, v54}];
          v23 = [v20 value];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          sub_100421F08(2uLL, v24, v26);
          static String._fromSubstring(_:)();

          v27 = [v20 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = objc_allocWithZone(CHHandle);
          v31 = sub_100008828();
          v5 = v20;
          v10 = sub_100422604(v31, v32, v33, v34, v29);
          if (v10)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }
  }

LABEL_19:
  v35 = [v5 type];
  if (v35 == 1)
  {
    v39 = [v5 value];
    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    v40 = [objc_opt_self() normalizedGenericHandleForValue:v39];
LABEL_32:
    v10 = v40;

    if (v10)
    {
LABEL_34:

      return v10;
    }

LABEL_33:
    [objc_opt_self() handleTypeForTUHandle:v5];
    v41 = [v5 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = [v5 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = objc_allocWithZone(CHHandle);
    v46 = sub_100008828();
    v10 = sub_100422604(v46, v47, v48, v49, v44);
    goto LABEL_34;
  }

  if (v35 == 2)
  {
    v36 = [v5 value];
    if (!v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    sub_10001B8C8(v5, &selRef_isoCountryCode);
    if (v37)
    {
      v38 = String._bridgeToObjectiveC()();
    }

    else
    {
      v38 = 0;
    }

    v10 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v36 isoCountryCode:v38];

    if (v10)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v35 == 3)
  {
    v39 = [v5 value];
    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    v40 = [objc_opt_self() normalizedEmailAddressHandleForValue:v39];
    goto LABEL_32;
  }

LABEL_40:
  type metadata accessor for TUHandleType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_100421F08(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id sub_100421FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100581AB0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 predicateForCallsWithStatusOriginated:1];
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v7 predicateForCallsWithAnyServiceProviders:isa];

  *(v6 + 40) = v12;
  *(v6 + 48) = [v7 predicateForCallsWithRemoteParticipantCount:1];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057CA80;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v7 predicateForCallsWithRemoteParticipantHandleValue:v14];

  *(v13 + 32) = v15;
  if (a4)
  {
    v16 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v16 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
      v18 = [v7 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v17];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (sub_10000B6F4(v13) < 2)
  {
    if (!sub_10000B6F4(v13))
    {

      goto LABEL_17;
    }

    sub_10039C390(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v13 + 32);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    sub_100421378();
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_17:
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

BOOL sub_100422344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_100421FDC(a1, a2, a3, a4);
  v6 = sub_100004778(v5);
  v7 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = sub_100009F24(v7);
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
  *(v8 + 64) = sub_1004225B0();
  *(v8 + 32) = v4;
  sub_100006844();
  *(v8 + 96) = sub_100006AF0(v9, v10, v11);
  sub_100006844();
  *(v8 + 104) = sub_100290B1C(v12, v13, v14);
  *(v8 + 72) = v5;
  v15 = v4;
  v16 = v5;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@ Fetching call history calls matching predicate %@", 52, 2, &_mh_execute_header, v6, v17, v8);

  v18 = [*&v15[OBJC_IVAR___CSDCommunicationHistoryCallFilter_callHistoryManager] callsWithPredicate:v16 limit:1 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10000B6F4(v19);

  return v20 == 0;
}

id sub_10042250C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationHistoryCallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004225B0()
{
  result = qword_1006AB470;
  if (!qword_1006AB470)
  {
    type metadata accessor for CommunicationHistoryCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB470);
  }

  return result;
}

id sub_100422604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithType:a1 value:v8 normalizedValue:v9];

  return v10;
}

BOOL sub_1004226B4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_100007E30();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000052DC();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    sub_10003DC34();
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_100422794(Swift::UInt32 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._finalize()();
    sub_10003DE48();
    do
    {
      sub_100022D84();
    }

    while (v6 && *(a2[6] + 4 * v5) != a1);
  }

  return v2;
}

void sub_10042282C()
{
  sub_100005EF4();
  sub_10000FC34();
  type metadata accessor for Participant();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  sub_10000D304();
  if (*(v0 + 16))
  {
    sub_10000F880();
    sub_10000F1E0(v3, v4, &protocol conformance descriptor for Participant);
    sub_10000790C();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_10000C898();
    do
    {
      sub_100017E34();
      if (!v5)
      {
        break;
      }

      v6 = sub_10000C2D0();
      v7(v6);
      sub_10000F880();
      v9 = sub_10000F1E0(&unk_1006A8F00, v8, &protocol conformance descriptor for Participant);
      sub_10000BC34(v9);
      v10 = sub_1000076FC();
      v11(v10);
    }

    while ((v1 & 1) == 0);
  }

  sub_100005EDC();
}

uint64_t sub_100422980(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    static Hasher._hash(seed:_:)();
    sub_10003DE48();
    do
    {
      sub_100022D84();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

void *sub_100422A08(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    sub_100006A94(v7, v9);
    sub_100006AF0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_100422B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100035D4C();
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100006A94(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_10039A2E0(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100422C0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100035D4C();
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100006724(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_10039A2E0(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_100422E68(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue) = a1;
}

id sub_100422E7C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CSDCollaborationStateManager());
  v3 = a1;
  sub_1004234AC(v3, sub_100422F68, 0, sub_1004233C4, 0);
  sub_10000D6C0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v4 = objc_opt_self();
  v5 = v2;
  result = [v4 defaultWorkspace];
  if (result)
  {
    v7 = result;
    [result addObserver:v5];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100422F68(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = objc_opt_self();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v43 = 0;
  v13 = [v9 appLinksWithURL:v11 limit:1 error:&v43];

  v14 = v43;
  if (v13)
  {
    sub_100006AF0(0, &unk_1006AB570, LSAppLink_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    if (sub_10000B6F4(v15))
    {
      sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v15 + 32);
      }

      v18 = v17;

      v19 = [v18 targetApplicationRecord];

      if (v19)
      {
        return sub_100021AEC(v19);
      }
    }

    else
    {
    }
  }

  else
  {
    v21 = v43;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA568);
    v24 = *(v3 + 16);
    v24(v8, a1, v2);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = v26;
      v28 = v27;
      v41 = swift_slowAlloc();
      v42 = v22;
      v43 = v41;
      *v28 = 136315394;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v29 = String.init<A>(reflecting:)();
      v39 = v25;
      v30 = v3;
      v32 = sub_10002741C(v29, v31, &v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v24(v6, v8, v2);
      v33 = String.init<A>(reflecting:)();
      v35 = v34;
      (*(v30 + 8))(v8, v2);
      v36 = sub_10002741C(v33, v35, &v43);

      *(v28 + 14) = v36;
      v37 = v39;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get appLink with error: %s, url: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }
  }

  return 0;
}

uint64_t sub_1004233C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v4 = *(i - 1);
    v3 = *i;
    v5 = objc_allocWithZone(LSApplicationRecord);
    swift_bridgeObjectRetain_n();
    v6 = sub_100428E24(v4, v3, 1);
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v4;
}

char *sub_1004234AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate] = 0;
  v10 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_1000060A8();
  *&v5[v11] = Dictionary.init(dictionaryLiteral:)();
  v12 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  sub_1000060A8();
  *&v5[v12] = Dictionary.init(dictionaryLiteral:)();
  v13 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
  sub_1000060A8();
  *&v5[v13] = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
  type metadata accessor for UUID();
  sub_1000060A8();
  *&v5[v14] = Dictionary.init(dictionaryLiteral:)();
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled] = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_1000060A8();
  *&v5[v15] = Dictionary.init(dictionaryLiteral:)();
  v16 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL;
  sub_1000060A8();
  *&v5[v16] = Dictionary.init(dictionaryLiteral:)();
  v17 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_10026D814(&unk_1006AB558, &qword_100587198);
  sub_10000A450();
  sub_10000F1E0(v18, v19, &protocol conformance descriptor for UUID);
  *&v5[v17] = Dictionary.init(dictionaryLiteral:)();
  v20 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags;
  *&v5[v20] = [objc_allocWithZone(TUFeatureFlags) init];
  v21 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_appLinkBundleIDBlock];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_installedBundleIDBlock];
  *v22 = a4;
  *(v22 + 1) = a5;
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue] = a1;
  v36.receiver = v5;
  v36.super_class = type metadata accessor for CSDCollaborationStateManager();

  v23 = a1;
  v24 = objc_msgSendSuper2(&v36, "init");
  if ([*&v24[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags] appProtectionEnabled])
  {
    v34 = type metadata accessor for ProtectedAppsObserver();
    v35 = &off_10062ECA8;
    v33[0] = [objc_allocWithZone(v34) init];
    v25 = &v24[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver];
    sub_100008D34(&v24[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver], v32);
    sub_10042A068(v33, v25);
    swift_endAccess();
    sub_100008D34(v25, v33);
    v26 = *(v25 + 24);
    if (v26)
    {
      v27 = *(v25 + 32);
      sub_10001BDB8(v25, *(v25 + 24));
      v28 = *(v27 + 16);
      v29 = v24;
      v28(v24, &off_100630010, v26, v27);
    }

    swift_endAccess();
  }

  return v24;
}

void sub_1004237E4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  sub_10000B8BC();
  v6 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_10000D304();
  v10 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v1 = v10;
  (*(v8 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v1, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
  sub_100005298(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID, &v47);
  v13 = *(v0 + v12);

  v14 = sub_100006694();
  sub_1002CBCB0(v14, v15, v13, v16);

  type metadata accessor for UUID();
  v17 = sub_10000790C();
  LODWORD(v13) = sub_100015468(v17, 1, v18);
  sub_1000099A4(v0, &unk_1006A3DD0, &unk_10057C9D0);
  if (v13 == 1)
  {
    if (qword_1006A0AF8 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA568);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      v45 = v3;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_100005274();
        v44 = sub_100005E84();
        v46 = v44;
        *v22 = 136315138;

        v23 = String.init<A>(reflecting:)();
        v25 = sub_10002741C(v23, v24, &v46);

        *(v22 + 4) = v25;
        sub_100006EA8(&_mh_execute_header, v26, v21, "CSDCollaborationStateManager started tracking %s");
        sub_100009B7C(v44);
        sub_100005F40(v44);
        sub_1000079DC();
      }

      v27 = sub_100006694();
      sub_100423ED0(v27);
      sub_100006694();
      sub_100424ED0();
      v29 = v28;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_100007C08();
        v33 = sub_100007630();
        v46 = v33;
        *v32 = 136315394;

        v34 = String.init<A>(reflecting:)();
        v36 = sub_10002741C(v34, v35, &v46);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        type metadata accessor for TUCollaborationDocumentState(0);
        v37 = String.init<A>(reflecting:)();
        v39 = sub_10002741C(v37, v38, &v46);

        *(v32 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "CSDCollaborationStateManager finished adding %s with state: %s", v32, 0x16u);
        sub_100006C3C();
        sub_100005F40(v33);
        sub_100005F40(v32);
      }

      if (v45)
      {
        (v45)(v29, 0);
      }

      sub_1004264D0();
      goto LABEL_17;
    }

LABEL_19:
    sub_10000852C();
    swift_once();
    goto LABEL_4;
  }

  if (qword_1006A0AF8 != -1)
  {
    sub_10000852C();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000075F0(v40, qword_1006BA568);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Collaboration identifier is already tracked, returning from CSDCollaborationStateManager", v43, 2u);
    sub_100005F40(v43);
  }

  if (v3)
  {
    sub_100006694();
    sub_100424ED0();
    v3();
  }

LABEL_17:
  sub_100005EDC();
}

void sub_1004245A0(void *a1)
{
  v1 = [a1 highlightIdentifiers];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E8CD8(v2);
  v4 = v3;

  if (v4)
  {
    sub_100424764();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_10000852C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000075F0(v5, qword_1006BA568);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "CSDCollaborationStateManager cannot stop tracking collaborations for conversation without any collaboration identifiers", v7, 2u);
      sub_100005F40(v7);
    }
  }
}

void sub_100424764()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v8);
  sub_100006688();
  __chkstk_darwin(v9);
  sub_10000C4C4();
  v10 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  sub_10000D304();
  v14 = *(v3 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v2 = v14;
  (*(v12 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v2, v10);
  if (v14)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_1000075F0(v16, qword_1006BA568);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (sub_10000C188())
  {
    v19 = sub_100005274();
    v20 = sub_100005E84();
    v47[0] = v20;
    *v19 = 136315138;
    v48[0] = v7;
    v48[1] = v5;

    v21 = String.init<A>(reflecting:)();
    v23 = sub_10002741C(v21, v22, v47);

    *(v19 + 4) = v23;
    sub_100006EA8(&_mh_execute_header, v24, v18, "CSDCollaborationStateManager stopped tracking %s");
    sub_100009B7C(v20);
    sub_100005F40(v20);
    sub_1000079DC();
  }

  sub_10000BA08(v3 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened);
  v25 = sub_100007764();
  sub_100384574(v25);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  sub_100005298(v3 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID, v48);
  v27 = *(v3 + v26);

  v28 = sub_100007764();
  v30 = sub_1002CB47C(v28, v29, v27);
  v32 = v31;

  if (v32)
  {
    sub_10000EB9C();
    sub_100384328(v30, v32);
    swift_endAccess();
  }

  sub_10000EB9C();
  v33 = sub_100007764();
  sub_1003843B4(v33, v34);
  swift_endAccess();

  sub_100008D34(v3 + v26, v47);
  v35 = sub_100007764();
  sub_100384328(v35, v36);
  swift_endAccess();

  sub_10000EB9C();
  v37 = sub_100007764();
  sub_10038447C(v37, v38, v39, v40, v41, v42, v43, v44, v47[0], v47[1]);
  sub_1000099A4(v1, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  sub_10000EB9C();
  sub_100007764();
  sub_100428F00();
  swift_endAccess();

  sub_10000EB9C();
  v45 = sub_100007764();
  sub_100384328(v45, v46);
  swift_endAccess();

  sub_100005EDC();
}

void sub_100424B34()
{
  sub_100005EF4();
  sub_100017004();
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_10000C4C4();
  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v3 = v8;
  (*(v6 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v3, v4);
  if (v8)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA568);
  sub_10000D6C0();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100005274();
    v14 = sub_100005E84();
    v19[0] = v14;
    v19[1] = v2;
    *v13 = 136315138;
    v19[2] = v1;

    v15 = String.init<A>(reflecting:)();
    v17 = sub_10002741C(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "CSDCollaborationStateManager opened collaboration: %s", v13, 0xCu);
    sub_100009B7C(v14);
    sub_1000079DC();
    sub_100005F40(v13);
  }

  sub_100008C68();
  sub_100424ED0();
  v18 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_10000BA08(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened);
  swift_isUniquelyReferenced_nonNull_native();
  v19[0] = *(v0 + v18);
  sub_100007E30();
  sub_10037A16C();
  *(v0 + v18) = v19[0];
  swift_endAccess();
  sub_100008C68();
  sub_100424ED0();
  sub_10003DC34();
  sub_1004264D0();
  sub_100005EDC();
}

void sub_100424DB0()
{
  sub_100017004();
  sub_100424ED0();
  v2 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_100008D34(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened, v4);
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + v2);
  sub_100007E30();
  sub_10037A16C();
  *(v0 + v2) = v3;
  swift_endAccess();
  sub_100008C68();
  sub_100424ED0();
  sub_10003DC34();
  sub_1004264D0();
}

uint64_t sub_100424E68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a1;
  v9 = sub_10000D6C0();
  a4(v9, v7);
}

void sub_100424ED0()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    sub_10000852C();
    swift_once();
    goto LABEL_20;
  }

  if ([*(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags) appProtectionEnabled])
  {
    v15 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver;
    sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver, &v56);
    sub_100429FF8(v1 + v15, &v57);
    if (v58)
    {
      sub_10002F0C8(&v57, v59);
      sub_100009B14(v59, v59[3]);
      sub_100026E38();
      v16 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
      sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID, &v55);
      v17 = *(v1 + v16);

      v18 = sub_100007764();
      v20 = sub_1002CB47C(v18, v19, v17);
      v22 = v21;

      if (v22)
      {
        v24 = v20;
      }

      else
      {
        v24 = 0;
      }

      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0xE000000000000000;
      }

      *&v57 = v24;
      *(&v57 + 1) = v25;
      __chkstk_darwin(v23);
      *(&v54 - 2) = &v57;
      v26 = sub_100013094();

      sub_100009B7C(v59);
      goto LABEL_13;
    }

    sub_1000099A4(&v57, &qword_1006AB568, &unk_1005871A0);
  }

  v26 = 0;
LABEL_13:
  sub_100007764();
  if (sub_100426384())
  {
    v27 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
    sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled, v59);
    v28 = *(v1 + v27);

    v29 = sub_100007764();
    v31 = sub_1004226B4(v29, v30, v28);

    if (v31 || (v32 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID, sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID, &v57), v33 = *(v1 + v32), , v34 = sub_100007764(), sub_1002CB47C(v34, v35, v33), v37 = v36, , !v37) || (, v26))
    {
      v12 = 2;
    }

    else
    {
      v49 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
      sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened, &v60);
      v50 = *(v1 + v49);

      v51 = sub_100007764();
      v53 = sub_1002CBC64(v51, v52, v50);

      v12 = v53 != 2 && (v53 & 1) != 0;
    }
  }

  else
  {
    v12 = -1;
  }

  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_28;
  }

LABEL_20:
  v38 = type metadata accessor for Logger();
  sub_1000075F0(v38, qword_1006BA568);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  if (sub_10000C188())
  {
    v41 = sub_100007C08();
    v42 = sub_100007630();
    v62 = v3;
    v63[0] = v42;
    *v41 = 136315394;
    v61 = v5;

    v43 = String.init<A>(reflecting:)();
    v45 = sub_10002741C(v43, v44, v63);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v61 = v12;
    type metadata accessor for TUCollaborationDocumentState(0);
    v46 = String.init<A>(reflecting:)();
    v48 = sub_10002741C(v46, v47, v63);

    *(v41 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "CSDCollaborationStateManager state for %s is %s", v41, 0x16u);
    swift_arrayDestroy();
    sub_1000079DC();
    sub_100005F40(v41);
  }

  sub_100005EDC();
}

void sub_1004253BC(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v59 = &v56[-v13];
  __chkstk_darwin(v12);
  v15 = &v56[-v14];
  swift_beginAccess();

  v16 = sub_1002DB870();

  if (v16 && (sub_100022B10(), v18 = v17, , (v18 & 1) != 0))
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000AF9C(v19, qword_1006BA568);
    v20 = *(v8 + 16);
    v20(v15, a2, v7);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = v23;
      v25 = v24;
      v58 = swift_slowAlloc();
      v60 = v21;
      v61 = v58;
      *v25 = 136315394;
      sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
      v26 = v8;
      v27 = v7;
      v28 = a4;
      v29 = v21;
      v30 = String.init<A>(reflecting:)();
      v32 = sub_10002741C(v30, v31, &v61);

      *(v25 + 4) = v32;
      a4 = v28;
      *(v25 + 12) = 2080;
      v20(v59, v15, v27);
      v33 = String.init<A>(reflecting:)();
      v35 = v34;
      (*(v26 + 8))(v15, v27);
      v36 = sub_10002741C(v33, v35, &v61);

      *(v25 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v22, v57, "CSDCollaborationStateManager: %s already disclosed for conversation UUID %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v15, v7);
    }

    v55 = 0;
  }

  else
  {
    v37 = v8;
    v38 = v7;
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000AF9C(v39, qword_1006BA568);
    v40 = *(v37 + 16);
    v40(v11, a2, v38);
    v41 = a1;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v57 = v43;
      v45 = v44;
      v58 = swift_slowAlloc();
      v60 = v41;
      v61 = v58;
      *v45 = 136315394;
      sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
      v46 = a4;
      v47 = v41;
      v48 = String.init<A>(reflecting:)();
      v50 = sub_10002741C(v48, v49, &v61);

      *(v45 + 4) = v50;
      a4 = v46;
      *(v45 + 12) = 2080;
      v40(v59, v11, v38);
      v51 = String.init<A>(reflecting:)();
      v53 = v52;
      (*(v37 + 8))(v11, v38);
      v54 = sub_10002741C(v51, v53, &v61);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v42, v57, "CSDCollaborationStateManager: %s needs disclosure for conversation UUID %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v37 + 8))(v11, v38);
    }

    v55 = 1;
  }

  a4[2](a4, v55, 0);
  _Block_release(a4);
}

void sub_100425AC8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (qword_1006A0AF8 != -1)
  {
    sub_10000852C();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA568);
  v43 = *(v8 + 16);
  v43(v14, v3, v6);
  v16 = v5;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_100007C08();
    v40 = v18;
    v20 = v19;
    v41 = sub_100007630();
    v46[0] = v41;
    *v20 = 136315394;
    v45[0] = v16;
    sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
    v39 = v17;
    v21 = v16;
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, v46);
    v42 = v16;
    v25 = v3;
    v26 = v24;

    *(v20 + 4) = v26;
    v3 = v25;
    *(v20 + 12) = 2080;
    v43(v12, v14, v6);
    v27 = String.init<A>(reflecting:)();
    v29 = v28;
    (*(v8 + 8))(v14, v6);
    v30 = sub_10002741C(v27, v29, v46);
    v16 = v42;

    *(v20 + 14) = v30;
    v31 = v39;
    _os_log_impl(&_mh_execute_header, v39, v40, "CSDCollaborationStateManager: adding %s as disclosed for conversation UUID %s", v20, 0x16u);
    v32 = v41;
    swift_arrayDestroy();
    sub_100005F40(v32);
    sub_100005F40(v20);
  }

  else
  {

    (*(v8 + 8))(v14, v6);
  }

  v33 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators, v46);

  v34 = sub_1002DB870();

  v35 = &_swiftEmptySetSingleton;
  if (v34)
  {
    v35 = v34;
  }

  v47 = v35;
  sub_1003969E0(v45, v16);

  v36 = v47;
  sub_100008D34(v1 + v33, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v1 + v33);
  sub_10037A258(v36, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v33) = v44;
  swift_endAccess();
  sub_100005EDC();
}

void sub_100425F40()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_10000BA08(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators);
  sub_100021E24();
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v0 + v10);
    v15 = *(v35 + 24);
    sub_10026D814(&qword_1006AB550, &unk_1005826F0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
    v34 = *(v5 + 8);
    v34(*(v35 + 48) + *(v5 + 72) * v13, v3);
    sub_10026D814(&unk_1006AB558, &qword_100587198);
    sub_10000A450();
    sub_10000F1E0(v16, v17, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *(v0 + v10) = v35;
    swift_endAccess();
    if (qword_1006A0AF8 != -1)
    {
      sub_10000852C();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000075F0(v18, qword_1006BA568);
    (*(v5 + 16))(v9, v2, v3);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100007C08();
      v22 = sub_100007630();
      v36[0] = v22;
      *v21 = 136315394;
      sub_10000A450();
      sub_10000F1E0(v23, v24, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = sub_100007764();
      (v34)(v28);
      v29 = sub_10002741C(v25, v27, v36);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      v30 = String.init<A>(reflecting:)();
      v32 = sub_10002741C(v30, v31, v36);

      *(v21 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "CSDCollaborationStateManager: disclosed initiators removed for conversation UUID %s: %s", v21, 0x16u);
      sub_100006C3C();
      sub_100005F40(v22);
      sub_1000079DC();
    }

    else
    {

      v33 = sub_100007764();
      (v34)(v33);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_100005EDC();
}

uint64_t sub_100426384()
{
  sub_10000FC34();
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_10000C4C4();
  v8 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v3 = v8;
  (*(v6 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = sub_100006694();
  result = v11(v10);
  if (v8)
  {
    v13 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
    sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened, v16);
    if (*(*(v1 + v13) + 16))
    {

      sub_100005208(v2, v0);
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    return v15 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004264D0()
{
  sub_100005EF4();
  v101 = v1;
  v98 = v3;
  v99 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v93 = v11 - v10;
  sub_10000D414();
  v12 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v92 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v91 = v16 - v15;
  v17 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v17);
  sub_100006688();
  __chkstk_darwin(v18);
  v96 = &v85 - v19;
  sub_10000D414();
  v97 = type metadata accessor for UUID();
  sub_100007FEC();
  v94 = v20;
  v22 = *(v21 + 64);
  v24 = __chkstk_darwin(v23);
  v90 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v95 = &v85 - v25;
  sub_10000D414();
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100007FDC();
  v32 = v31 - v30;
  v100 = v0;
  v33 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v31 - v30) = v33;
  (*(v28 + 104))(v31 - v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v32, v26);
  if (v33)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v87 = v22;
  v35 = type metadata accessor for Logger();
  sub_1000075F0(v35, qword_1006BA568);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v38 = os_log_type_enabled(v36, v37);
  v89 = v8;
  v88 = v12;
  if (v38)
  {
    v39 = sub_100007C08();
    v86 = v6;
    v40 = v39;
    v41 = sub_100007630();
    v102 = v41;
    *v40 = 136315394;
    v42 = v5;
    v109 = v5;
    type metadata accessor for TUCollaborationDocumentState(0);
    v43 = String.init<A>(reflecting:)();
    v45 = sub_10002741C(v43, v44, &v102);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = v99;
    v109 = v99;
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, &v102);

    *(v40 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "CSDCollaborationStateManager: Checking whether to update delegate with currentDocumentState: %s oldState: %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v41);
    v50 = v40;
    v6 = v86;
    sub_100005F40(v50);
  }

  else
  {

    v42 = v5;
    v46 = v99;
  }

  v51 = v100;
  if (v46 != v42)
  {
    v52 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
    sub_100005298(v100 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID, &v109);
    v53 = *(v51 + v52);

    v54 = v96;
    sub_1002CBCB0(v98, v101, v53, v96);

    v55 = v97;
    if (sub_100015468(v54, 1, v97) == 1)
    {
      sub_1000099A4(v54, &unk_1006A3DD0, &unk_10057C9D0);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = sub_100005274();
        v59 = sub_100005E84();
        v108 = v59;
        *v58 = 136315138;
        v102 = v98;
        v103 = v101;

        v60 = String.init<A>(reflecting:)();
        v62 = sub_10002741C(v60, v61, &v108);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "CSDCollaborationStateManager: Failed to update document state for %s because no conversation UUID is registered for it", v58, 0xCu);
        sub_100009B7C(v59);
        sub_100005F40(v59);
        sub_100005F40(v58);
      }
    }

    else
    {
      v63 = v94;
      v64 = v95;
      v65 = *(v94 + 32);
      v65(v95, v54, v55);
      v66 = *(v51 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate);
      if (v66)
      {
        v99 = [v66 queue];
        sub_100006890();
        v67 = v55;
        v68 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v69 = v90;
        (*(v63 + 16))(v90, v64, v67);
        v70 = (*(v63 + 80) + 48) & ~*(v63 + 80);
        v71 = swift_allocObject();
        v72 = v42;
        v73 = v63;
        v74 = v71;
        v71[2] = v68;
        v71[3] = v72;
        v75 = v101;
        v71[4] = v98;
        v71[5] = v75;
        v76 = v69;
        v77 = v67;
        v65(v71 + v70, v76, v67);
        v106 = sub_100429F94;
        v107 = v74;
        v102 = _NSConcreteStackBlock;
        v103 = 1107296256;
        sub_10000A600();
        v104 = v78;
        v105 = &unk_100630110;
        v79 = _Block_copy(&v102);

        v80 = v91;
        static DispatchQoS.unspecified.getter();
        v108 = _swiftEmptyArrayStorage;
        sub_10001533C();
        sub_10000F1E0(v81, v82, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_1000057D0();
        v83 = v93;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v84 = v99;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v79);

        (*(v89 + 8))(v83, v6);
        (*(v92 + 8))(v80, v88);
        (*(v73 + 8))(v95, v77);
      }

      else
      {
        (*(v63 + 8))(v64, v55);
      }
    }
  }

  sub_100005EDC();
}

void sub_100426CD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate);
    swift_unknownObjectRetain();

    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v5 collaborationStateChanged:a2 forCollaborationIdentifier:v6 onConversationUUID:isa];

      swift_unknownObjectRelease();
    }
  }
}

void sub_100426DA4()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v7);
  sub_100006688();
  __chkstk_darwin(v8);
  sub_10000B8BC();
  v9 = type metadata accessor for URL();
  sub_100007FEC();
  v74 = v10;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v73 = v13 - v12;
  sub_10000D414();
  v14 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v25 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL;
  sub_100005298(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL, &v77);
  v26 = *(v0 + v25);

  v1 = v4;
  sub_1002CB47C(v6, v4, v26);
  v28 = v27;

  if (!v28)
  {
    goto LABEL_33;
  }

  v23 = v6;
  sub_1000060A8();
  URL.init(string:)();
  v29 = v9;
  if (sub_100015468(v0, 1, v9) != 1)
  {

    (*(v74 + 32))(v73, v0, v9);
    v41 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_appLinkBundleIDBlock);

    v42 = v41(v73);
    v44 = v43;

    if (v44)
    {
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {

        goto LABEL_17;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
LABEL_17:

        v48 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs;
        sub_100005298(v2 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs, v75);
        v49 = *(v2 + v48);

        v50 = sub_100005E74(v6, v1, v49);

        if (v50)
        {
          if (*(v50 + 16))
          {
            if (qword_1006A0AF8 != -1)
            {
              sub_10000852C();
              swift_once();
            }

            v51 = type metadata accessor for Logger();
            sub_10000AF9C(v51, qword_1006BA568);

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v52, v53))
            {
              v71 = sub_100005274();
              v72 = sub_100005E84();
              v76 = v72;
              *v71 = 136315138;

              sub_10026D814(&unk_1006A3C60, &unk_10057D910);
              v54 = String.init<A>(reflecting:)();
              v56 = v1;
              v57 = v53;
              v58 = sub_10002741C(v54, v55, &v76);

              *(v71 + 4) = v58;
              v59 = v57;
              v1 = v56;
              _os_log_impl(&_mh_execute_header, v52, v59, "Collaboration identifier is a sharebear collaboration- checking potential bundleIDs %s", v71, 0xCu);
              sub_100009B7C(v72);
              sub_1000079DC();
              sub_100005F40(v71);
            }

            sub_10042752C(v50);
            v66 = v65;

            if (v66)
            {
              goto LABEL_32;
            }

            v61 = Logger.logObject.getter();
            v67 = static os_log_type_t.info.getter();

            if (!sub_10000C188())
            {
LABEL_29:

              (*(v74 + 8))(v73, v29);
              goto LABEL_33;
            }

            v68 = sub_100005274();
            v69 = sub_100005E84();
            v76 = v69;
            *v68 = 136315138;
            *(v68 + 4) = sub_10002741C(v6, v1, &v76);
            sub_100006EA8(&_mh_execute_header, v70, v67, "No CloudKit applications are installed that can open %s");
            sub_100009B7C(v69);
            sub_100005F40(v69);
            v64 = v68;
LABEL_28:
            sub_100005F40(v64);
            goto LABEL_29;
          }
        }

        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_1000075F0(v60, qword_1006BA568);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v61, v62))
        {
          goto LABEL_29;
        }

        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "No CloudKit bundleIDs cached for a sharebear collaboration, returning nil for installed bundleID", v63, 2u);
        v64 = v63;
        goto LABEL_28;
      }
    }

LABEL_32:
    (*(v74 + 8))(v73, v29);
    goto LABEL_33;
  }

  sub_1000099A4(v0, &unk_1006A52C0, &unk_10057D930);
  if (qword_1006A0AF8 != -1)
  {
LABEL_37:
    sub_10000852C();
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000AF9C(v30, qword_1006BA568);
  sub_10000D6C0();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_100007C08();
    v34 = sub_100007630();
    v76 = v34;
    *v33 = 136315394;
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, &v76);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v75[0] = v23;
    v75[1] = v1;

    v38 = String.init<A>(reflecting:)();
    v40 = sub_10002741C(v38, v39, &v76);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "CSDCollaborationStateManager could not create a url from %s for collaboration identifier %s", v33, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v34);
    sub_100005F40(v33);
  }

  else
  {
  }

LABEL_33:
  sub_100005EDC();
}

uint64_t sub_10042752C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_installedBundleIDBlock);

  v4 = v3(a1);

  return v4;
}

id sub_1004275D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDCollaborationStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10042774C(uint64_t a1)
{
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA568);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = Array.description.getter();
    v9 = sub_10002741C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "applicationsDidInstall: %s", v5, 0xCu);
    sub_100009B7C(v6);
  }

  if (sub_100422A08(a1, &unk_1006AB540, LSApplicationProxy_ptr))
  {

    sub_100427984();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to convert notifications' appProxies to LSApplicationProxy", v11, 2u);
    }
  }
}

void sub_100427984()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
  sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled, v33);
  v29 = v2;
  v3 = *(v1 + v2);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(v1 + v2) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v26 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  v27 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  v25 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v28 = v5;
  v24 = v10;
  if (v9)
  {
    goto LABEL_8;
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

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_8:

        sub_10002F6E8();
        sub_100426DA4();
        if (v14)
        {
          v15 = v14;
          v30 = v13;
          sub_10002F6E8();
          sub_100424ED0();
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_1000075F0(v16, qword_1006BA568);

          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.info.getter();

          if (sub_10000C188())
          {
            v19 = sub_100007C08();
            v20 = sub_100007630();
            v32[0] = v20;
            *v19 = 136315394;
            *(v19 + 4) = sub_10002741C(v30, v15, v32);
            *(v19 + 12) = 2080;
            v21 = sub_10002F6E8();
            *(v19 + 14) = sub_10002741C(v21, v22, v23);
            _os_log_impl(&_mh_execute_header, v17, v18, "Found a newly installed bundleID %s for collaboration identifier: %s", v19, 0x16u);
            swift_arrayDestroy();
            sub_100005F40(v20);
            sub_100005F40(v19);
          }

          v5 = v28;
          sub_100008D34(v1 + v27, v32);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_10037A16C();
          *(v1 + v27) = v31;
          swift_endAccess();
          sub_100008D34(v1 + v26, v32);

          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_100379EC8();
          *(v1 + v26) = v31;
          swift_endAccess();
          sub_100008D34(v1 + v25, v32);

          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_10002F6E8();
          sub_100379EC8();
          *(v1 + v25) = v31;

          swift_endAccess();
          sub_100008D34(v1 + v29, v32);
          sub_10002F6E8();
          sub_100428F00();
          swift_endAccess();

          sub_10002F6E8();
          sub_100424ED0();
          sub_1004264D0();
          v10 = v24;
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
}

void sub_100427D54()
{
  sub_100005EF4();
  v21 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v22 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10000C4C4();
  v11 = *&v0[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue];
  sub_100007C2C();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v0;
  v23[4] = v4;
  v23[5] = v12;
  sub_100009FE4();
  v23[1] = 1107296256;
  sub_10000A600();
  v23[2] = v13;
  v23[3] = v21;
  v14 = _Block_copy(v23);
  v15 = v11;

  v16 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10001533C();
  sub_10000F1E0(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100021FE0();
  _Block_release(v14);

  v19 = sub_100007764();
  v20(v19);
  (*(v9 + 8))(v1, v22);

  sub_100005EDC();
}

void sub_100427F60(uint64_t a1)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA568);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10002741C(v7, v8, &v29);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "applicationsDidUninstall: %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    v10 = sub_100422A08(a1, &unk_1006AB540, LSApplicationProxy_ptr);
    if (!v10)
    {
      oslog = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v25, "Failed to convert notifications' appProxies to LSApplicationProxy", v26, 2u);
      }

      return;
    }

    a1 = v10;
    v11 = sub_10000B6F4(v10);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v29 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v29;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v16 = *(a1 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = sub_1002C89F0(v16);
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = v18;
      v21 = v19;

      v29 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_10039A2E0(v22 > 1, v23 + 1, 1);
        v14 = v29;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = v20;
      v24[5] = v21;
      ++v13;
      if (v15 == v12)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_24:
  v27 = sub_1002F4260(v14);

  sub_1004282D8(v27);
}

uint64_t sub_1004282D8(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
    v271 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
    v286 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
    v256 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
    result = sub_100005298(v3 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier, v380);
    v6 = (v4 + 40);
    *&v7 = 136315394;
    v212 = v7;
    *&v7 = 136315138;
    v153 = v7;
    v362 = v5;
    do
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = *(v3 + v362);
        if (*(v9 + 16))
        {
          v10 = *(v6 - 1);

          v11 = sub_100005208(v10, v8);
          if (v12)
          {
            v332 = v10;
            v13 = (*(v9 + 56) + 16 * v11);
            v14 = *v13;
            v15 = v13[1];

            if (qword_1006A0AF8 != -1)
            {
              sub_10000852C();
              swift_once();
            }

            v16 = type metadata accessor for Logger();
            sub_10000AF9C(v16, qword_1006BA568);

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.info.getter();

            v347 = v14;
            if (os_log_type_enabled(v17, v18))
            {
              v19 = sub_100007C08();
              v379[0] = sub_100007630();
              *v19 = v212;
              *(v19 + 4) = sub_10002741C(v332, v8, v379);
              *(v19 + 12) = 2080;
              *(v19 + 14) = sub_10002741C(v347, v15, v379);
              _os_log_impl(&_mh_execute_header, v17, v18, "applicationsDidUninstall: %s for collaboration identifier: %s. Checking if another application can open it", v19, 0x16u);
              swift_arrayDestroy();
              sub_1000079DC();
              sub_100005F40(v19);
            }

            sub_100424ED0();
            v317 = v20;
            sub_100426DA4();
            if (v22)
            {
              v23 = v22;
              v302 = v21;

              v24 = Logger.logObject.getter();
              v25 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v24, v25))
              {
                v26 = sub_100007C08();
                v197 = sub_100007630();
                v379[0] = v197;
                *v26 = v212;
                *(v26 + 4) = sub_10002741C(v302, v23, v379);
                *(v26 + 12) = 2080;
                v27 = sub_1000089D8();
                *(v26 + 14) = sub_10002741C(v27, v28, v29);
                _os_log_impl(&_mh_execute_header, v24, v25, "Found a fallback bundleID %s for collaboration identifier: %s", v26, 0x16u);
                swift_arrayDestroy();
                sub_100005F40(v197);
                sub_1000079DC();
              }

              sub_10000FF3C(v3 + v286, v42, v43, v44, v45, v46, v47, v48, v153, *(&v153 + 1), v182, v197, v212, *(&v212 + 1), v241, v256, v271, v286, v302, v317, v332, v347, v362, v377, v378, v379[0]);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_10037A16C();
              sub_1000077B0(v49, v50, v51, v52, v53, v54, v55, v56, v154, v168, v183, v198, v213, v227, v242, v257, v272, v287, v303, v318, v333, v348, v363, v377, v378, v379[0]);
              sub_10000FF3C(v3 + v273, v57, v58, v59, v60, v61, v62, v63, v155, v169, v184, v199, v214, v228, v243, v258, v273, v288, v304, v319, v334, v349, v364, v377, v378, v379[0]);

              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_100379EC8();
              sub_1000077B0(v64, v65, v66, v67, v68, v69, v70, v71, v156, v170, v185, v200, v215, v229, v244, v259, v274, v289, v305, v320, v335, v350, v365, v377, v378, v379[0]);
              v72 = v366;
              sub_10000FF3C(v3 + v366, v73, v74, v75, v76, v77, v78, v79, v157, v171, v186, v201, v216, v230, v245, v260, v275, v290, v306, v321, v336, v351, v366, v377, v378, v379[0]);

              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_1000089D8();
              sub_100379EC8();
              *(v3 + v72) = v377;

              v80 = sub_100384328(v337, v8);
              sub_10004A118(v80, v81, v82, v83, v84, v85, v86, v87, v158, v172, v187, v202, v217, v231, v246, v261, v276, v291, v307, v322, v337, v352, v367, v377, v378, v379[0]);

              sub_10000FF3C(v3 + v262, v88, v89, v90, v91, v92, v93, v94, v159, v173, v188, v203, v218, v232, v247, v262, v277, v292, v308, v323, v338, v353, v368, v377, v378, v379[0]);
              sub_1000089D8();
              v95 = sub_100428F00();
              sub_10004A118(v95, v96, v97, v98, v99, v100, v101, v102, v160, v174, v189, v204, v219, v233, v248, v263, v278, v293, v309, v324, v339, v354, v369, v377, v378, v379[0]);
            }

            else
            {

              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v30, v31))
              {
                v32 = sub_100005274();
                v33 = sub_100005E84();
                v379[0] = v33;
                *v32 = v153;
                v34 = v347;
                *(v32 + 4) = sub_10002741C(v347, v15, v379);
                _os_log_impl(&_mh_execute_header, v30, v31, "No new bundleID found for collaboration identifier: %s so setting state to not installed", v32, 0xCu);
                sub_100009B7C(v33);
                sub_100005F40(v33);
                sub_100005F40(v32);
              }

              else
              {

                v34 = v347;
              }

              sub_10000FF3C(v3 + v286, v35, v36, v37, v38, v39, v40, v41, v153, *(&v153 + 1), v182, v197, v212, *(&v212 + 1), v241, v256, v271, v286, v301, v317, v332, v347, v362, v377, v378, v379[0]);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_10037A16C();
              sub_1000077B0(v103, v104, v105, v106, v107, v108, v109, v110, v161, v175, v190, v205, v220, v234, v249, v264, v279, v294, v310, v325, v340, v355, v370, v377, v378, v379[0]);
              sub_10000FF3C(v3 + v280, v111, v112, v113, v114, v115, v116, v117, v162, v176, v191, v206, v221, v235, v250, v265, v280, v295, v311, v326, v341, v356, v371, v377, v378, v379[0]);
              v118 = sub_100384328(v34, v15);
              sub_10004A118(v118, v119, v120, v121, v122, v123, v124, v125, v163, v177, v192, v207, v222, v236, v251, v266, v281, v296, v312, v327, v342, v357, v372, v377, v378, v379[0]);

              sub_10000FF3C(v3 + v373, v126, v127, v128, v129, v130, v131, v132, v164, v178, v193, v208, v223, v237, v252, v267, v282, v297, v313, v328, v343, v358, v373, v377, v378, v379[0]);
              v133 = sub_100384328(v344, v8);
              sub_10004A118(v133, v134, v135, v136, v137, v138, v139, v140, v165, v179, v194, v209, v224, v238, v253, v268, v283, v298, v314, v329, v344, v359, v374, v377, v378, v379[0]);

              sub_10000FF3C(v3 + v269, v141, v142, v143, v144, v145, v146, v147, v166, v180, v195, v210, v225, v239, v254, v269, v284, v299, v315, v330, v345, v360, v375, v377, v378, v379[0]);

              sub_10001E84C(&v377, v34, v15, v148, v149, v150, v151, v152, v167, v181, v196, v211, v226, v240, v255, v270, v285, v300, v316, v331, v346, v361, v376, v377, v378, v379[0], v379[1], v379[2], v380[0], v380[1]);
              swift_endAccess();
            }

            sub_1000089D8();
            sub_100424ED0();
            sub_1004264D0();
          }

          else
          {
          }
        }
      }

      v6 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100428900(void *a1, uint64_t a2, uint64_t a3)
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = a1;
  sub_100007E30();
  sub_100427D54();
}

void sub_10042898C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v19 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  sub_10000C4C4();
  v9 = *(v2 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  sub_100006890();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C2C();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v10;
  v20[4] = sub_10042A0D8;
  v20[5] = v11;
  sub_100009FE4();
  v20[1] = 1107296256;
  sub_10000A600();
  v20[2] = v12;
  v20[3] = &unk_100630188;
  v13 = _Block_copy(v20);
  v14 = v9;

  static DispatchQoS.unspecified.getter();
  sub_10001533C();
  sub_10000F1E0(v15, v16, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100021FE0();
  _Block_release(v13);

  v17 = sub_100007764();
  v18(v17);
  (*(v7 + 8))(v1, v19);

  sub_100005EDC();
}

uint64_t sub_100428BD8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver;
        swift_beginAccess();
        sub_100429FF8(v8 + v9, &v17);

        if (*(&v18 + 1))
        {
          sub_10002F0C8(&v17, v20);
          sub_100009B14(v20, v20[3]);
          sub_100026E38();
          *&v17 = v5;
          *(&v17 + 1) = v6;
          __chkstk_darwin(v10);
          v11 = sub_100013094();

          if (v11)
          {
            v12 = swift_unknownObjectWeakLoadStrong();
            if (v12)
            {
              v13 = v12;
              sub_10026D814(&unk_1006A7A80, &unk_1005833C0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10057D690;
              *(inited + 32) = v5;
              *(inited + 40) = v6;
              sub_1004282D8(inited);

              swift_setDeallocating();
              sub_1002F5D30();
            }

            else
            {
            }
          }

          else
          {

            v15 = swift_unknownObjectWeakLoadStrong();
            if (v15)
            {
              v16 = v15;
              sub_100427984();
            }
          }

          result = sub_100009B7C(v20);
          goto LABEL_15;
        }
      }

      else
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
      }

      result = sub_1000099A4(&v17, &qword_1006AB568, &unk_1005871A0);
LABEL_15:
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_100428E24(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100428F00()
{
  sub_100017004();
  v4 = *v1;
  Hasher.init(_seed:)();
  sub_100007E30();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000052DC();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    sub_10003EAB8();
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v4 + 48) + 16 * v8);
    if (*v10 == v3 && v10[1] == v2)
    {
      break;
    }

    sub_10003DC34();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      break;
    }

    v5 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v0;
  v16 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003989F8();
    v13 = v16;
  }

  v14 = *(*(v13 + 48) + 16 * v8);
  sub_1004297CC(v8);
  *v0 = v16;
  return v14;
}

uint64_t sub_100429008(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    sub_1000052DC();
    v11 = ~v10;
    while (1)
    {
      v12 = v9 & v11;
      if (((*(v4 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100398C44();
          v16 = v18;
        }

        v8 = *(*(v16 + 48) + 8 * v12);
        sub_100429984(v12);
        *v2 = v18;
        return v8;
      }

      v9 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_100429670(v5, v6);

  return v8;
}

void sub_10042919C()
{
  sub_100005EF4();
  v1 = v0;
  v19 = v2;
  v3 = type metadata accessor for Participant();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100027EDC();
  sub_10000F880();
  sub_10000F1E0(v5, v6, &protocol conformance descriptor for Participant);
  sub_10000790C();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D520();
  do
  {
    sub_1000053B8();
    if ((v7 & 1) == 0)
    {
      v14 = 1;
      v1 = v19;
      goto LABEL_9;
    }

    v8 = sub_100015B8C();
    v9(v8);
    sub_10000F880();
    v11 = sub_10000F1E0(&unk_1006A8F00, v10, &protocol conformance descriptor for Participant);
    sub_10004A040(v11);
    v12 = sub_100027728();
    v13(v12);
  }

  while ((v1 & 1) == 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003990AC();
  }

  v16 = sub_10042A0F0();
  v17(v16);
  sub_100429B18();
  v14 = 0;
  *v18 = v20;
LABEL_9:
  sub_10000AF74(v1, v14, 1, v3);
  sub_100005EDC();
}

void sub_100429380()
{
  sub_100005EF4();
  v1 = v0;
  v19 = v2;
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100027EDC();
  sub_10000A450();
  sub_10000F1E0(v5, v6, &protocol conformance descriptor for UUID);
  sub_10000790C();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D520();
  do
  {
    sub_1000053B8();
    if ((v7 & 1) == 0)
    {
      v14 = 1;
      v1 = v19;
      goto LABEL_9;
    }

    v8 = sub_100015B8C();
    v9(v8);
    sub_10000A450();
    v11 = sub_10000F1E0(&qword_1006A2620, v10, &protocol conformance descriptor for UUID);
    sub_10004A040(v11);
    v12 = sub_100027728();
    v13(v12);
  }

  while ((v1 & 1) == 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100399084();
  }

  v16 = sub_10042A0F0();
  v17(v16);
  sub_100429B18();
  v14 = 0;
  *v18 = v20;
LABEL_9:
  sub_10000AF74(v1, v14, 1, v3);
  sub_100005EDC();
}

uint64_t sub_10042957C(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v6 = *v4;
  v7 = static Hasher._hash(seed:_:)();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v6 + 48) + 8 * v9) == a1)
    {
      break;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v14 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v10 = *(*(v12 + 48) + 8 * v9);
  sub_100429DE4(v9);
  *v4 = v14;
  return v10;
}

uint64_t sub_100429670(uint64_t a1, uint64_t a2)
{

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  sub_100396BC0(v3, v2);
  v5 = v4;
  v15 = v4;
  v6 = *(v4 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_100429984(v9);
      if (static NSObject.== infix(_:_:)())
      {
        *v14 = v15;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004297CC(unint64_t result)
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
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100429984(unint64_t result)
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
LABEL_15:
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
          goto LABEL_15;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100429B18()
{
  sub_100005EF4();
  v43 = v1;
  v44 = v2;
  v42 = v3;
  v5 = v4;
  v7 = v6(0);
  sub_100007FEC();
  v9 = v8;
  sub_100006688();
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = *v0;
  v14 = *v0 + 56;
  v15 = -1 << *(*v0 + 32);
  v16 = (v5 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;

    sub_1000089D8();
    v18 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v40 = (v18 + 1) & v17;
      v39 = *(v9 + 16);
      v45 = *(v9 + 72);
      v41 = v9 + 16;
      v19 = (v9 + 8);
      v20 = v13;
      v21 = v17;
      while (1)
      {
        v22 = v14;
        v23 = v45 * v16;
        v24 = v21;
        v39(v12, *(v20 + 48) + v45 * v16, v7);
        v25 = v20;
        sub_10000F1E0(v42, v43, v44);
        sub_10000790C();
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v19)(v12, v7);
        v21 = v24;
        v27 = v26 & v24;
        if (v5 >= v40)
        {
          if (v27 < v40 || v5 < v27)
          {
LABEL_20:
            v20 = v25;
            goto LABEL_24;
          }
        }

        else if (v27 < v40 && v5 < v27)
        {
          goto LABEL_20;
        }

        v20 = v25;
        v29 = *(v25 + 48);
        v30 = v45 * v5;
        v31 = v29 + v45 * v5;
        v32 = v29 + v23 + v45;
        if (v45 * v5 < v23 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v21 = v24;
          v5 = v16;
          goto LABEL_24;
        }

        v5 = v16;
        if (v30 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v16 = (v16 + 1) & v21;
        v14 = v22;
        if (((*(v22 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v13;
LABEL_28:
    *(v14 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v14 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
    v20 = v13;
  }

  v35 = *(v20 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v37;
    ++*(v20 + 36);
    sub_100005EDC();
  }
}

unint64_t sub_100429DE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
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
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
        sub_10003EAB8();
      }

      while ((v17 & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100429F50()
{

  sub_100007C2C();

  return _swift_deallocObject(v1);
}

void sub_100429F94()
{
  v1 = type metadata accessor for UUID();
  sub_100007BF0(v1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_100426CD8(v2, v3);
}

uint64_t sub_100429FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB568, &unk_1005871A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB568, &unk_1005871A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10042A10C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() tu_defaults];
  v3 = [v2 silenceUnknownCallersEnabled];

  v5 = sub_100004778(v4);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057D6A0;
  *(v6 + 56) = ObjectType;
  *(v6 + 64) = sub_10042AA98();
  *(v6 + 32) = v0;
  *(v6 + 96) = &type metadata for Bool;
  *(v6 + 104) = &protocol witness table for Bool;
  *(v6 + 72) = v3;
  v7 = v0;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@ isSilenceUnknownCallersEnabled: %d", 37, 2, &_mh_execute_header, v5, v8, v6);

  return v3;
}

uint64_t sub_10042A224(void *a1)
{
  ObjectType = swift_getObjectType();
  if ([a1 verificationStatus] == 1)
  {
    v4 = sub_100004778(1);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10057D6A0;
    *(v5 + 56) = ObjectType;
    *(v5 + 64) = sub_10042AA98();
    *(v5 + 32) = v1;
    *(v5 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v5 + 104) = sub_1003B0878();
    *(v5 + 72) = a1;
    v6 = v1;
    v7 = a1;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ call is verified; will allow call update %@", 46, 2, &_mh_execute_header, v4, v8, v5);
  }

  else
  {
    v9 = sub_10042A4E4(a1);
    v10 = v9;
    v4 = sub_100004778(v9);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10057D6A0;
    *(v11 + 56) = ObjectType;
    *(v11 + 64) = sub_10042AA98();
    *(v11 + 32) = v1;
    *(v11 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v11 + 104) = sub_1003B0878();
    *(v11 + 72) = a1;
    v12 = v1;
    v13 = a1;
    v14 = static os_log_type_t.default.getter();
    if (v10)
    {
      os_log(_:dso:log:type:_:)("%@ Call is the same number as subscriber; OwnNumberCallFilter will not allow call %@", 84, 2, &_mh_execute_header, v4, v14, v11);

      [v13 setFilteredOutReason:2];
      v15 = 1;
      goto LABEL_7;
    }

    os_log(_:dso:log:type:_:)("%@ Call is not the same number as subscriber; OwnNumberCallFilter will allow call %@", 84, 2, &_mh_execute_header, v4, v14, v11);
  }

  v15 = 0;
LABEL_7:
  v16 = [a1 silencingUserInfo];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = [objc_allocWithZone(NSNumber) initWithBool:v15];
  [v16 __swift_setObject:v20 forKeyedSubscript:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v17, v19}];

  swift_unknownObjectRelease();
  if (v15)
  {
    v21 = sub_10042A10C();
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void *sub_10042A4E4(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 remoteMember];
  v8 = v7;
  if (!v7)
  {
    return (v8 & 1);
  }

  v9 = [v7 handle];

  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = [a1 account];
  v8 = v10;
  if (!v10)
  {

    return (v8 & 1);
  }

  v11 = [v10 handle];

  if (!v11)
  {

LABEL_35:
    LOBYTE(v8) = 0;
    return (v8 & 1);
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {

    LOBYTE(v8) = 1;
    return (v8 & 1);
  }

  v41 = v11;
  v42 = v9;
  v12 = [*(v1 + OBJC_IVAR___CSDOwnNumberCallFilter_idsCTAdapter) currentSIMsWithError:0];
  sub_10026D814(&qword_1006AB5C8, qword_1005871D8);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v13);
  v15 = 0;
  v44 = v13 & 0xC000000000000001;
  v45 = result;
  v46 = v13;
  v43 = v13 & 0xFFFFFFFFFFFFFF8;
  v16 = (v4 + 8);
  while (1)
  {
    if (v45 == v15)
    {

      v30 = 0;
      v31 = 0;
      goto LABEL_28;
    }

    if (v44)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = result;
    }

    else
    {
      if (v15 >= *(v43 + 16))
      {
        goto LABEL_40;
      }

      v17 = *(v46 + 8 * v15 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v18 = [v17 SIMIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [a1 account];
    if (!v22)
    {

      goto LABEL_23;
    }

    v23 = v22;
    v24 = [v22 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*v16)(v6, v3);
    if (v19 == v25 && v21 == v27)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_27;
    }

LABEL_23:
    result = swift_unknownObjectRelease();
    ++v15;
  }

LABEL_27:

  v32 = [v17 phoneNumber];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v33;

LABEL_28:
  v35 = v41;
  v34 = v42;
  v36 = [v42 value];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (!v31)
  {

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (v30 == v37 && v31 == v39)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_unknownObjectRelease();

  return (v8 & 1);
}

id sub_10042A9B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CSDOwnNumberCallFilter_idsCTAdapter;
  *&v1[v4] = [objc_opt_self() sharedInstance];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithQueue:", a1);

  return v5;
}

unint64_t sub_10042AA98()
{
  result = qword_1006AB5B8;
  if (!qword_1006AB5B8)
  {
    type metadata accessor for OwnNumberCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB5B8);
  }

  return result;
}

id sub_10042AAEC()
{
  result = [objc_allocWithZone(type metadata accessor for SceneObservationManager()) init];
  qword_1006BA820 = result;
  return result;
}

id sub_10042AB1C()
{
  if (qword_1006A0C00 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA820;

  return v1;
}

id sub_10042ABA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___CSDSceneObservationManager_state];
  *v2 = 0;
  *(v2 + 1) = _swiftEmptyArrayStorage;
  *(v2 + 2) = _swiftEmptyDictionarySingleton;
  *(v2 + 3) = _swiftEmptyDictionarySingleton;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = qword_1006A0C08;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006AB5D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CSDSceneObservationManager.init()", v9, 2u);
  }

  return v5;
}

void sub_10042ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = 0;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4 + 32;
  while (1)
  {
    if (i == v9)
    {
      if (a4)
      {
        v39 = *(v8 + 16);

        for (i = 0; ; ++i)
        {
          if (i == v39)
          {
            sub_10026D814(&qword_1006A4760, &unk_10057EA60);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_10057D6A0;
            *(v37 + 32) = a3;
            *(v37 + 40) = a4;
            *(v37 + 48) = a1;
            *(v37 + 56) = a2;

            v31 = v37;
            goto LABEL_33;
          }

          if (i >= *(v8 + 16))
          {
            goto LABEL_37;
          }

          v20 = (v10 + 16 * i);
          v21 = *v20;
          v22 = v20[1];
          v23 = *(v22 + 16);
          if (*v20)
          {

            sub_10042C9D4(a3, a4, v22 + 32, v23, (v21 + 16), v21 + 32);
            v25 = v24;

            if ((v25 & 1) == 0)
            {
LABEL_29:

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v26 = (v22 + 40);
            v27 = v23 + 1;
            while (--v27)
            {
              if (*(v26 - 1) != a3 || *v26 != a4)
              {
                v26 += 2;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_29;
            }
          }
        }
      }

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10057D690;
      *(v30 + 32) = a1;
      *(v30 + 40) = a2;

      v31 = v30;
LABEL_33:
      v32 = sub_10042C028(v31);
      v34 = v33;
      v29 = v40;
      sub_100461AD4();
      v35 = *(*v40 + 16);
      sub_100461BD8(v35);
      v8 = *v40;
      *(v8 + 16) = v35 + 1;
      v36 = v8 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v34;
      goto LABEL_34;
    }

    if (i >= *(v8 + 16))
    {
      break;
    }

    v11 = (v10 + 16 * i);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v13 + 16);
    if (*v11)
    {

      sub_10042C9D4(a1, a2, v13 + 32, v14, (v12 + 16), v12 + 32);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v17 = (v13 + 40);
      v18 = v14 + 1;
      while (--v18)
      {
        if (*(v17 - 1) != a1 || *v17 != a2)
        {
          v17 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        return;
      }
    }

    ++i;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_100470D48();
  v8 = v38;
LABEL_30:
  v29 = v40;
  if (i < *(v8 + 16))
  {
    sub_10042BF90(a1, a2);
LABEL_34:
    *v29 = v8;
    return;
  }

  __break(1u);
}

uint64_t sub_10042B008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16) || (v7 = sub_100005208(a2, a3), (v8 & 1) == 0))
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(v6 + 56) + 40 * v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 32);

  if (!v11)
  {
LABEL_6:
    result = sub_10042CD90(v10, 0);
    v12 = 0;
    goto LABEL_7;
  }

  result = sub_10042CD90(v10, v11);
LABEL_7:
  *a4 = v12;
  return result;
}

uint64_t sub_10042B15C()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v1);
  sub_10042B1C8(&v1[2], &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_10042B1C8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = *(result + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v3 + 56) + 40 * (v9 | (v2 << 6));
    result = *(v10 + 16);
    v11 = *(v10 + 34);
    if (result == 0xD00000000000001DLL && 0x8000000100576E40 == *(v10 + 24))
    {
      if (*(v10 + 34))
      {
LABEL_16:
        v13 = 1;
LABEL_18:
        *a2 = v13;
        return result;
      }
    }

    else
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result & v11)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v13 = 0;
      goto LABEL_18;
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

uint64_t sub_10042B2F4()
{
  _StringGuts.grow(_:)(76);
  v1._countAndFlagsBits = 0x646928656E656353;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x656C646E7562202CLL;
  v2._object = 0xEC000000203A4449;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 16));
  v3._countAndFlagsBits = 0x656D756C6F76202CLL;
  v3._object = 0xEE00203A63697274;
  String.append(_:)(v3);
  if (*(v0 + 32))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._object = 0x8000000100576E60;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  if (*(v0 + 33))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x7372656D6D69202CLL;
  v11._object = 0xED0000203A657669;
  String.append(_:)(v11);
  if (*(v0 + 34))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + 34))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

uint64_t sub_10042B4B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0))
  {
    v6 = *(a1 + 34) ^ *(a2 + 34) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10042B55C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1[32] & 1);
  Hasher._combine(_:)(v1[33] & 1);
  Hasher._combine(_:)(v1[34] & 1);
}

Swift::Int sub_10042B5B8()
{
  Hasher.init(_seed:)();
  sub_10042B55C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10042B670(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6[0] = v2;
  *(v6 + 15) = *(v1 + 31);
  Hasher.init(_seed:)();
  sub_10042B55C(v4);
  return Hasher._finalize()();
}

uint64_t sub_10042B6FC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_10042B4B8(&v5, &v7) & 1;
}

uint64_t sub_10042B780()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006AB5D0);
  sub_10000AF9C(v0, qword_1006AB5D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10042B800(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t))
{
  v7 = (v3 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v7);
  a3(&v9, v7 + 2, a1, a2);
  os_unfair_lock_unlock(v7);
  return v9;
}

uint64_t sub_10042B874@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = 0;
  v8 = *(result + 8);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v8 + 56) + 40 * (v14 | (v7 << 6));
    if (*(v15 + 33) == 1)
    {
      result = *(v15 + 16);
      v16 = result == a2 && *(v15 + 24) == a3;
      if (v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v17 = 1;
LABEL_17:
        *a4 = v17;
        return result;
      }
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      v17 = 0;
      goto LABEL_17;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10042B99C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = sub_10042B800(v6, v8, a4);

  return a4 & 1;
}

uint64_t sub_10042BA04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock((v2 + OBJC_IVAR___CSDSceneObservationManager_state));
  sub_10042ACF8(a1, a2, 0, 0);
  v7 = v6;
  os_unfair_lock_unlock(v5);
  return v7;
}

void sub_10042BAD0(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CSDSceneObservationManager_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR___CSDSceneObservationManager_state));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v3 + 8) + 16) > a1)
  {

    os_unfair_lock_unlock(v3);
    return;
  }

  __break(1u);
}

void sub_10042BBAC(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CSDSceneObservationManager_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR___CSDSceneObservationManager_state));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v3 + 8) + 16) > a1)
  {
    os_unfair_lock_unlock(v3);
    return;
  }

  __break(1u);
}

void sub_10042BC60()
{
  v1 = v0;
  if (qword_1006A0C08 != -1)
  {
    sub_100008840(&qword_1006A0C08);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006AB5D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10000A468(&_mh_execute_header, v5, v6, "Added CSDSceneObservationManager delegate");
  }

  v7 = (v1 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v7);
  swift_unknownObjectWeakInit();
  sub_1003822F8();
  os_unfair_lock_unlock(v7);
}

void sub_10042BD84()
{
  v1 = v0;
  if (qword_1006A0C08 != -1)
  {
    sub_100008840(&qword_1006A0C08);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006AB5D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10000A468(&_mh_execute_header, v5, v6, "Removed CSDSceneObservationManager delegate");
  }

  v7 = (v1 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v7);
  sub_10038461C();
  sub_10042BF28(&v8);
  os_unfair_lock_unlock(v7);
}

void sub_10042BEA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10042BF28(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A7588, &qword_100582CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042BF90(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v12[0] = a1;
  v12[1] = a2;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v12;
  sub_10042C610(sub_10042CD6C, v11, v5);
  v9 = v8;
  if (v8)
  {
    sub_10042C4AC(a1, a2, v7);
  }

  return v9 & 1;
}

void *sub_10042C028(void *a1)
{
  v6 = _s13callservicesd37CSDConversationSpatialPersonaResolverC22localGenerationCounters6UInt64Vvpfi_0();
  v7 = sub_10042C2A8(&v30, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v30;
  if (v30 != v8)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = sub_100327838(0, v30, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = _swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_35;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_36;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_1002F6384(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v31 = v7;
      v32 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    v8 = sub_100327838(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v2 = v18;

    v19 = v2 >> 1;
    while (1)
    {
LABEL_14:
      if (v1 == v19)
      {
        swift_unknownObjectRelease();

        return v31;
      }

      if (v1 >= v19)
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = (v9 + 16 * v1);
      v3 = *v20;
      v2 = v20[1];
      ++v1;
      a1 = v31;
      v21 = v32;
      v22 = *(v32 + 16);
      if (!v31)
      {
        break;
      }

      sub_10042C9D4(v3, v2, v21 + 32, v22, a1 + 2, (a1 + 4));
      v24 = v23;
      v4 = v25;

      if (v24)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v26 = (v32 + 40);
    a1 = (v22 + 1);
    while (1)
    {
      a1 = (a1 - 1);
      if (!a1)
      {
        break;
      }

      v4 = (v26 + 2);
      if (*(v26 - 1) != v3 || *v26 != v2)
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v26 = v4;
        if ((v28 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v4 = 0;
LABEL_29:
    a1 = &v31;
    sub_10042C4AC(v3, v2, v4);
    goto LABEL_30;
  }

  return v7;
}

uint64_t sub_10042C2A8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = _HashTable.init(scale:reservedScale:)();
    sub_10042CB00(a2 + 32, v8, (v13 + 16), v13 + 32);
    *a1 = v14;
  }

  else if (v8 >= 2)
  {
    sub_10042C370(a2 + 32, v8);
    v13 = 0;
    *a1 = v15;
  }

  else
  {
    v13 = 0;
    *a1 = v8;
  }

  return v13;
}

void sub_10042C370(uint64_t a1, uint64_t a2)
{
  sub_10039A2E0(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = &_swiftEmptyArrayStorage[5];
    v9 = _swiftEmptyArrayStorage[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      sub_10039A2E0(v12 > 1, v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

void sub_10042C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10039A2E0(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_10039A2E0(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v18 = static _HashTable.scale(forCapacity:)();
    sub_10042C720(v18, v16);
    return;
  }

  sub_10042C660();
  if (*v4)
  {
    sub_10042C6B8((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10042C610(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10042C660()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = _HashTable.copy()();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10042C720(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_10042C768(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_10042C768(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  v8 = 0;
  if (v7 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 5)
  {
    v8 = _HashTable.init(scale:reservedScale:)();
    sub_10042C7E0(a1, (v8 + 16), v8 + 32);
  }

  return v8;
}

Swift::Int sub_10042C820(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_10042C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

Swift::Int sub_10042C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

Swift::Int sub_10042CB00(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v6 + 1;
    v7 = (v5 + 16 * v6);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
        break;
      }

      v10 = (v5 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    _HashTable.BucketIterator.currentValue.setter();
    result = 1;
    ++v6;
    v4 = a3;
    if (v14 != a2)
    {
      continue;
    }

    return result;
  }
}

Swift::Int sub_10042CCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_10042C9D4(v8, v9, a1, a2, (a3 + 16), a3 + 32);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    result = sub_10042C948(*a4, a4[1], a1, a2);
    v11 = result;
    v13 = v17;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_10042CD90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_10042CE14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10042CE28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_10042CE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10042CEC4()
{
  result = qword_1006AB620;
  if (!qword_1006AB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB620);
  }

  return result;
}

id sub_10042CF18()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithKeysToFetch:isa];

  return v2;
}

id sub_10042CF9C(void *a1)
{
  v2 = [objc_opt_self() storeWithOptions:3];
  v3 = [objc_opt_self() sharedInstance];
  sub_100006AF0(0, &qword_1006AB698, CLFSettings_ptr);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 applicationBundleIdentifiers];

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006AF0(0, &unk_1006A79C0, CLFPhoneFaceTimeSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata sharedInstance];
  v9 = [v8 incomingCommunicationLimit];

  v10 = [ObjCClassFromMetadata sharedInstance];
  v11 = [v10 outgoingCommunicationLimit];

  v12 = type metadata accessor for ClarityUICallFilter();
  v13 = objc_allocWithZone(v12);
  v20[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v20[4] = &off_100622F18;
  v20[0] = v2;
  v19[3] = sub_100006AF0(0, &unk_1006AB6A0, CNFavorites_ptr);
  v19[4] = &off_10062CD70;
  v19[0] = v3;
  sub_100009AB0(v20, &v13[OBJC_IVAR___CSDClarityUICallFilter_contactStore]);
  sub_100009AB0(v19, &v13[OBJC_IVAR___CSDClarityUICallFilter_favorites]);
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_applications] = v6;
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_incomingCommunicationLimit] = v9;
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_outgoingCommunicationLimit] = v11;
  v18.receiver = v13;
  v18.super_class = v12;
  v14 = v9;
  v15 = v11;
  v16 = objc_msgSendSuper2(&v18, "initWithQueue:", a1);

  sub_100009B7C(v19);
  sub_100009B7C(v20);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_10042D25C(void *a1, id a2)
{
  if (([a2 isTelephonyProvider] & 1) == 0 && !objc_msgSend(a2, "isFaceTimeProvider"))
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v27 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v28 = sub_100009F00(v27);
    *(v28 + 16) = xmmword_10057D690;
    *(v28 + 56) = type metadata accessor for ClarityUICallFilter();
    v29 = sub_10042EA04();
    sub_10000E83C(v29);
    static os_log_type_t.default.getter();
    goto LABEL_35;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_10001151C(v5, v6);
  __chkstk_darwin(v7);
  sub_100007918();
  *(v8 - 16) = v73;
  sub_10000FF58();
  v9 = sub_100013094();

  if ((v9 & 1) != 0 || (v10 = TUPreferredFaceTimeBundleIdentifier(), v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = v11, v10, v73[0] = v9, v73[1] = v12, __chkstk_darwin(v13), sub_100007918(), *(v14 - 16) = v73, sub_10000FF58(), v15 = sub_100013094(), , v15))
  {
    v16 = *&v2[OBJC_IVAR___CSDClarityUICallFilter_incomingCommunicationLimit];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_100016098();
    if (v17 == v18 && v9 == v19)
    {

      goto LABEL_12;
    }

    v21 = sub_100015354(v17, v19, v18);
    v22 = v16;

    if (v21)
    {

LABEL_12:
      v23 = [a1 remoteMember];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 handle];

        v26 = [v25 tuHandle];
      }

      else
      {
        v26 = 0;
      }

      v35 = sub_10042E120(v26);

      if (qword_1006A0AA0 != -1)
      {
        sub_100008134(&qword_1006A0AA0);
      }

      v36 = qword_1006BA380;
      v37 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v38 = sub_100009F24(v37);
      *(v38 + 16) = xmmword_10057D6A0;
      *(v38 + 56) = type metadata accessor for ClarityUICallFilter();
      v39 = sub_10042EA04();
      sub_1000105A0(v39);
      sub_10000F898(&type metadata for Bool);
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("%@ Assistive Access allows calls from All Contacts. Is in contacts: %i", 70, 2, &_mh_execute_header, v36, v40, v38);
LABEL_24:

      v34 = v35 ^ 1;
      return v34 & 1;
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = sub_100016098();
    if (v41 == v42 && v9 == v43)
    {
    }

    else
    {
      v45 = sub_100015354(v41, v43, v42);

      if ((v45 & 1) == 0)
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v51 == v54 && v53 == v55)
        {
        }

        else
        {
          v57 = sub_10000EBBC(v54);

          if ((v57 & 1) == 0)
          {
            if (qword_1006A0AA0 != -1)
            {
              sub_100008134(&qword_1006A0AA0);
            }

            static os_log_type_t.error.getter();
            v58 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v59 = sub_100009F00(v58);
            *(v59 + 16) = xmmword_10057D690;
            *(v59 + 56) = type metadata accessor for ClarityUICallFilter();
            v60 = sub_10042EA04();
            sub_1000105A0(v60);
            v61 = v2;
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)(v62);
            goto LABEL_36;
          }
        }

        v63 = [a1 remoteMember];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 handle];

          v66 = [v65 tuHandle];
        }

        else
        {
          v66 = 0;
        }

        sub_10042E358(v66);
        v35 = v67;

        if (qword_1006A0AA0 != -1)
        {
          sub_100008134(&qword_1006A0AA0);
        }

        v68 = qword_1006BA380;
        v69 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v70 = sub_100009F24(v69);
        *(v70 + 16) = xmmword_10057D6A0;
        *(v70 + 56) = type metadata accessor for ClarityUICallFilter();
        v71 = sub_10042EA04();
        sub_1000105A0(v71);
        sub_10000F898(&type metadata for Bool);
        v72 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("%@ Assistive Access allows calls from Selected Contacts. Is in Selected Contacts: %i", 84, 2, &_mh_execute_header, v68, v72, v70);
        goto LABEL_24;
      }
    }

    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v46 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v47 = sub_100009F00(v46);
    *(v47 + 16) = xmmword_10057D690;
    *(v47 + 56) = type metadata accessor for ClarityUICallFilter();
    v48 = sub_10042EA04();
    sub_10000E83C(v48);
    static os_log_type_t.default.getter();
LABEL_35:
    sub_10000A7F4();
    os_log(_:dso:log:type:_:)(v49);
LABEL_36:

    v34 = 0;
    return v34 & 1;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v30 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v31 = sub_100009F00(v30);
  *(v31 + 16) = xmmword_10057D690;
  *(v31 + 56) = type metadata accessor for ClarityUICallFilter();
  v32 = sub_10042EA04();
  sub_10000E83C(v32);
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)(v33);

  v34 = 1;
  return v34 & 1;
}

uint64_t sub_10042D9C0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (v7 == a2 && v8 == a3)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v11 = TUPreferredFaceTimeBundleIdentifier();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (!a3)
  {

LABEL_31:
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v42 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v43 = sub_100009F00(v42);
    *(v43 + 16) = xmmword_10057D690;
    *(v43 + 56) = type metadata accessor for ClarityUICallFilter();
    v44 = sub_10042EA04();
    sub_10000E83C(v44);
    static os_log_type_t.default.getter();
    goto LABEL_47;
  }

  if (v12 == a2 && v14 == a3)
  {
    goto LABEL_16;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = sub_10001151C(v17, v18);
  __chkstk_darwin(v19);
  sub_100007918();
  *(v20 - 16) = v77;
  sub_10000FF58();
  v21 = sub_100013094();

  if ((v21 & 1) != 0 || (v22 = TUPreferredFaceTimeBundleIdentifier(), v21 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v24 = v23, v22, v77[0] = v21, v77[1] = v24, __chkstk_darwin(v25), sub_100007918(), *(v26 - 16) = v77, sub_10000FF58(), v27 = sub_100013094(), , v27))
  {
    v28 = *&v3[OBJC_IVAR___CSDClarityUICallFilter_outgoingCommunicationLimit];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = sub_100016098();
    if (v29 == v30 && v21 == v31)
    {

      goto LABEL_26;
    }

    v33 = sub_100015354(v29, v31, v30);
    v34 = v28;

    if (v33)
    {

LABEL_26:
      v35 = sub_10042E120(a1);
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134(&qword_1006A0AA0);
      }

      v36 = qword_1006BA380;
      v37 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v38 = sub_100009F24(v37);
      *(v38 + 16) = xmmword_10057D6A0;
      *(v38 + 56) = type metadata accessor for ClarityUICallFilter();
      v39 = sub_10042EA04();
      sub_1000105A0(v39);
      sub_10000F898(&type metadata for Bool);
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("%@ Assistive Access allows calls to All Contacts. Is in contacts: %i", 68, 2, &_mh_execute_header, v36, v40, v38);
LABEL_29:

      v41 = v35 ^ 1;
      return v41 & 1;
    }

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = sub_100016098();
    if (v49 == v50 && v21 == v51)
    {
    }

    else
    {
      v53 = sub_100015354(v49, v51, v50);

      if ((v53 & 1) == 0)
      {
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v59 == v62 && v61 == v63)
        {
        }

        else
        {
          v65 = sub_10000EBBC(v62);

          if ((v65 & 1) == 0)
          {
            if (qword_1006A0AA0 != -1)
            {
              sub_100008134(&qword_1006A0AA0);
            }

            static os_log_type_t.error.getter();
            v66 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v67 = sub_100009F00(v66);
            *(v67 + 16) = xmmword_10057D690;
            *(v67 + 56) = type metadata accessor for ClarityUICallFilter();
            v68 = sub_10042EA04();
            sub_1000105A0(v68);
            v69 = v3;
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)(v70);
            goto LABEL_48;
          }
        }

        sub_10042E358(a1);
        v35 = v71;
        if (qword_1006A0AA0 != -1)
        {
          sub_100008134(&qword_1006A0AA0);
        }

        v72 = qword_1006BA380;
        v73 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v74 = sub_100009F24(v73);
        *(v74 + 16) = xmmword_10057D6A0;
        *(v74 + 56) = type metadata accessor for ClarityUICallFilter();
        v75 = sub_10042EA04();
        sub_1000105A0(v75);
        sub_10000F898(&type metadata for Bool);
        v76 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("%@ Assistive Access allows calls to Selected Contacts. Is in Selected Contacts: %i", 82, 2, &_mh_execute_header, v72, v76, v74);
        goto LABEL_29;
      }
    }

    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v54 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v55 = sub_100009F00(v54);
    *(v55 + 16) = xmmword_10057D690;
    *(v55 + 56) = type metadata accessor for ClarityUICallFilter();
    v56 = sub_10042EA04();
    sub_10000E83C(v56);
    static os_log_type_t.default.getter();
LABEL_47:
    sub_10000A7F4();
    os_log(_:dso:log:type:_:)(v57);
LABEL_48:

    v41 = 0;
    return v41 & 1;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v45 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v46 = sub_100009F00(v45);
  *(v46 + 16) = xmmword_10057D690;
  *(v46 + 56) = type metadata accessor for ClarityUICallFilter();
  v47 = sub_10042EA04();
  sub_10000E83C(v47);
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)(v48);

  v41 = 1;
  return v41 & 1;
}

void *sub_10042E120(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 24);
    v4 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 32);
    sub_100009B14((v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore), v3);
    v5 = v2;
    v6 = [v5 value];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = (*(v4 + 8))(v7, v9, v3, v4);

    v11 = [v5 value];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100005E74(v12, v14, v10);

    if (v15)
    {
      v16 = sub_10000B6F4(v15);

      return (v16 > 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_10042E358(void *a1)
{
  if (!a1)
  {
    return;
  }

  sub_100006AF0(0, &qword_1006AB680, CNContactFetchRequest_ptr);
  v3 = a1;
  v4 = sub_10042CF18();
  v5 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 24);
  v6 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 32);
  sub_100009B14((v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore), v5);
  v7 = [v3 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (*(v6 + 8))(v8, v10, v5, v6);
  v12 = 0;

  v51 = v1;
  v52 = v3;
  v53 = v4;
  v13 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = _swiftEmptyArrayStorage;
  v55 = v11 + 64;
  v56 = v11;
  v54 = v17;
  while (v16)
  {
LABEL_10:
    v20 = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));
    v21 = v20 >> 62;
    v61 = v20;
    if (v20 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v18 >> 62;
    if (v18 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v22;
    v25 = __OFADD__(v24, v22);
    v26 = v24 + v22;
    if (v25)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v23)
      {
LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_21:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v18 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_20;
    }

    v27 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v58 = v27;
    v59 = v18;
    v16 &= v16 - 1;
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) >> 1) - v28;
    v30 = v27 + 8 * v28;
    if (v21)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (!v32)
      {
        goto LABEL_36;
      }

      v33 = v32;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (v29 < v34)
      {
        goto LABEL_56;
      }

      if (v33 < 1)
      {
        goto LABEL_57;
      }

      v57 = v34;
      v35 = v30 + 32;
      sub_10042EA58();
      for (i = 0; i != v33; ++i)
      {
        sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
        v37 = sub_100024CFC(v62, i, v61);
        v39 = *v38;
        v37(v62, 0);
        *(v35 + 8 * i) = v39;
      }

      v13 = v55;
      v11 = v56;
      v17 = v54;
      v31 = v57;
LABEL_32:

      v18 = v59;
      if (v31 < v60)
      {
        goto LABEL_53;
      }

      if (v31 > 0)
      {
        v40 = *(v58 + 16);
        v25 = __OFADD__(v40, v31);
        v41 = v40 + v31;
        if (v25)
        {
          goto LABEL_54;
        }

        *(v58 + 16) = v41;
      }
    }

    else
    {
      v31 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        if (v29 < v31)
        {
          goto LABEL_55;
        }

        sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
        swift_arrayInitWithCopy();
        goto LABEL_32;
      }

LABEL_36:

      if (v60 > 0)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v12;
    if (v16)
    {
      v12 = v19;
      goto LABEL_10;
    }
  }

  v42 = sub_10000B6F4(v18);
  v43 = 0;
  v44 = (v51 + OBJC_IVAR___CSDClarityUICallFilter_favorites);
  v45 = v18 & 0xC000000000000001;
  while (v42 != v43)
  {
    sub_10039C390(v43, v45 == 0, v18);
    v46 = v18;
    if (v45)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v47 = *(v18 + 8 * v43 + 32);
    }

    v48 = v47;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_51;
    }

    v49 = v44[3];
    v50 = v44[4];
    sub_100009B14(v44, v49);
    LOBYTE(v49) = sub_1003C3D54(v48, v49, v50);

    ++v43;
    v18 = v46;
    if (v49)
    {

      return;
    }
  }
}

id sub_10042E930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUICallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10042EA04()
{
  result = qword_1006AB690;
  if (!qword_1006AB690)
  {
    type metadata accessor for ClarityUICallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB690);
  }

  return result;
}

unint64_t sub_10042EA58()
{
  result = qword_1006A79F0;
  if (!qword_1006A79F0)
  {
    sub_10026DCB4(&unk_1006A79E0, &unk_10057DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A79F0);
  }

  return result;
}

id sub_10042EB08(void *a1)
{
  v2 = v1;
  type metadata accessor for URL();
  sub_100007FEC();
  v28 = v4;
  v29 = v3;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v27 = v6 - v5;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v25 = v8;
  v26 = v7;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v11 = v10 - v9;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100008070();
  __chkstk_darwin(v12);
  sub_100007FDC();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  sub_100007FDC();
  v24 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_ringBackTone;
  URL.init(fileURLWithPath:)();
  v14 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration;
  *&v1[v14] = [objc_allocWithZone(AVCAnsweringMachineConfiguration) init];
  *&v1[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine] = 0;
  v23 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_queue;
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v1[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped] = 0;
  [*&v1[v14] setIsMessageCaptioningEnabled:0];
  [*&v1[v14] setIsMessageRecordingEnabled:0];
  v15 = *&v1[v14];
  (*(v28 + 16))(v27, &v1[v24], v29);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  (*(v28 + 8))(v27, v29);
  [v16 setAnnouncementAsset:v19];

  v20 = *&v2[v14];
  sub_1002A8978(v20, a1);

  v31.receiver = v2;
  v31.super_class = type metadata accessor for HoldMusicAnsweringMachine(0);
  v21 = objc_msgSendSuper2(&v31, "init");
  sub_10042F0FC();

  return v21;
}

id sub_10042EEB8()
{
  v1 = *&v0[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine];
  if (v1)
  {
    [v1 stop];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HoldMusicAnsweringMachine(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for HoldMusicAnsweringMachine(uint64_t a1)
{
  result = qword_1006AB6D8;
  if (!qword_1006AB6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042F01C()
{
  v1 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100008AE8();
  }

  *(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped) = 1;
  v10 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine;
  [*(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine) stop];
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_10042F0FC()
{
  if (*(v0 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped))
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v1 = type metadata accessor for Logger();
    sub_1000075F0(v1, qword_1006BA5F8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = sub_100006DC4();
      *v3 = 0;
      sub_10000EBE0(&_mh_execute_header, v4, v5, "not restarting, we have stopped", v6, v7, v8, v9, v28, oslog);
      sub_100005F40(v3);
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v10 = type metadata accessor for Logger();
    sub_1000075F0(v10, qword_1006BA5F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100006DC4();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "HoldMusicAnsweringMachine: restartAnsweringMachine", v13, 2u);
      sub_100005F40(v13);
    }

    v14 = v0;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v14[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      sub_10000A154();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      sub_100009A04(v18, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v18);
      sub_100008AE8();
    }

    v26 = [objc_allocWithZone(AVCAnsweringMachine) initWithConfiguration:*&v14[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration] delegate:v14 delegateQueue:*&v14[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_queue]];
    v27 = *&v14[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine];
    *&v14[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine] = v26;
    oslog = v26;

    [oslog start];
  }
}

uint64_t sub_10042F3B8(uint64_t a1)
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

void sub_10042F46C()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_100006DC4();
    *v2 = 0;
    sub_10000EBE0(&_mh_execute_header, v3, v4, "HoldMusicAnsweringMachine: serverDidDisconnect", v5, v6, v7, v8, v9, oslog);
    sub_100005F40(v2);
  }
}

void sub_10042F574()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000689C(v2))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100008AE8();
  }

  sub_10042F0FC();
}

id sub_10042F734()
{
  v1 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100008AE8();
  }

  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine);

  return [v10 stop];
}

void sub_10042F868(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA5F8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 67109378;
    *(v7 + 4) = a2 & 1;
    *(v7 + 8) = 2080;
    v9 = sub_1002910C8(a3);
    v11 = sub_10002741C(v9, v10, &v13);

    *(v7 + 10) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "HoldMusicAnsweringMachine: didStart: %{BOOL}d error:%s", v7, 0x12u);
    sub_100009B7C(v8);
    sub_100005F40(v8);
    sub_100008AE8();
  }
}

uint64_t sub_10042FA30()
{
  sub_1000099A4(v0 + OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor, &qword_1006A2BE8, &unk_10057D980);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SoundProvider(uint64_t a1)
{
  result = qword_1006AB718;
  if (!qword_1006AB718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042FB08(uint64_t a1)
{
  sub_10042FBA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10042FBA4(uint64_t a1)
{
  if (!qword_1006AB728)
  {
    type metadata accessor for SoundDescriptor(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006AB728);
    }
  }
}

uint64_t sub_10042FBFC()
{
  v1 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  v2 = type metadata accessor for SoundDescriptor(0);
  sub_10000AF74(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13callservicesd13SoundProvider_player;
  *(v0 + v3) = [objc_allocWithZone(TUCallSoundPlayer) init];
  return v0;
}

void sub_10042FC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  v5 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&qword_1006AB7D0, &unk_1005874A0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  sub_100430228(a1, &v46 - v19);
  sub_10000AF74(v20, 0, 1, v5);
  v21 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  swift_beginAccess();
  v22 = *(v9 + 56);
  sub_10004CF98(v20, v11);
  v48 = v21;
  sub_10004CF98(v3 + v21, &v11[v22]);
  sub_100008860(v11);
  if (v24)
  {
    sub_1000099A4(v20, &qword_1006A2BE8, &unk_10057D980);
    sub_100008860(&v11[v22]);
    if (v24)
    {
      v23 = sub_1000099A4(v11, &qword_1006A2BE8, &unk_10057D980);
LABEL_14:
      v30 = sub_100004778(v23);
      v31 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Asked to begin or update playback of sound but new descriptor is equal to activeDescriptor so doing nothing", 107, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);

      return;
    }

    goto LABEL_9;
  }

  sub_10004CF98(v11, v18);
  sub_100008860(&v11[v22]);
  if (v24)
  {
    sub_1000099A4(v20, &qword_1006A2BE8, &unk_10057D980);
    sub_100430328(v18);
LABEL_9:
    v47 = v15;
    sub_1000099A4(v11, &qword_1006AB7D0, &unk_1005874A0);
    goto LABEL_10;
  }

  v47 = v15;
  sub_10033BF60(&v11[v22], v7);
  v29 = sub_10039FCF8(v18, v7);
  sub_100430328(v7);
  sub_1000099A4(v20, &qword_1006A2BE8, &unk_10057D980);
  sub_100430328(v18);
  v23 = sub_1000099A4(v11, &qword_1006A2BE8, &unk_10057D980);
  if (v29)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_10004CDCC();
  v25 = [objc_allocWithZone(TUCallSoundPlayerDescriptor) initWithSoundType:*a1 provider:*(a1 + 8) video:*(a1 + 16) region:*(a1 + 24) audioPlayingWarmupNeeded:*(a1 + *(v5 + 36))];
  if (v25)
  {
    v26 = v25;
    v27 = *(v3 + OBJC_IVAR____TtC13callservicesd13SoundProvider_player);
    if (v50)
    {
      aBlock[4] = v50;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100056350;
      aBlock[3] = &unk_1006303A0;
      v28 = _Block_copy(aBlock);
    }

    else
    {
      v28 = 0;
    }

    v38 = v47;
    v39 = [v27 attemptToPlayDescriptor:v26 completion:v28];
    _Block_release(v28);
    if (v39)
    {

      sub_100430228(a1, v38);
      sub_10000AF74(v38, 0, 1, v5);
      v41 = v48;
      swift_beginAccess();
      sub_10004D044(v38, v3 + v41);
      swift_endAccess();
    }

    else
    {
      v42 = sub_100004778(v40);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_10057D690;
      *(v43 + 56) = sub_10043028C();
      *(v43 + 64) = sub_1004302D0();
      *(v43 + 32) = v26;
      v44 = v26;
      v45 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Attempt to play call sound player descriptor %@ returned false", 62, 2, &_mh_execute_header, v42, v45, v43);
    }
  }

  else
  {
    v32 = sub_100004778(0);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10057D690;
    sub_100430228(a1, v7);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100009D88();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Asked to begin or update playback of sound with descriptor %@ but no TUCallSoundPlayerDescriptor could be determined, so not playing", 132, 2, &_mh_execute_header, v32, v37, v33);
  }
}

uint64_t sub_100430228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10043028C()
{
  result = qword_1006AB7D8;
  if (!qword_1006AB7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB7D8);
  }

  return result;
}

unint64_t sub_1004302D0()
{
  result = qword_1006AB7E0;
  if (!qword_1006AB7E0)
  {
    sub_10043028C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB7E0);
  }

  return result;
}

uint64_t sub_100430328(uint64_t a1)
{
  v2 = type metadata accessor for SoundDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100430384(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004303F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (Notification.userInfo.getter())
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v3;
      AnyHashable.init<A>(_:)();
      sub_100006600();
      sub_100006780(v20);
      if (!v22)
      {

        return sub_10004975C(v21);
      }

      if (swift_dynamicCast())
      {
        v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21[1] = v4;
        AnyHashable.init<A>(_:)();
        sub_100006600();

        sub_100006780(v20);
        if (v22)
        {
          v5 = swift_dynamicCast();
          v6 = v5 == 0;
          if (v5)
          {
            v7 = v18;
          }

          else
          {
            v7 = 0;
          }

          if (v6)
          {
            v8 = 0;
          }

          else
          {
            v8 = v19;
          }
        }

        else
        {
          sub_10004975C(v21);
          v7 = 0;
          v8 = 0;
        }

        v9 = sub_100430778(v7, v8);

        if (qword_1006A0B30 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000AF9C(v10, qword_1006BA610);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v20[0] = v14;
          *v13 = 67109378;
          *(v13 + 4) = v18;
          *(v13 + 8) = 2080;
          LOBYTE(v21[0]) = v9;
          v15 = String.init<A>(reflecting:)();
          v17 = sub_10002741C(v15, v16, v20);

          *(v13 + 10) = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "Handling avAudioSessionMuteStateChanged %{BOOL}d with muteReason %s", v13, 0x12u);
          sub_100009B7C(v14);
        }

        sub_100430700(v18, v9);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100430700(uint64_t result, char a2)
{
  if (*(v2 + 16))
  {
    v4 = result;
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    sub_1003C6BAC(v4 & 1, a2 & 1, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100430778(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v3 == a2)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10043080C()
{
  sub_100432E00(v0);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 normalizedHandleWithDestinationID:v3];
  }

  else
  {
    v5 = [v0 localSenderIdentity];
    if (!v5)
    {
      goto LABEL_7;
    }

    v3 = v5;
    v4 = [v5 handle];
  }

  v6 = v4;

  if (v6)
  {
    sub_1002E4FD0();
  }

LABEL_7:
  type metadata accessor for Handle();
  v7 = sub_10000C2F0();

  return sub_10000AF74(v7, v8, v9, v10);
}

uint64_t sub_100430904()
{
  v1 = [v0 handle];
  if (v1)
  {
    v2 = v1;
    sub_1002E4FD0();
  }

  type metadata accessor for Handle();
  v3 = sub_10000C2F0();

  return sub_10000AF74(v3, v4, v5, v6);
}

void *sub_100430978@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  sub_100011530();
  v5 = type metadata accessor for Date();
  sub_100007FEC();
  v66 = v6;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v11);
  sub_100006688();
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  type metadata accessor for UUID();
  sub_100007FEC();
  v74 = v16;
  v75 = v15;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = sub_10026D814(&qword_1006AB9E8, &qword_100587630);
  v21 = sub_100007BF0(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v76 = v1;
  v69 = OBJC_IVAR___CSDAudioCallRecordingSession__call;
  Strong = swift_unknownObjectWeakLoadStrong();
  v71 = v2;
  v72 = v10;
  v77 = v14;
  v70 = v5;
  if (Strong)
  {
    v27 = Strong;
    sub_100430904();
  }

  else
  {
    v28 = type metadata accessor for Handle();
    sub_10000AF74(v25, 1, 1, v28);
  }

  v29 = type metadata accessor for Handle();
  v73 = &v65;
  sub_100007FEC();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v34);
  v36 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v67 = v25;
  sub_100335188(v25, &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1006AB9E8, &qword_100587630);
  v37 = sub_100015468(&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v29);
  v78 = v19;
  if (v37 == 1)
  {
    sub_1000099A4(&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1006AB9E8, &qword_100587630);
    v79 = _swiftEmptyArrayStorage;
    v38 = v76;
  }

  else
  {
    v65 = *(v31 + 32);
    v39 = v65(&v65 - v36, &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    __chkstk_darwin(v39);
    (*(v31 + 16))(&v65 - v36, &v65 - v36, v29);
    sub_10047069C(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    v79 = v40;
    v38 = v76;
    if (v42 >= v41 >> 1)
    {
      sub_10047069C(v41 > 1, v42 + 1, 1, v79);
      v79 = v64;
    }

    (*(v31 + 8))(&v65 - v36, v29);
    v43 = v79;
    *(v79 + 2) = v42 + 1;
    v65(&v43[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v42], &v65 - v36, v29);
    v19 = v78;
  }

  v44 = v75;
  (*(v74 + 16))(v19, v38 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v75);
  v45 = v77;
  UUID.init(uuidString:)();
  result = sub_100015468(v45, 1, v44);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v47 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
    swift_beginAccess();
    v48 = v71;
    sub_100335188(v38 + v47, v71, &qword_1006A3C70, &unk_10057EA80);
    v49 = sub_10002F6F4();
    v50 = v70;
    if (sub_100015468(v49, v51, v70) == 1)
    {
      static Date.now.getter();
      v52 = sub_10002F6F4();
      v54 = sub_100015468(v52, v53, v50);
      if (v54 != 1)
      {
        v54 = sub_1000099A4(v48, &qword_1006A3C70, &unk_10057EA80);
      }
    }

    else
    {
      v54 = (*(v66 + 32))(v72, v48, v50);
    }

    __chkstk_darwin(v54);
    v55 = swift_unknownObjectWeakLoadStrong();
    if (v55)
    {
      v56 = v55;
      sub_10043080C();
    }

    else
    {
      v57 = sub_10002F6F4();
      sub_10000AF74(v57, v58, 1, v29);
    }

    v59 = type metadata accessor for ConversationProvider();
    v60 = sub_100007BF0(v59);
    __chkstk_darwin(v60);
    sub_100007FDC();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v61 = result;
      v62 = [result provider];

      v63 = [v62 localizedName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ConversationProvider.init(name:)();
      _ConversationRecordingContext.init(id:conversationUUID:startedRecording:localHandle:remoteHandles:conversationProvider:)();
      return sub_1000099A4(v67, &qword_1006AB9E8, &qword_100587630);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100431034(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035FE4;

  return static RecordingMediaComposer.composeRecording(from:)(a1);
}

id sub_1004310E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CSDCallRecordingExtensionController_extensionConnectionFactory] = a1;
  v4 = &v3[OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CallRecordingExtensionController();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100431134()
{
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  sub_100011530();
  v4 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100430978(v10);
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_10000AF74(v1, 0, 1, v11);
  __chkstk_darwin(v12);
  (*(v6 + 16))(v10, v10, v4);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v0;
  (*(v6 + 32))(&v14[v13], v10, v4);
  v15 = v0;
  sub_10000C8BC();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_100431304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  v6 = swift_task_alloc();
  *(v5 + 72) = v6;
  *v6 = v5;
  v6[1] = sub_100431394;

  return sub_1003DDB60();
}

uint64_t sub_100431394(uint64_t a1)
{
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v7 = *v2;
  sub_100008060();
  *v8 = v7;
  *(v5 + 80) = v1;

  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1004314A8()
{
  v15 = v0;
  v0[2] = v0[11];
  v1 = v0[10];
  v2 = v0[8];
  v0[5] = &type metadata for RecordingExtensionConnection;
  v0[6] = &off_10062DC80;
  v3 = sub_100009B14(v0 + 2, &type metadata for RecordingExtensionConnection);
  sub_1003DEF4C(v2, *v3);
  sub_100009B7C(v0 + 2);
  if (v1)
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA640);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100005274();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v0[7] = v1;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error creating recording extension connection: %s", v7, 0xCu);
      sub_100009B7C(v8);
      sub_100005F40(v8);
      sub_100005F40(v7);
    }

    else
    {
    }
  }

  sub_100009EF4();

  return v12();
}

uint64_t sub_1004317BC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v6);
  sub_100006688();
  __chkstk_darwin(v7);
  sub_100011530();
  v8 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100430978(v14);
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_10000AF74(v3, 0, 1, v15);
  __chkstk_darwin(v16);
  (*(v10 + 16))(v14, v14, v8);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v4;
  *(v18 + 5) = a2;
  (*(v10 + 32))(&v18[v17], v14, v8);
  v19 = v4;
  v20 = a2;
  sub_10000C8BC();

  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_100431998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for UUID();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[24] = v9;
  *v9 = v6;
  v9[1] = sub_100431B34;

  return sub_1003DDB60();
}

uint64_t sub_100431B34(uint64_t a1)
{
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v7 = *v2;
  sub_100008060();
  *v8 = v7;
  *(v5 + 200) = v1;

  if (!v1)
  {
    *(v5 + 208) = a1;
  }

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100431C48()
{
  v0[2] = v0[26];
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v0[5] = &type metadata for RecordingExtensionConnection;
  v0[6] = &off_10062DC80;
  v4 = OBJC_IVAR___CSDAudioCallRecordingSession_baseRecordingURL;
  swift_beginAccess();
  sub_100335188(v3 + v4, v2, &unk_1006A52C0, &unk_10057D930);
  v5 = sub_10002F6F4();
  if (sub_100015468(v5, v6, v1) == 1)
  {
    sub_1000099A4(v0[19], &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v7 = v0[13];
    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA640);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (sub_10000F96C())
    {
      v12 = v0[13];
      v13 = sub_100005274();
      v14 = swift_slowAlloc();
      v39[0] = v14;
      *v13 = 136315138;
      v0[11] = v12;
      type metadata accessor for AudioCallRecordingSession(0);
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, v39);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Recording session does not have a base recording URL! Cannot pass recording to client %s", v13, 0xCu);
      sub_100009B7C(v14);
      sub_100005F40(v14);
      sub_100005F40(v13);
    }

    sub_100432DAC();
    v19 = swift_allocError();
    swift_willThrow();
    sub_100009B7C(v0 + 2);
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    sub_10000AF9C(v8, qword_1006BA640);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10000F96C())
    {
      sub_100005274();
      v21 = sub_10000681C();
      v39[0] = v21;
      *v8 = 136315138;
      v0[10] = v19;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v22 = String.init<A>(reflecting:)();
      v24 = sub_10002741C(v22, v23, v39);

      *(v8 + 4) = v24;
      sub_10000E4D4(&_mh_execute_header, v25, v26, "Error ending recording extension connection: %s");
      sub_100009B7C(v21);
      sub_100005F40(v21);
      sub_100006868();
    }

    else
    {
    }

    sub_1000173CC();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[21];
  v30 = v0[19];
  v31 = v0[12];
  v32 = *(v29 + 32);
  v0[27] = v32;
  v0[28] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v27, v30, v28);
  v33 = v31 + OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass;
  v0[29] = *(v31 + OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass);
  v0[30] = *(v33 + 8);
  v34 = swift_task_alloc();
  v0[31] = v34;
  *v34 = v0;
  v34[1] = sub_100432214;
  sub_100011274();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_100432214()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 256) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100432310()
{
  v18 = v0;
  v3 = *(v0 + 256);
  (*(*(v0 + 240) + 16))(*(v0 + 184));
  if (v3)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
LABEL_5:
    sub_100009B7C((v0 + 16));
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v7 = type metadata accessor for Logger();
    sub_100015BB0(v7, qword_1006BA640);
    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005F94();
    if (sub_10000F96C())
    {
      sub_100005274();
      v17 = sub_10000681C();
      sub_100035C34(4.8149e-34);
      v9 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v10 = sub_100007A64(v9);
      sub_10002741C(v10, v11, &v17);
      sub_100018F58();
      *(v1 + 4) = v2;
      sub_10000E4D4(&_mh_execute_header, v12, v13, "Error ending recording extension connection: %s");
      sub_10000AA88();
      sub_100006868();
    }

    else
    {
    }

    sub_1000173CC();

    sub_100009EF4();

    return v14();
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  if (sub_100015468(v5, 1, v4) == 1)
  {
    v1 = *(v0 + 184);
    v6 = *(v0 + 168);
    sub_1000099A4(v5, &unk_1006A52C0, &unk_10057D930);
    sub_100432DAC();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v1, v4);
    goto LABEL_5;
  }

  (*(v0 + 216))(*(v0 + 176), v5, v4);
  sub_100009B14((v0 + 16), *(v0 + 40));
  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_1004325E4;

  return sub_1003DF1D4();
}

uint64_t sub_1004325E4()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 272) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1004326E0()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  if (v6)
  {
    v25 = v0[23];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    v23 = v0[13];
    v24 = v0[22];
    v14 = sub_100005274();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    (*(v11 + 16))(v12, v23 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v13);
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Extension ingested recording succesfully %s", v14, 0xCu);
    sub_100009B7C(v15);
    sub_100005F40(v15);
    sub_100005F40(v14);

    v19 = *(v9 + 8);
    v19(v24, v10);
    v20 = v25;
  }

  else
  {

    v19 = *(v9 + 8);
    v19(v8, v10);
    v20 = v7;
  }

  v19(v20, v10);
  sub_100009B7C(v0 + 2);
  sub_1000173CC();

  sub_100009EF4();
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

id sub_100432C20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CallRecordingExtensionController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100432CD0()
{
  sub_10000F984();
  sub_100007648();
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007BF0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100035FE0;
  sub_100016244();
  sub_10001AB70();

  return sub_100431998(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_100432DAC()
{
  result = qword_1006AB9E0;
  if (!qword_1006AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB9E0);
  }

  return result;
}

uint64_t sub_100432E00(void *a1)
{
  v1 = [a1 localMemberHandleValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100432E64()
{
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007BF0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100035FE4;
  v3 = sub_100016244();

  return sub_100431304(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for RecordingExtensionHostErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100432FF8()
{
  result = qword_1006AB9F0;
  if (!qword_1006AB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB9F0);
  }

  return result;
}

uint64_t sub_10043304C()
{
  type metadata accessor for ConversationLinkDescriptorManager();
  v0 = swift_allocObject();
  result = sub_10043418C();
  qword_1006BA858 = v0;
  return result;
}

id sub_100433088()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(TUConversationLinkDescriptorXPCClientDataSource) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1004330F4()
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000105AC();
  sub_100433DC8();
  if (v6)
  {
    sub_100011544();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA5E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ConversationLinkSync: Migrating local identifier", v10, 2u);
      sub_100005F40(v10);
    }

    if (sub_100015370())
    {
      sub_1000105AC();
      sub_100434078();
    }
  }

  else
  {
    v11 = sub_1000105AC();
    sub_1004339A0(v11, v12);
    if (v13)
    {
      sub_100011544();
    }

    else
    {
      UUID.init()();
      UUID.uuidString.getter();
      sub_100011544();
      (*(v3 + 8))(v5, v2);
      v14 = sub_100015370();
      if (qword_1006A0B20 != -1)
      {
        sub_100008228(&qword_1006A0B20);
      }

      v15 = type metadata accessor for Logger();
      sub_10000AF9C(v15, qword_1006BA5E0);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = sub_100005E84();
        v22 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_10002741C(v0, v1, &v22);
        *(v18 + 12) = 1024;
        *(v18 + 14) = v14 & 1;
        _os_log_impl(&_mh_execute_header, v16, v17, "ConversationLinkSync: localGeneratorIdentifier: No local generated identifier -- creating it now {locallyGeneratedIdentifier: %s, success: %{BOOL}d}", v18, 0x12u);
        sub_100009B7C(v19);
        sub_100005F40(v19);
        sub_100005F40(v18);
      }
    }
  }

  return v0;
}

void sub_100433420(uint64_t *a2@<X8>)
{
  v3 = sub_100433470();
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004334E4(v3 + 1);
    *a2 = v4;
  }
}

id sub_100433470()
{
  sub_10000F8B4();
  v0 = sub_100433EBC();
  if (v1)
  {
    v2 = sub_10000F8B4();
    v4 = sub_100433BC4(v2, v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = v0;
    if (sub_100433560(v0, 0xD000000000000014, 0x8000000100577890))
    {
      sub_10000F8B4();
      sub_100434078();
    }
  }

  return v6;
}

void sub_1004334E4(uint64_t a1)
{
  if ((sub_100433560(a1, 0xD000000000000014, 0x8000000100577890) & 1) == 0)
  {

    sub_100433FB4(a1, 0);
  }
}

id sub_100433560(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100433088();
  v7 = String._bridgeToObjectiveC()();
  v21 = 0;
  v8 = [v6 setInteger:a1 forKey:v7 error:&v21];

  if (v8)
  {
    v9 = v21;
  }

  else
  {
    v10 = v21;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA5E0);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      sub_100007C08();
      v15 = sub_10000D670();
      v16 = sub_100005E84();
      v21 = v16;
      *v11 = 136315394;
      v17 = sub_10002741C(a2, a3, &v21);
      sub_10000AB08(v17);
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v15 = v18;
      sub_100018388(&_mh_execute_header, v19, v14, "ConversationLinkSync: Failed to store int on ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v15);
      sub_100005F40(v15);
      sub_100009B7C(v16);
      sub_100005F40(v16);
      sub_100005F40(v11);
    }

    else
    {
    }
  }

  return v8;
}

id sub_100433778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100433088();
  v5 = String._bridgeToObjectiveC()();
  sub_100006694();
  v6 = String._bridgeToObjectiveC()();
  v23 = 0;
  v7 = [v4 setString:v5 forKey:v6 error:&v23];

  if (v7)
  {
    v8 = v23;
  }

  else
  {
    v9 = v23;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      sub_100007C08();
      v14 = sub_10000D670();
      v15 = sub_100005E84();
      v23 = v15;
      *v10 = 136315394;
      v16 = sub_100006694();
      v19 = sub_10002741C(v16, v17, v18);
      sub_10000AB08(v19);
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v20;
      *v14 = v20;
      sub_100018388(&_mh_execute_header, v21, v13, "ConversationLinkSync: Failed to store string on ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v14);
      sub_100005F40(v14);
      sub_100009B7C(v15);
      sub_100005F40(v15);
      sub_100005F40(v10);
    }

    else
    {
    }
  }

  return v7;
}

id sub_1004339A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100433088();
  sub_100006694();
  v3 = String._bridgeToObjectiveC()();
  v21 = 0;
  v4 = [v2 stringForKey:v3 error:&v21];

  v5 = v21;
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011544();
    v6 = v5;
  }

  else
  {
    v7 = v21;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100007C08();
      v12 = sub_10000D670();
      v13 = sub_100005E84();
      v21 = v13;
      *v8 = 136315394;
      v14 = sub_100006694();
      v17 = sub_10002741C(v14, v15, v16);
      sub_10000AB08(v17);
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v18;
      *v12 = v18;
      sub_100018388(&_mh_execute_header, v19, v11, "ConversationLinkSync: Failed to read string in ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v12);
      sub_100005F40(v12);
      sub_100009B7C(v13);
      sub_100005F40(v13);
      sub_100005F40(v8);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

id sub_100433BC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100433088();
  v5 = String._bridgeToObjectiveC()();
  v18 = 0;
  v6 = [v4 integerForKey:v5 error:&v18];

  v7 = v18;
  if (v18)
  {
    v8 = qword_1006A0B20;
    v9 = v18;
    if (v8 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5E0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100007C08();
      v14 = swift_slowAlloc();
      v15 = sub_100005E84();
      v18 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a1, a2, &v18);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      *v14 = v7;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "ConversationLinkSync: Failed to read int in ConversationLinkDescriptorManager %s %@", v13, 0x16u);
      sub_10028CA5C(v14);
      sub_100005F40(v14);
      sub_100009B7C(v15);
      sub_100005F40(v15);
      sub_100005F40(v13);
    }

    else
    {
    }

    return 0;
  }

  else if (v6 == NSNotFound.getter())
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100433DC8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (!v2)
  {
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v5, &v4);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100433EBC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (!v2)
  {
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v5, &v4);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_100433FB4(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  v5 = String._bridgeToObjectiveC()();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_100434078()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

uint64_t sub_10043410C()
{

  return v0;
}

uint64_t sub_100434134()
{
  sub_10043410C();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10043418C()
{
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = 0;
  return v0;
}

void sub_1004341EC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v70 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v75 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for Locale();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = (v17 - v16);
  v66 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:v6];
  v63 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v61 = v14;
  v19 = *(v14 + 16);
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v73 = v18;
  v62 = v2;
  v76 = v12;
  v69 = v19;
  v19(v18, v2, v12);
  type metadata accessor for URL();
  v65 = v6;
  v71 = v66;
  v68 = v4;
  v20 = Dictionary.init(dictionaryLiteral:)();
  v21 = Dictionary.init(dictionaryLiteral:)();
  v22 = sub_1002E624C();
  [objc_allocWithZone(TUFeatureFlags) init];
  v74 = v11;
  LanguageManager.init(featureFlags:)();
  v67 = [objc_allocWithZone(TUFeatureFlags) init];
  v23 = objc_allocWithZone(v0);
  v24 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver;
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver] = 0;
  v25 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock];
  v25->_os_unfair_lock_opaque = 0;
  LOBYTE(v25[1]._os_unfair_lock_opaque) = 0;
  v26 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap;
  *&v23[v27] = Dictionary.init(dictionaryLiteral:)();
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver] = v63;
  v28 = sub_100006AF0(0, &qword_1006AB198, VMVoicemailManager_ptr);
  v64 = v63;
  sub_1000052D0();
  v33 = sub_100435554(v29, v30, v31, v32);
  v34 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager];
  *v34 = v33;
  *(v34 + 8) = *v82;
  *(v34 + 3) = v28;
  *(v34 + 4) = &off_100622F28;
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue] = v65;
  v35 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict];
  *v35 = 0;
  *(v35 + 1) = v20;
  v36 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap];
  *v36 = 0;
  *(v36 + 1) = v21;
  v37 = v65;

  os_unfair_lock_lock(v25);
  LOBYTE(v25[1]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v25);
  v38 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService];
  *v38 = v22;
  *(v38 + 1) = &off_100621DD8;
  *&v23[v24] = v66;
  v72 = v71;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10003A270(v83, v82, &unk_1006ABCC0, &qword_1005879C8);
  if (*&v82[24])
  {
    sub_10002F0C8(v82, &v79);
  }

  else
  {
    sub_10040A5E8(v85);
    v80 = &type metadata for GreetingsChecksums;
    v81 = &off_10062F718;
    v39 = swift_allocObject();
    *&v79 = v39;
    v40 = v85[1];
    *(v39 + 16) = v85[0];
    *(v39 + 32) = v40;
    *(v39 + 48) = v86;
    if (*&v82[24])
    {
      sub_100009A04(v82, &unk_1006ABCC0, &qword_1005879C8);
    }
  }

  *v82 = 0;
  memset(&v82[8], 0, 40);
  sub_10002F0C8(&v79, &v82[8]);
  v41 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums];
  v43 = *&v82[16];
  v42 = *&v82[32];
  *v41 = *v82;
  *(v41 + 1) = v43;
  *(v41 + 2) = v42;
  v44 = v37;
  v45 = [objc_allocWithZone(CSDCoreTelephonyClient) initWithQueue:v37 shouldRegisterForECBMNotification:0];
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient] = v45;
  v46 = &v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck];
  *v46 = sub_1004355CC;
  v46[1] = 0;
  (*(v75 + 16))(&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager], v74, v70);
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager] = v68;
  v69(&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_locale], v73, v76);
  *&v23[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags] = v67;
  v78.receiver = v23;
  v78.super_class = v0;
  v47 = v68;
  v48 = v67;
  v49 = objc_msgSendSuper2(&v78, "init");
  v50 = *&v49[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient];
  if (v50)
  {
    v51 = v49;
    swift_unknownObjectRetain();

    v52 = v51;
    [v50 setDelegate:v52];
    swift_unknownObjectRelease();
    [*&v47[OBJC_IVAR___CSDSpeechAssetManager_delegates] addObject:v52];

    v53 = *&v52[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService];
    sub_100006890();
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v55 = *(v53 + 104);
    *(v53 + 96) = sub_100446378;
    *(v53 + 104) = v54;
    swift_unknownObjectRelease();

    v56 = *&v52[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver];
    if (v56)
    {
      sub_100006890();
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v82[32] = sub_100446380;
      *&v82[40] = v57;
      *v82 = _NSConcreteStackBlock;
      *&v82[8] = 1107296256;
      *&v82[16] = sub_100004CEC;
      *&v82[24] = &unk_100630B30;
      v54 = _Block_copy(v82);
      v55 = *&v82[40];
      swift_unknownObjectRetain();

      [v56 performBlockAfterFirstUnlock:v54];
      swift_unknownObjectRelease();
      _Block_release(v54);
    }

    v58 = [objc_opt_self() defaultCenter];
    [v58 addObserver:v52 selector:"handleVMAccountsDidChange" name:VMVoicemailManagerAccountsDidChangeNotification object:0];

    swift_unknownObjectRelease();
    (*(v75 + 8))(v74, v70);
    v77 = *(v61 + 8);
    v77(v73, v76);
    sub_100009A04(v83, &unk_1006ABCC0, &qword_1005879C8);
    v59 = v52;
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    sub_10001E440();
    *v82 = Locale.identifier.getter();
    *&v82[8] = v60;
    *&v82[16] = v54;
    *&v82[24] = v55;
    *&v82[32] = &OBJC_IVAR___CSDUserNotificationController_clientManager;
    sub_100299234();

    sub_100435BC8();
    sub_100435650();
    sub_10043625C();

    v77(v62, v76);
    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100434B60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620E08, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100434BAC(char a1)
{
  result = 0x4C746C7561666564;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_5;
    case 2:
      v3 = 5;
LABEL_5:
      result = v3 | 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100434CA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100434B60(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100434CD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100434BAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100434D04()
{
  v1 = v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_100434D44(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock;
  os_unfair_lock_lock(v3);
  *(v3 + 4) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_100434D90(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums);
  os_unfair_lock_lock(v3);
  sub_100445858(&v3[2], a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100434DE4(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  return v3;
}

void sub_100434E28(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  os_unfair_lock_lock(v4);

  *(v4 + 8) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_100434E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate;
  swift_beginAccess();
  sub_100444DDC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_100434ED8()
{
  sub_100005EF4();
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  sub_100006EC4();
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *(v9 - v8) = v11;
  (*(v6 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v4);
  if (v11)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080B0(&qword_1006A0B28);
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v43 = sub_100007630();
    v44.n128_u64[0] = v43;
    *v18 = 67110146;
    *(v18 + 4) = sub_100434D04() & 1;
    *(v18 + 8) = 1024;
    *(v18 + 10) = (*&v14[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck])() & 1;
    *(v18 + 14) = 2080;
    sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    type metadata accessor for URL();
    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = sub_10002741C(v19, v21, &v44);

    *(v18 + 16) = v22;
    *(v18 + 24) = 2080;
    v23 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v25 = v24;
    v27 = v26;
    v48.n128_u64[0] = Locale.identifier.getter();
    v48.n128_u64[1] = v28;
    v49 = v23;
    v50 = v25;
    v51 = v27;
    v29 = String.init<A>(reflecting:)();
    v31 = sub_10002741C(v29, v30, &v44);

    *(v18 + 26) = v31;
    *(v18 + 34) = 1024;
    v32 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v34 = v33;
    v36 = v35;
    v48.n128_u64[0] = Locale.identifier.getter();
    v48.n128_u64[1] = v37;
    v49 = v32;
    v50 = v34;
    v51 = v36;
    LOBYTE(v36) = sub_1000524B0(&v48);

    *(v18 + 36) = v36 & 1;

    _os_log_impl(&_mh_execute_header, v15, v16, "afterFirstUnlock: %{BOOL}d isSupportedLocale: %{BOOL}d greetingsDict: %s configuration: %s hasSpeechAssets: %{BOOL}d", v18, 0x28u);
    swift_arrayDestroy();
    sub_100005F40(v43);
    v38 = v18;
    v17 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
    sub_100005F40(v38);
  }

  else
  {
  }

  if (sub_100434D04() & 1) != 0 && ((*&v14[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck])())
  {
    v39 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    v40 = sub_10000FB38();
    sub_1002CB708(v40, 0xE700000000000000, v39, v1);

    v41 = type metadata accessor for URL();
    LODWORD(v39) = sub_100015468(v1, 1, v41);
    sub_100009A04(v1, &unk_1006A52C0, &unk_10057D930);
    if (v39 != 1)
    {
      LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
      sub_10001E440();
      v44.n128_u64[0] = Locale.identifier.getter();
      v44.n128_u64[1] = v42;
      v45 = v15;
      v46 = v17;
      v47 = v16;
      sub_1000524B0(&v44);
    }
  }

  sub_100005EDC();
}

uint64_t sub_1004353B4()
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  if ((sub_100434D04() & 1) == 0)
  {
    return 1;
  }

  if (((*(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck))() & 1) == 0)
  {
    return 2;
  }

  v8 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  v9 = sub_10000FB38();
  sub_1002CB708(v9, 0xE700000000000000, v8, v7);

  v10 = type metadata accessor for URL();
  LODWORD(v8) = sub_100015468(v7, 1, v10);
  sub_100009A04(v7, &unk_1006A52C0, &unk_10057D930);
  if (v8 == 1)
  {
    return 3;
  }

  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  sub_10001E440();
  v15.n128_u64[0] = Locale.identifier.getter();
  v15.n128_u64[1] = v12;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v13 = sub_1000524B0(&v15);

  if (v13)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

id sub_100435554(char a1, char a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStateSync:a1 & 1 mailSync:a2 & 1 delegate:a3 delegateQueue:a4];
  swift_unknownObjectRelease();

  return v5;
}

void sub_1004355F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100435650();
  }
}

void sub_100435650()
{
  sub_100005EF4();
  v1 = v0;
  v46 = v2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  v50 = v40 - v5;
  sub_10000D414();
  v6 = type metadata accessor for URL();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = (v11 - v10);
  sub_10043D9F4();
  sub_10043DA20(v12);
  v13 = *(v8 + 8);
  v49 = v6;
  v44 = v13;
  v45 = v8 + 8;
  v13(v12, v6);
  v14 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap) + 64;
  sub_10000C830();
  v17 = v16 & v15;
  v47 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags;
  v48 = v18;
  v20 = (v19 + 63) >> 6;
  v40[5] = v8 + 16;
  v41 = v8;
  sub_10000A8EC();
  v43 = v21;

  v22 = 0;
  v42 = "ardActionIdentifier";
  v40[3] = "specialUnknownMessage";
  v40[4] = "initialUnknownReceptionist";
  v40[1] = "holdReceptionist";
  v40[2] = "initialKnownReceptionist";
  while (v17)
  {
LABEL_7:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v22 << 6);
    v26 = (*(v48 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v48 + 56) + v25);
    v30 = *(v1 + v47);

    if ([v30 receptionistEnabled])
    {
LABEL_11:
      v32 = sub_1004389A4();
      if (*(v32 + 16) && (v33 = sub_1002DA750(v29), (v34 & 1) != 0))
      {
        (*(v41 + 16))(v50, *(v32 + 56) + *(v41 + 72) * v33, v49);
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v37 = v49;
      v36 = v50;
      sub_10000AF74(v50, v35, 1, v49);

      if (sub_100015468(v36, 1, v37) == 1)
      {
        goto LABEL_25;
      }

      if (v27 != 0xD000000000000021 || v43 != v28)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v39 = v50;
      sub_10043D69C();

      v44(v39, v49);
    }

    else
    {
      switch(v29)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_11;
          }

          break;
        default:

          goto LABEL_11;
      }
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      sub_100005EDC();
      return;
    }

    v17 = *(v14 + 8 * v23);
    ++v22;
    if (v17)
    {
      v22 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_100435A5C(uint64_t a1)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "after first unlock", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100434D44(1);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100435BC8();
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_10043609C();
  }
}

void sub_100435BC8()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient];
    if (!v9)
    {
      __break(1u);

      sub_100022DDC(v1);

      __break(1u);
      return;
    }

    v10 = [v9 subscriptions];
    if (!v10)
    {
      v18 = Dictionary.init(dictionaryLiteral:)();
LABEL_23:
      sub_100434E28(v18, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
      if (qword_1006A0B28 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v11 = v10;
    v12 = sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v41[0] = _swiftEmptyDictionarySingleton;
    v39[1] = v13;
    v39[2] = v12;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v13 = v41[1];
      v14 = v41[2];
      v15 = v41[3];
      v16 = v41[4];
      v17 = v41[5];
    }

    else
    {
      v19 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v20 = ~v19;
      v21 = -v19;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v17 = v22 & *(v13 + 56);

      v15 = v20;
      v16 = 0;
    }

    v39[0] = v15;
    v23 = (v15 + 64) >> 6;
    if (v13 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v24 = v16;
      v25 = v17;
      v26 = v16;
      if (!v17)
      {
        break;
      }

LABEL_16:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v28)
      {
LABEL_22:
        sub_100022DDC(v13);

        v18 = v41[0];
        goto LABEL_23;
      }

      while (1)
      {
        v40 = v28;
        sub_100436CF8(v41, &v40, v2);

        v16 = v26;
        v17 = v27;
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v29 = __CocoaSet.Iterator.next()();
        if (v29)
        {
          v39[3] = v29;
          swift_dynamicCast();
          v28 = v40;
          v26 = v16;
          v27 = v17;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_22;
      }

      v25 = *(v14 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_24:
  v30 = type metadata accessor for Logger();
  sub_10000AF9C(v30, qword_1006BA5F8);
  v31 = v2;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v34 = 136315138;
    v40 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v36 = String.init<A>(reflecting:)();
    v38 = sub_10002741C(v36, v37, v41);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "phoneNumberToAccountUUIDMap: %s", v34, 0xCu);
    sub_100009B7C(v35);
  }

  sub_100437058();
}

void sub_10043609C()
{
  if ((*(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck))())
  {
    sub_1004378BC();
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    Locale.identifier.getter();
    sub_100051D0C();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA5F8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "current locale is not supported for AnsweringMachine, not downloading assets", v3, 2u);
    }
  }
}

void sub_10043625C()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v2 = __chkstk_darwin(v1 - 8);
  v84 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v87 = &v80 - v5;
  __chkstk_darwin(v4);
  v95 = &v80 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v94 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v80 - v12;
  __chkstk_darwin(v11);
  v15 = &v80 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = v0;
  v20 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_27;
  }

  v93 = objc_opt_self();
  v22 = [v93 defaultManager];
  sub_100443684();
  URL.path.getter();
  v23 = *(v8 + 8);
  v97 = v8 + 8;
  v89 = v23;
  v23(v15, v7);
  v24 = String._bridgeToObjectiveC()();

  v99[0] = 0;
  v25 = [v22 contentsOfDirectoryAtPath:v24 error:v99];

  v26 = v99[0];
  if (v25)
  {
    v27 = v15;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v26;

    v31 = *(v28 + 16);
    if (v31)
    {
      v90 = (v8 + 16);
      v91 = "";
      v88 = v8;
      v83 = (v8 + 32);
      v81 = v28;
      v32 = (v28 + 40);
      *&v30 = 136315138;
      v82 = v30;
      v33 = v89;
      v85 = v13;
      v86 = v7;
      v92 = v27;
      do
      {
        v34 = *(v32 - 1);
        v35 = *v32;

        v36 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
        if (*(v36 + 16) && (v37 = sub_100005208(v34, v35), (v38 & 1) != 0))
        {
          v39 = v37;

          v40 = v95;
          (*(v88 + 16))(v95, *(v36 + 56) + *(v88 + 72) * v39, v7);

          sub_10000AF74(v40, 0, 1, v7);
          sub_100009A04(v40, &unk_1006A52C0, &unk_10057D930);
        }

        else
        {

          v41 = v95;
          sub_10000AF74(v95, 1, 1, v7);
          sub_100009A04(v41, &unk_1006A52C0, &unk_10057D930);
          v42 = v94;
          sub_100443684();
          v96 = v34;
          URL.appendingPathComponent(_:)();
          v33(v42, v7);
          URL.appendingPathComponent(_:)();
          v33(v27, v7);
          v43 = [v93 defaultManager];
          URL.path.getter();
          v44 = v13;
          v45 = v7;
          v46 = String._bridgeToObjectiveC()();

          LODWORD(v41) = [v43 fileExistsAtPath:v46];

          if (v41)
          {
            if (qword_1006A0B28 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_10000AF9C(v47, qword_1006BA5F8);

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v99[1] = v35;
              v100 = v51;
              *v50 = v82;
              v99[0] = v96;

              v52 = String.init<A>(reflecting:)();
              v54 = sub_10002741C(v52, v53, &v100);

              *(v50 + 4) = v54;
              _os_log_impl(&_mh_execute_header, v48, v49, "adding FS object item (%s) to greetingsDict", v50, 0xCu);
              sub_100009B7C(v51);
              v55 = v87;

              v13 = v85;
              v7 = v86;
              v27 = v92;
              v33 = v89;
            }

            else
            {

              v13 = v85;
              v7 = v86;
              v27 = v92;
              v33 = v89;
              v55 = v87;
            }

            (*v90)(v55, v13, v7);
            sub_10000AF74(v55, 0, 1, v7);
            v56 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            if (sub_100015468(v55, 1, v7) == 1)
            {
              sub_100009A04(v55, &unk_1006A52C0, &unk_10057D930);
              v57 = sub_100005208(v96, v35);
              if (v58)
              {
                v59 = v57;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v99[0] = v56;
                v61 = v56[3];
                sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
                v62 = isUniquelyReferenced_nonNull_native;
                v33 = v89;
                _NativeDictionary.ensureUnique(isUnique:capacity:)(v62, v61);
                v56 = v99[0];

                (*(v88 + 32))(v84, v56[7] + *(v88 + 72) * v59, v7);
                _NativeDictionary._delete(at:)();
                v63 = 0;
              }

              else
              {
                v63 = 1;
              }

              v69 = v84;
              sub_10000AF74(v84, v63, 1, v7);

              sub_100009A04(v69, &unk_1006A52C0, &unk_10057D930);
            }

            else
            {
              (*v83)(v27, v55, v7);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v99[0] = v56;
              sub_10037938C(v27, v96, v35, v64, v65, v66, v67, v68, v80, v81, v82, *(&v82 + 1), v83, v84);

              v56 = v99[0];
            }

            sub_100434E28(v56, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            v33(v13, v7);
          }

          else
          {
            v33(v44, v45);

            v7 = v45;
            v13 = v44;
            v27 = v92;
          }
        }

        v32 += 2;
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    v70 = v99[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1006A0B28 != -1)
  {
    goto LABEL_31;
  }

LABEL_27:
  v71 = type metadata accessor for Logger();
  sub_10000AF9C(v71, qword_1006BA5F8);
  v72 = v98;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v99[0] = v76;
    *v75 = 136315138;
    v100 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_10026D814(&unk_1006ABCA0, &qword_1005879C0);
    v77 = String.init<A>(reflecting:)();
    v79 = sub_10002741C(v77, v78, v99);

    *(v75 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v73, v74, "updateGreetingsDictFromFileSystem greetingsDict: %s", v75, 0xCu);
    sub_100009B7C(v76);
  }
}

uint64_t sub_100436CF8(uint64_t *a1, void **a2, uint64_t a3)
{
  v30 = a1;
  v6 = type metadata accessor for UUID();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA5F8);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Subscription: %@", v14, 0xCu);
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
  }

  result = sub_10039BD94(v11, &selRef_labelID);
  if (v18)
  {
    v28[1] = v3;
    result = sub_10039BD94(v11, &selRef_phoneNumber);
    if (v19)
    {
      v20 = *(a3 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient);
      if (v20)
      {
        v21 = [v11 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v29 + 8))(v8, v6);
        v23 = [v20 accountISOCountryCodeForSubscriptionUUID:isa];

        if (v23)
        {
          v24 = String._bridgeToObjectiveC()();
          v25 = CFPhoneNumberCreate();

          String = CFPhoneNumberCreateString();
          if (String)
          {

            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v27 = v30;
        swift_isUniquelyReferenced_nonNull_native();
        v31 = *v27;
        sub_100379EC8();

        *v27 = v31;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100437058()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v59 - v5);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v59 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (qword_1006A0B28 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    v71 = sub_10000AF9C(v19, qword_1006BA5F8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "updateFromDefaultGreetingIfNecessary", v22, 2u);
    }

    v23 = objc_opt_self();
    v24 = [v23 tu_defaults];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 stringForKey:v25];

    if (!v26)
    {
      break;
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    UUID.init(uuidString:)();
    if (sub_100015468(v6, 1, v7) == 1)
    {

      sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_28:
      v54 = [v23 tu_defaults];
      v55 = String._bridgeToObjectiveC()();
      [v54 removeObjectForKey:v55];

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "not copying old default greeting", v58, 2u);
      }

      return;
    }

    v63 = v27;
    v30 = v70;
    v66 = *(v8 + 32);
    v67 = v8 + 32;
    v66(v70, v6, v7);
    if ((sub_10043BB4C() & 1) == 0)
    {
      (*(v8 + 8))(v30, v7);

      goto LABEL_28;
    }

    v31 = [v23 tu_defaults];
    v6 = String._bridgeToObjectiveC()();
    [v31 removeObjectForKey:v6];

    v32 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    v34 = 0;
    v36 = v32 + 64;
    v35 = *(v32 + 64);
    v68 = v32;
    v37 = 1 << *(v32 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v35;
    v40 = (v37 + 63) >> 6;
    v64 = (v8 + 8);
    v65 = 0;
    *&v33 = 138412290;
    v61 = v33;
    v41 = v69;
    v62 = v4;
    while (v39)
    {
      v8 = v34;
LABEL_17:
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v43 = *(v68 + 56) + ((v8 << 10) | (16 * v42));
      v6 = *v43;
      v44 = *(v43 + 8);

      UUID.init(uuidString:)();
      if (sub_100015468(v4, 1, v7) == 1)
      {

        sub_100009A04(v4, &unk_1006A3DD0, &unk_10057C9D0);
        v34 = v8;
      }

      else
      {
        v66(v41, v4, v7);
        if (sub_10043BB4C())
        {
          v45 = v6;
          v6 = v65;
          sub_100443C78(v63, v29, v45, v44);
          if (v6)
          {

            swift_errorRetain();
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();

            v48 = os_log_type_enabled(v46, v47);
            v4 = v62;
            if (v48)
            {
              v49 = swift_slowAlloc();
              v65 = v6;
              v6 = v49;
              v59 = swift_slowAlloc();
              v60 = v46;
              *v6 = v61;
              swift_errorRetain();
              v50 = _swift_stdlib_bridgeErrorToNSError();
              *(v6 + 1) = v50;
              v51 = v59;
              *v59 = v50;
              v52 = v47;
              v53 = v60;
              _os_log_impl(&_mh_execute_header, v60, v52, "failed to copy default greeting to new SIM: %@", v6, 0xCu);
              sub_100009A04(v51, &unk_1006A2630, &qword_10057CB40);
            }

            else
            {
            }

            v41 = v69;
            (*v64)(v69, v7);
            v65 = 0;
            v34 = v8;
          }

          else
          {
            v65 = 0;
            v41 = v69;
            (*v64)(v69, v7);

            v34 = v8;
            v4 = v62;
          }
        }

        else
        {
          (*v64)(v41, v7);

          v34 = v8;
          v4 = v62;
        }
      }
    }

    while (1)
    {
      v8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v8 >= v40)
      {

        sub_100442B38(v63, v29);

        (*v64)(v70, v7);
        return;
      }

      v39 = *(v36 + 8 * v8);
      ++v34;
      if (v39)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}