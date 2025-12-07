unint64_t sub_1002E2304@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  if (qword_100501C40 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = sub_1002A9798(a1 & 1);
  *a2 = result;
  return result;
}

id sub_1002E2590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002E7BE0;
  *(v16 + 24) = v15;

  v17 = sub_1000CAAC4();

  v18 = sub_1000CA840(v17);

  if (!v18)
  {
    goto LABEL_13;
  }

  if (*(v18 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {

LABEL_13:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    result = sub_10030990C(13, 0, 0xD000000000000018, 0x800000010046BBF0, 0);
    goto LABEL_14;
  }

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v19 = sub_100239160(4, 16, a2, a3);
  v21 = v20;
  sub_1000E71A0(v19, v20, v18);
  if (v4)
  {
  }

  sub_10006A178(v19, v21);
  result = 0;
LABEL_14:
  *a4 = result;
  return result;
}

uint64_t sub_1002E2B6C@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501DB0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v5 = qword_10051B820;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v2 += 8;
  v9(v4, v1);
  if (v8)
  {
    v2 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    swift_beginAccess();
    v8 = *(v5 + v2);
    v29 = _swiftEmptyArrayStorage;
    if (!(v8 >> 62))
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

  if (v4)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v1 = &OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType;
    v27 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v11)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v13 = v29;
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v12 = *(v8 + 8 * v10 + 32);

        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      if (*(v12 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v27;
      }

      else
      {
      }

      ++v10;
      if (v2 == v4)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_21:

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      goto LABEL_24;
    }

LABEL_36:

    v25 = _swiftEmptyArrayStorage;
LABEL_37:
    *v26 = v25;
    return result;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_24:
  v29 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v27 = v13 & 0xC000000000000001;
    v17 = v13;
    do
    {
      if (v27)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      ++v16;
      v19 = *(v18 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v20 = *(v18 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v21 = *(v18 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
      v22 = type metadata accessor for AlishaExternal.RequestInProgress();
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR____TtCC10seserviced14AlishaExternal17RequestInProgress_keyIdentifier];
      *v24 = v19;
      v24[1] = v20;
      *&v23[OBJC_IVAR____TtCC10seserviced14AlishaExternal17RequestInProgress_functionIdentifier] = v21;
      sub_100069E2C(v19, v20);
      sub_100069E2C(v19, v20);
      v28.receiver = v23;
      v28.super_class = v22;
      objc_msgSendSuper2(&v28, "init");

      sub_10006A178(v19, v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 = v17;
    }

    while (v14 != v16);

    v25 = v29;
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E3170(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char *a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, void (*a13)(Class, id), unint64_t a14)
{
  if (a2)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = sub_1002E7938;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  sub_100113B54(a2, a3);
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  if (a1 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = a1 == 1;
  }

  v20 = qword_10051B820;

  sub_10035A558(a4, a5, a6, a7, v19, a8, a9, a10, v18, v17, a11, a12, v20, a13, a14);

  return sub_1000B2A4C(v18, v17);
}

void sub_1002E32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(Class, Class, uint64_t, uint64_t, uint64_t, uint64_t))
{
  isa = UInt16._bridgeToObjectiveC()().super.super.isa;
  v13 = UInt8._bridgeToObjectiveC()().super.super.isa;
  a7(isa, v13, a3, a4, a5, a6);
}

void sub_1002E3370(__int16 a1, void (*a2)(Class, id))
{
  v3 = a1;
  if ((a1 & 0x100) != 0)
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v4 initWithDomain:v5 code:qword_100414AB0[v3] userInfo:isa];

    v8 = v7;
    a2(0, v7);
  }

  else
  {
    v8 = UInt8._bridgeToObjectiveC()().super.super.isa;
    a2(v8, 0);
  }
}

void sub_1002E3668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = Data._bridgeToObjectiveC()().super.isa;
  (*(a7 + 16))(a7, a1, a2, isa, v11);
}

void sub_1002E371C(uint64_t a1)
{
  if (qword_100501B70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  __chkstk_darwin(a1);
  v1 = sub_100240880(sub_1002E77EC);
  v2 = sub_1000CA828(v1);

  if (v2)
  {
    sub_1002463FC();
    sub_100246268(0);
  }
}

uint64_t sub_1002E37F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(a1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3, v5);
  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_1002E3934(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002E7740;
  *(v9 + 24) = v8;

  v10 = sub_1000CAAC4();

  v11 = sub_1000CA840(v10);

  if (v11)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_100230F04(a3, a4, v11);
  }

  return result;
}

uint64_t sub_1002E3AE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1002E7BE4;
  *(v13 + 24) = v12;

  v14 = sub_1000CAAC4();

  v15 = sub_1000CA840(v14);

  if (v15)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v17 = qword_10051B5A0;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v18 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v11, v8);
    if (v18)
    {
      if (qword_100501DA0 == -1)
      {
LABEL_10:
        sub_100338E68(v15 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, a3, a4);
        if (*(v17 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E67E4(v15);
        }
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002E3E24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a4;
  v16 = a1;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1002E60DC(v12, v14, v17, v19, a5, a6, a7);
  sub_10006A178(v17, v19);
}

uint64_t sub_1002E3EEC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002E7BE0;
  *(v8 + 24) = v7;

  v9 = sub_1000CAAC4();

  v10 = sub_1000CA840(v9);

  if (v10)
  {
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000F5CB8(v10);
  }

  return result;
}

uint64_t sub_1002E411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E6390(v12, a4, a5, a6);
  return (*(v10 + 8))(v12, v9);
}

void sub_1002E4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (a1 != 0xFFFF && a2 != 0xFFFF)
  {
    if (qword_100501DB0 != -1)
    {
      swift_once();
    }

    v9 = qword_10051B820;
    v10 = OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe;
    swift_beginAccess();
    v11 = *(v9 + v10);

    v12 = sub_1000C6C94(a3, v11);

    if (v12)
    {
      (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      (*(v7 + 32))(v14 + v13, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (qword_100501D78 != -1)
      {
        swift_once();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = sub_1002E7614;
      *(v15 + 24) = v14;

      v16 = sub_1000CAAC4();

      v17 = sub_1000CA840(v16);

      if (v17)
      {
        v18 = a1 + a2;
        if (__OFADD__(a1, a2))
        {
          __break(1u);
        }

        else if (v18 >= a1)
        {
          sub_10034F23C(a1, v18, v17);

          return;
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1002E45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100501DA0 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

uint64_t sub_1002E4678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = a1;
  sub_1002E6A50(v14, v15, v17, a5, a6, a7);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1002E47AC(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_10006A278;
  *(v5 + 24) = v4;

  v6 = sub_1000CAAC4();

  v7 = sub_1000CA840(v6);

  if (v7)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251228(v7);
  }

  return result;
}

uint64_t sub_1002E495C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002E7BE4;
  *(v9 + 24) = v8;

  v10 = sub_1000CAAC4();

  v11 = sub_1000CA840(v10);

  if (v11)
  {
    if (qword_1005019F0 != -1)
    {
      swift_once();
    }

    sub_10014EEBC(a3, a4, 0, v11);
  }

  return result;
}

BOOL sub_1002E4AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 == 15)
  {
    if (a3 >> 60 == 15)
    {
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (a3 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v7, v6);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
  sub_10006A2BC(v7, v6);
  sub_100069E2C(a2, a3);
  v8 = sub_10008FB4C(v7, v6, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v7, v6);
  sub_10006A2D0(v7, v6);
  return v8;
}

void sub_1002E4D0C(unint64_t a1, unint64_t a2)
{
  if (qword_100501B60 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_100236714(a1, a2);
}

void sub_1002E4DA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1002E7098(v11, v13, a4, a5, a6);
  sub_10006A178(v11, v13);
}

id sub_1002E4EF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlishaExternal.RequestInProgress();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1002E4FC8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = sub_1000CAA04();
    v5 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v6 = v61[3];
      v7 = v61[4];
      v8 = v61[5];
      v9 = v61[6];
      v10 = v61[7];
    }

    else
    {
      v11 = -1 << *(v4 + 32);
      v7 = v4 + 7;
      v8 = ~v11;
      v12 = -v11;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v10 = (v13 & v4[7]);

      v9 = 0;
      v6 = v5;
    }

    v55 = a1;
    v56 = 0;
    v14 = (v8 + 64) >> 6;
    v15 = !a1 && a2 == 0xC000000000000000;
    v16 = !v15;
    v54 = v16;
    v57 = v6;
    v58 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v52 = v17;
    v51 = HIDWORD(a1) - a1;
    v53 = BYTE6(a2);
    v18 = v10;
    if (v6 < 0)
    {
      break;
    }

    while (1)
    {
      v21 = v9;
      v22 = v18;
      if (!v18)
      {
        break;
      }

LABEL_25:
      v59 = (v22 - 1) & v22;
      v20 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v20)
      {
        goto LABEL_78;
      }

LABEL_26:
      v23 = [v20 publicKeyIdentifier];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v26 >> 62;
      if (v26 >> 62 == 3)
      {
        if (v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26 == 0xC000000000000000;
        }

        v29 = v58;
        v31 = !v28 || v58 < 3;
        if (((v31 | v54) & 1) == 0)
        {
          sub_100093854(v57);
          v47 = 0;
          v48 = 0xC000000000000000;
LABEL_81:
          sub_10006A178(v47, v48);
          goto LABEL_79;
        }

LABEL_48:
        v32 = 0;
        if (v29 > 1)
        {
          goto LABEL_49;
        }

LABEL_45:
        v36 = v53;
        if (v29)
        {
          v36 = v51;
          if (v52)
          {
            goto LABEL_85;
          }
        }

LABEL_51:
        if (v32 != v36)
        {
          goto LABEL_57;
        }

        if (v32 < 1)
        {
          goto LABEL_80;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v49 = v5;
            v50 = a2;
            v40 = *(v24 + 16);
            v39 = *(v24 + 24);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v40, v42))
              {
                goto LABEL_91;
              }

              v41 += v40 - v42;
            }

            if (__OFSUB__(v39, v40))
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }

          memset(v61, 0, 14);
        }

        else
        {
          if (v27)
          {
            v50 = a2;
            if (v24 >> 32 < v24)
            {
              goto LABEL_89;
            }

            v49 = v5;
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v24, v43))
              {
                goto LABEL_92;
              }

              v41 += v24 - v43;
            }

LABEL_72:
            __DataStorage._length.getter();
            a2 = v50;
            v44 = v56;
            sub_10019F024(v41, v55, v50, v61);
            sub_10006A178(v24, v26);
            v5 = v49;
            if (v61[0])
            {
              goto LABEL_82;
            }

            goto LABEL_76;
          }

          v61[0] = v24;
          LOWORD(v61[1]) = v26;
          BYTE2(v61[1]) = BYTE2(v26);
          BYTE3(v61[1]) = BYTE3(v26);
          BYTE4(v61[1]) = BYTE4(v26);
          BYTE5(v61[1]) = BYTE5(v26);
        }

        v45 = a1;
        v44 = v56;
        sub_10019F024(v61, v45, a2, &v60);
        sub_10006A178(v24, v26);
        if (v60)
        {
LABEL_82:
          sub_100093854(v57);
          goto LABEL_79;
        }

LABEL_76:
        v56 = v44;
        v6 = v57;

        v18 = v59;
        a1 = v55;
        if (v57 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v58;
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_48;
          }

          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            goto LABEL_88;
          }

          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
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

          v32 = v32;
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v32 = BYTE6(v26);
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

LABEL_49:
        if (v29 == 2)
        {
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v35 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v35)
          {
            goto LABEL_84;
          }

          goto LABEL_51;
        }

        if (!v32)
        {
LABEL_80:
          sub_100093854(v57);
          v47 = v24;
          v48 = v26;
          goto LABEL_81;
        }

LABEL_57:

        sub_10006A178(v24, v26);
        v18 = v59;
        v6 = v57;
        if (v57 < 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_78;
      }

      v22 = v7[v9];
      ++v21;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

LABEL_18:
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v60 = v19;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v20 = v61[0];
    v59 = v18;
    if (v61[0])
    {
      goto LABEL_26;
    }
  }

LABEL_78:
  sub_100093854(v6);
  v20 = 0;
LABEL_79:

  return v20;
}

id sub_1002E55F8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 != -1)
  {
LABEL_93:
    swift_once();
  }

  v3 = sub_1000CAA04();
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v5 = v62[3];
    v4 = v62[4];
    v6 = v62[5];
    v7 = v62[6];
    v8 = v62[7];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 7;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & v3[7];
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v56 = v14;
  v57 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v54 = v15;
  v55 = BYTE6(a2);
  v58 = v5;
  while (1)
  {
    while (1)
    {
      if (v5 < 0)
      {
        v19 = __CocoaSet.Iterator.next()();
        if (!v19 || (v61 = v19, sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), swift_dynamicCast(), v18 = v62[0], v60 = v8, !v62[0]))
        {
LABEL_86:
          sub_100093854(v5);
          v18 = 0;
          goto LABEL_87;
        }
      }

      else
      {
        v16 = v7;
        v17 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_86;
            }

            v17 = v4[v7];
            ++v16;
            if (v17)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_93;
        }

LABEL_23:
        v60 = (v17 - 1) & v17;
        v18 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v18)
        {
          goto LABEL_86;
        }
      }

      v20 = [v18 readerIdentifier];
      v21 = a2;
      v22 = a2 >> 60;
      if (v20)
      {
        break;
      }

      v24 = 0;
      v26 = 0xF000000000000000;
LABEL_43:
      if (v22 > 0xE)
      {
        sub_100069E2C(a1, v21);
        sub_100093854(v58);
        sub_10006A2D0(v24, v26);
        goto LABEL_87;
      }

LABEL_44:
      a2 = v21;
      sub_100069E2C(a1, v21);

      sub_10006A2D0(v24, v26);
      sub_10006A2D0(a1, v21);
      v5 = v58;
      v8 = v60;
    }

    v23 = v20;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v26 >> 60 == 15)
    {
      goto LABEL_43;
    }

    if (v22 > 0xE)
    {
      goto LABEL_44;
    }

    v27 = v26 >> 62;
    a2 = v21;
    if (v26 >> 62 == 3)
    {
      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v57 < 3;
      if (((v30 | v56) & 1) == 0)
      {
        sub_100069E2C(0, 0xC000000000000000);
        sub_10006A2D0(0, 0xC000000000000000);
        v49 = 0;
        goto LABEL_90;
      }

LABEL_55:
      v31 = 0;
      if (v57 <= 1)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_55;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_97;
      }

      if (v57 <= 1)
      {
        goto LABEL_52;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_96;
      }

      v31 = v31;
      if (v57 <= 1)
      {
LABEL_52:
        v35 = v55;
        if (v57)
        {
          v35 = HIDWORD(a1) - a1;
          if (v54)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v31 = BYTE6(v26);
      if (v57 <= 1)
      {
        goto LABEL_52;
      }
    }

LABEL_56:
    if (v57 != 2)
    {
      break;
    }

    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

LABEL_58:
    if (v31 != v35)
    {
      goto LABEL_64;
    }

    if (v31 < 1)
    {
      goto LABEL_89;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v62, 0, 14);
        v38 = a1;
        sub_100069E2C(a1, v21);
        sub_10006A2BC(v24, v26);
        goto LABEL_77;
      }

      v51 = *(v24 + 24);
      v53 = *(v24 + 16);
      sub_100069E2C(a1, v21);
      sub_10006A2BC(v24, v26);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v40 = v39;
        v41 = __DataStorage._offset.getter();
        v42 = v53;
        if (__OFSUB__(v53, v41))
        {
          goto LABEL_100;
        }

        v50 = v53 - v41 + v40;
      }

      else
      {
        v50 = 0;
        v42 = v53;
      }

      if (__OFSUB__(v51, v42))
      {
        goto LABEL_99;
      }

      __DataStorage._length.getter();
      v47 = v50;
    }

    else
    {
      if (!v27)
      {
        v62[0] = v24;
        LOWORD(v62[1]) = v26;
        BYTE2(v62[1]) = BYTE2(v26);
        BYTE3(v62[1]) = BYTE3(v26);
        BYTE4(v62[1]) = BYTE4(v26);
        BYTE5(v62[1]) = BYTE5(v26);
        v38 = a1;
        sub_100069E2C(a1, v21);
        sub_10006A2BC(v24, v26);
LABEL_77:
        sub_10019F024(v62, v38, v21, &v61);
        a2 = v21;
        sub_10006A2D0(v24, v26);
        sub_10006A2D0(v38, v21);
        v46 = v61;
        goto LABEL_84;
      }

      if (v24 >> 32 < v24)
      {
        goto LABEL_98;
      }

      sub_100069E2C(a1, v21);
      sub_10006A2BC(v24, v26);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v52 = v43;
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v24, v44))
        {
          goto LABEL_101;
        }

        v45 = v24 - v44 + v52;
      }

      else
      {
        v45 = 0;
      }

      __DataStorage._length.getter();
      v47 = v45;
    }

    sub_10019F024(v47, a1, v21, v62);
    a2 = v21;
    sub_10006A2D0(v24, v26);
    sub_10006A2D0(a1, v21);
    v46 = v62[0];
LABEL_84:
    sub_10006A2D0(v24, v26);
    v5 = v58;
    if (v46)
    {
      goto LABEL_91;
    }

LABEL_85:

    v8 = v60;
  }

  if (v31)
  {
LABEL_64:
    sub_100069E2C(a1, v21);
    sub_10006A2D0(a1, v21);
    sub_10006A2D0(v24, v26);
    v5 = v58;
    goto LABEL_85;
  }

LABEL_89:
  sub_100069E2C(a1, v21);
  sub_10006A2D0(a1, v21);
  v49 = v24;
LABEL_90:
  sub_10006A2D0(v49, v26);
  v5 = v58;
LABEL_91:
  sub_100093854(v5);
LABEL_87:

  return v18;
}

uint64_t sub_1002E5D90(__int16 a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a8;
  v34 = a14;
  v35 = a6;
  v33 = a13;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v36 = qword_10051B7F0;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a9;
  *(v22 + 32) = a10;
  *(v22 + 40) = a1;
  *(v22 + 42) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  v23 = v34;
  *(v22 + 64) = v35;
  *(v22 + 72) = a7;
  v24 = a7;
  v25 = v42;
  *(v22 + 80) = v42;
  *(v22 + 88) = a11;
  v26 = v33;
  *(v22 + 96) = a12;
  *(v22 + 104) = v26;
  *(v22 + 112) = v23;
  aBlock[4] = sub_1002E78B4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CFD28;
  v27 = _Block_copy(aBlock);
  sub_100113B54(a9, a10);
  sub_100069E2C(a3, a4);
  sub_10006A2BC(v24, v25);
  sub_10006A2BC(a11, a12);

  v28 = v37;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  v30 = v38;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v41 + 8))(v30, v29);
  (*(v40 + 8))(v28, v43);
}

uint64_t sub_1002E60DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v22 = a1;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v18 = v23;
  v17[4] = v22;
  v17[5] = a2;
  aBlock[4] = v18;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  sub_100069E2C(a3, a4);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v25);
}

uint64_t sub_1002E6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20[1] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20[0] = qword_10051B7F0;
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_1002E66E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20[1] = qword_10051B7F0;
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v21;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1002E75B0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CFA08;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_1002E6A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24[2] = a4;
  v25 = a2;
  v28 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v24[1] = qword_10051B7F0;
  (*(v14 + 16))(v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v28;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = v26;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v9, v7);
  (*(v10 + 8))(v12, v29);
}

uint64_t sub_1002E6DD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18[1] = qword_10051B7F0;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = sub_1002E73AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CF828;
  v16 = _Block_copy(aBlock);
  sub_100069E2C(a3, a4);
  sub_10006A2BC(a1, a2);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_1002E7098(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1002E7344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E735C()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_10006A178(v0[4], v1);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E73DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1002E7494(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1002E45C8(v1 + v4, *v5, v5[1], a1);
}

uint64_t sub_1002E7528()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002E75B0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1002E4214(v2, v3, v4);
}

uint64_t sub_1002E7614(uint64_t a1)
{
  type metadata accessor for UUID();
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type) || *(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1002E76F4()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E7778(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1002E77F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E7834()
{
  if (v0[3])
  {
  }

  sub_10006A178(v0[6], v0[7]);
  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    sub_10006A178(v0[9], v1);
  }

  v2 = v0[12];
  if (v2 >> 60 != 15)
  {
    sub_10006A178(v0[11], v2);
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1002E7900()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E79E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002E7A70(uint64_t a1)
{
  type metadata accessor for UUID();
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1002E7BE8()
{
  type metadata accessor for SECSLAMDeletionHandler();
  v0 = swift_allocObject();
  v1 = sub_1000910F0(&off_1004C3D08);
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  result = swift_arrayDestroy();
  *(v0 + 16) = v1;
  qword_10051B6F8 = v0;
  return result;
}

uint64_t sub_1002E7C64(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for UUID();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7D30, 0, 0);
}

uint64_t sub_1002E7D30(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1[24] + 16);
  v3 = UUID.uuidString.getter();
  if (*(v2 + 16))
  {
    v5 = sub_10008C908(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v5);
      v1[29] = *v8;
      v1[30] = v8[1];
      v9 = objc_opt_self();

      v10 = String._bridgeToObjectiveC()();
      v1[31] = v10;
      v1[2] = v1;
      v1[7] = v1 + 21;
      v1[3] = sub_1002E80EC;
      v11 = swift_continuation_init();
      v1[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_1001861F4;
      v1[13] = &unk_1004CFE68;
      v1[14] = v11;
      sub_1003AF710(v9, v10, v1 + 10);

      return _swift_continuation_await(v1 + 2);
    }
  }

  else
  {
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = v1[26];
  v12 = v1[27];
  v14 = v1[25];
  v15 = v1[23];
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);
  (*(v13 + 16))(v12, v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v1[26];
  v20 = v1[27];
  v22 = v1[25];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v21 + 8))(v20, v22);
    v28 = sub_1002FFA0C(v25, v27, &v32);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "SLAMDeletion deleteCredential: %s does not exist", v23, 0xCu);
    sub_1000752F4(v24);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  sub_10009591C();
  swift_allocError();
  *v29 = 1;
  swift_willThrow();

  v30 = v1[1];

  return v30();
}

uint64_t sub_1002E80EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {

    v2 = sub_1002E8600;
  }

  else
  {
    v2 = sub_1002E8204;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E8204()
{
  v34 = v0;
  v1 = *(v0 + 168);

  v2 = String._bridgeToObjectiveC()();
  v3 = String.utf8CString.getter();

  v4 = sub_100013548(v1, v3 + 32, v2);

  if (v4)
  {
    swift_willThrow();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1002FFA0C(v10, v11, v33);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "SLAMDeletion deleteCredential: Error encountered %s", v8, 0xCu);
      sub_1000752F4(v9);
    }

    swift_willThrow();

    v13 = *(v0 + 8);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);
    (*(v16 + 16))(v14, v17, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    log = v19;
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 224);
    v24 = *(v0 + 200);
    v23 = *(v0 + 208);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136315138;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_1002FFA0C(v27, v29, v33);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, log, v20, "SLAMDeletion deleteCredential: Successfully deleted credential %s", v25, 0xCu);
      sub_1000752F4(v26);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1002E8600(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 248);
  swift_willThrow();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "SLAMDeletion deleteCredential: Error encountered %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  swift_willThrow();

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1002E87D0()
{

  return swift_deallocClassInstance();
}

void sub_1002E8844()
{
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006CAB0();
}

id sub_1002E88F0()
{
  result = [objc_allocWithZone(type metadata accessor for LyonExternal()) init];
  qword_10051B700 = result;
  return result;
}

void sub_1002E8AC4(uint64_t a1, unint64_t a2, double a3)
{
  if (qword_100501950 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  sub_1000D2F30(a1, a2, a3);
}

void sub_1002E8C00(uint64_t a1, unint64_t a2)
{
  if (qword_100501950 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_1000D42BC(a1, a2);
}

void sub_1002E8D48(char a1, uint64_t a2)
{
  if (qword_1005018F8 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_10008843C(a1 & 1, a2);
}

void sub_1002E8E20(char a1, uint64_t a2)
{
  if (qword_100501AF0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  sub_1001DC774(a1 & 1, a2);
}

id sub_1002E8EF8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = sub_1000CAA04();
    v5 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v6 = v61[3];
      v7 = v61[4];
      v8 = v61[5];
      v9 = v61[6];
      v10 = v61[7];
    }

    else
    {
      v11 = -1 << *(v4 + 32);
      v7 = v4 + 7;
      v8 = ~v11;
      v12 = -v11;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v10 = (v13 & v4[7]);

      v9 = 0;
      v6 = v5;
    }

    v55 = a1;
    v56 = 0;
    v14 = (v8 + 64) >> 6;
    v15 = !a1 && a2 == 0xC000000000000000;
    v16 = !v15;
    v54 = v16;
    v57 = v6;
    v58 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v52 = v17;
    v51 = HIDWORD(a1) - a1;
    v53 = BYTE6(a2);
    v18 = v10;
    if (v6 < 0)
    {
      break;
    }

    while (1)
    {
      v21 = v9;
      v22 = v18;
      if (!v18)
      {
        break;
      }

LABEL_25:
      v59 = (v22 - 1) & v22;
      v20 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v20)
      {
        goto LABEL_78;
      }

LABEL_26:
      v23 = [v20 publicKeyIdentifier];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v26 >> 62;
      if (v26 >> 62 == 3)
      {
        if (v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26 == 0xC000000000000000;
        }

        v29 = v58;
        v31 = !v28 || v58 < 3;
        if (((v31 | v54) & 1) == 0)
        {
          sub_100093854(v57);
          v47 = 0;
          v48 = 0xC000000000000000;
LABEL_81:
          sub_10006A178(v47, v48);
          goto LABEL_79;
        }

LABEL_48:
        v32 = 0;
        if (v29 > 1)
        {
          goto LABEL_49;
        }

LABEL_45:
        v36 = v53;
        if (v29)
        {
          v36 = v51;
          if (v52)
          {
            goto LABEL_85;
          }
        }

LABEL_51:
        if (v32 != v36)
        {
          goto LABEL_57;
        }

        if (v32 < 1)
        {
          goto LABEL_80;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v49 = v5;
            v50 = a2;
            v40 = *(v24 + 16);
            v39 = *(v24 + 24);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v40, v42))
              {
                goto LABEL_91;
              }

              v41 += v40 - v42;
            }

            if (__OFSUB__(v39, v40))
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }

          memset(v61, 0, 14);
        }

        else
        {
          if (v27)
          {
            v50 = a2;
            if (v24 >> 32 < v24)
            {
              goto LABEL_89;
            }

            v49 = v5;
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v24, v43))
              {
                goto LABEL_92;
              }

              v41 += v24 - v43;
            }

LABEL_72:
            __DataStorage._length.getter();
            a2 = v50;
            v44 = v56;
            sub_10019F024(v41, v55, v50, v61);
            sub_10006A178(v24, v26);
            v5 = v49;
            if (v61[0])
            {
              goto LABEL_82;
            }

            goto LABEL_76;
          }

          v61[0] = v24;
          LOWORD(v61[1]) = v26;
          BYTE2(v61[1]) = BYTE2(v26);
          BYTE3(v61[1]) = BYTE3(v26);
          BYTE4(v61[1]) = BYTE4(v26);
          BYTE5(v61[1]) = BYTE5(v26);
        }

        v45 = a1;
        v44 = v56;
        sub_10019F024(v61, v45, a2, &v60);
        sub_10006A178(v24, v26);
        if (v60)
        {
LABEL_82:
          sub_100093854(v57);
          goto LABEL_79;
        }

LABEL_76:
        v56 = v44;
        v6 = v57;

        v18 = v59;
        a1 = v55;
        if (v57 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v58;
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_48;
          }

          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            goto LABEL_88;
          }

          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
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

          v32 = v32;
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v32 = BYTE6(v26);
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

LABEL_49:
        if (v29 == 2)
        {
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v35 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v35)
          {
            goto LABEL_84;
          }

          goto LABEL_51;
        }

        if (!v32)
        {
LABEL_80:
          sub_100093854(v57);
          v47 = v24;
          v48 = v26;
          goto LABEL_81;
        }

LABEL_57:

        sub_10006A178(v24, v26);
        v18 = v59;
        v6 = v57;
        if (v57 < 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_78;
      }

      v22 = v7[v9];
      ++v21;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

LABEL_18:
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v60 = v19;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v20 = v61[0];
    v59 = v18;
    if (v61[0])
    {
      goto LABEL_26;
    }
  }

LABEL_78:
  sub_100093854(v6);
  v20 = 0;
LABEL_79:

  return v20;
}

void *sub_1002E9528(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v10;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    __chkstk_darwin(result);
    v13[-4] = a1;
    v13[-3] = a2;
    *&v13[-2] = a3;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1002E96E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v8;
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    __chkstk_darwin(result);
    *(&v11 - 2) = a1;
    *(&v11 - 1) = a2;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002E9890()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4 = qword_10051B7F0;
  *v3 = qword_10051B7F0;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v5 = v4;
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501900 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_10034D004(v6);

  sub_10034D004(v7);

  sub_10034D004(v8);

  v9 = objc_allocWithZone(AliroProtocolVersions);
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v9 initWithBleAdvertisingVersions:isa supportedBLEUWBProtocolVersions:v11 expeditedTransactionSupportedProtocolVersions:v12];

  return v13;
}

uint64_t sub_1002E9CE8(int a1, void *a2)
{
  v20 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v19 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v20 & 1;
    *(v16 + 24) = a2;
    aBlock[4] = sub_1002EA454;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CFF08;
    v17 = _Block_copy(aBlock);
    v18 = a2;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000BA7E0();
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v4 + 8))(v6, v3);
    (*(v7 + 8))(v9, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA070(int a1)
{
  v18 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.notOnQueue(_:), v8);
  v12;
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v18 & 1;
    aBlock[4] = sub_1002EA3FC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CFEB8;
    v16 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_1000BA7E0();
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v2 + 8))(v4, v1);
    (*(v5 + 8))(v7, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002EA41C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_1002EA4AC(char a1)
{
  LOBYTE(v2) = a1;
  result = [v1 children];
  if (result)
  {
    v4 = result;
    sub_1000754A4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v2;
        v22 = _swiftEmptyArrayStorage;
        v2 = "O";
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if ([v10 tag] == *&aO[4 * v8])
            {
              v12 = [v11 value];
              if (v12)
              {
                break;
              }
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v15;
          v21 = v14;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10012E5A4(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v22 + 2);
          v17 = *(v22 + 3);
          if (v18 >= v17 >> 1)
          {
            v22 = sub_10012E5A4((v17 > 1), v18 + 1, 1, v22);
          }

          *(v22 + 2) = v18 + 1;
          v19 = &v22[16 * v18];
          *(v19 + 4) = v21;
          *(v19 + 5) = v20;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_25:

    return v22;
  }

  __break(1u);
  return result;
}

char *sub_1002EA6BC(char a1)
{
  LOBYTE(v2) = a1;
  result = [v1 children];
  if (result)
  {
    v4 = result;
    sub_1000754A4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v2;
        v22 = _swiftEmptyArrayStorage;
        v2 = dword_100414B4C;
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if ([v10 tag] == dword_100414B4C[v8])
            {
              v12 = [v11 value];
              if (v12)
              {
                break;
              }
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v15;
          v21 = v14;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10012E5A4(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v22 + 2);
          v17 = *(v22 + 3);
          if (v18 >= v17 >> 1)
          {
            v22 = sub_10012E5A4((v17 > 1), v18 + 1, 1, v22);
          }

          *(v22 + 2) = v18 + 1;
          v19 = &v22[16 * v18];
          *(v19 + 4) = v21;
          *(v19 + 5) = v20;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_25:

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA8CC()
{
  v1[8] = v0;
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA974, 0, 0);
}

uint64_t sub_1002EA974()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v0[11] = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v2 + v3, v1);
  v4 = type metadata accessor for SECNetworkConfiguration(0);
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  LODWORD(v2) = (*(v5 + 48))(v1, 1, v4);
  sub_100075768(v1, &qword_10050A110, &qword_100414C28);
  if (v2 == 1)
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1002EAB04;
    v7 = v0[9];

    return sub_100122554(v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1002EAB04()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1002EACDC;
  }

  else
  {
    v2 = sub_1002EAC18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EAC18()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[13] + 56))(v2, 0, 1, v0[12]);
  swift_beginAccess();
  sub_1002F6F2C(v2, v3 + v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002EACDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EAD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002EAE50, 0, 0);
}

uint64_t sub_1002EAE50(uint64_t a1)
{
  UUID.init()();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v1;
  v2[1] = sub_1002EAEE8;

  return sub_1002EA8CC();
}

uint64_t sub_1002EAEE8()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002EBCC4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[22] = v3;
    *v3 = v2;
    v3[1] = sub_1002EB060;
    v4 = v2[19];
    v5 = v2[13];
    v6 = v2[11];
    v7 = v2[12];

    return sub_1002EBE3C(v4, v6, v7, v5);
  }
}

uint64_t sub_1002EB060()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1002EBD80;
  }

  else
  {
    v2 = sub_1002EB174;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EB174(uint64_t a1, uint64_t a2)
{
  v30 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[18];
  v4 = v2[19];
  v5 = v2[16];
  v6 = v2[17];
  v7 = type metadata accessor for Logger();
  v2[24] = sub_1000958E4(v7, qword_10051B2C8);
  (*(v6 + 16))(v3, v4, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v2[18];
  if (v10)
  {
    v12 = v2[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    URLRequest.url.getter();
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v12, 1, v15);
    v18 = v2[15];
    if (v17 == 1)
    {
      sub_100075768(v2[15], &unk_10050BEA0, &unk_10040F450);
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    else
    {
      v20 = URL.absoluteString.getter();
      v19 = v24;
      (*(v16 + 8))(v18, v15);
    }

    v23 = *(v2[17] + 8);
    v23(v2[18], v2[16]);
    v25 = sub_1002FFA0C(v20, v19, &v29);

    *(v13 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v8, v9, "createCredential: Sending request to %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  else
  {
    v21 = v2[16];
    v22 = v2[17];

    v23 = *(v22 + 8);
    v23(v11, v21);
  }

  v2[25] = v23;
  v26 = swift_task_alloc();
  v2[26] = v26;
  *v26 = v2;
  v26[1] = sub_1002EB47C;
  v27 = v2[19];

  return sub_100159A70(v27, 1);
}

uint64_t sub_1002EB47C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_1002EB9D4;
  }

  else
  {
    v5 = sub_1002EB594;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EB594()
{
  v35 = v0;
  v1 = v0[29];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1002F50B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    v2 = v0[9];
    if (*(v2 + 16) && (v3 = sub_10008C908(0xD000000000000013, 0x800000010046BEA0), (v4 & 1) != 0))
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v7 = *v5;
      v6 = v5[1];

      if (v7 == 0x6574736575716572 && v6 == 0xE900000000000064)
      {

LABEL_21:
        v30 = v0[25];
        v31 = v0[19];
        v32 = v0[16];
        sub_10006A178(v0[27], v0[28]);
        v30(v31, v32);

        v28 = v0[1];
        goto LABEL_17;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "createCredential: Unexpected JSON Response from Server", v12, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v13 = 13;
    swift_willThrow();
  }

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_1002FFA0C(v18, v19, &v34);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "createCredential: JSON Decoding error %s encountered", v16, 0xCu);
    sub_1000752F4(v17);
  }

  v22 = v0[27];
  v21 = v0[28];
  v23 = v0[25];
  v24 = v0[19];
  v25 = v0[16];
  v33 = v0[11];
  sub_10009591C();
  swift_allocError();
  *v26 = 13;
  swift_willThrow();
  sub_10006A178(v22, v21);

  v23(v24, v25);
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 8))(v33, v27);

  v28 = v0[1];
LABEL_17:

  return v28();
}

uint64_t sub_1002EB9D4()
{
  v22 = v0;
  *(v0 + 64) = *(v0 + 232);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_10015CCB4(v1, v2, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_10015CCF0(v1, v2, v3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      v8 = sub_100157174(v1, v2, v3);
      v10 = sub_1002FFA0C(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "createCredential: Data task wrapper error %s encountered while performing URL request", v6, 0xCu);
      sub_1000752F4(v7);
    }

    v11 = *(v0 + 200);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v20 = *(v0 + 88);
    sub_10009591C();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    sub_10015CCF0(v1, v2, v3);
    v11(v12, v13);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v20, v15);
  }

  else
  {
    v16 = *(v0 + 88);
    (*(v0 + 200))(*(v0 + 152), *(v0 + 128));
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002EBCC4()
{
  v1 = *(v0 + 88);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002EBD80()
{
  v1 = *(v0 + 88);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002EBE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[93] = v4;
  v5[92] = a4;
  v5[91] = a3;
  v5[90] = a2;
  v5[89] = a1;
  v6 = type metadata accessor for SHA256();
  v5[94] = v6;
  v5[95] = *(v6 - 8);
  v5[96] = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  v5[97] = v7;
  v5[98] = *(v7 - 8);
  v5[99] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v5[100] = v8;
  v5[101] = *(v8 - 8);
  v5[102] = swift_task_alloc();
  v9 = type metadata accessor for URL.DirectoryHint();
  v5[103] = v9;
  v5[104] = *(v9 - 8);
  v5[105] = swift_task_alloc();
  type metadata accessor for URL();
  v5[106] = swift_task_alloc();
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v5[107] = swift_task_alloc();
  v10 = type metadata accessor for SECNetworkConfiguration(0);
  v5[108] = v10;
  v5[109] = *(v10 - 8);
  v5[110] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[111] = v11;
  v5[112] = *(v11 - 8);
  v5[113] = swift_task_alloc();
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();

  return _swift_task_switch(sub_1002EC18C, 0, 0);
}

uint64_t sub_1002EC18C(uint64_t a1, uint64_t a2)
{
  v140 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 928);
  v4 = *(v2 + 920);
  v5 = *(v2 + 896);
  v6 = *(v2 + 888);
  v7 = *(v2 + 728);
  v8 = *(v2 + 720);
  v9 = type metadata accessor for Logger();
  *(v2 + 936) = sub_1000958E4(v9, qword_10051B2C8);
  v10 = *(v5 + 16);
  *(v2 + 944) = v10;
  *(v2 + 952) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v3, v8, v6);
  v10(v4, v7, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v2 + 928);
  v15 = *(v2 + 920);
  v16 = *(v2 + 896);
  v17 = *(v2 + 888);
  v138 = v2;
  if (v13)
  {
    v18 = swift_slowAlloc();
    v139[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = UUID.uuidString.getter();
    v134 = v12;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_1002FFA0C(v19, v21, v139);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v22(v15, v17);
    v27 = sub_1002FFA0C(v24, v26, v139);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v11, v134, "Creating URL Request for credential %s with configUUID %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = *(v16 + 8);
    v28(v15, v17);
    v28(v14, v17);
  }

  v29 = *(v2 + 872);
  v30 = *(v2 + 864);
  v31 = *(v2 + 856);
  v32 = *(v2 + 744);
  v33 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v32 + v33, v31);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    sub_100075768(*(v2 + 856), &qword_10050A110, &qword_100414C28);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Nil network configuration when creatingCreationURLRequest", v36, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v37 = 19;
    swift_willThrow();
    goto LABEL_28;
  }

  v38 = *(v2 + 840);
  v39 = *(v2 + 832);
  v40 = *(v2 + 824);
  sub_1002F4C2C(*(v2 + 856), *(v2 + 880));
  *(v2 + 616) = 0xD000000000000019;
  *(v2 + 624) = 0x8000000100463770;
  (*(v39 + 104))(v38, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v39 + 8))(v38, v40);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v41._countAndFlagsBits = 0x2D746E65746E6F43;
  v41._object = 0xEC00000065707954;
  v42.value._object = 0x800000010046BE40;
  v42.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v42, v41);
  v43 = sub_1002F4C90();
  v44 = [v43 serialNumber];

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = *(v2 + 736);
  v49._countAndFlagsBits = 0x2D656C7070612D78;
  v49._object = 0xEC00000064696573;
  v50.value._countAndFlagsBits = v45;
  v50.value._object = v47;
  URLRequest.setValue(_:forHTTPHeaderField:)(v50, v49);

  v51.value._countAndFlagsBits = sub_1002F4E88();
  v52._countAndFlagsBits = 0xD000000000000013;
  v52._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v51, v52);

  v53.value._countAndFlagsBits = UUID.uuidString.getter();
  v54._countAndFlagsBits = 0x7365757165722D78;
  v54._object = 0xEC00000064692D74;
  URLRequest.setValue(_:forHTTPHeaderField:)(v53, v54);

  v55.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56._countAndFlagsBits = 0x6567612D72657375;
  v56._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v55, v56);

  v57 = *(v48 + 16);
  v58 = *(v48 + 32);
  v59 = *(v48 + 64);
  *(v2 + 48) = *(v48 + 48);
  *(v2 + 64) = v59;
  *(v2 + 16) = v57;
  *(v2 + 32) = v58;
  v60 = *(v48 + 80);
  v61 = *(v48 + 96);
  v62 = *(v48 + 112);
  *(v2 + 128) = *(v48 + 128);
  *(v2 + 96) = v61;
  *(v2 + 112) = v62;
  *(v2 + 80) = v60;
  v63 = *(v2 + 16);
  v64 = *(v2 + 24);
  v65 = *(v2 + 32);
  v66 = *(v2 + 40);
  v67 = *(v2 + 48);
  v68 = *(v2 + 56);
  *(v2 + 960) = v67;
  *(v2 + 968) = v68;
  v69 = *(v2 + 64);
  v70 = *(v2 + 72);
  *(v2 + 976) = v69;
  *(v2 + 984) = v70;
  v72 = *(v2 + 80);
  v71 = *(v2 + 88);
  *(v2 + 992) = v72;
  *(v2 + 1000) = v71;
  if (*(v2 + 128) >= 2u)
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = "Unable to provision as privileged client";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v81, v82, v84, v83, 2u);
    }

LABEL_26:
    v94 = *(v2 + 880);
    v95 = *(v2 + 712);

    sub_10009591C();
    swift_allocError();
    *v96 = 6;
    swift_willThrow();
    v97 = type metadata accessor for URLRequest();
    (*(*(v97 - 8) + 8))(v95, v97);
    v98 = v94;
LABEL_27:
    sub_1002F6D98(v98, type metadata accessor for SECNetworkConfiguration);
LABEL_28:

    v99 = v138[1];

    return v99();
  }

  v73 = *(v48 + 112);
  *(v2 + 536) = *(v48 + 96);
  *(v2 + 552) = v73;
  v74 = *(v2 + 816);
  v75 = *(v2 + 808);
  v136 = *(v2 + 800);
  *(v2 + 256) = v63;
  *(v2 + 264) = v64;
  *(v2 + 272) = v65;
  *(v2 + 280) = v66;
  *(v2 + 288) = v67;
  *(v2 + 296) = v68;
  *(v2 + 304) = v69;
  *(v2 + 312) = v70;
  *(v2 + 320) = v72;
  *(v2 + 328) = v71;
  v76 = *(v2 + 552);
  *(v2 + 336) = *(v2 + 536);
  *(v2 + 352) = v76;

  sub_10012E3F4(v2 + 16, v2 + 136);
  sub_10012E450(v2 + 256);
  UUID.uuidString.getter();
  String.lowercased()();

  static String.Encoding.utf8.getter();
  v77 = String.data(using:allowLossyConversion:)();
  v79 = v78;

  *(v2 + 1008) = v77;
  *(v2 + 1016) = v79;
  v80 = *(v75 + 8);
  v80(v74, v136);
  if (v79 >> 60 == 15)
  {

    goto LABEL_23;
  }

  v132 = v77;
  v133 = v79;
  v85 = *(v2 + 816);
  v130 = *(v2 + 800);
  UUID.uuidString.getter();
  String.lowercased()();

  static String.Encoding.utf8.getter();
  v86 = String.data(using:allowLossyConversion:)();
  v88 = v87;

  *(v2 + 1024) = v86;
  *(v2 + 1032) = v88;
  v80(v85, v130);
  if (v88 >> 60 == 15)
  {

LABEL_22:
    sub_10006A2D0(v132, v133);
    goto LABEL_23;
  }

  v89 = *(v2 + 816);
  v90 = *(v2 + 800);
  static String.Encoding.utf8.getter();
  v91 = String.data(using:allowLossyConversion:)();
  v93 = v92;
  v131 = v91;
  *(v2 + 1040) = v91;
  *(v2 + 1048) = v92;
  v80(v89, v90);
  if (v93 >> 60 == 15)
  {

    sub_10006A2D0(v86, v88);
    goto LABEL_22;
  }

  v101 = *(v2 + 816);
  v102 = *(v2 + 800);
  *(v2 + 680) = v72;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v103 = String.data(using:allowLossyConversion:)();
  v105 = v104;

  *(v2 + 1056) = v103;
  *(v2 + 1064) = v105;
  v80(v101, v102);
  if (v105 >> 60 == 15)
  {

    sub_10006A2D0(v131, v93);
    sub_10006A2D0(v86, v88);
    sub_10006A2D0(v132, v133);
LABEL_23:
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = "createCredential: Failed to get teamID data or country code data";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v106 = v103;
  v107 = sub_1002F4C90();
  v108 = [v107 info];

  if (!v108 || (v109 = [v108 ecdsaCertificate], v108, !v109))
  {

    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "createCredental: Nil ECDSA certificate", v123, 2u);
    }

    v124 = v138[110];
    v125 = v138[89];

    sub_10009591C();
    swift_allocError();
    *v126 = 6;
    swift_willThrow();
    sub_10006A2D0(v86, v88);
    sub_10006A2D0(v131, v93);
    sub_10006A2D0(v106, v105);
    sub_10006A2D0(v132, v133);
    v127 = type metadata accessor for URLRequest();
    (*(*(v127 - 8) + 8))(v125, v127);
    v98 = v124;
    goto LABEL_27;
  }

  v128 = v138[99];
  v135 = v138[97];
  v137 = v138[98];
  v110 = v138[96];
  v129 = v138[95];
  v111 = v138[94];
  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;
  v138[83] = v112;
  v138[84] = v113;

  v138[134] = v114;
  v138[79] = v132;
  v138[80] = v133;
  sub_100069E2C(v132, v133);
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  v115 = v138[79];
  v116 = v138[80];
  sub_1002F6DF8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v115, v116);
  sub_100357FC4(v115, v116, v110);
  sub_10006A178(v115, v116);
  dispatch thunk of HashFunction.finalize()();
  (*(v129 + 8))(v110, v111);
  v138[65] = v135;
  v138[66] = sub_1002F6DF8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v117 = sub_1000B9634(v138 + 62);
  (*(v137 + 16))(v117, v128, v135);
  sub_1000752B0(v138 + 62, v138[65]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v137 + 8))(v128, v135);
  v118 = v138[81];
  v138[135] = v118;
  v119 = v138[82];
  v138[136] = v119;
  sub_1000752F4(v138 + 62);
  v120 = swift_task_alloc();
  v138[137] = v120;
  *v120 = v138;
  v120[1] = sub_1002ED1A4;

  return sub_1002F5150((v138 + 46), v118, v119);
}

uint64_t sub_1002ED1A4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 384);
  *(v3 + 1112) = *(v3 + 368);
  *(v3 + 1128) = v4;
  v5 = *(v3 + 416);
  *(v3 + 1144) = *(v3 + 400);
  *(v3 + 1104) = v0;
  *(v3 + 1160) = v5;

  v6 = *(v2 + 1088);
  v7 = *(v2 + 1080);
  if (v0)
  {
    sub_10006A178(v7, v6);

    v8 = sub_1002EDF98;
  }

  else
  {
    *(v3 + 1176) = *(v3 + 664);
    sub_10006A178(v7, v6);
    v8 = sub_1002ED378;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002ED378()
{
  v99 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1072);
  v88 = *(v0 + 1000);
  v85 = *(v0 + 992);
  v91 = *(v0 + 976);
  v95 = *(v0 + 984);
  v79 = *(v0 + 960);
  v82 = *(v0 + 968);
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 6513509;
  v4 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v5 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(v4, &unk_100504020, &qword_100409CC0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10040AA50;
  *(v6 + 32) = 0x727574616E676973;
  *(v6 + 40) = 0xE900000000000065;
  *(v6 + 48) = Data.base64EncodedString(options:)(0);
  *(v6 + 72) = &type metadata for String;
  *(v6 + 80) = 0x6D726F6674616C70;
  *(v6 + 88) = 0xEA00000000006449;
  *(v6 + 96) = Data.base64EncodedString(options:)(0);
  *(v6 + 120) = &type metadata for String;
  *(v6 + 128) = 0x766544646E72;
  *(v6 + 136) = 0xE600000000000000;
  *(v6 + 144) = Data.base64EncodedString(options:)(0);
  *(v6 + 168) = &type metadata for String;
  *(v6 + 176) = 0x6E756F436C62736ALL;
  *(v6 + 184) = 0xEB00000000726574;
  *(v6 + 192) = Data.base64EncodedString(options:)(0);
  *(v6 + 216) = &type metadata for String;
  *(v6 + 224) = 0x7472654364736163;
  *(v6 + 232) = 0xEF65746163696669;
  *(v6 + 264) = sub_100068FC4(&qword_100502600, &unk_100417140);
  *(v6 + 240) = v5;
  v7 = sub_10008FFDC(v6);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100413A40;
  *(v8 + 32) = 0x43746375646F7270;
  *(v8 + 40) = 0xEF64496769666E6FLL;
  UUID.uuidString.getter();
  v9 = String.lowercased()();

  *(v8 + 48) = v9;
  *(v8 + 72) = &type metadata for String;
  *(v8 + 80) = 0xD000000000000014;
  *(v8 + 88) = 0x800000010046BE80;
  UUID.uuidString.getter();
  v10 = String.lowercased()();

  *(v8 + 96) = v10;
  *(v8 + 120) = &type metadata for String;
  *(v8 + 128) = 0x64496D616574;
  *(v8 + 136) = 0xE600000000000000;
  *(v8 + 144) = v79;
  *(v8 + 152) = v82;
  *(v8 + 168) = &type metadata for String;
  *(v8 + 176) = 0x437972746E756F63;
  *(v8 + 184) = 0xEB0000000065646FLL;
  *(v8 + 192) = v85;
  *(v8 + 216) = &type metadata for UInt64;
  *(v8 + 224) = 0xD000000000000015;
  *(v8 + 232) = 0x800000010046C030;
  v11 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(v8 + 240) = v7;
  *(v8 + 264) = v11;
  *(v8 + 272) = 0x496D616441707061;
  *(v8 + 280) = 0xE900000000000064;
  *(v0 + 688) = v88;
  *(v8 + 288) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v8 + 296) = v12;
  *(v8 + 312) = &type metadata for String;
  *(v8 + 320) = 0x656D614E707061;
  *(v8 + 360) = &type metadata for String;
  *(v8 + 328) = 0xE700000000000000;
  *(v8 + 336) = v91;
  *(v8 + 344) = v95;
  sub_10008FFDC(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 696) = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v0 + 696];

  v16 = *(v0 + 696);
  if (v15)
  {
    v17 = *(v0 + 944);
    v18 = *(v0 + 912);
    v92 = *(v0 + 904);
    v19 = *(v0 + 888);
    v89 = *(v0 + 728);
    v20 = *(v0 + 720);
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    URLRequest.httpBody.setter();
    v17(v18, v20, v19);
    v17(v92, v89, v19);
    v21 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v21, v68);
    v73 = *(v0 + 1160);
    v75 = *(v0 + 1168);
    v77 = *(v0 + 1144);
    v80 = *(v0 + 1152);
    v83 = *(v0 + 1128);
    v86 = *(v0 + 1136);
    v90 = *(v0 + 1112);
    v93 = *(v0 + 1120);
    v23 = *(v0 + 1064);
    v96 = *(v0 + 1056);
    v69 = *(v0 + 1040);
    v71 = *(v0 + 1048);
    v24 = *(v0 + 1016);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 912);
    v27 = *(v0 + 904);
    v28 = *(v0 + 896);
    v29 = *(v0 + 888);
    v30 = *(v0 + 880);
    if (v22)
    {
      v63 = *(v0 + 1024);
      v64 = *(v0 + 1032);
      v67 = *(v0 + 1064);
      v31 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v31 = 136315394;
      v65 = v25;
      v66 = v30;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = *(v28 + 8);
      v35(v26, v29);
      v36 = sub_1002FFA0C(v32, v34, v98);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      v35(v27, v29);
      v40 = sub_1002FFA0C(v37, v39, v98);

      *(v31 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v21, v68, "Successfully created URLRequest to provision credential %s with config %s", v31, 0x16u);
      swift_arrayDestroy();

      sub_10006A2D0(v63, v64);
      sub_10006A2D0(v69, v71);
      sub_10006A178(v73, v75);
      sub_10006A178(v77, v80);
      sub_10006A178(v83, v86);
      sub_10006A178(v90, v93);
      sub_10006A2D0(v96, v67);

      sub_10006A2D0(v65, v24);
      v41 = v66;
    }

    else
    {
      sub_10006A2D0(*(v0 + 1024), *(v0 + 1032));
      sub_10006A2D0(v69, v71);
      sub_10006A178(v73, v75);
      sub_10006A178(v77, v80);
      sub_10006A178(v83, v86);
      sub_10006A178(v90, v93);
      sub_10006A2D0(v96, v23);

      sub_10006A2D0(v25, v24);
      v61 = *(v28 + 8);
      v61(v27, v29);
      v61(v26, v29);
      v41 = v30;
    }

    sub_1002F6D98(v41, type metadata accessor for SECNetworkConfiguration);
    sub_10006A178(*(v0 + 632), *(v0 + 640));

    v60 = *(v0 + 8);
  }

  else
  {
    v42 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v98[0] = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = sub_1002FFA0C(v47, v48, v98);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "JSONSerialization error %s encountered while serializing createAppletInstanceRequest", v45, 0xCu);
      sub_1000752F4(v46);
    }

    v50 = *(v0 + 1168);
    v51 = *(v0 + 1160);
    v52 = *(v0 + 1152);
    v53 = *(v0 + 1144);
    v70 = *(v0 + 1128);
    v72 = *(v0 + 1136);
    v74 = *(v0 + 1112);
    v76 = *(v0 + 1120);
    v78 = *(v0 + 1056);
    v81 = *(v0 + 1064);
    v54 = *(v0 + 1048);
    v55 = *(v0 + 1040);
    v56 = *(v0 + 1032);
    v57 = *(v0 + 1024);
    v84 = *(v0 + 1008);
    v87 = *(v0 + 1016);
    v94 = *(v0 + 712);
    v97 = *(v0 + 880);
    sub_10009591C();
    swift_allocError();
    *v58 = 14;
    swift_willThrow();
    sub_10006A2D0(v57, v56);
    sub_10006A2D0(v55, v54);
    sub_10006A178(v51, v50);
    sub_10006A178(v53, v52);
    sub_10006A178(v70, v72);
    sub_10006A178(v74, v76);
    sub_10006A2D0(v78, v81);

    sub_10006A2D0(v84, v87);
    v59 = type metadata accessor for URLRequest();
    (*(*(v59 - 8) + 8))(v94, v59);
    sub_1002F6D98(v97, type metadata accessor for SECNetworkConfiguration);
    sub_10006A178(*(v0 + 632), *(v0 + 640));

    v60 = *(v0 + 8);
  }

  return v60();
}

uint64_t sub_1002EDF98()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[127];
  v6 = v0[126];
  v7 = v0[110];
  v8 = v0[89];
  sub_10006A2D0(v0[128], v0[129]);
  sub_10006A2D0(v4, v3);
  sub_10006A2D0(v2, v1);
  sub_10006A2D0(v6, v5);
  v9 = type metadata accessor for URLRequest();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_1002F6D98(v7, type metadata accessor for SECNetworkConfiguration);
  sub_10006A178(v0[79], v0[80]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002EE178(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for URL();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for SECNetworkConfiguration(0);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v2[23] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[24] = v7;
  *v7 = v2;
  v7[1] = sub_1002EE408;

  return sub_1002EA8CC();
}

uint64_t sub_1002EE408()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002EE5A0, 0, 0);
  }
}

uint64_t sub_1002EE5A0(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[7];
  UUID.init()();

  sub_1003436E4(v2, v4, v3);
  v5 = swift_task_alloc();
  v1[25] = v5;
  *v5 = v1;
  v5[1] = sub_1002EE678;
  v6 = v1[23];

  return sub_100344EB0(v6);
}

uint64_t sub_1002EE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[26] = a1;
  v7[27] = a2;
  v7[28] = a3;
  v7[29] = a4;
  v7[30] = v4;

  sub_1002F6D98(v6[23], type metadata accessor for CredentialHeartbeatPayload.Report);
  if (v4)
  {
    v8 = sub_1002EED00;
  }

  else
  {
    v8 = sub_1002EE7D0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002EE7D0()
{
  v40 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100075768(v0[16], &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(0xD000000000000021, 0x800000010046BFE0, &v39);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: Nil network configuration", v9, 0xCu);
      sub_1000752F4(v10);
    }

    v12 = v0[28];
    v11 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    sub_10009591C();
    swift_allocError();
    *v15 = 19;
    swift_willThrow();
    sub_10006A178(v12, v11);
    sub_10006A178(v14, v13);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v37 = v0[28];
    v38 = v0[29];
    v18 = v0[22];
    v35 = v0[21];
    v36 = v0[20];
    v19 = v0[11];
    v20 = v0[9];
    v21 = v0[10];
    sub_1002F4C2C(v0[16], v0[19]);
    v0[5] = 0xD00000000000001BLL;
    v0[6] = 0x800000010046C010;
    (*(v21 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
    sub_10012512C();
    URL.appending<A>(path:directoryHint:)();
    (*(v21 + 8))(v19, v20);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v22._countAndFlagsBits = 0x2D746E65746E6F43;
    v22._object = 0xEC00000065707954;
    v23.value._object = 0x800000010046BE40;
    v23.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v23, v22);
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v35 + 8))(v18, v36);
    v27._countAndFlagsBits = 0x7365757165722D78;
    v27._object = 0xEC00000064692D74;
    v28.value._countAndFlagsBits = v24;
    v28.value._object = v26;
    URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);

    v29.value._countAndFlagsBits = sub_1002F4E88();
    v30._countAndFlagsBits = 0xD000000000000013;
    v30._object = 0x800000010046BE60;
    URLRequest.setValue(_:forHTTPHeaderField:)(v29, v30);

    v31 = Data.base64EncodedString(options:)(0);
    v32._countAndFlagsBits = 0xD000000000000011;
    v32._object = 0x800000010046BFA0;
    URLRequest.setValue(_:forHTTPHeaderField:)(v31, v32);

    sub_100069E2C(v37, v38);
    URLRequest.httpBody.setter();
    v33 = swift_task_alloc();
    v0[31] = v33;
    *v33 = v0;
    v33[1] = sub_1002EEDB8;
    v34 = v0[15];

    return sub_100159A70(v34, 0);
  }
}

uint64_t sub_1002EED00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EEDB8(uint64_t a1, unint64_t a2)
{
  *(*v3 + 256) = v2;

  if (v2)
  {
    v6 = sub_1002EF000;
  }

  else
  {
    sub_10006A178(a1, a2);
    v6 = sub_1002EEEE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002EEEE8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[14];
  sub_10006A178(v0[26], v0[27]);
  sub_10006A178(v1, v2);
  (*(v6 + 8))(v4, v5);
  sub_1002F6D98(v3, type metadata accessor for SECNetworkConfiguration);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002EF000()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[14];
  v10 = v0[15];
  v11 = v0[19];
  v6 = v0[13];
  sub_10009591C();
  swift_allocError();
  *v7 = 11;
  swift_willThrow();
  sub_10006A178(v4, v3);

  sub_10006A178(v2, v1);
  (*(v5 + 8))(v10, v6);
  sub_1002F6D98(v11, type metadata accessor for SECNetworkConfiguration);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002EF15C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for URL();
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for SECNetworkConfiguration(0);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = *(type metadata accessor for SECPresentmentReport(0) - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[30] = v7;
  *v7 = v2;
  v7[1] = sub_1002EF424;

  return sub_1002EA8CC();
}

uint64_t sub_1002EF424()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 248) = v6;
    *v6 = v3;
    v6[1] = sub_1002EF5F8;

    return sub_10030148C();
  }
}

uint64_t sub_1002EF5F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002EF7A0, 0, 0);
  }
}

void sub_1002EF7A0()
{
  v1 = *(*(v0 + 256) + 16);
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = *(v0 + 216);
    *(v0 + 272) = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
    *(v0 + 376) = *(v2 + 80);
    swift_beginAccess();
    *(v0 + 380) = enum case for URL.DirectoryHint.inferFromPath(_:);
    *(v0 + 280) = 0;
    v3 = *(v0 + 256);
    if (*(v3 + 16))
    {
      v5 = *(v0 + 200);
      v4 = *(v0 + 208);
      v6 = *(v0 + 192);
      sub_1002F6CC0(v3 + ((*(v0 + 376) + 32) & ~*(v0 + 376)), *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v7;
      (*(v5 + 8))(v4, v6);
      v8 = swift_task_alloc();
      *(v0 + 304) = v8;
      *v8 = v0;
      v8[1] = sub_1002EF98C;
      v9 = *(v0 + 232);

      sub_1002F65D4(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_1002EF98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[39] = a1;
  v6[40] = a2;
  v6[41] = a3;
  v6[42] = a4;
  v6[43] = v4;

  if (v4)
  {

    v7 = sub_1002F025C;
  }

  else
  {
    v7 = sub_1002EFAB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002EFAB0(__n128 a1)
{
  v59 = v1;
  v2 = v1;
  v3 = *(v1 + 272);
  v4 = *(v1 + 176);
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  sub_1002F4BBC(*(v2 + 96) + v3, v5);
  if ((*(v4 + 48))(v5, 1, v6) == 1)
  {
    v7 = *(v2 + 160);

    sub_100075768(v7, &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "sendDailyPresentmentReports: Nil network configuration", v11, 2u);
    }

    v13 = *(v2 + 328);
    v12 = *(v2 + 336);
    v15 = *(v2 + 312);
    v14 = *(v2 + 320);

    sub_10009591C();
    swift_allocError();
    *v16 = 19;
    swift_willThrow();
    sub_10006A178(v13, v12);
    sub_10006A178(v15, v14);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = *(v2 + 224);
    v17 = *(v2 + 232);
    sub_1000958E4(v8, qword_10051B2C8);
    sub_1002F6CC0(v17, v18);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v2 + 224);
    v22 = *(v2 + 232);
    if (v21)
    {
      v24 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v24 = 136315394;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, v58);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
      v31 = sub_1002FFA0C(v28, v30, v58);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error %s when sending report %s. Will try again the next scheduled task.", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
    }

    result = sub_1002F6D98(v22, type metadata accessor for SECPresentmentReport);
    v45 = *(v2 + 280) + 1;
    if (v45 == *(v2 + 264))
    {

      v46 = *(v2 + 8);

      return v46();
    }

    else
    {
      *(v2 + 280) = v45;
      v47 = *(v2 + 256);
      if (v45 >= *(v47 + 16))
      {
        __break(1u);
      }

      else
      {
        v48 = *(v2 + 208);
        v49 = *(v2 + 192);
        v50 = *(v2 + 200);
        sub_1002F6CC0(v47 + ((*(v2 + 376) + 32) & ~*(v2 + 376)) + *(*(v2 + 216) + 72) * v45, *(v2 + 232));
        UUID.init()();
        *(v2 + 288) = UUID.uuidString.getter();
        *(v2 + 296) = v51;
        (*(v50 + 8))(v48, v49);
        v52 = swift_task_alloc();
        *(v2 + 304) = v52;
        *v52 = v2;
        v52[1] = sub_1002EF98C;
        v53 = *(v2 + 232);

        return sub_1002F65D4(v53);
      }
    }
  }

  else
  {
    v56 = *(v2 + 328);
    v57 = *(v2 + 336);
    v55 = *(v2 + 288);
    v54 = *(v2 + 380);
    v32 = *(v2 + 120);
    v33 = *(v2 + 104);
    v34 = *(v2 + 112);
    sub_1002F4C2C(*(v2 + 160), *(v2 + 184));
    *(v2 + 64) = 0xD000000000000013;
    *(v2 + 72) = 0x800000010046BF80;
    (*(v34 + 104))(v32, v54, v33);
    sub_10012512C();
    URL.appending<A>(path:directoryHint:)();
    (*(v34 + 8))(v32, v33);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v35.value._countAndFlagsBits = 0xD000000000000010;
    v36._countAndFlagsBits = 0x2D746E65746E6F43;
    v36._object = 0xEC00000065707954;
    v35.value._object = 0x800000010046BE40;
    URLRequest.setValue(_:forHTTPHeaderField:)(v35, v36);
    v37._countAndFlagsBits = 0x7365757165722D78;
    v37._object = 0xEC00000064692D74;
    URLRequest.setValue(_:forHTTPHeaderField:)(v55, v37);

    v38.value._countAndFlagsBits = sub_1002F4E88();
    v39._object = 0x800000010046BE60;
    v39._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(v38, v39);

    v40 = Data.base64EncodedString(options:)(0);
    v41._countAndFlagsBits = 0xD000000000000011;
    v41._object = 0x800000010046BFA0;
    URLRequest.setValue(_:forHTTPHeaderField:)(v40, v41);

    sub_100069E2C(v56, v57);
    URLRequest.httpBody.setter();
    v42 = swift_task_alloc();
    *(v2 + 352) = v42;
    *v42 = v2;
    v42[1] = sub_1002F0628;
    v43 = *(v2 + 152);

    return sub_100159A70(v43, 0);
  }

  return result;
}

uint64_t sub_1002F025C(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = *(v2 + 224);
  v3 = *(v2 + 232);
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  sub_1002F6CC0(v3, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v2 + 224);
  v9 = *(v2 + 232);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v11 = 136315394;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v30 = v9;
    v17 = v16;
    sub_1002F6D98(v10, type metadata accessor for SECPresentmentReport);
    v18 = sub_1002FFA0C(v15, v17, &v31);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error %s when sending report %s. Will try again the next scheduled task.", v11, 0x16u);
    swift_arrayDestroy();

    v19 = v30;
  }

  else
  {

    sub_1002F6D98(v10, type metadata accessor for SECPresentmentReport);
    v19 = v9;
  }

  result = sub_1002F6D98(v19, type metadata accessor for SECPresentmentReport);
  v21 = *(v2 + 280) + 1;
  if (v21 == *(v2 + 264))
  {

    v22 = *(v2 + 8);

    return v22();
  }

  else
  {
    *(v2 + 280) = v21;
    v23 = *(v2 + 256);
    if (v21 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = *(v2 + 208);
      v25 = *(v2 + 192);
      v26 = *(v2 + 200);
      sub_1002F6CC0(v23 + ((*(v2 + 376) + 32) & ~*(v2 + 376)) + *(*(v2 + 216) + 72) * v21, *(v2 + 232));
      UUID.init()();
      *(v2 + 288) = UUID.uuidString.getter();
      *(v2 + 296) = v27;
      (*(v26 + 8))(v24, v25);
      v28 = swift_task_alloc();
      *(v2 + 304) = v28;
      *v28 = v2;
      v28[1] = sub_1002EF98C;
      v29 = *(v2 + 232);

      return sub_1002F65D4(v29);
    }
  }

  return result;
}

uint64_t sub_1002F0628(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {
    v7 = sub_1002F0860;
    v8 = 0;
  }

  else
  {
    v9 = *(v6 + 88);
    sub_10006A178(a1, a2);
    v7 = sub_1002F0774;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002F0774()
{
  v1 = v0[45];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[46] = v1;
    v7 = sub_1002F0EBC;
  }

  else
  {
    v3 = v2;
    v4 = v0[29];
    v5 = v0[11];
    v6 = swift_task_alloc();
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_1002F0C84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002F0860()
{
  v36 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_1002F6D98(v3, type metadata accessor for SECNetworkConfiguration);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B2C8);
  sub_1002F6CC0(v7, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  if (v12)
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v35);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v34 = v13;
    v21 = v20;
    sub_1002F6D98(v14, type metadata accessor for SECPresentmentReport);
    v22 = sub_1002FFA0C(v19, v21, &v35);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error %s when sending report %s. Will try again the next scheduled task.", v15, 0x16u);
    swift_arrayDestroy();

    v23 = v34;
  }

  else
  {

    sub_1002F6D98(v14, type metadata accessor for SECPresentmentReport);
    v23 = v13;
  }

  result = sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
  v25 = *(v0 + 280) + 1;
  if (v25 == *(v0 + 264))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 280) = v25;
    v27 = *(v0 + 256);
    if (v25 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 208);
      v29 = *(v0 + 192);
      v30 = *(v0 + 200);
      sub_1002F6CC0(v27 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v25, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v31;
      (*(v30 + 8))(v28, v29);
      v32 = swift_task_alloc();
      *(v0 + 304) = v32;
      *v32 = v0;
      v32[1] = sub_1002EF98C;
      v33 = *(v0 + 232);

      return sub_1002F65D4(v33);
    }
  }

  return result;
}

uint64_t sub_1002F0C84()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v6 + 8))(v5, v7);
  sub_1002F6D98(v4, type metadata accessor for SECNetworkConfiguration);
  result = sub_1002F6D98(v3, type metadata accessor for SECPresentmentReport);
  v9 = *(v0 + 280) + 1;
  if (v9 == *(v0 + 264))
  {

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 280) = v9;
    v11 = *(v0 + 256);
    if (v9 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 208);
      v13 = *(v0 + 192);
      v14 = *(v0 + 200);
      sub_1002F6CC0(v11 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v9, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v15;
      (*(v14 + 8))(v12, v13);
      v16 = swift_task_alloc();
      *(v0 + 304) = v16;
      *v16 = v0;
      v16[1] = sub_1002EF98C;
      v17 = *(v0 + 232);

      return sub_1002F65D4(v17);
    }
  }

  return result;
}

uint64_t sub_1002F0EBC()
{
  v36 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_1002F6D98(v3, type metadata accessor for SECNetworkConfiguration);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B2C8);
  sub_1002F6CC0(v7, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  if (v12)
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v35);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v34 = v13;
    v21 = v20;
    sub_1002F6D98(v14, type metadata accessor for SECPresentmentReport);
    v22 = sub_1002FFA0C(v19, v21, &v35);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error %s when sending report %s. Will try again the next scheduled task.", v15, 0x16u);
    swift_arrayDestroy();

    v23 = v34;
  }

  else
  {

    sub_1002F6D98(v14, type metadata accessor for SECPresentmentReport);
    v23 = v13;
  }

  result = sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
  v25 = *(v0 + 280) + 1;
  if (v25 == *(v0 + 264))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 280) = v25;
    v27 = *(v0 + 256);
    if (v25 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 208);
      v29 = *(v0 + 192);
      v30 = *(v0 + 200);
      sub_1002F6CC0(v27 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v25, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v31;
      (*(v30 + 8))(v28, v29);
      v32 = swift_task_alloc();
      *(v0 + 304) = v32;
      *v32 = v0;
      v32[1] = sub_1002EF98C;
      v33 = *(v0 + 232);

      return sub_1002F65D4(v33);
    }
  }

  return result;
}

uint64_t sub_1002F12E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[63] = a3;
  v4[64] = v3;
  v4[61] = a1;
  v4[62] = a2;
  v5 = type metadata accessor for UUID();
  v4[65] = v5;
  v4[66] = *(v5 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v6 = type metadata accessor for SECCredentialConfig();
  v4[69] = v6;
  v4[70] = *(v6 - 8);
  v4[71] = swift_task_alloc();
  v7 = type metadata accessor for SECMetadata();
  v4[72] = v7;
  v4[73] = *(v7 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  type metadata accessor for URL();
  v4[76] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v4[77] = v8;
  v4[78] = *(v8 - 8);
  v4[79] = swift_task_alloc();
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v4[80] = swift_task_alloc();
  v9 = type metadata accessor for SECNetworkConfiguration(0);
  v4[81] = v9;
  v4[82] = *(v9 - 8);
  v4[83] = swift_task_alloc();
  sub_100068FC4(&qword_100502D50, &qword_100414C30);
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_1002F15C8, 0, 0);
}

uint64_t sub_1002F15C8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 680) = qword_10051B858;

  return _swift_task_switch(sub_1002F1660, v1, 0);
}

uint64_t sub_1002F1660()
{
  sub_10009453C(*(v0 + 672));
  *(v0 + 688) = 0;

  return _swift_task_switch(sub_1002F16F4, 0, 0);
}

uint64_t sub_1002F16F4()
{
  v1 = v0[84];
  v2 = v0[70];
  v3 = v0[69];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_100075768(v1, &qword_100502D50, &qword_100414C30);
    v4 = swift_task_alloc();
    v0[87] = v4;
    *v4 = v0;
    v4[1] = sub_1002F18C4;

    return sub_1002EA8CC();
  }

  else
  {
    (*(v2 + 32))(v0[61], v1, v3);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002F18C4()
{
  v2 = *v1;
  *(v2 + 704) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002F1AA0, 0, 0);
  }
}

uint64_t sub_1002F1AA0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 512);
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100075768(*(v0 + 640), &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "getCredentialMetadata: Nil network configuration", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();
    goto LABEL_15;
  }

  v11 = *(v0 + 504);
  sub_1002F4C2C(*(v0 + 640), *(v0 + 664));
  v13 = *(v11 + 96);
  v12 = *(v11 + 112);
  v14 = *(v11 + 80);
  *(v0 + 128) = *(v11 + 128);
  v15 = *(v11 + 64);
  v17 = *(v11 + 16);
  v16 = *(v11 + 32);
  *(v0 + 48) = *(v11 + 48);
  *(v0 + 64) = v15;
  *(v0 + 16) = v17;
  *(v0 + 32) = v16;
  *(v0 + 96) = v13;
  *(v0 + 112) = v12;
  *(v0 + 80) = v14;
  if (*(v0 + 128) >= 2u)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000958E4(v34, qword_10051B2C8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to get metadata as privileged client", v37, 2u);
    }

    v38 = *(v0 + 664);

    sub_10009591C();
    swift_allocError();
    *v39 = 6;
    swift_willThrow();
    sub_1002F6D98(v38, type metadata accessor for SECNetworkConfiguration);
    goto LABEL_15;
  }

  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = *(v0 + 16);
  v25 = *(v0 + 80);
  v27 = *(v11 + 96);
  v26 = *(v11 + 112);
  *(v0 + 368) = v27;
  *(v0 + 384) = v26;
  v28 = *(v0 + 704);
  v29 = *(v0 + 608);
  *(v0 + 256) = v24;
  *(v0 + 272) = v23;
  *(v0 + 280) = v22;
  *(v0 + 288) = v21;
  *(v0 + 296) = v20;
  *(v0 + 304) = v19;
  *(v0 + 312) = v18;
  *(v0 + 320) = v25;
  *(v0 + 336) = v27;
  *(v0 + 352) = *(v0 + 384);
  sub_10012E3F4(v0 + 16, v0 + 136);

  sub_10012E450(v0 + 256);
  sub_100124BD8(v21, v20, v29);

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v30._countAndFlagsBits = 0x2D746E65746E6F43;
  v30._object = 0xEC00000065707954;
  v31.value._object = 0x800000010046BE40;
  v31.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v31, v30);
  v32 = sub_1002F4C90();
  if (v28)
  {
    v33 = *(v0 + 664);
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    sub_1002F6D98(v33, type metadata accessor for SECNetworkConfiguration);
LABEL_15:

    v40 = *(v0 + 8);

    return v40();
  }

  v42 = v32;
  v43 = [v32 serialNumber];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47._countAndFlagsBits = 0x2D656C7070612D78;
  v47._object = 0xEC00000064696573;
  v48.value._countAndFlagsBits = v44;
  v48.value._object = v46;
  URLRequest.setValue(_:forHTTPHeaderField:)(v48, v47);

  v49.value._countAndFlagsBits = sub_1002F4E88();
  v50._countAndFlagsBits = 0xD000000000000013;
  v50._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v49, v50);

  v51.value._countAndFlagsBits = UUID.uuidString.getter();
  v52._countAndFlagsBits = 0x7365757165722D78;
  v52._object = 0xEC00000064692D74;
  URLRequest.setValue(_:forHTTPHeaderField:)(v51, v52);

  v53.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54._countAndFlagsBits = 0x6567612D72657375;
  v54._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v53, v54);

  v55 = swift_task_alloc();
  *(v0 + 712) = v55;
  *v55 = v0;
  v55[1] = sub_1002F2118;
  v56 = *(v0 + 632);

  return sub_100159A70(v56, 1);
}

uint64_t sub_1002F2118(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[90] = a1;
  v4[91] = a2;
  v4[92] = v2;

  if (v2)
  {
    v5 = sub_1002F2698;
  }

  else
  {
    v5 = sub_1002F2234;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F2234()
{
  v27 = v0;
  v1 = v0[92];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002F6DF8(&qword_100502D48, &type metadata accessor for SECMetadata, &protocol conformance descriptor for SECMetadata);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v0[93] = v1;
  if (v1)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_1002FFA0C(v7, v8, &v26);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "getCredentialMetadata: JSON Decoding error %s encountered", v5, 0xCu);
      sub_1000752F4(v6);
    }

    v10 = v0[91];
    v11 = v0[90];
    v12 = v0[83];
    v13 = v0[79];
    v14 = v0[78];
    v15 = v0[77];
    sub_10009591C();
    swift_allocError();
    *v16 = 13;
    swift_willThrow();
    sub_10006A178(v11, v10);

    (*(v14 + 8))(v13, v15);
    sub_1002F6D98(v12, type metadata accessor for SECNetworkConfiguration);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v25 = v0[85];
    v19 = v0[68];
    v24 = v0[67];
    v20 = v0[66];
    v21 = v0[65];
    v22 = v0[62];

    v23 = *(v20 + 16);
    v23(v19, v22, v21);
    SECMetadata.credentialTypes.getter();
    SECMetadata.appletInstances.getter();
    SECMetadata.friendlyName.getter();
    v23(v24, v19, v21);
    SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
    SECCredentialConfig.init(configUUID:metadata:)();
    (*(v20 + 8))(v19, v21);

    return _swift_task_switch(sub_1002F29E8, v25, 0);
  }
}

uint64_t sub_1002F2698()
{
  v21 = v0;
  *(v0 + 472) = *(v0 + 736);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 448);
    v2 = *(v0 + 456);
    v3 = *(v0 + 464);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    sub_10015CCB4(v1, v2, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_10015CCF0(v1, v2, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = sub_100157174(v1, v2, v3);
      v11 = sub_1002FFA0C(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "getCredentialMetadata: Data task wrapper error %s encountered while performing URL request", v7, 0xCu);
      sub_1000752F4(v8);
    }

    v12 = *(v0 + 664);
    v13 = *(v0 + 632);
    v14 = *(v0 + 624);
    v15 = *(v0 + 616);
    sub_10009591C();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
    sub_10015CCF0(v1, v2, v3);
    (*(v14 + 8))(v13, v15);
    sub_1002F6D98(v12, type metadata accessor for SECNetworkConfiguration);
  }

  else
  {
    v17 = *(v0 + 664);
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    sub_1002F6D98(v17, type metadata accessor for SECNetworkConfiguration);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002F29E8()
{
  v1 = v0[93];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[94] = v1;
    v6 = sub_1002F2C60;
  }

  else
  {
    v3 = v2;
    v4 = v0[71];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v6 = sub_1002F2ACC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F2ACC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[75];
  v5 = v0[73];
  v6 = v0[72];
  v12 = v0[83];
  v13 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[61];
  sub_10006A178(v0[90], v0[91]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1002F6D98(v12, type metadata accessor for SECNetworkConfiguration);
  (*(v7 + 32))(v9, v13, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002F2C60()
{
  v22 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  (*(v0[73] + 8))(v0[75], v0[72]);
  (*(v2 + 8))(v1, v3);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1002FFA0C(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "getCredentialMetadata: JSON Decoding error %s encountered", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[83];
  v15 = v0[79];
  v16 = v0[78];
  v17 = v0[77];
  sub_10009591C();
  swift_allocError();
  *v18 = 13;
  swift_willThrow();
  sub_10006A178(v13, v12);

  (*(v16 + 8))(v15, v17);
  sub_1002F6D98(v14, type metadata accessor for SECNetworkConfiguration);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002F2F54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;

  return _swift_task_switch(sub_1002F30E0, 0, 0);
}

uint64_t sub_1002F30E0()
{
  v22 = v0;
  v1 = *(v0 + 64);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 40) = 0;
  v3 = [v1 signChallenge:isa outError:v0 + 40];

  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = *(v0 + 56);
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *v5 = v6;
    v5[1] = v8;
    v9 = *(v0 + 8);
  }

  else
  {
    v10 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10051B2C8);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_1002FFA0C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "performSEAuthenticatedGetData: Failed to sign challenge with nearfield error %s", v14, 0xCu);
      sub_1000752F4(v15);
    }

    sub_10009591C();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1002F3390(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  type metadata accessor for URL();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_100068FC4(&qword_10050A110, &qword_100414C28);
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for SECNetworkConfiguration(0);
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[29] = v6;
  *v6 = v2;
  v6[1] = sub_1002F35DC;

  return sub_1002EA8CC();
}

uint64_t sub_1002F35DC()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002F377C, 0, 0);
  }
}

uint64_t sub_1002F377C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[15];
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100075768(v0[25], &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "getInstallationStatus: Nil network configuration", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();
    goto LABEL_9;
  }

  v11 = v0[30];
  v12 = v0[21];
  sub_1002F4C2C(v0[25], v0[28]);
  sub_100124E14(v12);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v13._countAndFlagsBits = 0x2D746E65746E6F43;
  v13._object = 0xEC00000065707954;
  v14.value._object = 0x800000010046BE40;
  v14.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v14, v13);
  v15 = sub_1002F4C90();
  if (v11)
  {
    v16 = v0[28];
    (*(v0[23] + 8))(v0[24], v0[22]);
    sub_1002F6D98(v16, type metadata accessor for SECNetworkConfiguration);
LABEL_9:

    v17 = v0[1];

    return v17();
  }

  v19 = v15;
  v20 = [v15 serialNumber];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[18];
  v27._countAndFlagsBits = 0x2D656C7070612D78;
  v27._object = 0xEC00000064696573;
  v28.value._countAndFlagsBits = v21;
  v28.value._object = v23;
  URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);

  v29.value._countAndFlagsBits = sub_1002F4E88();
  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v29, v30);

  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v34 = *(v26 + 8);
  v0[31] = v34;
  v0[32] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v24, v25);
  v35._countAndFlagsBits = 0x7365757165722D78;
  v35._object = 0xEC00000064692D74;
  v36.value._countAndFlagsBits = v31;
  v36.value._object = v33;
  URLRequest.setValue(_:forHTTPHeaderField:)(v36, v35);

  v37.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38._countAndFlagsBits = 0x6567612D72657375;
  v38._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v37, v38);

  v39 = swift_task_alloc();
  v0[33] = v39;
  *v39 = v0;
  v39[1] = sub_1002F3C44;
  v40 = v0[24];

  return sub_100159A70(v40, 1);
}

uint64_t sub_1002F3C44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v5 = sub_1002F443C;
  }

  else
  {
    v5 = sub_1002F3D5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F3D5C()
{
  v49 = v0;
  v1 = *(v0 + 288);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1002F50B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v1)
  {
LABEL_20:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1002FFA0C(v23, v24, &v48);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "getInstallationStatus: JSON Decoding error %s encountered", v21, 0xCu);
      sub_1000752F4(v22);
    }

    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v28 = *(v0 + 224);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    v31 = *(v0 + 176);
    sub_10009591C();
    swift_allocError();
    *v32 = 13;
    swift_willThrow();
    sub_10006A178(v27, v26);

    (*(v30 + 8))(v29, v31);
    sub_1002F6D98(v28, type metadata accessor for SECNetworkConfiguration);

    v33 = *(v0 + 8);

    return v33();
  }

  v2 = *(v0 + 96);
  if (!*(v2 + 16))
  {
    goto LABEL_14;
  }

  sub_10008C908(0xD000000000000014, 0x800000010046BE80);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);

  UUID.init(uuidString:)();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = *(v0 + 128);

    sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
LABEL_15:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "getInstallationStatus: Unexpected JSON Response from Server", v16, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v17 = 13;
    swift_willThrow();
    goto LABEL_20;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    (*(v0 + 248))(*(v0 + 152), *(v0 + 136));
LABEL_14:

    goto LABEL_15;
  }

  if (!*(v2 + 16) || (v8 = sub_10008C908(0xD000000000000013, 0x800000010046BEA0), (v9 & 1) == 0))
  {
    v35 = *(v0 + 248);
    v36 = *(v0 + 152);
    v37 = *(v0 + 136);

    v35(v36, v37);
    goto LABEL_15;
  }

  v10 = (*(v2 + 56) + 16 * v8);
  v12 = *v10;
  v11 = v10[1];

  if (v12 == 0x6574736575716572 && v11 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10006A178(*(v0 + 272), *(v0 + 280));

    v47 = 0;
  }

  else
  {
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    if (v12 == 0x64657461657263 && v11 == 0xE700000000000000)
    {
      sub_10006A178(*(v0 + 272), *(v0 + 280));

      v40 = 1;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10006A178(v39, v38);

      if (v41)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }
    }

    v47 = v40;
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 192);
  v45 = *(v0 + 176);
  v44 = *(v0 + 184);
  (*(v0 + 248))(*(v0 + 152), *(v0 + 136));
  (*(v44 + 8))(v43, v45);
  sub_1002F6D98(v42, type metadata accessor for SECNetworkConfiguration);

  v46 = *(v0 + 8);

  return v46(v47);
}

uint64_t sub_1002F443C()
{
  v21 = v0;
  *(v0 + 88) = *(v0 + 288);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    sub_10015CCB4(v1, v2, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_10015CCF0(v1, v2, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = sub_100157174(v1, v2, v3);
      v11 = sub_1002FFA0C(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "getInstallationStatus: Data task wrapper error %s encountered while performing URL request", v7, 0xCu);
      sub_1000752F4(v8);
    }

    v12 = *(v0 + 224);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 176);
    sub_10009591C();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
    sub_10015CCF0(v1, v2, v3);
    (*(v14 + 8))(v13, v15);
    sub_1002F6D98(v12, type metadata accessor for SECNetworkConfiguration);
  }

  else
  {
    v17 = *(v0 + 224);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_1002F6D98(v17, type metadata accessor for SECNetworkConfiguration);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002F4758()
{
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration, &qword_10050A110, &qword_100414C28);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECNetworkController(uint64_t a1)
{
  result = qword_100509FE8;
  if (!qword_100509FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F4820(uint64_t a1)
{
  sub_1002F48D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002F48D4(uint64_t a1)
{
  if (!qword_100509FF8)
  {
    type metadata accessor for SECNetworkConfiguration(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100509FF8);
    }
  }
}

uint64_t sub_1002F492C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_1002EA8CC();
}

uint64_t sub_1002F49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_1002EAD48(a1, a2, a3);
}

uint64_t sub_1002F4A70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BB698;

  return sub_1002F3390(a1);
}

uint64_t sub_1002F4B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10012E598;

  return sub_1002F12E0(a1, a2, a3);
}

uint64_t sub_1002F4BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050A110, &qword_100414C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F4C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECNetworkConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1002F4C90()
{
  v0 = [objc_opt_self() sharedHardwareManager];
  v1 = String._bridgeToObjectiveC()();
  v11 = 0;
  v2 = [v0 secureElementWithIdentifier:v1 error:&v11];

  if (v2)
  {
    v3 = v11;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not get ese info", v8, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v9 = 9;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1002F4E88()
{
  v0 = sub_1001C7DE0(0x54746375646F7250, 0xEB00000000657079, 0xD000000000000016, 0x800000010046BEC0);
  v2 = v1;
  v3 = sub_1001C7DE0(0x4E746375646F7250, 0xEB00000000656D61, 0xD000000000000016, 0x800000010046BEE0);
  v5 = v4;
  v6 = sub_1001C7DE0(0x56746375646F7250, 0xEE006E6F69737265, 0xD000000000000019, 0x800000010046BF00);
  v8 = v7;
  v9 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 0xD000000000000017, 0x800000010046BF20);
  v11 = v10;
  v12._countAndFlagsBits = 59;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 59;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  String.append(_:)(v15);

  _StringGuts.grow(_:)(63);
  v16._countAndFlagsBits = 60;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v0;
  v17._object = v2;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 3940414;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v3;
  v19._object = v5;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000037;
  v20._object = 0x800000010046BF40;
  String.append(_:)(v20);
  return 0;
}

unint64_t sub_1002F50B8()
{
  result = qword_10050A118;
  if (!qword_10050A118)
  {
    sub_1000692D8(&qword_100502600, &unk_100417140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050A118);
  }

  return result;
}

uint64_t sub_1002F5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_1002F5174, 0, 0);
}

uint64_t sub_1002F5174()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100069E2C(v1, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1002F5288;

  return sub_1001FCDDC((v0 + 2), 0xD000000000000010, 0x800000010046C050, &unk_100414C68, v3);
}

uint64_t sub_1002F5288()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002F6570;
  }

  else
  {

    v2 = sub_1002F53A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F53A4(uint64_t a1, uint64_t a2)
{
  v165 = v3;
  v4 = v3[2];
  v5 = v3[3];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v8 = *(v4 + 16);
    v7 = *(v4 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 != 115)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 == 115)
      {
        goto LABEL_11;
      }

LABEL_15:
      if (qword_1005019D8 != -1)
      {
LABEL_132:
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000958E4(v16, qword_10051B2C8);
      sub_100069E2C(v4, v5);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      sub_10006A178(v4, v5);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v164[0] = v20;
        *v19 = 136315138;
        v3[4] = sub_100288788(v4, v5);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v21 = BidirectionalCollection<>.joined(separator:)();
        v23 = v22;

        v24 = sub_1002FFA0C(v21, v23, v164);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "performSEAuthenticatedGetData: Bad signature %s", v19, 0xCu);
        sub_1000752F4(v20);
      }

      sub_10009591C();
      swift_allocError();
      *v25 = 31;
      swift_willThrow();
      v26 = v4;
      goto LABEL_19;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_137:

    v134 = 0;
    v68 = 0;
    v67 = 0xF000000000000000;
    v66 = 0xF000000000000000;
    v69 = v153;
    v3 = v154;
    goto LABEL_138;
  }

  if (BYTE6(v5) != 115)
  {
    goto LABEL_15;
  }

LABEL_11:
  v11 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 TLVsWithData:isa];

  if (!v13)
  {
    goto LABEL_15;
  }

  v153 = v4;
  sub_1000754A4();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v154 = v3;
  if (v2 >> 62)
  {
    goto LABEL_136;
  }

  v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_137;
  }

LABEL_14:
  v15 = 0;
  v3 = (v2 & 0xC000000000000001);
  v160 = 0;
  v162 = 0;
  v163 = 0xF000000000000000;
  v161 = 0xF000000000000000;
  v148 = v5;
  do
  {
    if (v3)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_134;
      }

      v30 = *(v2 + 8 * v15 + 32);
    }

    v31 = v30;
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_132;
    }

    v32 = [v30 tag];
    if (v32 > 57119)
    {
      if (v32 == 57137)
      {
        v53 = [v31 value];
        if (!v53)
        {
          goto LABEL_90;
        }

        v54 = v53;
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          if (v58 != 2)
          {

            sub_10006A178(v55, v57);
LABEL_91:
            v3 = v154;
            v4 = v163;
            if (qword_1005019D8 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_1000958E4(v93, qword_10051B2C8);
            v77 = v31;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v78, v79))
            {
              goto LABEL_114;
            }

            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v164[0] = v81;
            *v80 = 136315138;
            v94 = [v77 value];
            if (v94)
            {
              v95 = v94;
              v150 = v81;
              v96 = v77;
              v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v157 = v79;
              v99 = v98;

              v154[7] = sub_100288788(v97, v99);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v100 = BidirectionalCollection<>.joined(separator:)();
              v102 = v101;
              v103 = v97;
              v77 = v96;
              v81 = v150;
              v104 = v99;
              v79 = v157;
              sub_10006A178(v103, v104);
            }

            else
            {
              v100 = 7104878;
              v102 = 0xE300000000000000;
            }

            v140 = sub_1002FFA0C(v100, v102, v164);

            *(v80 + 4) = v140;
            v137 = "performSEAuthenticatedGetData: Bad jsbl sequence counter %s in signature response";
            goto LABEL_127;
          }

          v61 = *(v55 + 16);
          v5 = *(v55 + 24);
          sub_10006A178(v55, v57);
          v62 = v5 - v61;
          if (__OFSUB__(v5, v61))
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (!v58)
          {
            sub_10006A178(v55, v57);
            if (BYTE6(v57) != 16)
            {
              goto LABEL_90;
            }

            goto LABEL_26;
          }

          v5 = HIDWORD(v55);
          sub_10006A178(v55, v57);
          LODWORD(v62) = HIDWORD(v55) - v55;
          if (__OFSUB__(HIDWORD(v55), v55))
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            swift_once();
LABEL_87:
            v76 = type metadata accessor for Logger();
            sub_1000958E4(v76, qword_10051B2C8);
            v77 = v31;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v78, v79))
            {
              goto LABEL_114;
            }

            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v164[0] = v81;
            *v80 = 136315138;
            v82 = [v77 value];
            if (v82)
            {
              v83 = v82;
              v149 = v81;
              v84 = v77;
              v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v156 = v79;
              v87 = v86;

              v3[8] = sub_100288788(v85, v87);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v88 = BidirectionalCollection<>.joined(separator:)();
              v90 = v89;
              v91 = v85;
              v77 = v84;
              v81 = v149;
              v92 = v87;
              v79 = v156;
              sub_10006A178(v91, v92);
            }

            else
            {
              v88 = 7104878;
              v90 = 0xE300000000000000;
            }

            v136 = sub_1002FFA0C(v88, v90, v164);

            *(v80 + 4) = v136;
            v137 = "performSEAuthenticatedGetData: Bad platform Id %s in singature response";
LABEL_127:
            _os_log_impl(&_mh_execute_header, v78, v79, v137, v80, 0xCu);
            sub_1000752F4(v81);

            v4 = v163;
            goto LABEL_128;
          }

          v62 = v62;
        }

        v5 = v148;
        if (v62 != 16)
        {
LABEL_90:

          goto LABEL_91;
        }
      }

      else
      {
        if (v32 != 57120)
        {
LABEL_98:

          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          sub_1000958E4(v105, qword_10051B2C8);
          v106 = v31;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();
          v3 = v154;
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 67109120;
            *(v109 + 4) = [v106 tag];

            _os_log_impl(&_mh_execute_header, v107, v108, "performSEAuthenticatedGetData: Unexpected tag %u in signature response", v109, 8u);
          }

          else
          {
          }

          sub_10009591C();
          swift_allocError();
          *v135 = 31;
          swift_willThrow();
          sub_10006A2D0(v160, v163);
          sub_10006A2D0(v162, v161);
          sub_10006A178(v153, v5);

          goto LABEL_20;
        }

        v40 = [v31 value];
        if (!v40)
        {
LABEL_85:

          goto LABEL_86;
        }

        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2)
          {

            sub_10006A178(v42, v44);
LABEL_86:
            v3 = v154;
            v4 = v163;
            if (qword_1005019D8 != -1)
            {
              goto LABEL_152;
            }

            goto LABEL_87;
          }

          v5 = *(v42 + 16);
          v65 = *(v42 + 24);
          sub_10006A178(v42, v44);
          v29 = v65 - v5;
          if (__OFSUB__(v65, v5))
          {
            goto LABEL_150;
          }

          v5 = v148;
        }

        else if (v45)
        {
          sub_10006A178(v42, v44);
          LODWORD(v29) = HIDWORD(v42) - v42;
          if (__OFSUB__(HIDWORD(v42), v42))
          {
            goto LABEL_149;
          }

          v29 = v29;
        }

        else
        {
          sub_10006A178(v42, v44);
          v29 = BYTE6(v44);
        }

        if (v29 != 16)
        {
          goto LABEL_85;
        }
      }
    }

    else if (v32 == 133)
    {
      v46 = [v31 value];
      if (!v46)
      {

LABEL_103:
        v3 = v154;
        v4 = v163;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_1000958E4(v110, qword_10051B2C8);
        v77 = v31;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v78, v79))
        {
          goto LABEL_114;
        }

        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v164[0] = v81;
        *v80 = 136315138;
        v111 = [v77 value];
        if (v111)
        {
          v112 = v111;
          v151 = v81;
          v113 = v77;
          v114 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v79;
          v116 = v115;

          v154[5] = sub_100288788(v114, v116);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v117 = BidirectionalCollection<>.joined(separator:)();
          v119 = v118;
          v120 = v114;
          v77 = v113;
          v81 = v151;
          v121 = v116;
          v79 = v158;
          sub_10006A178(v120, v121);
        }

        else
        {
          v117 = 7104878;
          v119 = 0xE300000000000000;
        }

        v138 = sub_1002FFA0C(v117, v119, v164);

        *(v80 + 4) = v138;
        v137 = "performSEAuthenticatedGetData: Bad challenge %s in signature response";
        goto LABEL_127;
      }

      v47 = v46;
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = v50 >> 62;
      if ((v50 >> 62) > 1)
      {
        if (v51 != 2)
        {
          goto LABEL_97;
        }

        v60 = *(v48 + 16);
        v59 = *(v48 + 24);
        v9 = __OFSUB__(v59, v60);
        v52 = v59 - v60;
        if (v9)
        {
          goto LABEL_145;
        }
      }

      else if (v51)
      {
        LODWORD(v52) = HIDWORD(v48) - v48;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
          goto LABEL_146;
        }

        v52 = v52;
      }

      else
      {
        v52 = BYTE6(v50);
      }

      if (v52 != 8)
      {
LABEL_97:

        sub_10006A178(v48, v50);
        goto LABEL_103;
      }

      sub_10006A2D0(v160, v163);
      v160 = v48;
      v163 = v50;
    }

    else
    {
      if (v32 != 24375)
      {
        goto LABEL_98;
      }

      v33 = [v31 value];
      if (!v33)
      {

LABEL_109:
        v3 = v154;
        v4 = v163;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_1000958E4(v122, qword_10051B2C8);
        v77 = v31;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v164[0] = v81;
          *v80 = 136315138;
          v123 = [v77 value];
          if (v123)
          {
            v124 = v123;
            v152 = v81;
            v125 = v77;
            v126 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v79;
            v128 = v127;

            v154[6] = sub_100288788(v126, v128);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_10007A2D0();
            v129 = BidirectionalCollection<>.joined(separator:)();
            v131 = v130;
            v132 = v126;
            v77 = v125;
            v81 = v152;
            v133 = v128;
            v79 = v159;
            sub_10006A178(v132, v133);
          }

          else
          {
            v129 = 7104878;
            v131 = 0xE300000000000000;
          }

          v139 = sub_1002FFA0C(v129, v131, v164);

          *(v80 + 4) = v139;
          v137 = "performSEAuthenticatedGetData: Bad signature %s in signature response";
          goto LABEL_127;
        }

LABEL_114:

LABEL_128:
        sub_10009591C();
        swift_allocError();
        *v141 = 31;
        swift_willThrow();
        sub_10006A2D0(v160, v4);
        sub_10006A2D0(v162, v161);
        sub_10006A178(v153, v5);

        goto LABEL_20;
      }

      v34 = v33;
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 != 2)
        {
          goto LABEL_96;
        }

        v64 = *(v35 + 16);
        v63 = *(v35 + 24);
        v9 = __OFSUB__(v63, v64);
        v39 = v63 - v64;
        if (v9)
        {
          goto LABEL_148;
        }
      }

      else if (v38)
      {
        LODWORD(v39) = HIDWORD(v35) - v35;
        if (__OFSUB__(HIDWORD(v35), v35))
        {
          goto LABEL_147;
        }

        v39 = v39;
      }

      else
      {
        v39 = BYTE6(v37);
      }

      if (v39 != 64)
      {
LABEL_96:

        sub_10006A178(v35, v37);
        goto LABEL_109;
      }

      sub_10006A2D0(v162, v161);
      v161 = v37;
      v162 = v35;
    }

LABEL_26:

    ++v15;
  }

  while (v4 != v14);

  v66 = v161;
  if (v161 >> 60 == 15)
  {
    v69 = v153;
    v3 = v154;
    v68 = v162;
    v67 = v163;
    v134 = v160;
  }

  else
  {
    v68 = v162;
    v67 = v163;
    v69 = v153;
    v3 = v154;
    if (v163 >> 60 != 15)
    {
      v70 = v154[9];
      v155 = Data.subdata(in:)();
      v72 = v71;
      v73 = Data.subdata(in:)();
      v75 = v74;
      sub_10006A178(v153, v5);
      *v70 = v162;
      v70[1] = v161;
      v70[2] = v155;
      v70[3] = v72;
      v70[4] = v73;
      v70[5] = v75;
      v70[6] = v160;
      v70[7] = v163;
      v27 = v154[1];
      goto LABEL_21;
    }

    v134 = v160;
  }

LABEL_138:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v142 = type metadata accessor for Logger();
  sub_1000958E4(v142, qword_10051B2C8);
  sub_10006A2BC(v68, v66);
  sub_10006A2BC(v134, v67);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = v67;
    v146 = swift_slowAlloc();
    *v146 = 67109376;
    *(v146 + 4) = v66 >> 60 != 15;
    sub_10006A2D0(v68, v66);
    *(v146 + 8) = 1024;
    *(v146 + 10) = v145 >> 60 != 15;
    sub_10006A2D0(v134, v145);
    _os_log_impl(&_mh_execute_header, v143, v144, "performSEAuthenticatedGetData: missing signature %{BOOL}d or challenge %{BOOL}d", v146, 0xEu);
    v67 = v145;
  }

  else
  {
    sub_10006A2D0(v134, v67);
    sub_10006A2D0(v68, v66);
  }

  sub_10009591C();
  swift_allocError();
  *v147 = 31;
  swift_willThrow();
  sub_10006A2D0(v134, v67);
  sub_10006A2D0(v68, v66);
  v26 = v69;
LABEL_19:
  sub_10006A178(v26, v5);
LABEL_20:
  v27 = v3[1];
LABEL_21:

  return v27();
}

uint64_t sub_1002F6570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F65D4(uint64_t a1)
{
  *(v1 + 224) = a1;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1002F66AC;

  return sub_1001BDDF0(v1 + 144);
}

uint64_t sub_1002F66AC()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002F6824, 0, 0);
  }
}

uint64_t sub_1002F6824()
{
  v31 = v0;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v2 = sub_100268D04();
  v3 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046BFC0;
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100409900;
  *(v4 + 32) = Data.base64EncodedString(options:)(0);
  *(v4 + 48) = Data.base64EncodedString(options:)(0);
  *(inited + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 96) = v4;
  sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 208) = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v0 + 208];

  v8 = *(v0 + 208);
  if (!v7)
  {
    v15 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v9 = *(v0 + 240);
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = sub_1001BD2A4();
  if (v9)
  {
    sub_10006A178(v10, v12);
LABEL_5:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, &v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error %s when signing report", v19, 0xCu);
      sub_1000752F4(v20);
    }

    sub_10009591C();
    swift_allocError();
    *v24 = 14;
    swift_willThrow();

    sub_1002F6D44(v0 + 144);
    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v14;
  v28 = v13;
  sub_1002F6D44(v0 + 144);
  v29 = *(v0 + 8);

  return v29(v28, v27, v10, v12);
}

uint64_t sub_1002F6CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECPresentmentReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6D98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F6DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F6E40()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F6E78(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C288C;

  return sub_1002F304C(a1, a2, v7, v6);
}

uint64_t sub_1002F6F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050A110, &qword_100414C28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6F9C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B708 = result;
    unk_10051B710 = v1;
  }

  return result;
}

uint64_t sub_1002F6FEC()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B718 = result;
    unk_10051B720 = v1;
  }

  return result;
}

uint64_t sub_1002F703C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B728 = result;
    unk_10051B730 = v1;
  }

  return result;
}

uint64_t sub_1002F708C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B738 = result;
    unk_10051B740 = v1;
  }

  return result;
}

uint64_t sub_1002F70DC()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B748 = result;
    unk_10051B750 = v1;
  }

  return result;
}

uint64_t sub_1002F712C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B758 = result;
    unk_10051B760 = v1;
  }

  return result;
}

uint64_t sub_1002F717C()
{
  v1 = OBJC_IVAR____TtC10seserviced35SECPresentmentIntentCooldownContext_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECPresentmentIntentCooldownContext(uint64_t a1)
{
  result = qword_10050A158;
  if (!qword_10050A158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F7274(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1002F732C()
{
  if (qword_100501CD0 != -1)
  {
    result = swift_once();
  }

  v1 = off_10050A240;
  v2 = *(off_10050A240 + 25);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(off_10050A240 + 25) = v4;
  if (*(v0 + 224) == 1)
  {
    v5 = v1[14];
    v3 = __CFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v3)
    {
      v1[14] = v6;
      return result;
    }

    goto LABEL_10;
  }

  v7 = v1[5];
  v3 = __CFADD__(v7, 1);
  v8 = v7 + 1;
  if (!v3)
  {
    v1[5] = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1002F73C8(uint64_t result)
{
  if (result)
  {
    *(v1 + 164) = 1;
    if (qword_100501CD0 != -1)
    {
      result = swift_once();
    }

    v2 = *(off_10050A240 + 11);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      *(off_10050A240 + 11) = v4;
      return result;
    }

    __break(1u);
LABEL_14:
    result = swift_once();
LABEL_10:
    v6 = *(off_10050A240 + 17);
    v3 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(off_10050A240 + 17) = v7;
    }

    return result;
  }

  v5 = *(v1 + 164);
  if (!v5)
  {
    *(v1 + 164) = 2;
    if (qword_100501CD0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    *(v1 + 164) = 3;
  }

  return result;
}

uint64_t sub_1002F74B0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 136))
  {
    goto LABEL_8;
  }

  v6 = *(v1 + 128);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = v8 - v6;
  if (COERCE__INT64(fabs(v8 - v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v10 <= -1.0)
  {
    goto LABEL_20;
  }

  if (v10 >= 4294967300.0)
  {
    goto LABEL_21;
  }

  v11 = v10;
  *(v1 + 124) = v10;
  if (qword_100501CD0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v12 = *(off_10050A240 + 16);
    v13 = __CFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      break;
    }

    *(off_10050A240 + 16) = v14;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_8:
    v15 = *(v1 + 164);
    if (v15 == 3)
    {
      v16 = 6;
    }

    else
    {
      v16 = 5;
    }

    if (v15 == 1)
    {
      v17 = 4;
    }

    else
    {
      v17 = v16;
    }

    *(v1 + 164) = v17;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    v20 = *(v3 + 8);
    v3 += 8;
    result = v20(v5, v2);
    *(v1 + 144) = v19;
    *(v1 + 152) = 0;
    if (qword_100501CD0 != -1)
    {
      result = swift_once();
    }

    v21 = *(off_10050A240 + 18);
    v13 = __CFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      *(off_10050A240 + 18) = v22;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = swift_once();
    v11 = *(v1 + 124);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F76D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v7[22] = v11;
  v7[23] = v13;

  sub_100288788(a3, a4);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v7[24] = v14;
  v7[25] = v16;

  sub_100288788(a5, a6);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v7[26] = v17;
  v7[27] = v19;
}

uint64_t sub_1002F784C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_1002F78F8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100069E2C(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_10006A178(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

void sub_1002F79A8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_1002FAFA8(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for Peer(0);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_100093854(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_100093854(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1002F7C24(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_100093854(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_100093854(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F7E70(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1002F7FAC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1002F80D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_100501CD8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v14 = qword_10050A248;
  [qword_10050A248 setPreregistered:1];
  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registering CA Aliro Daily Transaction Statistics", v17, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  aBlock[4] = sub_1002FB000;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10022ECB0;
  aBlock[3] = &unk_1004CFFD0;
  v19 = _Block_copy(aBlock);

  [v14 scheduleWithBlock:v19];
  _Block_release(v19);
}

void sub_1002F846C()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 164);
  if (v7 == 4 || v7 == 1)
  {
    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v9 = *(off_10050A240 + 20);
    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
      goto LABEL_29;
    }

    *(off_10050A240 + 20) = v11;
    goto LABEL_13;
  }

  if (qword_100501CD0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = *(off_10050A240 + 21);
    v10 = __CFADD__(v12, 1);
    v13 = v12 + 1;
    if (v10)
    {
      __break(1u);
      return;
    }

    *(off_10050A240 + 21) = v13;
LABEL_13:
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v1 = v14;
    v15 = *(v4 + 8);
    v4 += 8;
    v15(v6, v3);
    if ((*(v2 + 152) & 1) == 0)
    {
      v16 = (v1 - *(v2 + 144)) * 1000.0;
      if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_29:
        __break(1u);
      }

      else if (v16 > -1.0)
      {
        if (v16 < 4294967300.0)
        {
          *(v2 + 156) = v16;
          *(v2 + 144) = 0;
          *(v2 + 152) = 1;
          if (qword_100501CD0 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_18;
        }

        goto LABEL_32;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    while (1)
    {
      if (*(v2 + 136))
      {
        return;
      }

      v19 = v1 - *(v2 + 128);
      if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      if (v19 > -1.0)
      {
        break;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
LABEL_18:
      v17 = *(off_10050A240 + 22);
      v10 = __CFADD__(v17, 1);
      v18 = v17 + 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_36;
      }

      *(off_10050A240 + 22) = v18;
    }

    if (v19 < 4294967300.0)
    {
      v20 = v19;
      *(v2 + 124) = v19;
      if (qword_100501CD0 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
    v20 = *(v2 + 124);
LABEL_25:
    v21 = *(off_10050A240 + 16);
    v10 = __CFADD__(v21, v20);
    v22 = v21 + v20;
    if (!v10)
    {
      break;
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  *(off_10050A240 + 16) = v22;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
}

uint64_t sub_1002F8758(unsigned __int8 a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = v4;
  v11 = a1;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 0xA && ((0x37Fu >> a1) & 1) != 0)
  {
    v16 = dword_100414E9C[a1];
  }

  else if (*(v6 + 168))
  {
    v16 = 9;
  }

  else
  {
    v16 = 8;
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  result = (*(v13 + 8))(v15, v12);
  v20 = (a2 == 5) << 17;
  if (a2 == 4)
  {
    v20 = 0x10000;
  }

  v21 = *(v6 + 224);
  v22 = (v20 + v21);
  if (__CFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v18 - *(v6 + 16);
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 >= 4294967300.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(v6 + 136))
  {
    goto LABEL_20;
  }

  v23 = v18 - *(v6 + 128);
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v23 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 >= 4294967300.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v23;
  *(v6 + 124) = v23;
  if (qword_100501CD0 != -1)
  {
LABEL_30:
    result = swift_once();
    v24 = *(v6 + 124);
  }

  v25 = *(off_10050A240 + 16);
  v26 = __CFADD__(v25, v24);
  v27 = v25 + v24;
  if (v26)
  {
    __break(1u);
    return result;
  }

  *(off_10050A240 + 16) = v27;
LABEL_20:
  sub_1002F8D2C();
  sub_1002FAE08(v6, v18);
  v28 = *(v6 + 84);
  if (*(v6 + 88))
  {
    v28 = 0;
  }

  v61 = v28;
  v59 = objc_opt_self();
  v29 = *(v6 + 168);
  v60 = *(v6 + 164);
  sub_1000C0AC8(2u, v29);
  v58 = v30;
  sub_1000C0AC8(2u, *(v6 + 172));
  v57 = v31;
  sub_1000C0AC8(2u, *(v6 + 76));
  v56 = v32;
  sub_1000C0AC8(2u, *(v6 + 100));
  v55 = v33;
  sub_1000C0AC8(2u, *(v6 + 160));
  v54 = v34;
  sub_1000C0AC8(2u, *(v6 + 68));
  v53 = v35;
  sub_1000C0AC8(2u, *(v6 + 72));
  v51 = v36;
  sub_1000C0AC8(2u, *(v6 + 64));
  v52 = a4;
  v38 = v37;
  sub_1000C0AC8(2u, *(v6 + 156));
  v50 = a3;
  v40 = v39;
  sub_1000C0AC8(2u, *(v6 + 24));
  v42 = v41;
  sub_1000C0AC8(2u, v5);
  v43 = v22;
  v45 = v44;

  v46 = String._bridgeToObjectiveC()();

  v47 = String._bridgeToObjectiveC()();

  v48 = String._bridgeToObjectiveC()();

  sub_10004F0B8(v59, v16, v60, v43, v61, v50, v52, v58, v57, v56, v55, v54, v53, v51, v38, v40, v42, v45, v46, v47, v48);

  return sub_1002FA668();
}

void sub_1002F8B80()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 92) == 1)
  {
    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v6 = *(off_10050A240 + 13);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      *(off_10050A240 + 13) = v8;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v1 + 76);
  v7 = __CFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 76) = v10;
  if (qword_100501CD0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v11 = *(off_10050A240 + 8);
  v7 = __CFADD__(v11, 1);
  v12 = v11 + 1;
  if (v7)
  {
    __break(1u);
    return;
  }

  *(off_10050A240 + 8) = v12;
LABEL_10:
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  *(v1 + 112) = v14;
  *(v1 + 120) = 0;
  if (*(v1 + 56) == 1)
  {
    *(v1 + 48) = v14;
    *(v1 + 56) = 0;
  }
}

void sub_1002F8D2C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 120) & 1) == 0)
  {
    v6 = *(v1 + 112);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    v9 = v8 - v6;
    if (COERCE__INT64(fabs(v8 - v6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 4294967300.0)
      {
        LODWORD(v5) = v9;
        v10 = *(v1 + 24);
        v11 = __CFADD__(v10, v9);
        v12 = v10 + v9;
        if (!v11)
        {
          *(v1 + 24) = v12;
          if (qword_100501CD0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        swift_once();
LABEL_7:
        v13 = *(off_10050A240 + 15);
        v11 = __CFADD__(v13, v5);
        v14 = v13 + v5;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          *(off_10050A240 + 15) = v14;
          *(v1 + 112) = 0;
          *(v1 + 120) = 1;
        }

        return;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

BOOL sub_1002F8EBC(_BOOL8 result, uint64_t a2)
{
  v2[23] = 0;
  v3 = v2[25];
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v2[25] = v5;
    if (result)
    {
      if (sub_1002A11C0(1u, a2))
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7 & 0xFFFFFFFE | sub_1002A11C0(0, a2);
      result = sub_1002A11C0(2u, a2);
      v9 = v8 | 2;
      if (!result)
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }

    v2[26] = v9;
  }

  return result;
}

char *sub_1002F8F48(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10012E5A4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1002F903C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10012EA44(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002F9130(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10012FAA8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SEStorageCredential();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_1002F925C()
{
  type metadata accessor for LyonDailyStatistics();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  off_10050A240 = v0;
  return result;
}

void sub_1002F92A8()
{
  v0 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithIdentifier:v1];

  qword_10050A248 = v2;
}

uint64_t sub_1002F9318(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v9;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 60) = 0;
  *(v2 + 76) = 0;
  *(v2 + 68) = 0;
  *(v2 + 84) = 0;
  *(v2 + 88) = 1;
  *(v2 + 112) = 0;
  *(v2 + 100) = 0;
  *(v2 + 92) = 0;
  *(v2 + 120) = 1;
  *(v2 + 124) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 164) = 0;
  *(v2 + 156) = 0;
  *(v2 + 180) = 0;
  *(v2 + 172) = 0;
  *(v2 + 184) = 0xE000000000000000;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0xE000000000000000;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0xE000000000000000;
  *(v2 + 224) = a1;
  return v2;
}

uint64_t sub_1002F9474(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v37 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 != 1)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v11 + 16))(v13, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Invalidating CA Aliro Daily Transaction Statistics", v29, 2u);
    }

    (*(v11 + 8))(v13, v10);
    if (qword_100501CD8 != -1)
    {
      swift_once();
    }

    [qword_10050A248 invalidate];
    return v37(1);
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  if (*(qword_10051B188 + 16) != 1)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v11 + 16))(v16, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping Aliro Daily Transaction Statistics since Lyon is not running", v32, 2u);
    }

    (*(v11 + 8))(v16, v10);
    return v37(1);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  (*(v11 + 16))(v19, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v10);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a2;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Running CA Aliro Daily Transaction Statistics", v22, 2u);
    a2 = v33;
  }

  (*(v11 + 8))(v19, v10);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v24 = v37;
  v23[2] = v34;
  v23[3] = v24;
  v23[4] = a2;
  aBlock[4] = sub_1002FB058;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D0020;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1002FAFA8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v36 + 8))(v6, v4);
  (*(v35 + 8))(v9, v7);
}

uint64_t sub_1002F9BFC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  v70 = type metadata accessor for Date();
  v3 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D88 != -1)
  {
LABEL_53:
    swift_once();
  }

  (*(v6 + 16))(v8, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting CA Aliro Daily Transaction Statistics", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v12 = sub_1000CAAC4();
  v13 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_1002FAFA8(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v13 = v78;
    v14 = v79;
    v15 = v80;
    v6 = v81;
    v16 = v82;
  }

  else
  {
    v6 = 0;
    v17 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);
  }

  v71 = v15;
  v20 = (v15 + 64) >> 6;
  v21 = _swiftEmptyArrayStorage;
  v8 = _TtC10seserviced8LyonPeer;
  v68 = (v3 + 1);
  while (1)
  {
    v5 = v16;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v22 = v6;
      v23 = v16;
      if (!v16)
      {
        while (1)
        {
          v6 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v6 >= v20)
          {
            goto LABEL_46;
          }

          v23 = *(v14 + 8 * v6);
          ++v22;
          if (v23)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_53;
      }

LABEL_18:
      v16 = (v23 - 1) & v23;
      v3 = *(*(v13 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v23)))));

      if (!v3)
      {
        break;
      }

      goto LABEL_22;
    }

    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
      break;
    }

    v76 = v24;
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    v3 = v75[0];
    v8 = _TtC10seserviced8LyonPeer;
    if (!v75[0])
    {
      break;
    }

LABEL_22:
    if (*v3 == _TtC10seserviced8LyonPeer)
    {
      v25 = v69;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v27 = v26;
      (*v68)(v25, v70);
      v28 = OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData;
      v29 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

      sub_1002FAE08(v30, v27);
      v31 = *(v3 + v28);
      *(v31 + 32) = v27;
      *(v31 + 40) = 0;
      if ((*(v31 + 56) & 1) == 0)
      {
        *(v31 + 48) = v27;
        *(v31 + 56) = 0;
      }

      v65 = v29;
      *(v31 + 60) = *(v29 + 24);
      v33 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
      v32 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
      v35 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
      v34 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8);
      v76 = v33;
      v77 = v32;
      v75[3] = &type metadata for Data;
      v75[4] = &protocol witness table for Data;
      v66 = v35;
      v75[0] = v35;
      v75[1] = v34;
      v67 = v34;
      v36 = sub_1000752B0(v75, &type metadata for Data);
      v37 = *v36;
      v38 = v36[1];
      v39 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v39 != 2)
        {
          memset(v74, 0, 14);
          sub_100069E2C(v33, v32);
          sub_100069E2C(v66, v67);
          goto LABEL_41;
        }

        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        v64 = v41;
        v63 = v40;
        sub_100069E2C(v33, v32);
        sub_100069E2C(v66, v67);
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          v45 = v64;
          if (__OFSUB__(v64, v44))
          {
            goto LABEL_56;
          }

          v67 = v64 - v44 + v43;
        }

        else
        {
          v67 = 0;
          v45 = v64;
        }

        if (__OFSUB__(v63, v45))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (!v39)
        {
          v74[0] = *v36;
          LOWORD(v74[1]) = v38;
          BYTE2(v74[1]) = BYTE2(v38);
          BYTE3(v74[1]) = BYTE3(v38);
          BYTE4(v74[1]) = BYTE4(v38);
          BYTE5(v74[1]) = BYTE5(v38);
          sub_100069E2C(v33, v32);
          sub_100069E2C(v66, v67);
          goto LABEL_41;
        }

        v46 = v37;
        v47 = v37 >> 32;
        v63 = v46;
        v64 = v47 - v46;
        if (v47 < v46)
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }

        sub_100069E2C(v33, v32);
        sub_100069E2C(v66, v67);
        if (__DataStorage._bytes.getter() && __OFSUB__(v63, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }
      }

      __DataStorage._length.getter();
LABEL_41:
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(v75);
      v49 = v76;
      v48 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_10012E5A4(0, *(v21 + 2) + 1, 1, v21);
      }

      v52 = *(v21 + 2);
      v51 = *(v21 + 3);
      if (v52 >= v51 >> 1)
      {
        v21 = sub_10012E5A4((v51 > 1), v52 + 1, 1, v21);
      }

      *(v21 + 2) = v52 + 1;
      v53 = &v21[16 * v52];
      v54 = v67;
      *(v53 + 4) = v49;
      *(v53 + 5) = v54;
      v8 = _TtC10seserviced8LyonPeer;
    }

    else
    {
    }
  }

LABEL_46:
  sub_100093854(v13);
  sub_1002FA668();
  v55 = objc_opt_self();
  sub_10004E708(v55);
  v56 = *(v21 + 2);
  if (v56)
  {
    v57 = (v21 + 40);
    do
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      sub_100069E2C(v58, *v57);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10004E500(v55, isa);

      sub_10006A178(v58, v59);
      v57 += 2;
      --v56;
    }

    while (v56);
  }

  if (qword_100501CD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1002F8F48(v21);
  swift_endAccess();

  return v73(1);
}